-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cme Futures iLink3 Sbe 8.0 Protocol
local cme_futures_ilink3_sbe_v8_0 = Proto("Cme.Futures.iLink3.Sbe.v8.0.Lua", "Cme Futures iLink3 Sbe 8.0")

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

-- Cme Futures iLink3 Sbe 8.0 Fields
cme_futures_ilink3_sbe_v8_0.fields.access_key_id = ProtoField.new("Access Key Id", "cme.futures.ilink3.sbe.v8.0.accesskeyid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.affected_order_id = ProtoField.new("Affected Order Id", "cme.futures.ilink3.sbe.v8.0.affectedorderid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.affected_orders_group = ProtoField.new("Affected Orders Group", "cme.futures.ilink3.sbe.v8.0.affectedordersgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.affected_orders_groups = ProtoField.new("Affected Orders Groups", "cme.futures.ilink3.sbe.v8.0.affectedordersgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.aggressor_indicator = ProtoField.new("Aggressor Indicator", "cme.futures.ilink3.sbe.v8.0.aggressorindicator", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.aon = ProtoField.new("Aon", "cme.futures.ilink3.sbe.v8.0.aon", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
cme_futures_ilink3_sbe_v8_0.fields.auto_quote_request = ProtoField.new("Auto Quote Request", "cme.futures.ilink3.sbe.v8.0.autoquoterequest", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.avg_px_group_id = ProtoField.new("Avg Px Group Id", "cme.futures.ilink3.sbe.v8.0.avgpxgroupid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.avg_px_indicator = ProtoField.new("Avg Px Indicator", "cme.futures.ilink3.sbe.v8.0.avgpxindicator", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.bid_px = ProtoField.new("Bid Px", "cme.futures.ilink3.sbe.v8.0.bidpx", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.bid_size = ProtoField.new("Bid Size", "cme.futures.ilink3.sbe.v8.0.bidsize", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.block_length = ProtoField.new("Block Length", "cme.futures.ilink3.sbe.v8.0.blocklength", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.business_reject_521 = ProtoField.new("Business Reject 521", "cme.futures.ilink3.sbe.v8.0.businessreject521", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.business_reject_reason = ProtoField.new("Business Reject Reason", "cme.futures.ilink3.sbe.v8.0.businessrejectreason", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.business_reject_ref_id = ProtoField.new("Business Reject Ref Id", "cme.futures.ilink3.sbe.v8.0.businessrejectrefid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.cancelled_symbol = ProtoField.new("Cancelled Symbol", "cme.futures.ilink3.sbe.v8.0.cancelledsymbol", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cme.futures.ilink3.sbe.v8.0.clordid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.clearing_account_type = ProtoField.new("Clearing Account Type", "cme.futures.ilink3.sbe.v8.0.clearingaccounttype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.clearing_trade_price_type = ProtoField.new("Clearing Trade Price Type", "cme.futures.ilink3.sbe.v8.0.clearingtradepricetype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.cmta_giveup_cd = ProtoField.new("Cmta Giveup Cd", "cme.futures.ilink3.sbe.v8.0.cmtagiveupcd", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.cross_id = ProtoField.new("Cross Id", "cme.futures.ilink3.sbe.v8.0.crossid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.cross_type = ProtoField.new("Cross Type", "cme.futures.ilink3.sbe.v8.0.crosstype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.cum_qty = ProtoField.new("Cum Qty", "cme.futures.ilink3.sbe.v8.0.cumqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.currency = ProtoField.new("Currency", "cme.futures.ilink3.sbe.v8.0.currency", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.cust_order_capacity = ProtoField.new("Cust Order Capacity", "cme.futures.ilink3.sbe.v8.0.custordercapacity", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "cme.futures.ilink3.sbe.v8.0.custorderhandlinginst", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.cxl_quantity = ProtoField.new("Cxl Quantity", "cme.futures.ilink3.sbe.v8.0.cxlquantity", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.cxl_rej_reason = ProtoField.new("Cxl Rej Reason", "cme.futures.ilink3.sbe.v8.0.cxlrejreason", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.day = ProtoField.new("Day", "cme.futures.ilink3.sbe.v8.0.day", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.delay_duration = ProtoField.new("Delay Duration", "cme.futures.ilink3.sbe.v8.0.delayduration", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.display_qty = ProtoField.new("Display Qty", "cme.futures.ilink3.sbe.v8.0.displayqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.encoding_type = ProtoField.new("Encoding Type", "cme.futures.ilink3.sbe.v8.0.encodingtype", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.end_date = ProtoField.new("End Date", "cme.futures.ilink3.sbe.v8.0.enddate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.error_codes = ProtoField.new("Error Codes", "cme.futures.ilink3.sbe.v8.0.errorcodes", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.establish_503 = ProtoField.new("Establish 503", "cme.futures.ilink3.sbe.v8.0.establish503", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.establishment_ack_504 = ProtoField.new("Establishment Ack 504", "cme.futures.ilink3.sbe.v8.0.establishmentack504", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.establishment_reject_505 = ProtoField.new("Establishment Reject 505", "cme.futures.ilink3.sbe.v8.0.establishmentreject505", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.exchange_quote_req_id = ProtoField.new("Exchange Quote Req Id", "cme.futures.ilink3.sbe.v8.0.exchangequotereqid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.exec_id = ProtoField.new("Exec Id", "cme.futures.ilink3.sbe.v8.0.execid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.exec_inst = ProtoField.new("Exec Inst", "cme.futures.ilink3.sbe.v8.0.execinst", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.exec_restatement_reason = ProtoField.new("Exec Restatement Reason", "cme.futures.ilink3.sbe.v8.0.execrestatementreason", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.exec_type = ProtoField.new("Exec Type", "cme.futures.ilink3.sbe.v8.0.exectype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_mode = ProtoField.new("Execution Mode", "cme.futures.ilink3.sbe.v8.0.executionmode", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_cancel_534 = ProtoField.new("Execution Report Cancel 534", "cme.futures.ilink3.sbe.v8.0.executionreportcancel534", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_elimination_524 = ProtoField.new("Execution Report Elimination 524", "cme.futures.ilink3.sbe.v8.0.executionreportelimination524", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_modify_531 = ProtoField.new("Execution Report Modify 531", "cme.futures.ilink3.sbe.v8.0.executionreportmodify531", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_new_522 = ProtoField.new("Execution Report New 522", "cme.futures.ilink3.sbe.v8.0.executionreportnew522", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_reject_523 = ProtoField.new("Execution Report Reject 523", "cme.futures.ilink3.sbe.v8.0.executionreportreject523", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_status_532 = ProtoField.new("Execution Report Status 532", "cme.futures.ilink3.sbe.v8.0.executionreportstatus532", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_addendum_outright_548 = ProtoField.new("Execution Report Trade Addendum Outright 548", "cme.futures.ilink3.sbe.v8.0.executionreporttradeaddendumoutright548", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_addendum_spread_549 = ProtoField.new("Execution Report Trade Addendum Spread 549", "cme.futures.ilink3.sbe.v8.0.executionreporttradeaddendumspread549", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_addendum_spread_leg_550 = ProtoField.new("Execution Report Trade Addendum Spread Leg 550", "cme.futures.ilink3.sbe.v8.0.executionreporttradeaddendumspreadleg550", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_outright_525 = ProtoField.new("Execution Report Trade Outright 525", "cme.futures.ilink3.sbe.v8.0.executionreporttradeoutright525", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_spread_526 = ProtoField.new("Execution Report Trade Spread 526", "cme.futures.ilink3.sbe.v8.0.executionreporttradespread526", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_spread_leg_527 = ProtoField.new("Execution Report Trade Spread Leg 527", "cme.futures.ilink3.sbe.v8.0.executionreporttradespreadleg527", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.executor = ProtoField.new("Executor", "cme.futures.ilink3.sbe.v8.0.executor", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.expiration_cycle = ProtoField.new("Expiration Cycle", "cme.futures.ilink3.sbe.v8.0.expirationcycle", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.expire_date = ProtoField.new("Expire Date", "cme.futures.ilink3.sbe.v8.0.expiredate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.fault_tolerance_indicator = ProtoField.new("Fault Tolerance Indicator", "cme.futures.ilink3.sbe.v8.0.faulttoleranceindicator", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.fill_exec_id = ProtoField.new("Fill Exec Id", "cme.futures.ilink3.sbe.v8.0.fillexecid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.fill_px = ProtoField.new("Fill Px", "cme.futures.ilink3.sbe.v8.0.fillpx", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.fill_qty = ProtoField.new("Fill Qty", "cme.futures.ilink3.sbe.v8.0.fillqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.fill_yield_type = ProtoField.new("Fill Yield Type", "cme.futures.ilink3.sbe.v8.0.fillyieldtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.fills_group = ProtoField.new("Fills Group", "cme.futures.ilink3.sbe.v8.0.fillsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.fills_groups = ProtoField.new("Fills Groups", "cme.futures.ilink3.sbe.v8.0.fillsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.financial_instrument_full_name = ProtoField.new("Financial Instrument Full Name", "cme.futures.ilink3.sbe.v8.0.financialinstrumentfullname", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.firm = ProtoField.new("Firm", "cme.futures.ilink3.sbe.v8.0.firm", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.from_seq_no = ProtoField.new("From Seq No", "cme.futures.ilink3.sbe.v8.0.fromseqno", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.group_size = ProtoField.new("Group Size", "cme.futures.ilink3.sbe.v8.0.groupsize", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.hmac_signature = ProtoField.new("Hmac Signature", "cme.futures.ilink3.sbe.v8.0.hmacsignature", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.host_cross_id = ProtoField.new("Host Cross Id", "cme.futures.ilink3.sbe.v8.0.hostcrossid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.idm_short_code = ProtoField.new("Idm Short Code", "cme.futures.ilink3.sbe.v8.0.idmshortcode", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.keep_alive_interval = ProtoField.new("Keep Alive Interval", "cme.futures.ilink3.sbe.v8.0.keepaliveinterval", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.keep_alive_interval_lapsed = ProtoField.new("Keep Alive Interval Lapsed", "cme.futures.ilink3.sbe.v8.0.keepaliveintervallapsed", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.last_fragment = ProtoField.new("Last Fragment", "cme.futures.ilink3.sbe.v8.0.lastfragment", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.last_px = ProtoField.new("Last Px", "cme.futures.ilink3.sbe.v8.0.lastpx", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.last_qty = ProtoField.new("Last Qty", "cme.futures.ilink3.sbe.v8.0.lastqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.last_rpt_requested = ProtoField.new("Last Rpt Requested", "cme.futures.ilink3.sbe.v8.0.lastrptrequested", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.last_uuid = ProtoField.new("Last Uuid", "cme.futures.ilink3.sbe.v8.0.lastuuid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "cme.futures.ilink3.sbe.v8.0.leavesqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.leg_exec_id = ProtoField.new("Leg Exec Id", "cme.futures.ilink3.sbe.v8.0.legexecid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.leg_last_px = ProtoField.new("Leg Last Px", "cme.futures.ilink3.sbe.v8.0.leglastpx", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "cme.futures.ilink3.sbe.v8.0.leglastqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.leg_security_id = ProtoField.new("Leg Security Id", "cme.futures.ilink3.sbe.v8.0.legsecurityid", ftypes.INT32)
cme_futures_ilink3_sbe_v8_0.fields.leg_side = ProtoField.new("Leg Side", "cme.futures.ilink3.sbe.v8.0.legside", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.leg_trade_id = ProtoField.new("Leg Trade Id", "cme.futures.ilink3.sbe.v8.0.legtradeid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.legs_group = ProtoField.new("Legs Group", "cme.futures.ilink3.sbe.v8.0.legsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.legs_groups = ProtoField.new("Legs Groups", "cme.futures.ilink3.sbe.v8.0.legsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.liquidity_flag = ProtoField.new("Liquidity Flag", "cme.futures.ilink3.sbe.v8.0.liquidityflag", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.list_update_action = ProtoField.new("List Update Action", "cme.futures.ilink3.sbe.v8.0.listupdateaction", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.location = ProtoField.new("Location", "cme.futures.ilink3.sbe.v8.0.location", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.managed_order = ProtoField.new("Managed Order", "cme.futures.ilink3.sbe.v8.0.managedorder", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "cme.futures.ilink3.sbe.v8.0.manualorderindicator", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.market_segment_id = ProtoField.new("Market Segment Id", "cme.futures.ilink3.sbe.v8.0.marketsegmentid", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.mass_action_reject_reason = ProtoField.new("Mass Action Reject Reason", "cme.futures.ilink3.sbe.v8.0.massactionrejectreason", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.mass_action_report_id = ProtoField.new("Mass Action Report Id", "cme.futures.ilink3.sbe.v8.0.massactionreportid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.mass_action_response = ProtoField.new("Mass Action Response", "cme.futures.ilink3.sbe.v8.0.massactionresponse", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.mass_action_scope = ProtoField.new("Mass Action Scope", "cme.futures.ilink3.sbe.v8.0.massactionscope", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.mass_cancel_request_type = ProtoField.new("Mass Cancel Request Type", "cme.futures.ilink3.sbe.v8.0.masscancelrequesttype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.mass_quote_517 = ProtoField.new("Mass Quote 517", "cme.futures.ilink3.sbe.v8.0.massquote517", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.mass_quote_ack_545 = ProtoField.new("Mass Quote Ack 545", "cme.futures.ilink3.sbe.v8.0.massquoteack545", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.mass_status_req_id = ProtoField.new("Mass Status Req Id", "cme.futures.ilink3.sbe.v8.0.massstatusreqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.mass_status_req_type = ProtoField.new("Mass Status Req Type", "cme.futures.ilink3.sbe.v8.0.massstatusreqtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.maturity_date = ProtoField.new("Maturity Date", "cme.futures.ilink3.sbe.v8.0.maturitydate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.maturity_month_year = ProtoField.new("Maturity Month Year", "cme.futures.ilink3.sbe.v8.0.maturitymonthyear", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.max_no_of_substitutions = ProtoField.new("Max No Of Substitutions", "cme.futures.ilink3.sbe.v8.0.maxnoofsubstitutions", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.md_trade_entry_id = ProtoField.new("Md Trade Entry Id", "cme.futures.ilink3.sbe.v8.0.mdtradeentryid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.memo = ProtoField.new("Memo", "cme.futures.ilink3.sbe.v8.0.memo", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.message_header = ProtoField.new("Message Header", "cme.futures.ilink3.sbe.v8.0.messageheader", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.message_length = ProtoField.new("Message Length", "cme.futures.ilink3.sbe.v8.0.messagelength", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.min_qty = ProtoField.new("Min Qty", "cme.futures.ilink3.sbe.v8.0.minqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.mm_protection_reset = ProtoField.new("Mm Protection Reset", "cme.futures.ilink3.sbe.v8.0.mmprotectionreset", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.money_or_par = ProtoField.new("Money Or Par", "cme.futures.ilink3.sbe.v8.0.moneyorpar", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.month = ProtoField.new("Month", "cme.futures.ilink3.sbe.v8.0.month", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.msg_count = ProtoField.new("Msg Count", "cme.futures.ilink3.sbe.v8.0.msgcount", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.negotiate_500 = ProtoField.new("Negotiate 500", "cme.futures.ilink3.sbe.v8.0.negotiate500", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.negotiation_reject_502 = ProtoField.new("Negotiation Reject 502", "cme.futures.ilink3.sbe.v8.0.negotiationreject502", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.negotiation_response_501 = ProtoField.new("Negotiation Response 501", "cme.futures.ilink3.sbe.v8.0.negotiationresponse501", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.new_order_cross_544 = ProtoField.new("New Order Cross 544", "cme.futures.ilink3.sbe.v8.0.newordercross544", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.new_order_single_514 = ProtoField.new("New Order Single 514", "cme.futures.ilink3.sbe.v8.0.newordersingle514", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.next_seq_no = ProtoField.new("Next Seq No", "cme.futures.ilink3.sbe.v8.0.nextseqno", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.nh = ProtoField.new("Nh", "cme.futures.ilink3.sbe.v8.0.nh", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
cme_futures_ilink3_sbe_v8_0.fields.no_processed_entries = ProtoField.new("No Processed Entries", "cme.futures.ilink3.sbe.v8.0.noprocessedentries", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.not_applied_513 = ProtoField.new("Not Applied 513", "cme.futures.ilink3.sbe.v8.0.notapplied513", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.num_in_group = ProtoField.new("Num In Group", "cme.futures.ilink3.sbe.v8.0.numingroup", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.ob = ProtoField.new("Ob", "cme.futures.ilink3.sbe.v8.0.ob", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
cme_futures_ilink3_sbe_v8_0.fields.offer_px = ProtoField.new("Offer Px", "cme.futures.ilink3.sbe.v8.0.offerpx", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.offer_size = ProtoField.new("Offer Size", "cme.futures.ilink3.sbe.v8.0.offersize", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.ofm_override = ProtoField.new("Ofm Override", "cme.futures.ilink3.sbe.v8.0.ofmoverride", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.option_delta = ProtoField.new("Option Delta", "cme.futures.ilink3.sbe.v8.0.optiondelta", ftypes.INT32)
cme_futures_ilink3_sbe_v8_0.fields.ord_rej_reason = ProtoField.new("Ord Rej Reason", "cme.futures.ilink3.sbe.v8.0.ordrejreason", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.ord_status = ProtoField.new("Ord Status", "cme.futures.ilink3.sbe.v8.0.ordstatus", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.ord_status_req_id = ProtoField.new("Ord Status Req Id", "cme.futures.ilink3.sbe.v8.0.ordstatusreqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.ord_status_req_type = ProtoField.new("Ord Status Req Type", "cme.futures.ilink3.sbe.v8.0.ordstatusreqtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.ord_type = ProtoField.new("Ord Type", "cme.futures.ilink3.sbe.v8.0.ordtype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_cancel_reject_535 = ProtoField.new("Order Cancel Reject 535", "cme.futures.ilink3.sbe.v8.0.ordercancelreject535", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_cancel_replace_reject_536 = ProtoField.new("Order Cancel Replace Reject 536", "cme.futures.ilink3.sbe.v8.0.ordercancelreplacereject536", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_cancel_replace_request_515 = ProtoField.new("Order Cancel Replace Request 515", "cme.futures.ilink3.sbe.v8.0.ordercancelreplacerequest515", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_cancel_request_516 = ProtoField.new("Order Cancel Request 516", "cme.futures.ilink3.sbe.v8.0.ordercancelrequest516", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_event_exec_id = ProtoField.new("Order Event Exec Id", "cme.futures.ilink3.sbe.v8.0.ordereventexecid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.order_event_px = ProtoField.new("Order Event Px", "cme.futures.ilink3.sbe.v8.0.ordereventpx", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.order_event_qty = ProtoField.new("Order Event Qty", "cme.futures.ilink3.sbe.v8.0.ordereventqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.order_event_reason = ProtoField.new("Order Event Reason", "cme.futures.ilink3.sbe.v8.0.ordereventreason", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.order_event_text = ProtoField.new("Order Event Text", "cme.futures.ilink3.sbe.v8.0.ordereventtext", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_event_type = ProtoField.new("Order Event Type", "cme.futures.ilink3.sbe.v8.0.ordereventtype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.order_events_group = ProtoField.new("Order Events Group", "cme.futures.ilink3.sbe.v8.0.ordereventsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_events_groups = ProtoField.new("Order Events Groups", "cme.futures.ilink3.sbe.v8.0.ordereventsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_id = ProtoField.new("Order Id", "cme.futures.ilink3.sbe.v8.0.orderid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.order_mass_action_report_558 = ProtoField.new("Order Mass Action Report 558", "cme.futures.ilink3.sbe.v8.0.ordermassactionreport558", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_mass_action_request_529 = ProtoField.new("Order Mass Action Request 529", "cme.futures.ilink3.sbe.v8.0.ordermassactionrequest529", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_mass_status_request_530 = ProtoField.new("Order Mass Status Request 530", "cme.futures.ilink3.sbe.v8.0.ordermassstatusrequest530", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.order_qty = ProtoField.new("Order Qty", "cme.futures.ilink3.sbe.v8.0.orderqty", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.order_request_id = ProtoField.new("Order Request Id", "cme.futures.ilink3.sbe.v8.0.orderrequestid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.order_status_request_533 = ProtoField.new("Order Status Request 533", "cme.futures.ilink3.sbe.v8.0.orderstatusrequest533", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.orig_ci_ord_id = ProtoField.new("Orig Ci Ord Id", "cme.futures.ilink3.sbe.v8.0.origciordid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.orig_secondary_execution_id = ProtoField.new("Orig Secondary Execution Id", "cme.futures.ilink3.sbe.v8.0.origsecondaryexecutionid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.orig_side_trade_id = ProtoField.new("Orig Side Trade Id", "cme.futures.ilink3.sbe.v8.0.origsidetradeid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.ownership = ProtoField.new("Ownership", "cme.futures.ilink3.sbe.v8.0.ownership", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.packet = ProtoField.new("Packet", "cme.futures.ilink3.sbe.v8.0.packet", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.packet_header = ProtoField.new("Packet Header", "cme.futures.ilink3.sbe.v8.0.packetheader", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_detail_definition_status = ProtoField.new("Party Detail Definition Status", "cme.futures.ilink3.sbe.v8.0.partydetaildefinitionstatus", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.party_detail_id = ProtoField.new("Party Detail Id", "cme.futures.ilink3.sbe.v8.0.partydetailid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_detail_request_status = ProtoField.new("Party Detail Request Status", "cme.futures.ilink3.sbe.v8.0.partydetailrequeststatus", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.party_detail_role = ProtoField.new("Party Detail Role", "cme.futures.ilink3.sbe.v8.0.partydetailrole", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.party_details_definition_request_518 = ProtoField.new("Party Details Definition Request 518", "cme.futures.ilink3.sbe.v8.0.partydetailsdefinitionrequest518", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_details_definition_request_ack_519 = ProtoField.new("Party Details Definition Request Ack 519", "cme.futures.ilink3.sbe.v8.0.partydetailsdefinitionrequestack519", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_details_group = ProtoField.new("Party Details Group", "cme.futures.ilink3.sbe.v8.0.partydetailsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_details_groups = ProtoField.new("Party Details Groups", "cme.futures.ilink3.sbe.v8.0.partydetailsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_details_list_report_538 = ProtoField.new("Party Details List Report 538", "cme.futures.ilink3.sbe.v8.0.partydetailslistreport538", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_details_list_report_id = ProtoField.new("Party Details List Report Id", "cme.futures.ilink3.sbe.v8.0.partydetailslistreportid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.party_details_list_req_id = ProtoField.new("Party Details List Req Id", "cme.futures.ilink3.sbe.v8.0.partydetailslistreqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.party_details_list_request_537 = ProtoField.new("Party Details List Request 537", "cme.futures.ilink3.sbe.v8.0.partydetailslistrequest537", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_i_ds_group = ProtoField.new("Party I Ds Group", "cme.futures.ilink3.sbe.v8.0.partyidsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_i_ds_groups = ProtoField.new("Party I Ds Groups", "cme.futures.ilink3.sbe.v8.0.partyidsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_id = ProtoField.new("Party Id", "cme.futures.ilink3.sbe.v8.0.partyid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.party_id_source = ProtoField.new("Party Id Source", "cme.futures.ilink3.sbe.v8.0.partyidsource", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.party_role = ProtoField.new("Party Role", "cme.futures.ilink3.sbe.v8.0.partyrole", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.payload = ProtoField.new("payload", "cme.futures.ilink3.sbe.v8.0.payload", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.poss_retrans_flag = ProtoField.new("Poss Retrans Flag", "cme.futures.ilink3.sbe.v8.0.possretransflag", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.previous_seq_no = ProtoField.new("Previous Seq No", "cme.futures.ilink3.sbe.v8.0.previousseqno", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.previous_uuid = ProtoField.new("Previous Uuid", "cme.futures.ilink3.sbe.v8.0.previousuuid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.price = ProtoField.new("Price", "cme.futures.ilink3.sbe.v8.0.price", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.quote_cancel_528 = ProtoField.new("Quote Cancel 528", "cme.futures.ilink3.sbe.v8.0.quotecancel528", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.quote_cancel_ack_547 = ProtoField.new("Quote Cancel Ack 547", "cme.futures.ilink3.sbe.v8.0.quotecancelack547", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.quote_cancel_type = ProtoField.new("Quote Cancel Type", "cme.futures.ilink3.sbe.v8.0.quotecanceltype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.quote_entries_group = ProtoField.new("Quote Entries Group", "cme.futures.ilink3.sbe.v8.0.quoteentriesgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.quote_entries_groups = ProtoField.new("Quote Entries Groups", "cme.futures.ilink3.sbe.v8.0.quoteentriesgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.quote_entry_id = ProtoField.new("Quote Entry Id", "cme.futures.ilink3.sbe.v8.0.quoteentryid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.quote_id = ProtoField.new("Quote Id", "cme.futures.ilink3.sbe.v8.0.quoteid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cme.futures.ilink3.sbe.v8.0.quoterejectreason", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.quote_req_id = ProtoField.new("Quote Req Id", "cme.futures.ilink3.sbe.v8.0.quotereqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.quote_set_id = ProtoField.new("Quote Set Id", "cme.futures.ilink3.sbe.v8.0.quotesetid", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.quote_sets_group = ProtoField.new("Quote Sets Group", "cme.futures.ilink3.sbe.v8.0.quotesetsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.quote_sets_groups = ProtoField.new("Quote Sets Groups", "cme.futures.ilink3.sbe.v8.0.quotesetsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.quote_status = ProtoField.new("Quote Status", "cme.futures.ilink3.sbe.v8.0.quotestatus", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.quote_type = ProtoField.new("Quote Type", "cme.futures.ilink3.sbe.v8.0.quotetype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.reason = ProtoField.new("Reason", "cme.futures.ilink3.sbe.v8.0.reason", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.ref_msg_type = ProtoField.new("Ref Msg Type", "cme.futures.ilink3.sbe.v8.0.refmsgtype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.ref_seq_num = ProtoField.new("Ref Seq Num", "cme.futures.ilink3.sbe.v8.0.refseqnum", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.ref_tag_id = ProtoField.new("Ref Tag Id", "cme.futures.ilink3.sbe.v8.0.reftagid", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.related_sym_group = ProtoField.new("Related Sym Group", "cme.futures.ilink3.sbe.v8.0.relatedsymgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.related_sym_groups = ProtoField.new("Related Sym Groups", "cme.futures.ilink3.sbe.v8.0.relatedsymgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.request_for_quote_543 = ProtoField.new("Request For Quote 543", "cme.futures.ilink3.sbe.v8.0.requestforquote543", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.request_for_quote_ack_546 = ProtoField.new("Request For Quote Ack 546", "cme.futures.ilink3.sbe.v8.0.requestforquoteack546", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.request_result = ProtoField.new("Request Result", "cme.futures.ilink3.sbe.v8.0.requestresult", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.request_time = ProtoField.new("Request Time", "cme.futures.ilink3.sbe.v8.0.requesttime", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.request_timestamp = ProtoField.new("Request Timestamp", "cme.futures.ilink3.sbe.v8.0.requesttimestamp", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.requesting_party_i_ds_group = ProtoField.new("Requesting Party I Ds Group", "cme.futures.ilink3.sbe.v8.0.requestingpartyidsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.requesting_party_i_ds_groups = ProtoField.new("Requesting Party I Ds Groups", "cme.futures.ilink3.sbe.v8.0.requestingpartyidsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.requesting_party_id = ProtoField.new("Requesting Party Id", "cme.futures.ilink3.sbe.v8.0.requestingpartyid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.requesting_party_id_source = ProtoField.new("Requesting Party Id Source", "cme.futures.ilink3.sbe.v8.0.requestingpartyidsource", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.requesting_party_role = ProtoField.new("Requesting Party Role", "cme.futures.ilink3.sbe.v8.0.requestingpartyrole", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.reserved_1 = ProtoField.new("Reserved 1", "cme.futures.ilink3.sbe.v8.0.reserved1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
cme_futures_ilink3_sbe_v8_0.fields.reserved_2 = ProtoField.new("Reserved 2", "cme.futures.ilink3.sbe.v8.0.reserved2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
cme_futures_ilink3_sbe_v8_0.fields.reserved_3 = ProtoField.new("Reserved 3", "cme.futures.ilink3.sbe.v8.0.reserved3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
cme_futures_ilink3_sbe_v8_0.fields.reserved_4 = ProtoField.new("Reserved 4", "cme.futures.ilink3.sbe.v8.0.reserved4", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
cme_futures_ilink3_sbe_v8_0.fields.reserved_5 = ProtoField.new("Reserved 5", "cme.futures.ilink3.sbe.v8.0.reserved5", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
cme_futures_ilink3_sbe_v8_0.fields.retransmission_509 = ProtoField.new("Retransmission 509", "cme.futures.ilink3.sbe.v8.0.retransmission509", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.retransmit_reject_510 = ProtoField.new("Retransmit Reject 510", "cme.futures.ilink3.sbe.v8.0.retransmitreject510", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.retransmit_request_508 = ProtoField.new("Retransmit Request 508", "cme.futures.ilink3.sbe.v8.0.retransmitrequest508", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.risk_free_rate = ProtoField.new("Risk Free Rate", "cme.futures.ilink3.sbe.v8.0.riskfreerate", ftypes.INT32)
cme_futures_ilink3_sbe_v8_0.fields.schema_id = ProtoField.new("Schema Id", "cme.futures.ilink3.sbe.v8.0.schemaid", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.sec_exec_id = ProtoField.new("Sec Exec Id", "cme.futures.ilink3.sbe.v8.0.secexecid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.secret_key_secure_id_expiration = ProtoField.new("Secret Key Secure Id Expiration", "cme.futures.ilink3.sbe.v8.0.secretkeysecureidexpiration", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.security_definition_request_541 = ProtoField.new("Security Definition Request 541", "cme.futures.ilink3.sbe.v8.0.securitydefinitionrequest541", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.security_definition_response_542 = ProtoField.new("Security Definition Response 542", "cme.futures.ilink3.sbe.v8.0.securitydefinitionresponse542", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.security_group = ProtoField.new("Security Group", "cme.futures.ilink3.sbe.v8.0.securitygroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.security_id = ProtoField.new("Security Id", "cme.futures.ilink3.sbe.v8.0.securityid", ftypes.INT32)
cme_futures_ilink3_sbe_v8_0.fields.security_req_id = ProtoField.new("Security Req Id", "cme.futures.ilink3.sbe.v8.0.securityreqid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.security_response_id = ProtoField.new("Security Response Id", "cme.futures.ilink3.sbe.v8.0.securityresponseid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.security_response_type = ProtoField.new("Security Response Type", "cme.futures.ilink3.sbe.v8.0.securityresponsetype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.security_sub_type = ProtoField.new("Security Sub Type", "cme.futures.ilink3.sbe.v8.0.securitysubtype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.security_type = ProtoField.new("Security Type", "cme.futures.ilink3.sbe.v8.0.securitytype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.self_match_prevention_id = ProtoField.new("Self Match Prevention Id", "cme.futures.ilink3.sbe.v8.0.selfmatchpreventionid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.self_match_prevention_instruction = ProtoField.new("Self Match Prevention Instruction", "cme.futures.ilink3.sbe.v8.0.selfmatchpreventioninstruction", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.sender_id = ProtoField.new("Sender Id", "cme.futures.ilink3.sbe.v8.0.senderid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.sending_time_epoch = ProtoField.new("Sending Time Epoch", "cme.futures.ilink3.sbe.v8.0.sendingtimeepoch", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.seq_num = ProtoField.new("Seq Num", "cme.futures.ilink3.sbe.v8.0.seqnum", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.sequence_506 = ProtoField.new("Sequence 506", "cme.futures.ilink3.sbe.v8.0.sequence506", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.session = ProtoField.new("Session", "cme.futures.ilink3.sbe.v8.0.session", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.short_sale_type = ProtoField.new("Short Sale Type", "cme.futures.ilink3.sbe.v8.0.shortsaletype", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.side = ProtoField.new("Side", "cme.futures.ilink3.sbe.v8.0.side", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.side_time_in_force = ProtoField.new("Side Time In Force", "cme.futures.ilink3.sbe.v8.0.sidetimeinforce", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.side_trade_id = ProtoField.new("Side Trade Id", "cme.futures.ilink3.sbe.v8.0.sidetradeid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.sides_group = ProtoField.new("Sides Group", "cme.futures.ilink3.sbe.v8.0.sidesgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.sides_groups = ProtoField.new("Sides Groups", "cme.futures.ilink3.sbe.v8.0.sidesgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.split_msg = ProtoField.new("Split Msg", "cme.futures.ilink3.sbe.v8.0.splitmsg", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.start_date = ProtoField.new("Start Date", "cme.futures.ilink3.sbe.v8.0.startdate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.stop_px = ProtoField.new("Stop Px", "cme.futures.ilink3.sbe.v8.0.stoppx", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.symbol = ProtoField.new("Symbol", "cme.futures.ilink3.sbe.v8.0.symbol", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.template_id = ProtoField.new("Template Id", "cme.futures.ilink3.sbe.v8.0.templateid", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.terminate_507 = ProtoField.new("Terminate 507", "cme.futures.ilink3.sbe.v8.0.terminate507", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.text = ProtoField.new("Text", "cme.futures.ilink3.sbe.v8.0.text", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.time_in_force = ProtoField.new("Time In Force", "cme.futures.ilink3.sbe.v8.0.timeinforce", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.time_to_expiration = ProtoField.new("Time To Expiration", "cme.futures.ilink3.sbe.v8.0.timetoexpiration", ftypes.INT32)
cme_futures_ilink3_sbe_v8_0.fields.tot_no_quote_entries = ProtoField.new("Tot No Quote Entries", "cme.futures.ilink3.sbe.v8.0.totnoquoteentries", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.tot_num_parties = ProtoField.new("Tot Num Parties", "cme.futures.ilink3.sbe.v8.0.totnumparties", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "cme.futures.ilink3.sbe.v8.0.totalaffectedorders", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.total_num_securities = ProtoField.new("Total Num Securities", "cme.futures.ilink3.sbe.v8.0.totalnumsecurities", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.trade_date = ProtoField.new("Trade Date", "cme.futures.ilink3.sbe.v8.0.tradedate", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.trade_link_id = ProtoField.new("Trade Link Id", "cme.futures.ilink3.sbe.v8.0.tradelinkid", ftypes.UINT32)
cme_futures_ilink3_sbe_v8_0.fields.trading_system_name = ProtoField.new("Trading System Name", "cme.futures.ilink3.sbe.v8.0.tradingsystemname", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.trading_system_vendor = ProtoField.new("Trading System Vendor", "cme.futures.ilink3.sbe.v8.0.tradingsystemvendor", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.trading_system_version = ProtoField.new("Trading System Version", "cme.futures.ilink3.sbe.v8.0.tradingsystemversion", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "cme.futures.ilink3.sbe.v8.0.transbkdtime", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.transact_time = ProtoField.new("Transact Time", "cme.futures.ilink3.sbe.v8.0.transacttime", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.underlying_px = ProtoField.new("Underlying Px", "cme.futures.ilink3.sbe.v8.0.underlyingpx", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.underlying_security_alt_id = ProtoField.new("Underlying Security Alt Id", "cme.futures.ilink3.sbe.v8.0.underlyingsecurityaltid", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.underlying_security_alt_id_source = ProtoField.new("Underlying Security Alt Id Source", "cme.futures.ilink3.sbe.v8.0.underlyingsecurityaltidsource", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.underlying_security_id = ProtoField.new("Underlying Security Id", "cme.futures.ilink3.sbe.v8.0.underlyingsecurityid", ftypes.INT32)
cme_futures_ilink3_sbe_v8_0.fields.underlyings_group = ProtoField.new("Underlyings Group", "cme.futures.ilink3.sbe.v8.0.underlyingsgroup", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.underlyings_groups = ProtoField.new("Underlyings Groups", "cme.futures.ilink3.sbe.v8.0.underlyingsgroups", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.unsolicited_cancel_type = ProtoField.new("Unsolicited Cancel Type", "cme.futures.ilink3.sbe.v8.0.unsolicitedcanceltype", ftypes.STRING)
cme_futures_ilink3_sbe_v8_0.fields.uuid = ProtoField.new("Uuid", "cme.futures.ilink3.sbe.v8.0.uuid", ftypes.UINT64)
cme_futures_ilink3_sbe_v8_0.fields.version = ProtoField.new("Version", "cme.futures.ilink3.sbe.v8.0.version", ftypes.UINT16)
cme_futures_ilink3_sbe_v8_0.fields.volatility = ProtoField.new("Volatility", "cme.futures.ilink3.sbe.v8.0.volatility", ftypes.INT64)
cme_futures_ilink3_sbe_v8_0.fields.week = ProtoField.new("Week", "cme.futures.ilink3.sbe.v8.0.week", ftypes.UINT8)
cme_futures_ilink3_sbe_v8_0.fields.year = ProtoField.new("Year", "cme.futures.ilink3.sbe.v8.0.year", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cme Futures iLink3 Sbe 8.0 Element Dissection Options
show.affected_orders_group = true
show.affected_orders_groups = true
show.business_reject_521 = true
show.establish_503 = true
show.establishment_ack_504 = true
show.establishment_reject_505 = true
show.exec_inst = true
show.execution_report_cancel_534 = true
show.execution_report_elimination_524 = true
show.execution_report_modify_531 = true
show.execution_report_new_522 = true
show.execution_report_reject_523 = true
show.execution_report_status_532 = true
show.execution_report_trade_addendum_outright_548 = true
show.execution_report_trade_addendum_spread_549 = true
show.execution_report_trade_addendum_spread_leg_550 = true
show.execution_report_trade_outright_525 = true
show.execution_report_trade_spread_526 = true
show.execution_report_trade_spread_leg_527 = true
show.fills_group = true
show.fills_groups = true
show.group_size = true
show.legs_group = true
show.legs_groups = true
show.mass_quote_517 = true
show.mass_quote_ack_545 = true
show.maturity_month_year = true
show.message_header = true
show.negotiate_500 = true
show.negotiation_reject_502 = true
show.negotiation_response_501 = true
show.new_order_cross_544 = true
show.new_order_single_514 = true
show.not_applied_513 = true
show.order_cancel_reject_535 = true
show.order_cancel_replace_reject_536 = true
show.order_cancel_replace_request_515 = true
show.order_cancel_request_516 = true
show.order_events_group = true
show.order_events_groups = true
show.order_mass_action_report_558 = true
show.order_mass_action_request_529 = true
show.order_mass_status_request_530 = true
show.order_status_request_533 = true
show.packet = true
show.packet_header = true
show.party_details_definition_request_518 = true
show.party_details_definition_request_ack_519 = true
show.party_details_group = true
show.party_details_groups = true
show.party_details_list_report_538 = true
show.party_details_list_request_537 = true
show.party_i_ds_group = true
show.party_i_ds_groups = true
show.quote_cancel_528 = true
show.quote_cancel_ack_547 = true
show.quote_entries_group = true
show.quote_entries_groups = true
show.quote_sets_group = true
show.quote_sets_groups = true
show.related_sym_group = true
show.related_sym_groups = true
show.request_for_quote_543 = true
show.request_for_quote_ack_546 = true
show.requesting_party_i_ds_group = true
show.requesting_party_i_ds_groups = true
show.retransmission_509 = true
show.retransmit_reject_510 = true
show.retransmit_request_508 = true
show.security_definition_request_541 = true
show.security_definition_response_542 = true
show.sequence_506 = true
show.sides_group = true
show.sides_groups = true
show.terminate_507 = true
show.underlyings_group = true
show.underlyings_groups = true
show.payload = false

-- Register Cme Futures iLink3 Sbe 8.0 Show Options
cme_futures_ilink3_sbe_v8_0.prefs.show_affected_orders_group = Pref.bool("Show Affected Orders Group", show.affected_orders_group, "Parse and add Affected Orders Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_affected_orders_groups = Pref.bool("Show Affected Orders Groups", show.affected_orders_groups, "Parse and add Affected Orders Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_business_reject_521 = Pref.bool("Show Business Reject 521", show.business_reject_521, "Parse and add Business Reject 521 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_establish_503 = Pref.bool("Show Establish 503", show.establish_503, "Parse and add Establish 503 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_establishment_ack_504 = Pref.bool("Show Establishment Ack 504", show.establishment_ack_504, "Parse and add Establishment Ack 504 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_establishment_reject_505 = Pref.bool("Show Establishment Reject 505", show.establishment_reject_505, "Parse and add Establishment Reject 505 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_exec_inst = Pref.bool("Show Exec Inst", show.exec_inst, "Parse and add Exec Inst to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_cancel_534 = Pref.bool("Show Execution Report Cancel 534", show.execution_report_cancel_534, "Parse and add Execution Report Cancel 534 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_elimination_524 = Pref.bool("Show Execution Report Elimination 524", show.execution_report_elimination_524, "Parse and add Execution Report Elimination 524 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_modify_531 = Pref.bool("Show Execution Report Modify 531", show.execution_report_modify_531, "Parse and add Execution Report Modify 531 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_new_522 = Pref.bool("Show Execution Report New 522", show.execution_report_new_522, "Parse and add Execution Report New 522 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_reject_523 = Pref.bool("Show Execution Report Reject 523", show.execution_report_reject_523, "Parse and add Execution Report Reject 523 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_status_532 = Pref.bool("Show Execution Report Status 532", show.execution_report_status_532, "Parse and add Execution Report Status 532 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_outright_548 = Pref.bool("Show Execution Report Trade Addendum Outright 548", show.execution_report_trade_addendum_outright_548, "Parse and add Execution Report Trade Addendum Outright 548 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_spread_549 = Pref.bool("Show Execution Report Trade Addendum Spread 549", show.execution_report_trade_addendum_spread_549, "Parse and add Execution Report Trade Addendum Spread 549 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_spread_leg_550 = Pref.bool("Show Execution Report Trade Addendum Spread Leg 550", show.execution_report_trade_addendum_spread_leg_550, "Parse and add Execution Report Trade Addendum Spread Leg 550 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_outright_525 = Pref.bool("Show Execution Report Trade Outright 525", show.execution_report_trade_outright_525, "Parse and add Execution Report Trade Outright 525 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_spread_526 = Pref.bool("Show Execution Report Trade Spread 526", show.execution_report_trade_spread_526, "Parse and add Execution Report Trade Spread 526 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_spread_leg_527 = Pref.bool("Show Execution Report Trade Spread Leg 527", show.execution_report_trade_spread_leg_527, "Parse and add Execution Report Trade Spread Leg 527 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_fills_group = Pref.bool("Show Fills Group", show.fills_group, "Parse and add Fills Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_fills_groups = Pref.bool("Show Fills Groups", show.fills_groups, "Parse and add Fills Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_group_size = Pref.bool("Show Group Size", show.group_size, "Parse and add Group Size to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_legs_group = Pref.bool("Show Legs Group", show.legs_group, "Parse and add Legs Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_legs_groups = Pref.bool("Show Legs Groups", show.legs_groups, "Parse and add Legs Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_mass_quote_517 = Pref.bool("Show Mass Quote 517", show.mass_quote_517, "Parse and add Mass Quote 517 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_mass_quote_ack_545 = Pref.bool("Show Mass Quote Ack 545", show.mass_quote_ack_545, "Parse and add Mass Quote Ack 545 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_maturity_month_year = Pref.bool("Show Maturity Month Year", show.maturity_month_year, "Parse and add Maturity Month Year to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_negotiate_500 = Pref.bool("Show Negotiate 500", show.negotiate_500, "Parse and add Negotiate 500 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_negotiation_reject_502 = Pref.bool("Show Negotiation Reject 502", show.negotiation_reject_502, "Parse and add Negotiation Reject 502 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_negotiation_response_501 = Pref.bool("Show Negotiation Response 501", show.negotiation_response_501, "Parse and add Negotiation Response 501 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_new_order_cross_544 = Pref.bool("Show New Order Cross 544", show.new_order_cross_544, "Parse and add New Order Cross 544 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_new_order_single_514 = Pref.bool("Show New Order Single 514", show.new_order_single_514, "Parse and add New Order Single 514 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_not_applied_513 = Pref.bool("Show Not Applied 513", show.not_applied_513, "Parse and add Not Applied 513 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_reject_535 = Pref.bool("Show Order Cancel Reject 535", show.order_cancel_reject_535, "Parse and add Order Cancel Reject 535 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_replace_reject_536 = Pref.bool("Show Order Cancel Replace Reject 536", show.order_cancel_replace_reject_536, "Parse and add Order Cancel Replace Reject 536 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_replace_request_515 = Pref.bool("Show Order Cancel Replace Request 515", show.order_cancel_replace_request_515, "Parse and add Order Cancel Replace Request 515 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_request_516 = Pref.bool("Show Order Cancel Request 516", show.order_cancel_request_516, "Parse and add Order Cancel Request 516 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_events_group = Pref.bool("Show Order Events Group", show.order_events_group, "Parse and add Order Events Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_events_groups = Pref.bool("Show Order Events Groups", show.order_events_groups, "Parse and add Order Events Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_action_report_558 = Pref.bool("Show Order Mass Action Report 558", show.order_mass_action_report_558, "Parse and add Order Mass Action Report 558 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_action_request_529 = Pref.bool("Show Order Mass Action Request 529", show.order_mass_action_request_529, "Parse and add Order Mass Action Request 529 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_status_request_530 = Pref.bool("Show Order Mass Status Request 530", show.order_mass_status_request_530, "Parse and add Order Mass Status Request 530 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_order_status_request_533 = Pref.bool("Show Order Status Request 533", show.order_status_request_533, "Parse and add Order Status Request 533 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_definition_request_518 = Pref.bool("Show Party Details Definition Request 518", show.party_details_definition_request_518, "Parse and add Party Details Definition Request 518 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_definition_request_ack_519 = Pref.bool("Show Party Details Definition Request Ack 519", show.party_details_definition_request_ack_519, "Parse and add Party Details Definition Request Ack 519 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_group = Pref.bool("Show Party Details Group", show.party_details_group, "Parse and add Party Details Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_groups = Pref.bool("Show Party Details Groups", show.party_details_groups, "Parse and add Party Details Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_list_report_538 = Pref.bool("Show Party Details List Report 538", show.party_details_list_report_538, "Parse and add Party Details List Report 538 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_list_request_537 = Pref.bool("Show Party Details List Request 537", show.party_details_list_request_537, "Parse and add Party Details List Request 537 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_party_i_ds_group = Pref.bool("Show Party I Ds Group", show.party_i_ds_group, "Parse and add Party I Ds Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_party_i_ds_groups = Pref.bool("Show Party I Ds Groups", show.party_i_ds_groups, "Parse and add Party I Ds Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_quote_cancel_528 = Pref.bool("Show Quote Cancel 528", show.quote_cancel_528, "Parse and add Quote Cancel 528 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_quote_cancel_ack_547 = Pref.bool("Show Quote Cancel Ack 547", show.quote_cancel_ack_547, "Parse and add Quote Cancel Ack 547 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_quote_entries_group = Pref.bool("Show Quote Entries Group", show.quote_entries_group, "Parse and add Quote Entries Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_quote_entries_groups = Pref.bool("Show Quote Entries Groups", show.quote_entries_groups, "Parse and add Quote Entries Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_quote_sets_group = Pref.bool("Show Quote Sets Group", show.quote_sets_group, "Parse and add Quote Sets Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_quote_sets_groups = Pref.bool("Show Quote Sets Groups", show.quote_sets_groups, "Parse and add Quote Sets Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_related_sym_group = Pref.bool("Show Related Sym Group", show.related_sym_group, "Parse and add Related Sym Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_related_sym_groups = Pref.bool("Show Related Sym Groups", show.related_sym_groups, "Parse and add Related Sym Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_request_for_quote_543 = Pref.bool("Show Request For Quote 543", show.request_for_quote_543, "Parse and add Request For Quote 543 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_request_for_quote_ack_546 = Pref.bool("Show Request For Quote Ack 546", show.request_for_quote_ack_546, "Parse and add Request For Quote Ack 546 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_requesting_party_i_ds_group = Pref.bool("Show Requesting Party I Ds Group", show.requesting_party_i_ds_group, "Parse and add Requesting Party I Ds Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_requesting_party_i_ds_groups = Pref.bool("Show Requesting Party I Ds Groups", show.requesting_party_i_ds_groups, "Parse and add Requesting Party I Ds Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_retransmission_509 = Pref.bool("Show Retransmission 509", show.retransmission_509, "Parse and add Retransmission 509 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_retransmit_reject_510 = Pref.bool("Show Retransmit Reject 510", show.retransmit_reject_510, "Parse and add Retransmit Reject 510 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_retransmit_request_508 = Pref.bool("Show Retransmit Request 508", show.retransmit_request_508, "Parse and add Retransmit Request 508 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_security_definition_request_541 = Pref.bool("Show Security Definition Request 541", show.security_definition_request_541, "Parse and add Security Definition Request 541 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_security_definition_response_542 = Pref.bool("Show Security Definition Response 542", show.security_definition_response_542, "Parse and add Security Definition Response 542 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_sequence_506 = Pref.bool("Show Sequence 506", show.sequence_506, "Parse and add Sequence 506 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_sides_group = Pref.bool("Show Sides Group", show.sides_group, "Parse and add Sides Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_sides_groups = Pref.bool("Show Sides Groups", show.sides_groups, "Parse and add Sides Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_terminate_507 = Pref.bool("Show Terminate 507", show.terminate_507, "Parse and add Terminate 507 to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_underlyings_group = Pref.bool("Show Underlyings Group", show.underlyings_group, "Parse and add Underlyings Group to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_underlyings_groups = Pref.bool("Show Underlyings Groups", show.underlyings_groups, "Parse and add Underlyings Groups to protocol tree")
cme_futures_ilink3_sbe_v8_0.prefs.show_payload = Pref.bool("Show payload", show.payload, "Parse and add payload to protocol tree")

-- Handle changed preferences
function cme_futures_ilink3_sbe_v8_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.affected_orders_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_affected_orders_group then
    show.affected_orders_group = cme_futures_ilink3_sbe_v8_0.prefs.show_affected_orders_group
    changed = true
  end
  if show.affected_orders_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_affected_orders_groups then
    show.affected_orders_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_affected_orders_groups
    changed = true
  end
  if show.business_reject_521 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_business_reject_521 then
    show.business_reject_521 = cme_futures_ilink3_sbe_v8_0.prefs.show_business_reject_521
    changed = true
  end
  if show.establish_503 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_establish_503 then
    show.establish_503 = cme_futures_ilink3_sbe_v8_0.prefs.show_establish_503
    changed = true
  end
  if show.establishment_ack_504 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_establishment_ack_504 then
    show.establishment_ack_504 = cme_futures_ilink3_sbe_v8_0.prefs.show_establishment_ack_504
    changed = true
  end
  if show.establishment_reject_505 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_establishment_reject_505 then
    show.establishment_reject_505 = cme_futures_ilink3_sbe_v8_0.prefs.show_establishment_reject_505
    changed = true
  end
  if show.exec_inst ~= cme_futures_ilink3_sbe_v8_0.prefs.show_exec_inst then
    show.exec_inst = cme_futures_ilink3_sbe_v8_0.prefs.show_exec_inst
    changed = true
  end
  if show.execution_report_cancel_534 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_cancel_534 then
    show.execution_report_cancel_534 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_cancel_534
    changed = true
  end
  if show.execution_report_elimination_524 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_elimination_524 then
    show.execution_report_elimination_524 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_elimination_524
    changed = true
  end
  if show.execution_report_modify_531 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_modify_531 then
    show.execution_report_modify_531 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_modify_531
    changed = true
  end
  if show.execution_report_new_522 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_new_522 then
    show.execution_report_new_522 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_new_522
    changed = true
  end
  if show.execution_report_reject_523 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_reject_523 then
    show.execution_report_reject_523 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_reject_523
    changed = true
  end
  if show.execution_report_status_532 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_status_532 then
    show.execution_report_status_532 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_status_532
    changed = true
  end
  if show.execution_report_trade_addendum_outright_548 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_outright_548 then
    show.execution_report_trade_addendum_outright_548 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_outright_548
    changed = true
  end
  if show.execution_report_trade_addendum_spread_549 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_spread_549 then
    show.execution_report_trade_addendum_spread_549 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_spread_549
    changed = true
  end
  if show.execution_report_trade_addendum_spread_leg_550 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_spread_leg_550 then
    show.execution_report_trade_addendum_spread_leg_550 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_addendum_spread_leg_550
    changed = true
  end
  if show.execution_report_trade_outright_525 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_outright_525 then
    show.execution_report_trade_outright_525 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_outright_525
    changed = true
  end
  if show.execution_report_trade_spread_526 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_spread_526 then
    show.execution_report_trade_spread_526 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_spread_526
    changed = true
  end
  if show.execution_report_trade_spread_leg_527 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_spread_leg_527 then
    show.execution_report_trade_spread_leg_527 = cme_futures_ilink3_sbe_v8_0.prefs.show_execution_report_trade_spread_leg_527
    changed = true
  end
  if show.fills_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_fills_group then
    show.fills_group = cme_futures_ilink3_sbe_v8_0.prefs.show_fills_group
    changed = true
  end
  if show.fills_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_fills_groups then
    show.fills_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_fills_groups
    changed = true
  end
  if show.group_size ~= cme_futures_ilink3_sbe_v8_0.prefs.show_group_size then
    show.group_size = cme_futures_ilink3_sbe_v8_0.prefs.show_group_size
    changed = true
  end
  if show.legs_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_legs_group then
    show.legs_group = cme_futures_ilink3_sbe_v8_0.prefs.show_legs_group
    changed = true
  end
  if show.legs_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_legs_groups then
    show.legs_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_legs_groups
    changed = true
  end
  if show.mass_quote_517 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_mass_quote_517 then
    show.mass_quote_517 = cme_futures_ilink3_sbe_v8_0.prefs.show_mass_quote_517
    changed = true
  end
  if show.mass_quote_ack_545 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_mass_quote_ack_545 then
    show.mass_quote_ack_545 = cme_futures_ilink3_sbe_v8_0.prefs.show_mass_quote_ack_545
    changed = true
  end
  if show.maturity_month_year ~= cme_futures_ilink3_sbe_v8_0.prefs.show_maturity_month_year then
    show.maturity_month_year = cme_futures_ilink3_sbe_v8_0.prefs.show_maturity_month_year
    changed = true
  end
  if show.message_header ~= cme_futures_ilink3_sbe_v8_0.prefs.show_message_header then
    show.message_header = cme_futures_ilink3_sbe_v8_0.prefs.show_message_header
    changed = true
  end
  if show.negotiate_500 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_negotiate_500 then
    show.negotiate_500 = cme_futures_ilink3_sbe_v8_0.prefs.show_negotiate_500
    changed = true
  end
  if show.negotiation_reject_502 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_negotiation_reject_502 then
    show.negotiation_reject_502 = cme_futures_ilink3_sbe_v8_0.prefs.show_negotiation_reject_502
    changed = true
  end
  if show.negotiation_response_501 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_negotiation_response_501 then
    show.negotiation_response_501 = cme_futures_ilink3_sbe_v8_0.prefs.show_negotiation_response_501
    changed = true
  end
  if show.new_order_cross_544 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_new_order_cross_544 then
    show.new_order_cross_544 = cme_futures_ilink3_sbe_v8_0.prefs.show_new_order_cross_544
    changed = true
  end
  if show.new_order_single_514 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_new_order_single_514 then
    show.new_order_single_514 = cme_futures_ilink3_sbe_v8_0.prefs.show_new_order_single_514
    changed = true
  end
  if show.not_applied_513 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_not_applied_513 then
    show.not_applied_513 = cme_futures_ilink3_sbe_v8_0.prefs.show_not_applied_513
    changed = true
  end
  if show.order_cancel_reject_535 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_reject_535 then
    show.order_cancel_reject_535 = cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_reject_535
    changed = true
  end
  if show.order_cancel_replace_reject_536 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_replace_reject_536 then
    show.order_cancel_replace_reject_536 = cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_replace_reject_536
    changed = true
  end
  if show.order_cancel_replace_request_515 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_replace_request_515 then
    show.order_cancel_replace_request_515 = cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_replace_request_515
    changed = true
  end
  if show.order_cancel_request_516 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_request_516 then
    show.order_cancel_request_516 = cme_futures_ilink3_sbe_v8_0.prefs.show_order_cancel_request_516
    changed = true
  end
  if show.order_events_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_events_group then
    show.order_events_group = cme_futures_ilink3_sbe_v8_0.prefs.show_order_events_group
    changed = true
  end
  if show.order_events_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_events_groups then
    show.order_events_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_order_events_groups
    changed = true
  end
  if show.order_mass_action_report_558 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_action_report_558 then
    show.order_mass_action_report_558 = cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_action_report_558
    changed = true
  end
  if show.order_mass_action_request_529 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_action_request_529 then
    show.order_mass_action_request_529 = cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_action_request_529
    changed = true
  end
  if show.order_mass_status_request_530 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_status_request_530 then
    show.order_mass_status_request_530 = cme_futures_ilink3_sbe_v8_0.prefs.show_order_mass_status_request_530
    changed = true
  end
  if show.order_status_request_533 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_order_status_request_533 then
    show.order_status_request_533 = cme_futures_ilink3_sbe_v8_0.prefs.show_order_status_request_533
    changed = true
  end
  if show.packet ~= cme_futures_ilink3_sbe_v8_0.prefs.show_packet then
    show.packet = cme_futures_ilink3_sbe_v8_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= cme_futures_ilink3_sbe_v8_0.prefs.show_packet_header then
    show.packet_header = cme_futures_ilink3_sbe_v8_0.prefs.show_packet_header
    changed = true
  end
  if show.party_details_definition_request_518 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_definition_request_518 then
    show.party_details_definition_request_518 = cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_definition_request_518
    changed = true
  end
  if show.party_details_definition_request_ack_519 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_definition_request_ack_519 then
    show.party_details_definition_request_ack_519 = cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_definition_request_ack_519
    changed = true
  end
  if show.party_details_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_group then
    show.party_details_group = cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_group
    changed = true
  end
  if show.party_details_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_groups then
    show.party_details_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_groups
    changed = true
  end
  if show.party_details_list_report_538 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_list_report_538 then
    show.party_details_list_report_538 = cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_list_report_538
    changed = true
  end
  if show.party_details_list_request_537 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_list_request_537 then
    show.party_details_list_request_537 = cme_futures_ilink3_sbe_v8_0.prefs.show_party_details_list_request_537
    changed = true
  end
  if show.party_i_ds_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_party_i_ds_group then
    show.party_i_ds_group = cme_futures_ilink3_sbe_v8_0.prefs.show_party_i_ds_group
    changed = true
  end
  if show.party_i_ds_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_party_i_ds_groups then
    show.party_i_ds_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_party_i_ds_groups
    changed = true
  end
  if show.quote_cancel_528 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_quote_cancel_528 then
    show.quote_cancel_528 = cme_futures_ilink3_sbe_v8_0.prefs.show_quote_cancel_528
    changed = true
  end
  if show.quote_cancel_ack_547 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_quote_cancel_ack_547 then
    show.quote_cancel_ack_547 = cme_futures_ilink3_sbe_v8_0.prefs.show_quote_cancel_ack_547
    changed = true
  end
  if show.quote_entries_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_quote_entries_group then
    show.quote_entries_group = cme_futures_ilink3_sbe_v8_0.prefs.show_quote_entries_group
    changed = true
  end
  if show.quote_entries_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_quote_entries_groups then
    show.quote_entries_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_quote_entries_groups
    changed = true
  end
  if show.quote_sets_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_quote_sets_group then
    show.quote_sets_group = cme_futures_ilink3_sbe_v8_0.prefs.show_quote_sets_group
    changed = true
  end
  if show.quote_sets_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_quote_sets_groups then
    show.quote_sets_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_quote_sets_groups
    changed = true
  end
  if show.related_sym_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_related_sym_group then
    show.related_sym_group = cme_futures_ilink3_sbe_v8_0.prefs.show_related_sym_group
    changed = true
  end
  if show.related_sym_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_related_sym_groups then
    show.related_sym_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_related_sym_groups
    changed = true
  end
  if show.request_for_quote_543 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_request_for_quote_543 then
    show.request_for_quote_543 = cme_futures_ilink3_sbe_v8_0.prefs.show_request_for_quote_543
    changed = true
  end
  if show.request_for_quote_ack_546 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_request_for_quote_ack_546 then
    show.request_for_quote_ack_546 = cme_futures_ilink3_sbe_v8_0.prefs.show_request_for_quote_ack_546
    changed = true
  end
  if show.requesting_party_i_ds_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_requesting_party_i_ds_group then
    show.requesting_party_i_ds_group = cme_futures_ilink3_sbe_v8_0.prefs.show_requesting_party_i_ds_group
    changed = true
  end
  if show.requesting_party_i_ds_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_requesting_party_i_ds_groups then
    show.requesting_party_i_ds_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_requesting_party_i_ds_groups
    changed = true
  end
  if show.retransmission_509 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_retransmission_509 then
    show.retransmission_509 = cme_futures_ilink3_sbe_v8_0.prefs.show_retransmission_509
    changed = true
  end
  if show.retransmit_reject_510 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_retransmit_reject_510 then
    show.retransmit_reject_510 = cme_futures_ilink3_sbe_v8_0.prefs.show_retransmit_reject_510
    changed = true
  end
  if show.retransmit_request_508 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_retransmit_request_508 then
    show.retransmit_request_508 = cme_futures_ilink3_sbe_v8_0.prefs.show_retransmit_request_508
    changed = true
  end
  if show.security_definition_request_541 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_security_definition_request_541 then
    show.security_definition_request_541 = cme_futures_ilink3_sbe_v8_0.prefs.show_security_definition_request_541
    changed = true
  end
  if show.security_definition_response_542 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_security_definition_response_542 then
    show.security_definition_response_542 = cme_futures_ilink3_sbe_v8_0.prefs.show_security_definition_response_542
    changed = true
  end
  if show.sequence_506 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_sequence_506 then
    show.sequence_506 = cme_futures_ilink3_sbe_v8_0.prefs.show_sequence_506
    changed = true
  end
  if show.sides_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_sides_group then
    show.sides_group = cme_futures_ilink3_sbe_v8_0.prefs.show_sides_group
    changed = true
  end
  if show.sides_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_sides_groups then
    show.sides_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_sides_groups
    changed = true
  end
  if show.terminate_507 ~= cme_futures_ilink3_sbe_v8_0.prefs.show_terminate_507 then
    show.terminate_507 = cme_futures_ilink3_sbe_v8_0.prefs.show_terminate_507
    changed = true
  end
  if show.underlyings_group ~= cme_futures_ilink3_sbe_v8_0.prefs.show_underlyings_group then
    show.underlyings_group = cme_futures_ilink3_sbe_v8_0.prefs.show_underlyings_group
    changed = true
  end
  if show.underlyings_groups ~= cme_futures_ilink3_sbe_v8_0.prefs.show_underlyings_groups then
    show.underlyings_groups = cme_futures_ilink3_sbe_v8_0.prefs.show_underlyings_groups
    changed = true
  end
  if show.payload ~= cme_futures_ilink3_sbe_v8_0.prefs.show_payload then
    show.payload = cme_futures_ilink3_sbe_v8_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cme Futures iLink3 Sbe 8.0
-----------------------------------------------------------------------

-- Size: Cxl Quantity
size_of.cxl_quantity = 4

-- Display: Cxl Quantity
display.cxl_quantity = function(value)
  return "Cxl Quantity: "..value
end

-- Dissect: Cxl Quantity
dissect.cxl_quantity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cxl_quantity)
  local value = range:le_uint()
  local display = display.cxl_quantity(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cxl_quantity, range, value, display)

  return offset + size_of.cxl_quantity
end

-- Size: Affected Order Id
size_of.affected_order_id = 8

-- Display: Affected Order Id
display.affected_order_id = function(value)
  return "Affected Order Id: "..value
end

-- Dissect: Affected Order Id
dissect.affected_order_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.affected_order_id)
  local value = range:le_uint64()
  local display = display.affected_order_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.affected_order_id, range, value, display)

  return offset + size_of.affected_order_id
end

-- Size: Orig Ci Ord Id
size_of.orig_ci_ord_id = 20

-- Display: Orig Ci Ord Id
display.orig_ci_ord_id = function(value)
  return "Orig Ci Ord Id: "..value
end

-- Dissect: Orig Ci Ord Id
dissect.orig_ci_ord_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.orig_ci_ord_id)
  local value = range:string()
  local display = display.orig_ci_ord_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.orig_ci_ord_id, range, value, display)

  return offset + size_of.orig_ci_ord_id
end

-- Display: Affected Orders Group
display.affected_orders_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Affected Orders Group
dissect.affected_orders_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Ci Ord Id: 20 Byte Ascii String
  index = dissect.orig_ci_ord_id(buffer, index, packet, parent)

  -- Affected Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.affected_order_id(buffer, index, packet, parent)

  -- Cxl Quantity: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cxl_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Affected Orders Group
dissect.affected_orders_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.affected_orders_group then
    local range = buffer(offset, 32)
    local display = display.affected_orders_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.affected_orders_group, range, display)
  end

  return dissect.affected_orders_group_fields(buffer, offset, packet, parent)
end

-- Size: Num In Group
size_of.num_in_group = 1

-- Display: Num In Group
display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
dissect.num_in_group = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.num_in_group)
  local value = range:le_uint()
  local display = display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.num_in_group, range, value, display)

  return offset + size_of.num_in_group
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.block_length, range, value, display)

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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.group_size, range, display)
  end

  return dissect.group_size_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Affected Orders Groups
size_of.affected_orders_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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
  index = dissect.group_size(buffer, index, packet, parent)

  -- Affected Orders Group: Struct of 3 fields
  local affected_orders_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, affected_orders_group_count do
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.affected_orders_groups, range, display)
  end

  return dissect.affected_orders_groups_fields(buffer, offset, packet, parent)
end

-- Size: Liquidity Flag
size_of.liquidity_flag = 1

-- Display: Liquidity Flag
display.liquidity_flag = function(value)
  return "Liquidity Flag: "..value
end

-- Dissect: Liquidity Flag
dissect.liquidity_flag = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.liquidity_flag)
  local value = range:le_uint()
  local display = display.liquidity_flag(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.liquidity_flag, range, value, display)

  return offset + size_of.liquidity_flag
end

-- Size: Split Msg
size_of.split_msg = 1

-- Display: Split Msg
display.split_msg = function(value)
  if value == 0 then
    return "Split Msg: Split Msg (0)"
  end
  if value == 1 then
    return "Split Msg: Split Msg (1)"
  end
  if value == 2 then
    return "Split Msg: Split Msg (2)"
  end

  return "Split Msg: Unknown("..value..")"
end

-- Dissect: Split Msg
dissect.split_msg = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.split_msg)
  local value = range:le_uint()
  local display = display.split_msg(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.split_msg, range, value, display)

  return offset + size_of.split_msg
end

-- Size: Time In Force
size_of.time_in_force = 1

-- Display: Time In Force
display.time_in_force = function(value)
  if value == 0 then
    return "Time In Force: Time In Force (0)"
  end
  if value == 1 then
    return "Time In Force: Time In Force (1)"
  end
  if value == 3 then
    return "Time In Force: Time In Force (3)"
  end
  if value == 4 then
    return "Time In Force: Time In Force (4)"
  end
  if value == 6 then
    return "Time In Force: Time In Force (6)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
dissect.time_in_force = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.time_in_force)
  local value = range:le_uint()
  local display = display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.time_in_force, range, value, display)

  return offset + size_of.time_in_force
end

-- Size: Ord Type
size_of.ord_type = 1

-- Display: Ord Type
display.ord_type = function(value)
  return "Ord Type: "..value
end

-- Dissect: Ord Type
dissect.ord_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ord_type)
  local value = range:string()
  local display = display.ord_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ord_type, range, value, display)

  return offset + size_of.ord_type
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
  local value = range:le_uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.side, range, value, display)

  return offset + size_of.side
end

-- Size: Mass Cancel Request Type
size_of.mass_cancel_request_type = 1

-- Display: Mass Cancel Request Type
display.mass_cancel_request_type = function(value)
  return "Mass Cancel Request Type: "..value
end

-- Dissect: Mass Cancel Request Type
dissect.mass_cancel_request_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mass_cancel_request_type)
  local value = range:le_uint()
  local display = display.mass_cancel_request_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_cancel_request_type, range, value, display)

  return offset + size_of.mass_cancel_request_type
end

-- Size: Market Segment Id
size_of.market_segment_id = 1

-- Display: Market Segment Id
display.market_segment_id = function(value)
  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
dissect.market_segment_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_segment_id)
  local value = range:le_uint()
  local display = display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.market_segment_id, range, value, display)

  return offset + size_of.market_segment_id
end

-- Size: Mass Action Reject Reason
size_of.mass_action_reject_reason = 1

-- Display: Mass Action Reject Reason
display.mass_action_reject_reason = function(value)
  return "Mass Action Reject Reason: "..value
end

-- Dissect: Mass Action Reject Reason
dissect.mass_action_reject_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mass_action_reject_reason)
  local value = range:le_uint()
  local display = display.mass_action_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_action_reject_reason, range, value, display)

  return offset + size_of.mass_action_reject_reason
end

-- Size: Last Fragment
size_of.last_fragment = 1

-- Display: Last Fragment
display.last_fragment = function(value)
  return "Last Fragment: "..value
end

-- Dissect: Last Fragment
dissect.last_fragment = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_fragment)
  local value = range:le_uint()
  local display = display.last_fragment(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.last_fragment, range, value, display)

  return offset + size_of.last_fragment
end

-- Size: Total Affected Orders
size_of.total_affected_orders = 1

-- Display: Total Affected Orders
display.total_affected_orders = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
dissect.total_affected_orders = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_affected_orders)
  local value = range:le_uint()
  local display = display.total_affected_orders(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.total_affected_orders, range, value, display)

  return offset + size_of.total_affected_orders
end

-- Size: Mass Action Scope
size_of.mass_action_scope = 1

-- Display: Mass Action Scope
display.mass_action_scope = function(value)
  if value == 1 then
    return "Mass Action Scope: Mass Action Scope (1)"
  end
  if value == 7 then
    return "Mass Action Scope: Mass Action Scope (7)"
  end
  if value == 9 then
    return "Mass Action Scope: Mass Action Scope (9)"
  end
  if value == 10 then
    return "Mass Action Scope: Mass Action Scope (10)"
  end
  if value == 100 then
    return "Mass Action Scope: Mass Action Scope (100)"
  end

  return "Mass Action Scope: Unknown("..value..")"
end

-- Dissect: Mass Action Scope
dissect.mass_action_scope = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mass_action_scope)
  local value = range:le_uint()
  local display = display.mass_action_scope(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_action_scope, range, value, display)

  return offset + size_of.mass_action_scope
end

-- Size: Manual Order Indicator
size_of.manual_order_indicator = 1

-- Display: Manual Order Indicator
display.manual_order_indicator = function(value)
  return "Manual Order Indicator: "..value
end

-- Dissect: Manual Order Indicator
dissect.manual_order_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.manual_order_indicator)
  local value = range:le_uint()
  local display = display.manual_order_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.manual_order_indicator, range, value, display)

  return offset + size_of.manual_order_indicator
end

-- Size: Mass Action Response
size_of.mass_action_response = 1

-- Display: Mass Action Response
display.mass_action_response = function(value)
  if value == 0 then
    return "Mass Action Response: Mass Action Response (0)"
  end
  if value == 1 then
    return "Mass Action Response: Mass Action Response (1)"
  end

  return "Mass Action Response: Unknown("..value..")"
end

-- Dissect: Mass Action Response
dissect.mass_action_response = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mass_action_response)
  local value = range:le_uint()
  local display = display.mass_action_response(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_action_response, range, value, display)

  return offset + size_of.mass_action_response
end

-- Size: Delay Duration
size_of.delay_duration = 2

-- Display: Delay Duration
display.delay_duration = function(value)
  return "Delay Duration: "..value
end

-- Dissect: Delay Duration
dissect.delay_duration = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.delay_duration)
  local value = range:le_uint()
  local display = display.delay_duration(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.delay_duration, range, value, display)

  return offset + size_of.delay_duration
end

-- Size: Security Id
size_of.security_id = 4

-- Display: Security Id
display.security_id = function(value)
  return "Security Id: "..value
end

-- Dissect: Security Id
dissect.security_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_id)
  local value = range:le_int()
  local display = display.security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_id, range, value, display)

  return offset + size_of.security_id
end

-- Size: Location
size_of.location = 5

-- Display: Location
display.location = function(value)
  return "Location: "..value
end

-- Dissect: Location
dissect.location = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.location)
  local value = range:string()
  local display = display.location(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.location, range, value, display)

  return offset + size_of.location
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_group, range, value, display)

  return offset + size_of.security_group
end

-- Size: Mass Action Report Id
size_of.mass_action_report_id = 8

-- Display: Mass Action Report Id
display.mass_action_report_id = function(value)
  return "Mass Action Report Id: "..value
end

-- Dissect: Mass Action Report Id
dissect.mass_action_report_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mass_action_report_id)
  local value = range:le_uint64()
  local display = display.mass_action_report_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_action_report_id, range, value, display)

  return offset + size_of.mass_action_report_id
end

-- Size: Order Request Id
size_of.order_request_id = 8

-- Display: Order Request Id
display.order_request_id = function(value)
  return "Order Request Id: "..value
end

-- Dissect: Order Request Id
dissect.order_request_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_request_id)
  local value = range:le_uint64()
  local display = display.order_request_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_request_id, range, value, display)

  return offset + size_of.order_request_id
end

-- Size: Sending Time Epoch
size_of.sending_time_epoch = 8

-- Display: Sending Time Epoch
display.sending_time_epoch = function(value)
  return "Sending Time Epoch: "..value
end

-- Dissect: Sending Time Epoch
dissect.sending_time_epoch = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sending_time_epoch)
  local value = range:le_uint64()
  local display = display.sending_time_epoch(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.sending_time_epoch, range, value, display)

  return offset + size_of.sending_time_epoch
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.transact_time, range, value, display)

  return offset + size_of.transact_time
end

-- Size: Party Details List Req Id
size_of.party_details_list_req_id = 8

-- Display: Party Details List Req Id
display.party_details_list_req_id = function(value)
  return "Party Details List Req Id: "..value
end

-- Dissect: Party Details List Req Id
dissect.party_details_list_req_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_details_list_req_id)
  local value = range:le_uint64()
  local display = display.party_details_list_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_details_list_req_id, range, value, display)

  return offset + size_of.party_details_list_req_id
end

-- Size: Sender Id
size_of.sender_id = 20

-- Display: Sender Id
display.sender_id = function(value)
  return "Sender Id: "..value
end

-- Dissect: Sender Id
dissect.sender_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sender_id)
  local value = range:string()
  local display = display.sender_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.sender_id, range, value, display)

  return offset + size_of.sender_id
end

-- Size: Uuid
size_of.uuid = 8

-- Display: Uuid
display.uuid = function(value)
  return "Uuid: "..value
end

-- Dissect: Uuid
dissect.uuid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.uuid)
  local value = range:le_uint64()
  local display = display.uuid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.uuid, range, value, display)

  return offset + size_of.uuid
end

-- Size: Seq Num
size_of.seq_num = 4

-- Display: Seq Num
display.seq_num = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
dissect.seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.seq_num)
  local value = range:le_uint()
  local display = display.seq_num(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.seq_num, range, value, display)

  return offset + size_of.seq_num
end

-- Calculate runtime size: Order Mass Action Report 558
size_of.order_mass_action_report_558 = function(buffer, offset)
  local index = 0

  index = index + 102

  index = index + size_of.affected_orders_groups(buffer, offset + index)

  return index
end

-- Display: Order Mass Action Report 558
display.order_mass_action_report_558 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Action Report 558
dissect.order_mass_action_report_558_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Mass Action Report Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.mass_action_report_id(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Mass Action Response: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.mass_action_response(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.mass_action_scope(buffer, index, packet, parent)

  -- Total Affected Orders: 1 Byte Unsigned Fixed Width Integer
  index = dissect.total_affected_orders(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer
  index = dissect.last_fragment(buffer, index, packet, parent)

  -- Mass Action Reject Reason: 1 Byte Unsigned Fixed Width Integer
  index = dissect.mass_action_reject_reason(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.market_segment_id(buffer, index, packet, parent)

  -- Mass Cancel Request Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.mass_cancel_request_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Affected Orders Groups: Struct of 2 fields
  index = dissect.affected_orders_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Report 558
dissect.order_mass_action_report_558 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_mass_action_report_558 then
    local length = size_of.order_mass_action_report_558(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_mass_action_report_558(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_mass_action_report_558, range, display)
  end

  return dissect.order_mass_action_report_558_fields(buffer, offset, packet, parent)
end

-- Size: Order Event Reason
size_of.order_event_reason = 1

-- Display: Order Event Reason
display.order_event_reason = function(value)
  return "Order Event Reason: "..value
end

-- Dissect: Order Event Reason
dissect.order_event_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_event_reason)
  local value = range:le_uint()
  local display = display.order_event_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_event_reason, range, value, display)

  return offset + size_of.order_event_reason
end

-- Size: Order Event Type
size_of.order_event_type = 1

-- Display: Order Event Type
display.order_event_type = function(value)
  if value == 4 then
    return "Order Event Type: Order Event Type (4)"
  end
  if value == 5 then
    return "Order Event Type: Order Event Type (5)"
  end

  return "Order Event Type: Unknown("..value..")"
end

-- Dissect: Order Event Type
dissect.order_event_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_event_type)
  local value = range:le_uint()
  local display = display.order_event_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_event_type, range, value, display)

  return offset + size_of.order_event_type
end

-- Size: Order Event Qty
size_of.order_event_qty = 4

-- Display: Order Event Qty
display.order_event_qty = function(value)
  return "Order Event Qty: "..value
end

-- Dissect: Order Event Qty
dissect.order_event_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_event_qty)
  local value = range:le_uint()
  local display = display.order_event_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_event_qty, range, value, display)

  return offset + size_of.order_event_qty
end

-- Size: Order Event Exec Id
size_of.order_event_exec_id = 4

-- Display: Order Event Exec Id
display.order_event_exec_id = function(value)
  return "Order Event Exec Id: "..value
end

-- Dissect: Order Event Exec Id
dissect.order_event_exec_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_event_exec_id)
  local value = range:le_uint()
  local display = display.order_event_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_event_exec_id, range, value, display)

  return offset + size_of.order_event_exec_id
end

-- Size: Order Event Text
size_of.order_event_text = 5

-- Display: Order Event Text
display.order_event_text = function(value)
  return "Order Event Text: "..value
end

-- Dissect: Order Event Text
dissect.order_event_text = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_event_text)
  local value = range:string()
  local display = display.order_event_text(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_event_text, range, value, display)

  return offset + size_of.order_event_text
end

-- Size: Order Event Px
size_of.order_event_px = 8

-- Display: Order Event Px
display.order_event_px = function(value)
  local factor = 1000000000
  return "Order Event Px: "..value:tonumber()/factor
end

-- Dissect: Order Event Px
dissect.order_event_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_event_px)
  local value = range:le_int64()
  local display = display.order_event_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_event_px, range, value, display)

  return offset + size_of.order_event_px
end

-- Display: Order Events Group
display.order_events_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Events Group
dissect.order_events_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Event Px: 8 Byte Signed Fixed Width Integer
  index = dissect.order_event_px(buffer, index, packet, parent)

  -- Order Event Text: 5 Byte Ascii String
  index = dissect.order_event_text(buffer, index, packet, parent)

  -- Order Event Exec Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_event_exec_id(buffer, index, packet, parent)

  -- Order Event Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_event_qty(buffer, index, packet, parent)

  -- Order Event Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.order_event_type(buffer, index, packet, parent)

  -- Order Event Reason: 1 Byte Unsigned Fixed Width Integer
  index = dissect.order_event_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Events Group
dissect.order_events_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_events_group then
    local range = buffer(offset, 23)
    local display = display.order_events_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_events_group, range, display)
  end

  return dissect.order_events_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Order Events Groups
size_of.order_events_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local order_events_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + order_events_group_count * 23

  return index
end

-- Display: Order Events Groups
display.order_events_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Events Groups
dissect.order_events_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Order Events Group: Struct of 6 fields
  local order_events_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, order_events_group_count do
    index = dissect.order_events_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Events Groups
dissect.order_events_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_events_groups then
    local length = size_of.order_events_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_events_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_events_groups, range, display)
  end

  return dissect.order_events_groups_fields(buffer, offset, packet, parent)
end

-- Size: Fill Yield Type
size_of.fill_yield_type = 1

-- Display: Fill Yield Type
display.fill_yield_type = function(value)
  return "Fill Yield Type: "..value
end

-- Dissect: Fill Yield Type
dissect.fill_yield_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fill_yield_type)
  local value = range:le_uint()
  local display = display.fill_yield_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.fill_yield_type, range, value, display)

  return offset + size_of.fill_yield_type
end

-- Size: Fill Exec Id
size_of.fill_exec_id = 2

-- Display: Fill Exec Id
display.fill_exec_id = function(value)
  return "Fill Exec Id: "..value
end

-- Dissect: Fill Exec Id
dissect.fill_exec_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fill_exec_id)
  local value = range:string()
  local display = display.fill_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.fill_exec_id, range, value, display)

  return offset + size_of.fill_exec_id
end

-- Size: Fill Qty
size_of.fill_qty = 4

-- Display: Fill Qty
display.fill_qty = function(value)
  return "Fill Qty: "..value
end

-- Dissect: Fill Qty
dissect.fill_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fill_qty)
  local value = range:le_uint()
  local display = display.fill_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.fill_qty, range, value, display)

  return offset + size_of.fill_qty
end

-- Size: Fill Px
size_of.fill_px = 8

-- Display: Fill Px
display.fill_px = function(value)
  local factor = 1000000000
  return "Fill Px: "..value:tonumber()/factor
end

-- Dissect: Fill Px
dissect.fill_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fill_px)
  local value = range:le_int64()
  local display = display.fill_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.fill_px, range, value, display)

  return offset + size_of.fill_px
end

-- Display: Fills Group
display.fills_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fills Group
dissect.fills_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Fill Px: 8 Byte Signed Fixed Width Integer
  index = dissect.fill_px(buffer, index, packet, parent)

  -- Fill Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.fill_qty(buffer, index, packet, parent)

  -- Fill Exec Id: 2 Byte Ascii String
  index = dissect.fill_exec_id(buffer, index, packet, parent)

  -- Fill Yield Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.fill_yield_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Fills Group
dissect.fills_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fills_group then
    local range = buffer(offset, 15)
    local display = display.fills_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.fills_group, range, display)
  end

  return dissect.fills_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Fills Groups
size_of.fills_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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
  index = dissect.group_size(buffer, index, packet, parent)

  -- Fills Group: Struct of 4 fields
  local fills_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, fills_group_count do
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.fills_groups, range, display)
  end

  return dissect.fills_groups_fields(buffer, offset, packet, parent)
end

-- Size: Poss Retrans Flag
size_of.poss_retrans_flag = 1

-- Display: Poss Retrans Flag
display.poss_retrans_flag = function(value)
  return "Poss Retrans Flag: "..value
end

-- Dissect: Poss Retrans Flag
dissect.poss_retrans_flag = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.poss_retrans_flag)
  local value = range:le_uint()
  local display = display.poss_retrans_flag(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.poss_retrans_flag, range, value, display)

  return offset + size_of.poss_retrans_flag
end

-- Size: Exec Type
size_of.exec_type = 1

-- Display: Exec Type
display.exec_type = function(value)
  return "Exec Type: "..value
end

-- Dissect: Exec Type
dissect.exec_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exec_type)
  local value = range:string()
  local display = display.exec_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.exec_type, range, value, display)

  return offset + size_of.exec_type
end

-- Size: Ord Status
size_of.ord_status = 1

-- Display: Ord Status
display.ord_status = function(value)
  return "Ord Status: "..value
end

-- Dissect: Ord Status
dissect.ord_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ord_status)
  local value = range:string()
  local display = display.ord_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ord_status, range, value, display)

  return offset + size_of.ord_status
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.trade_date, range, value, display)

  return offset + size_of.trade_date
end

-- Size: Orig Side Trade Id
size_of.orig_side_trade_id = 4

-- Display: Orig Side Trade Id
display.orig_side_trade_id = function(value)
  return "Orig Side Trade Id: "..value
end

-- Dissect: Orig Side Trade Id
dissect.orig_side_trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.orig_side_trade_id)
  local value = range:le_uint()
  local display = display.orig_side_trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.orig_side_trade_id, range, value, display)

  return offset + size_of.orig_side_trade_id
end

-- Size: Side Trade Id
size_of.side_trade_id = 4

-- Display: Side Trade Id
display.side_trade_id = function(value)
  return "Side Trade Id: "..value
end

-- Dissect: Side Trade Id
dissect.side_trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_trade_id)
  local value = range:le_uint()
  local display = display.side_trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.side_trade_id, range, value, display)

  return offset + size_of.side_trade_id
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
  local value = range:le_uint()
  local display = display.last_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.last_qty, range, value, display)

  return offset + size_of.last_qty
end

-- Size: Orig Secondary Execution Id
size_of.orig_secondary_execution_id = 8

-- Display: Orig Secondary Execution Id
display.orig_secondary_execution_id = function(value)
  return "Orig Secondary Execution Id: "..value
end

-- Dissect: Orig Secondary Execution Id
dissect.orig_secondary_execution_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.orig_secondary_execution_id)
  local value = range:le_uint64()
  local display = display.orig_secondary_execution_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.orig_secondary_execution_id, range, value, display)

  return offset + size_of.orig_secondary_execution_id
end

-- Size: Sec Exec Id
size_of.sec_exec_id = 8

-- Display: Sec Exec Id
display.sec_exec_id = function(value)
  return "Sec Exec Id: "..value
end

-- Dissect: Sec Exec Id
dissect.sec_exec_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sec_exec_id)
  local value = range:le_uint64()
  local display = display.sec_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.sec_exec_id, range, value, display)

  return offset + size_of.sec_exec_id
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.order_id)
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_id, range, value, display)

  return offset + size_of.order_id
end

-- Size: Last Px
size_of.last_px = 8

-- Display: Last Px
display.last_px = function(value)
  local factor = 1000000000
  return "Last Px: "..value:tonumber()/factor
end

-- Dissect: Last Px
dissect.last_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_px)
  local value = range:le_int64()
  local display = display.last_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.last_px, range, value, display)

  return offset + size_of.last_px
end

-- Size: Cl Ord Id
size_of.cl_ord_id = 20

-- Display: Cl Ord Id
display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cl_ord_id)
  local value = range:string()
  local display = display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cl_ord_id, range, value, display)

  return offset + size_of.cl_ord_id
end

-- Size: Exec Id
size_of.exec_id = 40

-- Display: Exec Id
display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
dissect.exec_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exec_id)
  local value = range:string()
  local display = display.exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.exec_id, range, value, display)

  return offset + size_of.exec_id
end

-- Calculate runtime size: Execution Report Trade Addendum Spread Leg 550
size_of.execution_report_trade_addendum_spread_leg_550 = function(buffer, offset)
  local index = 0

  index = index + 175

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.order_events_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Spread Leg 550
display.execution_report_trade_addendum_spread_leg_550 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread Leg 550
dissect.execution_report_trade_addendum_spread_leg_550_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orig_secondary_execution_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.side_trade_id(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.orig_side_trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String
  index = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String
  index = dissect.exec_type(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index = dissect.fills_groups(buffer, index, packet, parent)

  -- Order Events Groups: Struct of 2 fields
  index = dissect.order_events_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread Leg 550
dissect.execution_report_trade_addendum_spread_leg_550 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_leg_550 then
    local length = size_of.execution_report_trade_addendum_spread_leg_550(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_leg_550(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_addendum_spread_leg_550, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_leg_550_fields(buffer, offset, packet, parent)
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.leg_side, range, value, display)

  return offset + size_of.leg_side
end

-- Size: Leg Last Qty
size_of.leg_last_qty = 4

-- Display: Leg Last Qty
display.leg_last_qty = function(value)
  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
dissect.leg_last_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_last_qty)
  local value = range:le_uint()
  local display = display.leg_last_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.leg_last_qty, range, value, display)

  return offset + size_of.leg_last_qty
end

-- Size: Leg Trade Id
size_of.leg_trade_id = 4

-- Display: Leg Trade Id
display.leg_trade_id = function(value)
  return "Leg Trade Id: "..value
end

-- Dissect: Leg Trade Id
dissect.leg_trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_trade_id)
  local value = range:le_uint()
  local display = display.leg_trade_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.leg_trade_id, range, value, display)

  return offset + size_of.leg_trade_id
end

-- Size: Leg Security Id
size_of.leg_security_id = 4

-- Display: Leg Security Id
display.leg_security_id = function(value)
  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
dissect.leg_security_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_security_id)
  local value = range:le_int()
  local display = display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.leg_security_id, range, value, display)

  return offset + size_of.leg_security_id
end

-- Size: Leg Last Px
size_of.leg_last_px = 8

-- Display: Leg Last Px
display.leg_last_px = function(value)
  local factor = 1000000000
  return "Leg Last Px: "..value:tonumber()/factor
end

-- Dissect: Leg Last Px
dissect.leg_last_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_last_px)
  local value = range:le_int64()
  local display = display.leg_last_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.leg_last_px, range, value, display)

  return offset + size_of.leg_last_px
end

-- Size: Leg Exec Id
size_of.leg_exec_id = 8

-- Display: Leg Exec Id
display.leg_exec_id = function(value)
  return "Leg Exec Id: "..value
end

-- Dissect: Leg Exec Id
dissect.leg_exec_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_exec_id)
  local value = range:le_uint64()
  local display = display.leg_exec_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.leg_exec_id, range, value, display)

  return offset + size_of.leg_exec_id
end

-- Display: Legs Group
display.legs_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Legs Group
dissect.legs_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Exec Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.leg_exec_id(buffer, index, packet, parent)

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer
  index = dissect.leg_last_px(buffer, index, packet, parent)

  -- Leg Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leg_trade_id(buffer, index, packet, parent)

  -- Leg Last Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leg_last_qty(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Legs Group
dissect.legs_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.legs_group then
    local range = buffer(offset, 29)
    local display = display.legs_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.legs_group, range, display)
  end

  return dissect.legs_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Legs Groups
size_of.legs_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + legs_group_count * 29

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

  -- Legs Group: Struct of 6 fields
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.legs_groups, range, display)
  end

  return dissect.legs_groups_fields(buffer, offset, packet, parent)
end

-- Size: Short Sale Type
size_of.short_sale_type = 1

-- Display: Short Sale Type
display.short_sale_type = function(value)
  if value == 0 then
    return "Short Sale Type: Short Sale Type (0)"
  end
  if value == 1 then
    return "Short Sale Type: Short Sale Type (1)"
  end
  if value == 2 then
    return "Short Sale Type: Short Sale Type (2)"
  end
  if value == 3 then
    return "Short Sale Type: Short Sale Type (3)"
  end

  return "Short Sale Type: Unknown("..value..")"
end

-- Dissect: Short Sale Type
dissect.short_sale_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.short_sale_type)
  local value = range:le_uint()
  local display = display.short_sale_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.short_sale_type, range, value, display)

  return offset + size_of.short_sale_type
end

-- Size: Managed Order
size_of.managed_order = 1

-- Display: Managed Order
display.managed_order = function(value)
  return "Managed Order: "..value
end

-- Dissect: Managed Order
dissect.managed_order = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.managed_order)
  local value = range:le_uint()
  local display = display.managed_order(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.managed_order, range, value, display)

  return offset + size_of.managed_order
end

-- Size: Execution Mode
size_of.execution_mode = 1

-- Display: Execution Mode
display.execution_mode = function(value)
  return "Execution Mode: "..value
end

-- Dissect: Execution Mode
dissect.execution_mode = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.execution_mode)
  local value = range:string()
  local display = display.execution_mode(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_mode, range, value, display)

  return offset + size_of.execution_mode
end

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
  parent:add(cme_futures_ilink3_sbe_v8_0.fields.reserved_5, buffer(offset, 1))

  -- Reserved 4: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_0.fields.reserved_4, buffer(offset, 1))

  -- Reserved 3: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_0.fields.reserved_3, buffer(offset, 1))

  -- Reserved 2: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_0.fields.reserved_2, buffer(offset, 1))

  -- Reserved 1: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_0.fields.reserved_1, buffer(offset, 1))

  -- Nh: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_0.fields.nh, buffer(offset, 1))

  -- Ob: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ob, buffer(offset, 1))

  -- Aon: 1 Bit
  parent:add(cme_futures_ilink3_sbe_v8_0.fields.aon, buffer(offset, 1))
end

-- Dissect: Exec Inst
dissect.exec_inst = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.exec_inst(range, packet, parent)
  local element = parent:add(cme_futures_ilink3_sbe_v8_0.fields.exec_inst, range, display)

  if show.exec_inst then
    dissect.exec_inst_bits(buffer, offset, packet, element)
  end

  return offset + 1
end

-- Size: Total Num Securities
size_of.total_num_securities = 1

-- Display: Total Num Securities
display.total_num_securities = function(value)
  return "Total Num Securities: "..value
end

-- Dissect: Total Num Securities
dissect.total_num_securities = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_num_securities)
  local value = range:le_uint()
  local display = display.total_num_securities(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.total_num_securities, range, value, display)

  return offset + size_of.total_num_securities
end

-- Size: Md Trade Entry Id
size_of.md_trade_entry_id = 4

-- Display: Md Trade Entry Id
display.md_trade_entry_id = function(value)
  return "Md Trade Entry Id: "..value
end

-- Dissect: Md Trade Entry Id
dissect.md_trade_entry_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.md_trade_entry_id)
  local value = range:le_uint()
  local display = display.md_trade_entry_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.md_trade_entry_id, range, value, display)

  return offset + size_of.md_trade_entry_id
end

-- Calculate runtime size: Execution Report Trade Addendum Spread 549
size_of.execution_report_trade_addendum_spread_549 = function(buffer, offset)
  local index = 0

  index = index + 187

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.legs_groups(buffer, offset + index)

  index = index + size_of.order_events_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Spread 549
display.execution_report_trade_addendum_spread_549 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Spread 549
dissect.execution_report_trade_addendum_spread_549_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orig_secondary_execution_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.side_trade_id(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.orig_side_trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String
  index = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String
  index = dissect.exec_type(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Total Num Securities: 1 Byte Unsigned Fixed Width Integer
  index = dissect.total_num_securities(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index = dissect.fills_groups(buffer, index, packet, parent)

  -- Legs Groups: Struct of 2 fields
  index = dissect.legs_groups(buffer, index, packet, parent)

  -- Order Events Groups: Struct of 2 fields
  index = dissect.order_events_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Spread 549
dissect.execution_report_trade_addendum_spread_549 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_spread_549 then
    local length = size_of.execution_report_trade_addendum_spread_549(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_spread_549(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_addendum_spread_549, range, display)
  end

  return dissect.execution_report_trade_addendum_spread_549_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Execution Report Trade Addendum Outright 548
size_of.execution_report_trade_addendum_outright_548 = function(buffer, offset)
  local index = 0

  index = index + 181

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.order_events_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Addendum Outright 548
display.execution_report_trade_addendum_outright_548 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Addendum Outright 548
dissect.execution_report_trade_addendum_outright_548_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Orig Secondary Execution Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orig_secondary_execution_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.side_trade_id(buffer, index, packet, parent)

  -- Orig Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.orig_side_trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String
  index = dissect.ord_status(buffer, index, packet, parent)

  -- Exec Type: 1 Byte Ascii String
  index = dissect.exec_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index = dissect.fills_groups(buffer, index, packet, parent)

  -- Order Events Groups: Struct of 2 fields
  index = dissect.order_events_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Addendum Outright 548
dissect.execution_report_trade_addendum_outright_548 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_addendum_outright_548 then
    local length = size_of.execution_report_trade_addendum_outright_548(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_addendum_outright_548(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_addendum_outright_548, range, display)
  end

  return dissect.execution_report_trade_addendum_outright_548_fields(buffer, offset, packet, parent)
end

-- Size: Quote Set Id
size_of.quote_set_id = 2

-- Display: Quote Set Id
display.quote_set_id = function(value)
  return "Quote Set Id: "..value
end

-- Dissect: Quote Set Id
dissect.quote_set_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_set_id)
  local value = range:le_uint()
  local display = display.quote_set_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_set_id, range, value, display)

  return offset + size_of.quote_set_id
end

-- Size: Offer Size
size_of.offer_size = 4

-- Display: Offer Size
display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_size)
  local value = range:le_uint()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.offer_size, range, value, display)

  return offset + size_of.offer_size
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_size)
  local value = range:le_uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.bid_size, range, value, display)

  return offset + size_of.bid_size
end

-- Display: Quote Sets Group
display.quote_sets_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Sets Group
dissect.quote_sets_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size(buffer, index, packet, parent)

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.quote_set_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Sets Group
dissect.quote_sets_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_sets_group then
    local range = buffer(offset, 10)
    local display = display.quote_sets_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_sets_group, range, display)
  end

  return dissect.quote_sets_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Quote Sets Groups
size_of.quote_sets_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local quote_sets_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_sets_group_count * 10

  return index
end

-- Display: Quote Sets Groups
display.quote_sets_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Sets Groups
dissect.quote_sets_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Quote Sets Group: Struct of 3 fields
  local quote_sets_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, quote_sets_group_count do
    index = dissect.quote_sets_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Sets Groups
dissect.quote_sets_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_sets_groups then
    local length = size_of.quote_sets_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_sets_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_sets_groups, range, display)
  end

  return dissect.quote_sets_groups_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Security Id
size_of.underlying_security_id = 4

-- Display: Underlying Security Id
display.underlying_security_id = function(value)
  return "Underlying Security Id: "..value
end

-- Dissect: Underlying Security Id
dissect.underlying_security_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_security_id)
  local value = range:le_int()
  local display = display.underlying_security_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.underlying_security_id, range, value, display)

  return offset + size_of.underlying_security_id
end

-- Size: Quote Entry Id
size_of.quote_entry_id = 4

-- Display: Quote Entry Id
display.quote_entry_id = function(value)
  return "Quote Entry Id: "..value
end

-- Dissect: Quote Entry Id
dissect.quote_entry_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_entry_id)
  local value = range:le_uint()
  local display = display.quote_entry_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_entry_id, range, value, display)

  return offset + size_of.quote_entry_id
end

-- Size: Offer Px
size_of.offer_px = 8

-- Display: Offer Px
display.offer_px = function(value)
  local factor = 1000000000
  return "Offer Px: "..value:tonumber()/factor
end

-- Dissect: Offer Px
dissect.offer_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_px)
  local value = range:le_int64()
  local display = display.offer_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.offer_px, range, value, display)

  return offset + size_of.offer_px
end

-- Size: Bid Px
size_of.bid_px = 8

-- Display: Bid Px
display.bid_px = function(value)
  local factor = 1000000000
  return "Bid Px: "..value:tonumber()/factor
end

-- Dissect: Bid Px
dissect.bid_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_px)
  local value = range:le_int64()
  local display = display.bid_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.bid_px, range, value, display)

  return offset + size_of.bid_px
end

-- Display: Quote Entries Group
display.quote_entries_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Entries Group
dissect.quote_entries_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Px: 8 Byte Signed Fixed Width Integer
  index = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Signed Fixed Width Integer
  index = dissect.offer_px(buffer, index, packet, parent)

  -- Quote Entry Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quote_entry_id(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size(buffer, index, packet, parent)

  -- Underlying Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.underlying_security_id(buffer, index, packet, parent)

  -- Quote Set Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.quote_set_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Entries Group
dissect.quote_entries_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_entries_group then
    local range = buffer(offset, 38)
    local display = display.quote_entries_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_entries_group, range, display)
  end

  return dissect.quote_entries_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Quote Entries Groups
size_of.quote_entries_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local quote_entries_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_entries_group_count * 38

  return index
end

-- Display: Quote Entries Groups
display.quote_entries_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Entries Groups
dissect.quote_entries_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
  index = dissect.group_size(buffer, index, packet, parent)

  -- Quote Entries Group: Struct of 8 fields
  local quote_entries_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, quote_entries_group_count do
    index = dissect.quote_entries_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Entries Groups
dissect.quote_entries_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_entries_groups then
    local length = size_of.quote_entries_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_entries_groups(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_entries_groups, range, display)
  end

  return dissect.quote_entries_groups_fields(buffer, offset, packet, parent)
end

-- Size: Tot No Quote Entries
size_of.tot_no_quote_entries = 1

-- Display: Tot No Quote Entries
display.tot_no_quote_entries = function(value)
  return "Tot No Quote Entries: "..value
end

-- Dissect: Tot No Quote Entries
dissect.tot_no_quote_entries = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.tot_no_quote_entries)
  local value = range:le_uint()
  local display = display.tot_no_quote_entries(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.tot_no_quote_entries, range, value, display)

  return offset + size_of.tot_no_quote_entries
end

-- Size: Unsolicited Cancel Type
size_of.unsolicited_cancel_type = 1

-- Display: Unsolicited Cancel Type
display.unsolicited_cancel_type = function(value)
  return "Unsolicited Cancel Type: "..value
end

-- Dissect: Unsolicited Cancel Type
dissect.unsolicited_cancel_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unsolicited_cancel_type)
  local value = range:string()
  local display = display.unsolicited_cancel_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.unsolicited_cancel_type, range, value, display)

  return offset + size_of.unsolicited_cancel_type
end

-- Size: Mm Protection Reset
size_of.mm_protection_reset = 1

-- Display: Mm Protection Reset
display.mm_protection_reset = function(value)
  return "Mm Protection Reset: "..value
end

-- Dissect: Mm Protection Reset
dissect.mm_protection_reset = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mm_protection_reset)
  local value = range:le_uint()
  local display = display.mm_protection_reset(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.mm_protection_reset, range, value, display)

  return offset + size_of.mm_protection_reset
end

-- Size: No Processed Entries
size_of.no_processed_entries = 1

-- Display: No Processed Entries
display.no_processed_entries = function(value)
  return "No Processed Entries: "..value
end

-- Dissect: No Processed Entries
dissect.no_processed_entries = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.no_processed_entries)
  local value = range:le_uint()
  local display = display.no_processed_entries(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.no_processed_entries, range, value, display)

  return offset + size_of.no_processed_entries
end

-- Size: Quote Status
size_of.quote_status = 1

-- Display: Quote Status
display.quote_status = function(value)
  return "Quote Status: "..value
end

-- Dissect: Quote Status
dissect.quote_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_status)
  local value = range:le_uint()
  local display = display.quote_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_status, range, value, display)

  return offset + size_of.quote_status
end

-- Size: Quote Reject Reason
size_of.quote_reject_reason = 2

-- Display: Quote Reject Reason
display.quote_reject_reason = function(value)
  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
dissect.quote_reject_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_reject_reason)
  local value = range:le_uint()
  local display = display.quote_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_reject_reason, range, value, display)

  return offset + size_of.quote_reject_reason
end

-- Size: Quote Id
size_of.quote_id = 4

-- Display: Quote Id
display.quote_id = function(value)
  return "Quote Id: "..value
end

-- Dissect: Quote Id
dissect.quote_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_id)
  local value = range:le_uint()
  local display = display.quote_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_id, range, value, display)

  return offset + size_of.quote_id
end

-- Size: Cancelled Symbol
size_of.cancelled_symbol = 6

-- Display: Cancelled Symbol
display.cancelled_symbol = function(value)
  return "Cancelled Symbol: "..value
end

-- Dissect: Cancelled Symbol
dissect.cancelled_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cancelled_symbol)
  local value = range:string()
  local display = display.cancelled_symbol(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cancelled_symbol, range, value, display)

  return offset + size_of.cancelled_symbol
end

-- Size: Request Time
size_of.request_time = 8

-- Display: Request Time
display.request_time = function(value)
  return "Request Time: "..value
end

-- Dissect: Request Time
dissect.request_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.request_time)
  local value = range:le_uint64()
  local display = display.request_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.request_time, range, value, display)

  return offset + size_of.request_time
end

-- Size: Text
size_of.text = 256

-- Display: Text
display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
dissect.text = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.text)
  local value = range:string()
  local display = display.text(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.text, range, value, display)

  return offset + size_of.text
end

-- Calculate runtime size: Quote Cancel Ack 547
size_of.quote_cancel_ack_547 = function(buffer, offset)
  local index = 0

  index = index + 339

  index = index + size_of.quote_entries_groups(buffer, offset + index)

  index = index + size_of.quote_sets_groups(buffer, offset + index)

  return index
end

-- Display: Quote Cancel Ack 547
display.quote_cancel_ack_547 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel Ack 547
dissect.quote_cancel_ack_547_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Cancelled Symbol: 6 Byte Ascii String
  index = dissect.cancelled_symbol(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer
  index = dissect.quote_reject_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.quote_status(buffer, index, packet, parent)

  -- No Processed Entries: 1 Byte Unsigned Fixed Width Integer
  index = dissect.no_processed_entries(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer
  index = dissect.mm_protection_reset(buffer, index, packet, parent)

  -- Unsolicited Cancel Type: 1 Byte Ascii String
  index = dissect.unsolicited_cancel_type(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Tot No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index = dissect.tot_no_quote_entries(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Quote Entries Groups: Struct of 2 fields
  index = dissect.quote_entries_groups(buffer, index, packet, parent)

  -- Quote Sets Groups: Struct of 2 fields
  index = dissect.quote_sets_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel Ack 547
dissect.quote_cancel_ack_547 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_ack_547 then
    local length = size_of.quote_cancel_ack_547(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_ack_547(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_cancel_ack_547, range, display)
  end

  return dissect.quote_cancel_ack_547_fields(buffer, offset, packet, parent)
end

-- Size: Quote Req Id
size_of.quote_req_id = 8

-- Display: Quote Req Id
display.quote_req_id = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
dissect.quote_req_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_req_id)
  local value = range:le_uint64()
  local display = display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_req_id, range, value, display)

  return offset + size_of.quote_req_id
end

-- Size: Exchange Quote Req Id
size_of.exchange_quote_req_id = 17

-- Display: Exchange Quote Req Id
display.exchange_quote_req_id = function(value)
  return "Exchange Quote Req Id: "..value
end

-- Dissect: Exchange Quote Req Id
dissect.exchange_quote_req_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exchange_quote_req_id)
  local value = range:string()
  local display = display.exchange_quote_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.exchange_quote_req_id, range, value, display)

  return offset + size_of.exchange_quote_req_id
end

-- Display: Request For Quote Ack 546
display.request_for_quote_ack_546 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Quote Ack 546
dissect.request_for_quote_ack_546_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Exchange Quote Req Id: 17 Byte Ascii String
  index = dissect.exchange_quote_req_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.quote_req_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer
  index = dissect.quote_reject_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.quote_status(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote Ack 546
dissect.request_for_quote_ack_546 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_quote_ack_546 then
    local range = buffer(offset, 349)
    local display = display.request_for_quote_ack_546(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.request_for_quote_ack_546, range, display)
  end

  return dissect.request_for_quote_ack_546_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Mass Quote Ack 545
size_of.mass_quote_ack_545 = function(buffer, offset)
  local index = 0

  index = index + 341

  index = index + size_of.quote_entries_groups(buffer, offset + index)

  return index
end

-- Display: Mass Quote Ack 545
display.mass_quote_ack_545 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote Ack 545
dissect.mass_quote_ack_545_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.quote_req_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Reject Reason: 2 Byte Unsigned Fixed Width Integer
  index = dissect.quote_reject_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Quote Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.quote_status(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- No Processed Entries: 1 Byte Unsigned Fixed Width Integer
  index = dissect.no_processed_entries(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer
  index = dissect.mm_protection_reset(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  -- Tot No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index = dissect.tot_no_quote_entries(buffer, index, packet, parent)

  -- Quote Entries Groups: Struct of 2 fields
  index = dissect.quote_entries_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote Ack 545
dissect.mass_quote_ack_545 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_ack_545 then
    local length = size_of.mass_quote_ack_545(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_ack_545(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_quote_ack_545, range, display)
  end

  return dissect.mass_quote_ack_545_fields(buffer, offset, packet, parent)
end

-- Size: Side Time In Force
size_of.side_time_in_force = 1

-- Display: Side Time In Force
display.side_time_in_force = function(value)
  if value == 0 then
    return "Side Time In Force: Side Time In Force (0)"
  end
  if value == 3 then
    return "Side Time In Force: Side Time In Force (3)"
  end

  return "Side Time In Force: Unknown("..value..")"
end

-- Dissect: Side Time In Force
dissect.side_time_in_force = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side_time_in_force)
  local value = range:le_uint()
  local display = display.side_time_in_force(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.side_time_in_force, range, value, display)

  return offset + size_of.side_time_in_force
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
  local value = range:le_uint()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_qty, range, value, display)

  return offset + size_of.order_qty
end

-- Display: Sides Group
display.sides_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sides Group
dissect.sides_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Side Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.side_time_in_force(buffer, index, packet, parent)

  return index
end

-- Dissect: Sides Group
dissect.sides_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sides_group then
    local range = buffer(offset, 34)
    local display = display.sides_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.sides_group, range, display)
  end

  return dissect.sides_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Sides Groups
size_of.sides_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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
  index = dissect.group_size(buffer, index, packet, parent)

  -- Sides Group: Struct of 5 fields
  local sides_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, sides_group_count do
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.sides_groups, range, display)
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
  local range = buffer(offset, size_of.trans_bkd_time)
  local value = range:le_uint64()
  local display = display.trans_bkd_time(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.trans_bkd_time, range, value, display)

  return offset + size_of.trans_bkd_time
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  local factor = 1000000000
  return "Price: "..value:tonumber()/factor
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:le_int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Cross Id
size_of.cross_id = 8

-- Display: Cross Id
display.cross_id = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
dissect.cross_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cross_id)
  local value = range:le_uint64()
  local display = display.cross_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cross_id, range, value, display)

  return offset + size_of.cross_id
end

-- Calculate runtime size: New Order Cross 544
size_of.new_order_cross_544 = function(buffer, offset)
  local index = 0

  index = index + 74

  index = index + size_of.sides_groups(buffer, offset + index)

  return index
end

-- Display: New Order Cross 544
display.new_order_cross_544 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Cross 544
dissect.new_order_cross_544_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Sides Groups: Struct of 2 fields
  index = dissect.sides_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Cross 544
dissect.new_order_cross_544 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_cross_544 then
    local length = size_of.new_order_cross_544(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_cross_544(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.new_order_cross_544, range, display)
  end

  return dissect.new_order_cross_544_fields(buffer, offset, packet, parent)
end

-- Display: Related Sym Group
display.related_sym_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Sym Group
dissect.related_sym_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Sym Group
dissect.related_sym_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_sym_group then
    local range = buffer(offset, 9)
    local display = display.related_sym_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.related_sym_group, range, display)
  end

  return dissect.related_sym_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Related Sym Groups
size_of.related_sym_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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
  index = dissect.group_size(buffer, index, packet, parent)

  -- Related Sym Group: Struct of 3 fields
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.related_sym_groups, range, display)
  end

  return dissect.related_sym_groups_fields(buffer, offset, packet, parent)
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
  local value = range:le_uint()
  local display = display.quote_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_type, range, value, display)

  return offset + size_of.quote_type
end

-- Calculate runtime size: Request For Quote 543
size_of.request_for_quote_543 = function(buffer, offset)
  local index = 0

  index = index + 55

  index = index + size_of.related_sym_groups(buffer, offset + index)

  return index
end

-- Display: Request For Quote 543
display.request_for_quote_543 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Quote 543
dissect.request_for_quote_543_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.quote_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Quote Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.quote_type(buffer, index, packet, parent)

  -- Related Sym Groups: Struct of 2 fields
  index = dissect.related_sym_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote 543
dissect.request_for_quote_543 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.request_for_quote_543 then
    local length = size_of.request_for_quote_543(buffer, offset)
    local range = buffer(offset, length)
    local display = display.request_for_quote_543(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.request_for_quote_543, range, display)
  end

  return dissect.request_for_quote_543_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Security Alt Id Source
size_of.underlying_security_alt_id_source = 1

-- Display: Underlying Security Alt Id Source
display.underlying_security_alt_id_source = function(value)
  return "Underlying Security Alt Id Source: "..value
end

-- Dissect: Underlying Security Alt Id Source
dissect.underlying_security_alt_id_source = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_security_alt_id_source)
  local value = range:le_uint()
  local display = display.underlying_security_alt_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.underlying_security_alt_id_source, range, value, display)

  return offset + size_of.underlying_security_alt_id_source
end

-- Size: Underlying Security Alt Id
size_of.underlying_security_alt_id = 12

-- Display: Underlying Security Alt Id
display.underlying_security_alt_id = function(value)
  return "Underlying Security Alt Id: "..value
end

-- Dissect: Underlying Security Alt Id
dissect.underlying_security_alt_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_security_alt_id)
  local value = range:string()
  local display = display.underlying_security_alt_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.underlying_security_alt_id, range, value, display)

  return offset + size_of.underlying_security_alt_id
end

-- Display: Underlyings Group
display.underlyings_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlyings Group
dissect.underlyings_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Security Alt Id: 12 Byte Ascii String
  index = dissect.underlying_security_alt_id(buffer, index, packet, parent)

  -- Underlying Security Alt Id Source: 1 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_security_alt_id_source(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlyings Group
dissect.underlyings_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlyings_group then
    local range = buffer(offset, 13)
    local display = display.underlyings_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.underlyings_group, range, display)
  end

  return dissect.underlyings_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Underlyings Groups
size_of.underlyings_groups = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate field size from count
  local underlyings_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + underlyings_group_count * 13

  return index
end

-- Display: Underlyings Groups
display.underlyings_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlyings Groups
dissect.underlyings_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size: Struct of 2 fields
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.underlyings_groups, range, display)
  end

  return dissect.underlyings_groups_fields(buffer, offset, packet, parent)
end

-- Size: Money Or Par
size_of.money_or_par = 1

-- Display: Money Or Par
display.money_or_par = function(value)
  if value == 0 then
    return "Money Or Par: Money Or Par (0)"
  end
  if value == 1 then
    return "Money Or Par: Money Or Par (1)"
  end
  if value == 2 then
    return "Money Or Par: Money Or Par (2)"
  end

  return "Money Or Par: Unknown("..value..")"
end

-- Dissect: Money Or Par
dissect.money_or_par = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.money_or_par)
  local value = range:le_uint()
  local display = display.money_or_par(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.money_or_par, range, value, display)

  return offset + size_of.money_or_par
end

-- Size: Max No Of Substitutions
size_of.max_no_of_substitutions = 1

-- Display: Max No Of Substitutions
display.max_no_of_substitutions = function(value)
  return "Max No Of Substitutions: "..value
end

-- Dissect: Max No Of Substitutions
dissect.max_no_of_substitutions = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.max_no_of_substitutions)
  local value = range:le_uint()
  local display = display.max_no_of_substitutions(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.max_no_of_substitutions, range, value, display)

  return offset + size_of.max_no_of_substitutions
end

-- Size: Auto Quote Request
size_of.auto_quote_request = 1

-- Display: Auto Quote Request
display.auto_quote_request = function(value)
  return "Auto Quote Request: "..value
end

-- Dissect: Auto Quote Request
dissect.auto_quote_request = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auto_quote_request)
  local value = range:le_uint()
  local display = display.auto_quote_request(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.auto_quote_request, range, value, display)

  return offset + size_of.auto_quote_request
end

-- Size: Expiration Cycle
size_of.expiration_cycle = 1

-- Display: Expiration Cycle
display.expiration_cycle = function(value)
  return "Expiration Cycle: "..value
end

-- Dissect: Expiration Cycle
dissect.expiration_cycle = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_cycle)
  local value = range:le_uint()
  local display = display.expiration_cycle(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.expiration_cycle, range, value, display)

  return offset + size_of.expiration_cycle
end

-- Size: Security Response Type
size_of.security_response_type = 1

-- Display: Security Response Type
display.security_response_type = function(value)
  return "Security Response Type: "..value
end

-- Dissect: Security Response Type
dissect.security_response_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_response_type)
  local value = range:le_uint()
  local display = display.security_response_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_response_type, range, value, display)

  return offset + size_of.security_response_type
end

-- Size: End Date
size_of.end_date = 2

-- Display: End Date
display.end_date = function(value)
  return "End Date: "..value
end

-- Dissect: End Date
dissect.end_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.end_date)
  local value = range:le_uint()
  local display = display.end_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.end_date, range, value, display)

  return offset + size_of.end_date
end

-- Size: Start Date
size_of.start_date = 2

-- Display: Start Date
display.start_date = function(value)
  return "Start Date: "..value
end

-- Dissect: Start Date
dissect.start_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.start_date)
  local value = range:le_uint()
  local display = display.start_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.start_date, range, value, display)

  return offset + size_of.start_date
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.maturity_date, range, value, display)

  return offset + size_of.maturity_date
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.week, range, value, display)

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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.day, range, value, display)

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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.month, range, value, display)

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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.year, range, value, display)

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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.maturity_month_year, range, display)
  end

  return dissect.maturity_month_year_fields(buffer, offset, packet, parent)
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.currency, range, value, display)

  return offset + size_of.currency
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_type, range, value, display)

  return offset + size_of.security_type
end

-- Size: Security Response Id
size_of.security_response_id = 8

-- Display: Security Response Id
display.security_response_id = function(value)
  return "Security Response Id: "..value
end

-- Dissect: Security Response Id
dissect.security_response_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_response_id)
  local value = range:le_uint64()
  local display = display.security_response_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_response_id, range, value, display)

  return offset + size_of.security_response_id
end

-- Size: Security Req Id
size_of.security_req_id = 8

-- Display: Security Req Id
display.security_req_id = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
dissect.security_req_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_req_id)
  local value = range:le_uint64()
  local display = display.security_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_req_id, range, value, display)

  return offset + size_of.security_req_id
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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.symbol, range, value, display)

  return offset + size_of.symbol
end

-- Size: Financial Instrument Full Name
size_of.financial_instrument_full_name = 35

-- Display: Financial Instrument Full Name
display.financial_instrument_full_name = function(value)
  return "Financial Instrument Full Name: "..value
end

-- Dissect: Financial Instrument Full Name
dissect.financial_instrument_full_name = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.financial_instrument_full_name)
  local value = range:string()
  local display = display.financial_instrument_full_name(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.financial_instrument_full_name, range, value, display)

  return offset + size_of.financial_instrument_full_name
end

-- Calculate runtime size: Security Definition Response 542
size_of.security_definition_response_542 = function(buffer, offset)
  local index = 0

  index = index + 419

  index = index + size_of.legs_groups(buffer, offset + index)

  index = index + size_of.underlyings_groups(buffer, offset + index)

  return index
end

-- Display: Security Definition Response 542
display.security_definition_response_542 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Response 542
dissect.security_definition_response_542_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Financial Instrument Full Name: 35 Byte Ascii String
  index = dissect.financial_instrument_full_name(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Symbol: 20 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.security_req_id(buffer, index, packet, parent)

  -- Security Response Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.security_response_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Security Type: 6 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Maturity Month Year: Struct of 4 fields
  index = dissect.maturity_month_year(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_date(buffer, index, packet, parent)

  -- Start Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.start_date(buffer, index, packet, parent)

  -- End Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.end_date(buffer, index, packet, parent)

  -- Security Response Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.security_response_type(buffer, index, packet, parent)

  -- Expiration Cycle: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_cycle(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Auto Quote Request: 1 Byte Unsigned Fixed Width Integer
  index = dissect.auto_quote_request(buffer, index, packet, parent)

  -- Max No Of Substitutions: 1 Byte Unsigned Fixed Width Integer
  index = dissect.max_no_of_substitutions(buffer, index, packet, parent)

  -- Money Or Par: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.money_or_par(buffer, index, packet, parent)

  -- Legs Groups: Struct of 2 fields
  index = dissect.legs_groups(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index = dissect.underlyings_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Response 542
dissect.security_definition_response_542 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_response_542 then
    local length = size_of.security_definition_response_542(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_response_542(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_definition_response_542, range, display)
  end

  return dissect.security_definition_response_542_fields(buffer, offset, packet, parent)
end

-- Size: Security Sub Type
size_of.security_sub_type = 8

-- Display: Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_sub_type)
  local value = range:string()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_sub_type, range, value, display)

  return offset + size_of.security_sub_type
end

-- Calculate runtime size: Security Definition Request 541
size_of.security_definition_request_541 = function(buffer, offset)
  local index = 0

  index = index + 70

  index = index + size_of.legs_groups(buffer, offset + index)

  index = index + size_of.underlyings_groups(buffer, offset + index)

  return index
end

-- Display: Security Definition Request 541
display.security_definition_request_541 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Request 541
dissect.security_definition_request_541_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.security_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Security Sub Type: 8 Byte Ascii String
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Start Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.start_date(buffer, index, packet, parent)

  -- End Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.end_date(buffer, index, packet, parent)

  -- Maturity Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.maturity_date(buffer, index, packet, parent)

  -- Max No Of Substitutions: 1 Byte Unsigned Fixed Width Integer
  index = dissect.max_no_of_substitutions(buffer, index, packet, parent)

  -- Money Or Par: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.money_or_par(buffer, index, packet, parent)

  -- Legs Groups: Struct of 2 fields
  index = dissect.legs_groups(buffer, index, packet, parent)

  -- Underlyings Groups: Struct of 2 fields
  index = dissect.underlyings_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request 541
dissect.security_definition_request_541 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request_541 then
    local length = size_of.security_definition_request_541(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_request_541(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.security_definition_request_541, range, display)
  end

  return dissect.security_definition_request_541_fields(buffer, offset, packet, parent)
end

-- Size: Party Detail Role
size_of.party_detail_role = 2

-- Display: Party Detail Role
display.party_detail_role = function(value)
  if value == 1 then
    return "Party Detail Role: Party Detail Role (1)"
  end
  if value == 24 then
    return "Party Detail Role: Party Detail Role (24)"
  end
  if value == 96 then
    return "Party Detail Role: Party Detail Role (96)"
  end
  if value == 118 then
    return "Party Detail Role: Party Detail Role (118)"
  end
  if value == 1000 then
    return "Party Detail Role: Party Detail Role (1000)"
  end

  return "Party Detail Role: Unknown("..value..")"
end

-- Dissect: Party Detail Role
dissect.party_detail_role = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_detail_role)
  local value = range:le_uint()
  local display = display.party_detail_role(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_detail_role, range, value, display)

  return offset + size_of.party_detail_role
end

-- Size: Party Detail Id
size_of.party_detail_id = 20

-- Display: Party Detail Id
display.party_detail_id = function(value)
  return "Party Detail Id: "..value
end

-- Dissect: Party Detail Id
dissect.party_detail_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_detail_id)
  local value = range:string()
  local display = display.party_detail_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_detail_id, range, value, display)

  return offset + size_of.party_detail_id
end

-- Display: Party Details Group
display.party_details_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Group
dissect.party_details_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Detail Id: 20 Byte Ascii String
  index = dissect.party_detail_id(buffer, index, packet, parent)

  -- Party Detail Role: 2 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.party_detail_role(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Group
dissect.party_details_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_details_group then
    local range = buffer(offset, 22)
    local display = display.party_details_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_details_group, range, display)
  end

  return dissect.party_details_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Party Details Groups
size_of.party_details_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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
  index = dissect.group_size(buffer, index, packet, parent)

  -- Party Details Group: Struct of 2 fields
  local party_details_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, party_details_group_count do
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_details_groups, range, display)
  end

  return dissect.party_details_groups_fields(buffer, offset, packet, parent)
end

-- Size: Idm Short Code
size_of.idm_short_code = 8

-- Display: Idm Short Code
display.idm_short_code = function(value)
  return "Idm Short Code: "..value
end

-- Dissect: Idm Short Code
dissect.idm_short_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.idm_short_code)
  local value = range:le_uint64()
  local display = display.idm_short_code(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.idm_short_code, range, value, display)

  return offset + size_of.idm_short_code
end

-- Size: Executor
size_of.executor = 8

-- Display: Executor
display.executor = function(value)
  return "Executor: "..value
end

-- Dissect: Executor
dissect.executor = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.executor)
  local value = range:le_uint64()
  local display = display.executor(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.executor, range, value, display)

  return offset + size_of.executor
end

-- Size: Cust Order Handling Inst
size_of.cust_order_handling_inst = 1

-- Display: Cust Order Handling Inst
display.cust_order_handling_inst = function(value)
  return "Cust Order Handling Inst: "..value
end

-- Dissect: Cust Order Handling Inst
dissect.cust_order_handling_inst = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cust_order_handling_inst)
  local value = range:string()
  local display = display.cust_order_handling_inst(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cust_order_handling_inst, range, value, display)

  return offset + size_of.cust_order_handling_inst
end

-- Size: Cmta Giveup Cd
size_of.cmta_giveup_cd = 1

-- Display: Cmta Giveup Cd
display.cmta_giveup_cd = function(value)
  if value == "G" then
    return "Cmta Giveup Cd: Cmta Give Up Cd (G)"
  end
  if value == "S" then
    return "Cmta Giveup Cd: Cmta Give Up Cd (S)"
  end

  return "Cmta Giveup Cd: Unknown("..value..")"
end

-- Dissect: Cmta Giveup Cd
dissect.cmta_giveup_cd = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cmta_giveup_cd)
  local value = range:string()
  local display = display.cmta_giveup_cd(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cmta_giveup_cd, range, value, display)

  return offset + size_of.cmta_giveup_cd
end

-- Size: Clearing Trade Price Type
size_of.clearing_trade_price_type = 1

-- Display: Clearing Trade Price Type
display.clearing_trade_price_type = function(value)
  return "Clearing Trade Price Type: "..value
end

-- Dissect: Clearing Trade Price Type
dissect.clearing_trade_price_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.clearing_trade_price_type)
  local value = range:le_uint()
  local display = display.clearing_trade_price_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.clearing_trade_price_type, range, value, display)

  return offset + size_of.clearing_trade_price_type
end

-- Size: Avg Px Indicator
size_of.avg_px_indicator = 1

-- Display: Avg Px Indicator
display.avg_px_indicator = function(value)
  return "Avg Px Indicator: "..value
end

-- Dissect: Avg Px Indicator
dissect.avg_px_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.avg_px_indicator)
  local value = range:le_uint()
  local display = display.avg_px_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.avg_px_indicator, range, value, display)

  return offset + size_of.avg_px_indicator
end

-- Size: Self Match Prevention Instruction
size_of.self_match_prevention_instruction = 1

-- Display: Self Match Prevention Instruction
display.self_match_prevention_instruction = function(value)
  return "Self Match Prevention Instruction: "..value
end

-- Dissect: Self Match Prevention Instruction
dissect.self_match_prevention_instruction = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.self_match_prevention_instruction)
  local value = range:string()
  local display = display.self_match_prevention_instruction(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.self_match_prevention_instruction, range, value, display)

  return offset + size_of.self_match_prevention_instruction
end

-- Size: Clearing Account Type
size_of.clearing_account_type = 1

-- Display: Clearing Account Type
display.clearing_account_type = function(value)
  return "Clearing Account Type: "..value
end

-- Dissect: Clearing Account Type
dissect.clearing_account_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.clearing_account_type)
  local value = range:le_uint()
  local display = display.clearing_account_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.clearing_account_type, range, value, display)

  return offset + size_of.clearing_account_type
end

-- Size: Cust Order Capacity
size_of.cust_order_capacity = 1

-- Display: Cust Order Capacity
display.cust_order_capacity = function(value)
  if value == 1 then
    return "Cust Order Capacity: Cust Order Capacity (1)"
  end
  if value == 2 then
    return "Cust Order Capacity: Cust Order Capacity (2)"
  end
  if value == 3 then
    return "Cust Order Capacity: Cust Order Capacity (3)"
  end
  if value == 4 then
    return "Cust Order Capacity: Cust Order Capacity (4)"
  end

  return "Cust Order Capacity: Unknown("..value..")"
end

-- Dissect: Cust Order Capacity
dissect.cust_order_capacity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cust_order_capacity)
  local value = range:le_uint()
  local display = display.cust_order_capacity(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cust_order_capacity, range, value, display)

  return offset + size_of.cust_order_capacity
end

-- Size: Request Result
size_of.request_result = 1

-- Display: Request Result
display.request_result = function(value)
  return "Request Result: "..value
end

-- Dissect: Request Result
dissect.request_result = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.request_result)
  local value = range:le_uint()
  local display = display.request_result(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.request_result, range, value, display)

  return offset + size_of.request_result
end

-- Size: Tot Num Parties
size_of.tot_num_parties = 2

-- Display: Tot Num Parties
display.tot_num_parties = function(value)
  return "Tot Num Parties: "..value
end

-- Dissect: Tot Num Parties
dissect.tot_num_parties = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.tot_num_parties)
  local value = range:le_uint()
  local display = display.tot_num_parties(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.tot_num_parties, range, value, display)

  return offset + size_of.tot_num_parties
end

-- Size: Self Match Prevention Id
size_of.self_match_prevention_id = 8

-- Display: Self Match Prevention Id
display.self_match_prevention_id = function(value)
  return "Self Match Prevention Id: "..value
end

-- Dissect: Self Match Prevention Id
dissect.self_match_prevention_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.self_match_prevention_id)
  local value = range:le_uint64()
  local display = display.self_match_prevention_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.self_match_prevention_id, range, value, display)

  return offset + size_of.self_match_prevention_id
end

-- Size: Party Details List Report Id
size_of.party_details_list_report_id = 8

-- Display: Party Details List Report Id
display.party_details_list_report_id = function(value)
  return "Party Details List Report Id: "..value
end

-- Dissect: Party Details List Report Id
dissect.party_details_list_report_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_details_list_report_id)
  local value = range:le_uint64()
  local display = display.party_details_list_report_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_details_list_report_id, range, value, display)

  return offset + size_of.party_details_list_report_id
end

-- Size: Avg Px Group Id
size_of.avg_px_group_id = 20

-- Display: Avg Px Group Id
display.avg_px_group_id = function(value)
  return "Avg Px Group Id: "..value
end

-- Dissect: Avg Px Group Id
dissect.avg_px_group_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.avg_px_group_id)
  local value = range:string()
  local display = display.avg_px_group_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.avg_px_group_id, range, value, display)

  return offset + size_of.avg_px_group_id
end

-- Calculate runtime size: Party Details List Report 538
size_of.party_details_list_report_538 = function(buffer, offset)
  local index = 0

  index = index + 93

  index = index + size_of.party_details_groups(buffer, offset + index)

  return index
end

-- Display: Party Details List Report 538
display.party_details_list_report_538 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details List Report 538
dissect.party_details_list_report_538_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String
  index = dissect.avg_px_group_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Party Details List Report Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_report_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.self_match_prevention_id(buffer, index, packet, parent)

  -- Tot Num Parties: 2 Byte Unsigned Fixed Width Integer
  index = dissect.tot_num_parties(buffer, index, packet, parent)

  -- Request Result: 1 Byte Unsigned Fixed Width Integer
  index = dissect.request_result(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer
  index = dissect.last_fragment(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.clearing_account_type(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String
  index = dissect.self_match_prevention_instruction(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.avg_px_indicator(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.clearing_trade_price_type(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 2 values
  index = dissect.cmta_giveup_cd(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer
  index = dissect.executor(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer
  index = dissect.idm_short_code(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index = dissect.party_details_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details List Report 538
dissect.party_details_list_report_538 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_list_report_538 then
    local length = size_of.party_details_list_report_538(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_list_report_538(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_details_list_report_538, range, display)
  end

  return dissect.party_details_list_report_538_fields(buffer, offset, packet, parent)
end

-- Size: Party Role
size_of.party_role = 2

-- Display: Party Role
display.party_role = function(value)
  return "Party Role: "..value
end

-- Dissect: Party Role
dissect.party_role = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_role)
  local value = range:le_uint()
  local display = display.party_role(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_role, range, value, display)

  return offset + size_of.party_role
end

-- Size: Party Id Source
size_of.party_id_source = 1

-- Display: Party Id Source
display.party_id_source = function(value)
  return "Party Id Source: "..value
end

-- Dissect: Party Id Source
dissect.party_id_source = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_id_source)
  local value = range:string()
  local display = display.party_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_id_source, range, value, display)

  return offset + size_of.party_id_source
end

-- Size: Party Id
size_of.party_id = 8

-- Display: Party Id
display.party_id = function(value)
  return "Party Id: "..value
end

-- Dissect: Party Id
dissect.party_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_id)
  local value = range:le_uint64()
  local display = display.party_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_id, range, value, display)

  return offset + size_of.party_id
end

-- Display: Party I Ds Group
display.party_i_ds_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party I Ds Group
dissect.party_i_ds_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_id(buffer, index, packet, parent)

  -- Party Id Source: 1 Byte Ascii String
  index = dissect.party_id_source(buffer, index, packet, parent)

  -- Party Role: 2 Byte Unsigned Fixed Width Integer
  index = dissect.party_role(buffer, index, packet, parent)

  return index
end

-- Dissect: Party I Ds Group
dissect.party_i_ds_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.party_i_ds_group then
    local range = buffer(offset, 11)
    local display = display.party_i_ds_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_i_ds_group, range, display)
  end

  return dissect.party_i_ds_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Party I Ds Groups
size_of.party_i_ds_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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
  index = dissect.group_size(buffer, index, packet, parent)

  -- Party I Ds Group: Struct of 3 fields
  local party_i_ds_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, party_i_ds_group_count do
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_i_ds_groups, range, display)
  end

  return dissect.party_i_ds_groups_fields(buffer, offset, packet, parent)
end

-- Size: Requesting Party Role
size_of.requesting_party_role = 1

-- Display: Requesting Party Role
display.requesting_party_role = function(value)
  return "Requesting Party Role: "..value
end

-- Dissect: Requesting Party Role
dissect.requesting_party_role = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.requesting_party_role)
  local value = range:string()
  local display = display.requesting_party_role(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.requesting_party_role, range, value, display)

  return offset + size_of.requesting_party_role
end

-- Size: Requesting Party Id Source
size_of.requesting_party_id_source = 1

-- Display: Requesting Party Id Source
display.requesting_party_id_source = function(value)
  return "Requesting Party Id Source: "..value
end

-- Dissect: Requesting Party Id Source
dissect.requesting_party_id_source = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.requesting_party_id_source)
  local value = range:string()
  local display = display.requesting_party_id_source(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.requesting_party_id_source, range, value, display)

  return offset + size_of.requesting_party_id_source
end

-- Size: Requesting Party Id
size_of.requesting_party_id = 5

-- Display: Requesting Party Id
display.requesting_party_id = function(value)
  return "Requesting Party Id: "..value
end

-- Dissect: Requesting Party Id
dissect.requesting_party_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.requesting_party_id)
  local value = range:string()
  local display = display.requesting_party_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.requesting_party_id, range, value, display)

  return offset + size_of.requesting_party_id
end

-- Display: Requesting Party I Ds Group
display.requesting_party_i_ds_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Requesting Party I Ds Group
dissect.requesting_party_i_ds_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Requesting Party Id: 5 Byte Ascii String
  index = dissect.requesting_party_id(buffer, index, packet, parent)

  -- Requesting Party Id Source: 1 Byte Ascii String
  index = dissect.requesting_party_id_source(buffer, index, packet, parent)

  -- Requesting Party Role: 1 Byte Ascii String
  index = dissect.requesting_party_role(buffer, index, packet, parent)

  return index
end

-- Dissect: Requesting Party I Ds Group
dissect.requesting_party_i_ds_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.requesting_party_i_ds_group then
    local range = buffer(offset, 7)
    local display = display.requesting_party_i_ds_group(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.requesting_party_i_ds_group, range, display)
  end

  return dissect.requesting_party_i_ds_group_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Requesting Party I Ds Groups
size_of.requesting_party_i_ds_groups = function(buffer, offset)
  local index = 0

  index = index + 3

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
  index = dissect.group_size(buffer, index, packet, parent)

  -- Requesting Party I Ds Group: Struct of 3 fields
  local requesting_party_i_ds_group_count = buffer(index - 1, 1):le_uint()
  for i = 1, requesting_party_i_ds_group_count do
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
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.requesting_party_i_ds_groups, range, display)
  end

  return dissect.requesting_party_i_ds_groups_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Party Details List Request 537
size_of.party_details_list_request_537 = function(buffer, offset)
  local index = 0

  index = index + 20

  index = index + size_of.requesting_party_i_ds_groups(buffer, offset + index)

  index = index + size_of.party_i_ds_groups(buffer, offset + index)

  return index
end

-- Display: Party Details List Request 537
display.party_details_list_request_537 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details List Request 537
dissect.party_details_list_request_537_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Requesting Party I Ds Groups: Struct of 2 fields
  index = dissect.requesting_party_i_ds_groups(buffer, index, packet, parent)

  -- Party I Ds Groups: Struct of 2 fields
  index = dissect.party_i_ds_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details List Request 537
dissect.party_details_list_request_537 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_list_request_537 then
    local length = size_of.party_details_list_request_537(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_list_request_537(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_details_list_request_537, range, display)
  end

  return dissect.party_details_list_request_537_fields(buffer, offset, packet, parent)
end

-- Size: Cxl Rej Reason
size_of.cxl_rej_reason = 2

-- Display: Cxl Rej Reason
display.cxl_rej_reason = function(value)
  return "Cxl Rej Reason: "..value
end

-- Dissect: Cxl Rej Reason
dissect.cxl_rej_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cxl_rej_reason)
  local value = range:le_uint()
  local display = display.cxl_rej_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cxl_rej_reason, range, value, display)

  return offset + size_of.cxl_rej_reason
end

-- Display: Order Cancel Replace Reject 536
display.order_cancel_replace_reject_536 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Replace Reject 536
dissect.order_cancel_replace_reject_536_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Cxl Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index = dissect.cxl_rej_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Reject 536
dissect.order_cancel_replace_reject_536 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_replace_reject_536 then
    local range = buffer(offset, 401)
    local display = display.order_cancel_replace_reject_536(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_cancel_replace_reject_536, range, display)
  end

  return dissect.order_cancel_replace_reject_536_fields(buffer, offset, packet, parent)
end

-- Display: Order Cancel Reject 535
display.order_cancel_reject_535 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Reject 535
dissect.order_cancel_reject_535_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Cxl Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index = dissect.cxl_rej_reason(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Reject 535
dissect.order_cancel_reject_535 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_reject_535 then
    local range = buffer(offset, 401)
    local display = display.order_cancel_reject_535(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_cancel_reject_535, range, display)
  end

  return dissect.order_cancel_reject_535_fields(buffer, offset, packet, parent)
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
  return "Cross Type: "..value
end

-- Dissect: Cross Type
dissect.cross_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cross_type)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cross_type, range, value, display)

  return offset + size_of.cross_type
end

-- Size: Exec Restatement Reason
size_of.exec_restatement_reason = 1

-- Display: Exec Restatement Reason
display.exec_restatement_reason = function(value)
  return "Exec Restatement Reason: "..value
end

-- Dissect: Exec Restatement Reason
dissect.exec_restatement_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exec_restatement_reason)
  local value = range:le_uint()
  local display = display.exec_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.exec_restatement_reason, range, value, display)

  return offset + size_of.exec_restatement_reason
end

-- Size: Expire Date
size_of.expire_date = 2

-- Display: Expire Date
display.expire_date = function(value)
  return "Expire Date: "..value
end

-- Dissect: Expire Date
dissect.expire_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expire_date)
  local value = range:le_uint()
  local display = display.expire_date(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.expire_date, range, value, display)

  return offset + size_of.expire_date
end

-- Size: Display Qty
size_of.display_qty = 4

-- Display: Display Qty
display.display_qty = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
dissect.display_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.display_qty)
  local value = range:le_uint()
  local display = display.display_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.display_qty, range, value, display)

  return offset + size_of.display_qty
end

-- Size: Min Qty
size_of.min_qty = 4

-- Display: Min Qty
display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
dissect.min_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.min_qty)
  local value = range:le_uint()
  local display = display.min_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.min_qty, range, value, display)

  return offset + size_of.min_qty
end

-- Size: Cum Qty
size_of.cum_qty = 4

-- Display: Cum Qty
display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
dissect.cum_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.cum_qty)
  local value = range:le_uint()
  local display = display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.cum_qty, range, value, display)

  return offset + size_of.cum_qty
end

-- Size: Host Cross Id
size_of.host_cross_id = 8

-- Display: Host Cross Id
display.host_cross_id = function(value)
  return "Host Cross Id: "..value
end

-- Dissect: Host Cross Id
dissect.host_cross_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.host_cross_id)
  local value = range:le_uint64()
  local display = display.host_cross_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.host_cross_id, range, value, display)

  return offset + size_of.host_cross_id
end

-- Size: Stop Px
size_of.stop_px = 8

-- Display: Stop Px
display.stop_px = function(value)
  local factor = 1000000000
  return "Stop Px: "..value:tonumber()/factor
end

-- Dissect: Stop Px
dissect.stop_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.stop_px)
  local value = range:le_int64()
  local display = display.stop_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.stop_px, range, value, display)

  return offset + size_of.stop_px
end

-- Display: Execution Report Cancel 534
display.execution_report_cancel_534 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Cancel 534
dissect.execution_report_cancel_534_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cum_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Exec Restatement Reason: 1 Byte Unsigned Fixed Width Integer
  index = dissect.exec_restatement_reason(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Cancel 534
dissect.execution_report_cancel_534 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_cancel_534 then
    local range = buffer(offset, 206)
    local display = display.execution_report_cancel_534(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_cancel_534, range, display)
  end

  return dissect.execution_report_cancel_534_fields(buffer, offset, packet, parent)
end

-- Size: Ord Status Req Id
size_of.ord_status_req_id = 8

-- Display: Ord Status Req Id
display.ord_status_req_id = function(value)
  return "Ord Status Req Id: "..value
end

-- Dissect: Ord Status Req Id
dissect.ord_status_req_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ord_status_req_id)
  local value = range:le_uint64()
  local display = display.ord_status_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ord_status_req_id, range, value, display)

  return offset + size_of.ord_status_req_id
end

-- Display: Order Status Request 533
display.order_status_request_533 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Status Request 533
dissect.order_status_request_533_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Ord Status Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.ord_status_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Status Request 533
dissect.order_status_request_533 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_status_request_533 then
    local range = buffer(offset, 62)
    local display = display.order_status_request_533(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_status_request_533, range, display)
  end

  return dissect.order_status_request_533_fields(buffer, offset, packet, parent)
end

-- Size: Last Rpt Requested
size_of.last_rpt_requested = 1

-- Display: Last Rpt Requested
display.last_rpt_requested = function(value)
  return "Last Rpt Requested: "..value
end

-- Dissect: Last Rpt Requested
dissect.last_rpt_requested = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_rpt_requested)
  local value = range:le_uint()
  local display = display.last_rpt_requested(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.last_rpt_requested, range, value, display)

  return offset + size_of.last_rpt_requested
end

-- Size: Leaves Qty
size_of.leaves_qty = 4

-- Display: Leaves Qty
display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
dissect.leaves_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leaves_qty)
  local value = range:le_uint()
  local display = display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.leaves_qty, range, value, display)

  return offset + size_of.leaves_qty
end

-- Size: Mass Status Req Id
size_of.mass_status_req_id = 8

-- Display: Mass Status Req Id
display.mass_status_req_id = function(value)
  return "Mass Status Req Id: "..value
end

-- Dissect: Mass Status Req Id
dissect.mass_status_req_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mass_status_req_id)
  local value = range:le_uint64()
  local display = display.mass_status_req_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_status_req_id, range, value, display)

  return offset + size_of.mass_status_req_id
end

-- Display: Execution Report Status 532
display.execution_report_status_532 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Status 532
dissect.execution_report_status_532_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Ord Status Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.ord_status_req_id(buffer, index, packet, parent)

  -- Mass Status Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.mass_status_req_id(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cum_qty(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leaves_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String
  index = dissect.ord_status(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Last Rpt Requested: 1 Byte Unsigned Fixed Width Integer
  index = dissect.last_rpt_requested(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Status 532
dissect.execution_report_status_532 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_status_532 then
    local range = buffer(offset, 480)
    local display = display.execution_report_status_532(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_status_532, range, display)
  end

  return dissect.execution_report_status_532_fields(buffer, offset, packet, parent)
end

-- Display: Execution Report Modify 531
display.execution_report_modify_531 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Modify 531
dissect.execution_report_modify_531_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cum_qty(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leaves_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Modify 531
dissect.execution_report_modify_531 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_modify_531 then
    local range = buffer(offset, 209)
    local display = display.execution_report_modify_531(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_modify_531, range, display)
  end

  return dissect.execution_report_modify_531_fields(buffer, offset, packet, parent)
end

-- Size: Ord Status Req Type
size_of.ord_status_req_type = 1

-- Display: Ord Status Req Type
display.ord_status_req_type = function(value)
  return "Ord Status Req Type: "..value
end

-- Dissect: Ord Status Req Type
dissect.ord_status_req_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ord_status_req_type)
  local value = range:le_uint()
  local display = display.ord_status_req_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ord_status_req_type, range, value, display)

  return offset + size_of.ord_status_req_type
end

-- Size: Mass Status Req Type
size_of.mass_status_req_type = 1

-- Display: Mass Status Req Type
display.mass_status_req_type = function(value)
  return "Mass Status Req Type: "..value
end

-- Dissect: Mass Status Req Type
dissect.mass_status_req_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mass_status_req_type)
  local value = range:le_uint()
  local display = display.mass_status_req_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_status_req_type, range, value, display)

  return offset + size_of.mass_status_req_type
end

-- Display: Order Mass Status Request 530
display.order_mass_status_request_530 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Status Request 530
dissect.order_mass_status_request_530_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Mass Status Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.mass_status_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Mass Status Req Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.mass_status_req_type(buffer, index, packet, parent)

  -- Ord Status Req Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.ord_status_req_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.market_segment_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Status Request 530
dissect.order_mass_status_request_530 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_mass_status_request_530 then
    local range = buffer(offset, 68)
    local display = display.order_mass_status_request_530(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_mass_status_request_530, range, display)
  end

  return dissect.order_mass_status_request_530_fields(buffer, offset, packet, parent)
end

-- Display: Order Mass Action Request 529
display.order_mass_action_request_529 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Action Request 529
dissect.order_mass_action_request_529_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Security Group: 6 Byte Ascii String
  index = dissect.security_group(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Mass Action Scope: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.mass_action_scope(buffer, index, packet, parent)

  -- Market Segment Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.market_segment_id(buffer, index, packet, parent)

  -- Mass Cancel Request Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.mass_cancel_request_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Action Request 529
dissect.order_mass_action_request_529 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_mass_action_request_529 then
    local range = buffer(offset, 71)
    local display = display.order_mass_action_request_529(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_mass_action_request_529, range, display)
  end

  return dissect.order_mass_action_request_529_fields(buffer, offset, packet, parent)
end

-- Size: Quote Cancel Type
size_of.quote_cancel_type = 1

-- Display: Quote Cancel Type
display.quote_cancel_type = function(value)
  return "Quote Cancel Type: "..value
end

-- Dissect: Quote Cancel Type
dissect.quote_cancel_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_cancel_type)
  local value = range:le_uint()
  local display = display.quote_cancel_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_cancel_type, range, value, display)

  return offset + size_of.quote_cancel_type
end

-- Calculate runtime size: Quote Cancel 528
size_of.quote_cancel_528 = function(buffer, offset)
  local index = 0

  index = index + 52

  index = index + size_of.quote_entries_groups(buffer, offset + index)

  index = index + size_of.quote_sets_groups(buffer, offset + index)

  return index
end

-- Display: Quote Cancel 528
display.quote_cancel_528 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancel 528
dissect.quote_cancel_528_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quote_id(buffer, index, packet, parent)

  -- Quote Cancel Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.quote_cancel_type(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Quote Entries Groups: Struct of 2 fields
  index = dissect.quote_entries_groups(buffer, index, packet, parent)

  -- Quote Sets Groups: Struct of 2 fields
  index = dissect.quote_sets_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancel 528
dissect.quote_cancel_528 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_cancel_528 then
    local length = size_of.quote_cancel_528(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_cancel_528(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.quote_cancel_528, range, display)
  end

  return dissect.quote_cancel_528_fields(buffer, offset, packet, parent)
end

-- Size: Risk Free Rate
size_of.risk_free_rate = 4

-- Display: Risk Free Rate
display.risk_free_rate = function(value)
  return "Risk Free Rate: "..value
end

-- Dissect: Risk Free Rate
dissect.risk_free_rate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.risk_free_rate)
  local value = range:le_int()
  local display = display.risk_free_rate(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.risk_free_rate, range, value, display)

  return offset + size_of.risk_free_rate
end

-- Size: Time To Expiration
size_of.time_to_expiration = 4

-- Display: Time To Expiration
display.time_to_expiration = function(value)
  return "Time To Expiration: "..value
end

-- Dissect: Time To Expiration
dissect.time_to_expiration = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.time_to_expiration)
  local value = range:le_int()
  local display = display.time_to_expiration(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.time_to_expiration, range, value, display)

  return offset + size_of.time_to_expiration
end

-- Size: Option Delta
size_of.option_delta = 4

-- Display: Option Delta
display.option_delta = function(value)
  return "Option Delta: "..value
end

-- Dissect: Option Delta
dissect.option_delta = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_delta)
  local value = range:le_int()
  local display = display.option_delta(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.option_delta, range, value, display)

  return offset + size_of.option_delta
end

-- Size: Underlying Px
size_of.underlying_px = 8

-- Display: Underlying Px
display.underlying_px = function(value)
  local factor = 1000000000
  return "Underlying Px: "..value:tonumber()/factor
end

-- Dissect: Underlying Px
dissect.underlying_px = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_px)
  local value = range:le_int64()
  local display = display.underlying_px(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.underlying_px, range, value, display)

  return offset + size_of.underlying_px
end

-- Size: Volatility
size_of.volatility = 8

-- Display: Volatility
display.volatility = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
dissect.volatility = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volatility)
  local value = range:le_int64()
  local display = display.volatility(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.volatility, range, value, display)

  return offset + size_of.volatility
end

-- Calculate runtime size: Execution Report Trade Spread Leg 527
size_of.execution_report_trade_spread_leg_527 = function(buffer, offset)
  local index = 0

  index = index + 195

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.order_events_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Spread Leg 527
display.execution_report_trade_spread_leg_527 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread Leg 527
dissect.execution_report_trade_spread_leg_527_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Volatility: 8 Byte Signed Fixed Width Integer
  index = dissect.volatility(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Underlying Px: 8 Byte Signed Fixed Width Integer
  index = dissect.underlying_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Option Delta: 4 Byte Signed Fixed Width Integer
  index = dissect.option_delta(buffer, index, packet, parent)

  -- Time To Expiration: 4 Byte Signed Fixed Width Integer
  index = dissect.time_to_expiration(buffer, index, packet, parent)

  -- Risk Free Rate: 4 Byte Signed Fixed Width Integer
  index = dissect.risk_free_rate(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cum_qty(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.side_trade_id(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String
  index = dissect.ord_status(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index = dissect.fills_groups(buffer, index, packet, parent)

  -- Order Events Groups: Struct of 2 fields
  index = dissect.order_events_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread Leg 527
dissect.execution_report_trade_spread_leg_527 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_leg_527 then
    local length = size_of.execution_report_trade_spread_leg_527(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_leg_527(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_spread_leg_527, range, display)
  end

  return dissect.execution_report_trade_spread_leg_527_fields(buffer, offset, packet, parent)
end

-- Size: Aggressor Indicator
size_of.aggressor_indicator = 1

-- Display: Aggressor Indicator
display.aggressor_indicator = function(value)
  return "Aggressor Indicator: "..value
end

-- Dissect: Aggressor Indicator
dissect.aggressor_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.aggressor_indicator)
  local value = range:le_uint()
  local display = display.aggressor_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.aggressor_indicator, range, value, display)

  return offset + size_of.aggressor_indicator
end

-- Calculate runtime size: Execution Report Trade Spread 526
size_of.execution_report_trade_spread_526 = function(buffer, offset)
  local index = 0

  index = index + 230

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.legs_groups(buffer, offset + index)

  index = index + size_of.order_events_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Spread 526
display.execution_report_trade_spread_526 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Spread 526
dissect.execution_report_trade_spread_526_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cum_qty(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.side_trade_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leaves_qty(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String
  index = dissect.ord_status(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.aggressor_indicator(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Total Num Securities: 1 Byte Unsigned Fixed Width Integer
  index = dissect.total_num_securities(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index = dissect.fills_groups(buffer, index, packet, parent)

  -- Legs Groups: Struct of 2 fields
  index = dissect.legs_groups(buffer, index, packet, parent)

  -- Order Events Groups: Struct of 2 fields
  index = dissect.order_events_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Spread 526
dissect.execution_report_trade_spread_526 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_spread_526 then
    local length = size_of.execution_report_trade_spread_526(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_spread_526(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_spread_526, range, display)
  end

  return dissect.execution_report_trade_spread_526_fields(buffer, offset, packet, parent)
end

-- Size: Ownership
size_of.ownership = 1

-- Display: Ownership
display.ownership = function(value)
  return "Ownership: "..value
end

-- Dissect: Ownership
dissect.ownership = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ownership)
  local value = range:le_uint()
  local display = display.ownership(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ownership, range, value, display)

  return offset + size_of.ownership
end

-- Size: Trade Link Id
size_of.trade_link_id = 4

-- Display: Trade Link Id
display.trade_link_id = function(value)
  return "Trade Link Id: "..value
end

-- Dissect: Trade Link Id
dissect.trade_link_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_link_id)
  local value = range:le_uint()
  local display = display.trade_link_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.trade_link_id, range, value, display)

  return offset + size_of.trade_link_id
end

-- Calculate runtime size: Execution Report Trade Outright 525
size_of.execution_report_trade_outright_525 = function(buffer, offset)
  local index = 0

  index = index + 235

  index = index + size_of.fills_groups(buffer, offset + index)

  index = index + size_of.order_events_groups(buffer, offset + index)

  return index
end

-- Display: Execution Report Trade Outright 525
display.execution_report_trade_outright_525 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Trade Outright 525
dissect.execution_report_trade_outright_525_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index = dissect.last_px(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Sec Exec Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sec_exec_id(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Last Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.last_qty(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cum_qty(buffer, index, packet, parent)

  -- Md Trade Entry Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.md_trade_entry_id(buffer, index, packet, parent)

  -- Side Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.side_trade_id(buffer, index, packet, parent)

  -- Trade Link Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_link_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leaves_qty(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.trade_date(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Status: 1 Byte Ascii String
  index = dissect.ord_status(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Aggressor Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.aggressor_indicator(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  -- Ownership: 1 Byte Unsigned Fixed Width Integer
  index = dissect.ownership(buffer, index, packet, parent)

  -- Fills Groups: Struct of 2 fields
  index = dissect.fills_groups(buffer, index, packet, parent)

  -- Order Events Groups: Struct of 2 fields
  index = dissect.order_events_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Trade Outright 525
dissect.execution_report_trade_outright_525 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.execution_report_trade_outright_525 then
    local length = size_of.execution_report_trade_outright_525(buffer, offset)
    local range = buffer(offset, length)
    local display = display.execution_report_trade_outright_525(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_trade_outright_525, range, display)
  end

  return dissect.execution_report_trade_outright_525_fields(buffer, offset, packet, parent)
end

-- Display: Execution Report Elimination 524
display.execution_report_elimination_524 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Elimination 524
dissect.execution_report_elimination_524_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.cum_qty(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Elimination 524
dissect.execution_report_elimination_524 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_elimination_524 then
    local range = buffer(offset, 202)
    local display = display.execution_report_elimination_524(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_elimination_524, range, display)
  end

  return dissect.execution_report_elimination_524_fields(buffer, offset, packet, parent)
end

-- Size: Ord Rej Reason
size_of.ord_rej_reason = 2

-- Display: Ord Rej Reason
display.ord_rej_reason = function(value)
  return "Ord Rej Reason: "..value
end

-- Dissect: Ord Rej Reason
dissect.ord_rej_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ord_rej_reason)
  local value = range:le_uint()
  local display = display.ord_rej_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ord_rej_reason, range, value, display)

  return offset + size_of.ord_rej_reason
end

-- Display: Execution Report Reject 523
display.execution_report_reject_523 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report Reject 523
dissect.execution_report_reject_523_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Ord Rej Reason: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ord_rej_reason(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report Reject 523
dissect.execution_report_reject_523 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_reject_523 then
    local range = buffer(offset, 459)
    local display = display.execution_report_reject_523(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_reject_523, range, display)
  end

  return dissect.execution_report_reject_523_fields(buffer, offset, packet, parent)
end

-- Display: Execution Report New 522
display.execution_report_new_522 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Report New 522
dissect.execution_report_new_522_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Exec Id: 40 Byte Ascii String
  index = dissect.exec_id(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer
  index = dissect.transact_time(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.cross_id(buffer, index, packet, parent)

  -- Host Cross Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.host_cross_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Delay Duration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.delay_duration(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String
  index = dissect.cross_type(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Report New 522
dissect.execution_report_new_522 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_report_new_522 then
    local range = buffer(offset, 201)
    local display = display.execution_report_new_522(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.execution_report_new_522, range, display)
  end

  return dissect.execution_report_new_522_fields(buffer, offset, packet, parent)
end

-- Size: Ref Msg Type
size_of.ref_msg_type = 2

-- Display: Ref Msg Type
display.ref_msg_type = function(value)
  return "Ref Msg Type: "..value
end

-- Dissect: Ref Msg Type
dissect.ref_msg_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ref_msg_type)
  local value = range:string()
  local display = display.ref_msg_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ref_msg_type, range, value, display)

  return offset + size_of.ref_msg_type
end

-- Size: Business Reject Reason
size_of.business_reject_reason = 2

-- Display: Business Reject Reason
display.business_reject_reason = function(value)
  return "Business Reject Reason: "..value
end

-- Dissect: Business Reject Reason
dissect.business_reject_reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.business_reject_reason)
  local value = range:le_uint()
  local display = display.business_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.business_reject_reason, range, value, display)

  return offset + size_of.business_reject_reason
end

-- Size: Ref Tag Id
size_of.ref_tag_id = 2

-- Display: Ref Tag Id
display.ref_tag_id = function(value)
  return "Ref Tag Id: "..value
end

-- Dissect: Ref Tag Id
dissect.ref_tag_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ref_tag_id)
  local value = range:le_uint()
  local display = display.ref_tag_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ref_tag_id, range, value, display)

  return offset + size_of.ref_tag_id
end

-- Size: Ref Seq Num
size_of.ref_seq_num = 4

-- Display: Ref Seq Num
display.ref_seq_num = function(value)
  return "Ref Seq Num: "..value
end

-- Dissect: Ref Seq Num
dissect.ref_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ref_seq_num)
  local value = range:le_uint()
  local display = display.ref_seq_num(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ref_seq_num, range, value, display)

  return offset + size_of.ref_seq_num
end

-- Size: Business Reject Ref Id
size_of.business_reject_ref_id = 8

-- Display: Business Reject Ref Id
display.business_reject_ref_id = function(value)
  return "Business Reject Ref Id: "..value
end

-- Dissect: Business Reject Ref Id
dissect.business_reject_ref_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.business_reject_ref_id)
  local value = range:le_uint64()
  local display = display.business_reject_ref_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.business_reject_ref_id, range, value, display)

  return offset + size_of.business_reject_ref_id
end

-- Display: Business Reject 521
display.business_reject_521 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Business Reject 521
dissect.business_reject_521_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Text: 256 Byte Ascii String
  index = dissect.text(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Business Reject Ref Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.business_reject_ref_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Ref Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ref_seq_num(buffer, index, packet, parent)

  -- Ref Tag Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ref_tag_id(buffer, index, packet, parent)

  -- Business Reject Reason: 2 Byte Unsigned Fixed Width Integer
  index = dissect.business_reject_reason(buffer, index, packet, parent)

  -- Ref Msg Type: 2 Byte Ascii String
  index = dissect.ref_msg_type(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Reject 521
dissect.business_reject_521 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.business_reject_521 then
    local range = buffer(offset, 330)
    local display = display.business_reject_521(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.business_reject_521, range, display)
  end

  return dissect.business_reject_521_fields(buffer, offset, packet, parent)
end

-- Size: Party Detail Definition Status
size_of.party_detail_definition_status = 1

-- Display: Party Detail Definition Status
display.party_detail_definition_status = function(value)
  return "Party Detail Definition Status: "..value
end

-- Dissect: Party Detail Definition Status
dissect.party_detail_definition_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_detail_definition_status)
  local value = range:le_uint()
  local display = display.party_detail_definition_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_detail_definition_status, range, value, display)

  return offset + size_of.party_detail_definition_status
end

-- Size: List Update Action
size_of.list_update_action = 1

-- Display: List Update Action
display.list_update_action = function(value)
  return "List Update Action: "..value
end

-- Dissect: List Update Action
dissect.list_update_action = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.list_update_action)
  local value = range:string()
  local display = display.list_update_action(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.list_update_action, range, value, display)

  return offset + size_of.list_update_action
end

-- Size: Party Detail Request Status
size_of.party_detail_request_status = 1

-- Display: Party Detail Request Status
display.party_detail_request_status = function(value)
  return "Party Detail Request Status: "..value
end

-- Dissect: Party Detail Request Status
dissect.party_detail_request_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.party_detail_request_status)
  local value = range:le_uint()
  local display = display.party_detail_request_status(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_detail_request_status, range, value, display)

  return offset + size_of.party_detail_request_status
end

-- Size: Memo
size_of.memo = 75

-- Display: Memo
display.memo = function(value)
  return "Memo: "..value
end

-- Dissect: Memo
dissect.memo = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.memo)
  local value = range:string()
  local display = display.memo(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.memo, range, value, display)

  return offset + size_of.memo
end

-- Calculate runtime size: Party Details Definition Request Ack 519
size_of.party_details_definition_request_ack_519 = function(buffer, offset)
  local index = 0

  index = index + 159

  index = index + size_of.party_details_groups(buffer, offset + index)

  return index
end

-- Display: Party Details Definition Request Ack 519
display.party_details_definition_request_ack_519 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Definition Request Ack 519
dissect.party_details_definition_request_ack_519_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Memo: 75 Byte Ascii String
  index = dissect.memo(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String
  index = dissect.avg_px_group_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.self_match_prevention_id(buffer, index, packet, parent)

  -- Party Detail Request Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.party_detail_request_status(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.clearing_account_type(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String
  index = dissect.self_match_prevention_instruction(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.avg_px_indicator(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.clearing_trade_price_type(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 2 values
  index = dissect.cmta_giveup_cd(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String
  index = dissect.list_update_action(buffer, index, packet, parent)

  -- Party Detail Definition Status: 1 Byte Unsigned Fixed Width Integer
  index = dissect.party_detail_definition_status(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer
  index = dissect.executor(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer
  index = dissect.idm_short_code(buffer, index, packet, parent)

  -- Poss Retrans Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.poss_retrans_flag(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index = dissect.party_details_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Definition Request Ack 519
dissect.party_details_definition_request_ack_519 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_definition_request_ack_519 then
    local length = size_of.party_details_definition_request_ack_519(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_definition_request_ack_519(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_details_definition_request_ack_519, range, display)
  end

  return dissect.party_details_definition_request_ack_519_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Party Details Definition Request 518
size_of.party_details_definition_request_518 = function(buffer, offset)
  local index = 0

  index = index + 147

  index = index + size_of.party_details_groups(buffer, offset + index)

  return index
end

-- Display: Party Details Definition Request 518
display.party_details_definition_request_518 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Party Details Definition Request 518
dissect.party_details_definition_request_518_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- List Update Action: 1 Byte Ascii String
  index = dissect.list_update_action(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Memo: 75 Byte Ascii String
  index = dissect.memo(buffer, index, packet, parent)

  -- Avg Px Group Id: 20 Byte Ascii String
  index = dissect.avg_px_group_id(buffer, index, packet, parent)

  -- Self Match Prevention Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.self_match_prevention_id(buffer, index, packet, parent)

  -- Cmta Giveup Cd: 1 Byte Ascii String Enum with 2 values
  index = dissect.cmta_giveup_cd(buffer, index, packet, parent)

  -- Cust Order Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.cust_order_capacity(buffer, index, packet, parent)

  -- Clearing Account Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.clearing_account_type(buffer, index, packet, parent)

  -- Self Match Prevention Instruction: 1 Byte Ascii String
  index = dissect.self_match_prevention_instruction(buffer, index, packet, parent)

  -- Avg Px Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.avg_px_indicator(buffer, index, packet, parent)

  -- Clearing Trade Price Type: 1 Byte Unsigned Fixed Width Integer
  index = dissect.clearing_trade_price_type(buffer, index, packet, parent)

  -- Cust Order Handling Inst: 1 Byte Ascii String
  index = dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Executor: 8 Byte Unsigned Fixed Width Integer
  index = dissect.executor(buffer, index, packet, parent)

  -- Idm Short Code: 8 Byte Unsigned Fixed Width Integer
  index = dissect.idm_short_code(buffer, index, packet, parent)

  -- Party Details Groups: Struct of 2 fields
  index = dissect.party_details_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Party Details Definition Request 518
dissect.party_details_definition_request_518 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.party_details_definition_request_518 then
    local length = size_of.party_details_definition_request_518(buffer, offset)
    local range = buffer(offset, length)
    local display = display.party_details_definition_request_518(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.party_details_definition_request_518, range, display)
  end

  return dissect.party_details_definition_request_518_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Mass Quote 517
size_of.mass_quote_517 = function(buffer, offset)
  local index = 0

  index = index + 62

  index = index + size_of.quote_entries_groups(buffer, offset + index)

  return index
end

-- Display: Mass Quote 517
display.mass_quote_517 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Quote 517
dissect.mass_quote_517_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.quote_req_id(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Quote Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.quote_id(buffer, index, packet, parent)

  -- Tot No Quote Entries: 1 Byte Unsigned Fixed Width Integer
  index = dissect.tot_no_quote_entries(buffer, index, packet, parent)

  -- Mm Protection Reset: 1 Byte Unsigned Fixed Width Integer
  index = dissect.mm_protection_reset(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  -- Quote Entries Groups: Struct of 2 fields
  index = dissect.quote_entries_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Quote 517
dissect.mass_quote_517 = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_quote_517 then
    local length = size_of.mass_quote_517(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_quote_517(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.mass_quote_517, range, display)
  end

  return dissect.mass_quote_517_fields(buffer, offset, packet, parent)
end

-- Display: Order Cancel Request 516
display.order_cancel_request_516 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Request 516
dissect.order_cancel_request_516_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Request 516
dissect.order_cancel_request_516 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_request_516 then
    local range = buffer(offset, 88)
    local display = display.order_cancel_request_516(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_cancel_request_516, range, display)
  end

  return dissect.order_cancel_request_516_fields(buffer, offset, packet, parent)
end

-- Size: Ofm Override
size_of.ofm_override = 1

-- Display: Ofm Override
display.ofm_override = function(value)
  return "Ofm Override: "..value
end

-- Dissect: Ofm Override
dissect.ofm_override = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ofm_override)
  local value = range:le_uint()
  local display = display.ofm_override(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.ofm_override, range, value, display)

  return offset + size_of.ofm_override
end

-- Display: Order Cancel Replace Request 515
display.order_cancel_replace_request_515 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancel Replace Request 515
dissect.order_cancel_replace_request_515_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Ofm Override: 1 Byte Unsigned Fixed Width Integer
  index = dissect.ofm_override(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Replace Request 515
dissect.order_cancel_replace_request_515 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancel_replace_request_515 then
    local range = buffer(offset, 125)
    local display = display.order_cancel_replace_request_515(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.order_cancel_replace_request_515, range, display)
  end

  return dissect.order_cancel_replace_request_515_fields(buffer, offset, packet, parent)
end

-- Display: New Order Single 514
display.new_order_single_514 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Single 514
dissect.new_order_single_514_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.order_qty(buffer, index, packet, parent)

  -- Security Id: 4 Byte Signed Fixed Width Integer
  index = dissect.security_id(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index = dissect.side(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.seq_num(buffer, index, packet, parent)

  -- Sender Id: 20 Byte Ascii String
  index = dissect.sender_id(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index = dissect.cl_ord_id(buffer, index, packet, parent)

  -- Party Details List Req Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.party_details_list_req_id(buffer, index, packet, parent)

  -- Order Request Id: 8 Byte Unsigned Fixed Width Integer
  index = dissect.order_request_id(buffer, index, packet, parent)

  -- Sending Time Epoch: 8 Byte Unsigned Fixed Width Integer
  index = dissect.sending_time_epoch(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index = dissect.stop_px(buffer, index, packet, parent)

  -- Location: 5 Byte Ascii String
  index = dissect.location(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Display Qty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.display_qty(buffer, index, packet, parent)

  -- Expire Date: 2 Byte Unsigned Fixed Width Integer
  index = dissect.expire_date(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String
  index = dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index = dissect.time_in_force(buffer, index, packet, parent)

  -- Manual Order Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Exec Inst: Struct of 8 fields
  index = dissect.exec_inst(buffer, index, packet, parent)

  -- Execution Mode: 1 Byte Ascii String
  index = dissect.execution_mode(buffer, index, packet, parent)

  -- Liquidity Flag: 1 Byte Unsigned Fixed Width Integer
  index = dissect.liquidity_flag(buffer, index, packet, parent)

  -- Managed Order: 1 Byte Unsigned Fixed Width Integer
  index = dissect.managed_order(buffer, index, packet, parent)

  -- Short Sale Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.short_sale_type(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Single 514
dissect.new_order_single_514 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_single_514 then
    local range = buffer(offset, 116)
    local display = display.new_order_single_514(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.new_order_single_514, range, display)
  end

  return dissect.new_order_single_514_fields(buffer, offset, packet, parent)
end

-- Size: Msg Count
size_of.msg_count = 2

-- Display: Msg Count
display.msg_count = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
dissect.msg_count = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.msg_count)
  local value = range:le_uint()
  local display = display.msg_count(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.msg_count, range, value, display)

  return offset + size_of.msg_count
end

-- Size: From Seq No
size_of.from_seq_no = 4

-- Display: From Seq No
display.from_seq_no = function(value)
  return "From Seq No: "..value
end

-- Dissect: From Seq No
dissect.from_seq_no = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.from_seq_no)
  local value = range:le_uint()
  local display = display.from_seq_no(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.from_seq_no, range, value, display)

  return offset + size_of.from_seq_no
end

-- Display: Not Applied 513
display.not_applied_513 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Applied 513
dissect.not_applied_513_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.from_seq_no(buffer, index, packet, parent)

  -- Msg Count: 2 Byte Unsigned Fixed Width Integer
  index = dissect.msg_count(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Not Applied 513
dissect.not_applied_513 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.not_applied_513 then
    local range = buffer(offset, 15)
    local display = display.not_applied_513(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.not_applied_513, range, display)
  end

  return dissect.not_applied_513_fields(buffer, offset, packet, parent)
end

-- Size: Error Codes
size_of.error_codes = 2

-- Display: Error Codes
display.error_codes = function(value)
  return "Error Codes: "..value
end

-- Dissect: Error Codes
dissect.error_codes = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.error_codes)
  local value = range:le_uint()
  local display = display.error_codes(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.error_codes, range, value, display)

  return offset + size_of.error_codes
end

-- Size: Request Timestamp
size_of.request_timestamp = 8

-- Display: Request Timestamp
display.request_timestamp = function(value)
  return "Request Timestamp: "..value
end

-- Dissect: Request Timestamp
dissect.request_timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.request_timestamp)
  local value = range:le_uint64()
  local display = display.request_timestamp(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.request_timestamp, range, value, display)

  return offset + size_of.request_timestamp
end

-- Size: Last Uuid
size_of.last_uuid = 8

-- Display: Last Uuid
display.last_uuid = function(value)
  return "Last Uuid: "..value
end

-- Dissect: Last Uuid
dissect.last_uuid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_uuid)
  local value = range:le_uint64()
  local display = display.last_uuid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.last_uuid, range, value, display)

  return offset + size_of.last_uuid
end

-- Size: Reason
size_of.reason = 48

-- Display: Reason
display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
dissect.reason = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reason)
  local value = range:string()
  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.reason, range, value, display)

  return offset + size_of.reason
end

-- Display: Retransmit Reject 510
display.retransmit_reject_510 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Reject 510
dissect.retransmit_reject_510_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String
  index = dissect.reason(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index = dissect.error_codes(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Reject 510
dissect.retransmit_reject_510 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_reject_510 then
    local range = buffer(offset, 75)
    local display = display.retransmit_reject_510(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.retransmit_reject_510, range, display)
  end

  return dissect.retransmit_reject_510_fields(buffer, offset, packet, parent)
end

-- Display: Retransmission 509
display.retransmission_509 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission 509
dissect.retransmission_509_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.from_seq_no(buffer, index, packet, parent)

  -- Msg Count: 2 Byte Unsigned Fixed Width Integer
  index = dissect.msg_count(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission 509
dissect.retransmission_509 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission_509 then
    local range = buffer(offset, 31)
    local display = display.retransmission_509(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.retransmission_509, range, display)
  end

  return dissect.retransmission_509_fields(buffer, offset, packet, parent)
end

-- Display: Retransmit Request 508
display.retransmit_request_508 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmit Request 508
dissect.retransmit_request_508_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Last Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.last_uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- From Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.from_seq_no(buffer, index, packet, parent)

  -- Msg Count: 2 Byte Unsigned Fixed Width Integer
  index = dissect.msg_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmit Request 508
dissect.retransmit_request_508 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmit_request_508 then
    local range = buffer(offset, 30)
    local display = display.retransmit_request_508(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.retransmit_request_508, range, display)
  end

  return dissect.retransmit_request_508_fields(buffer, offset, packet, parent)
end

-- Display: Terminate 507
display.terminate_507 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Terminate 507
dissect.terminate_507_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String
  index = dissect.reason(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index = dissect.error_codes(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Terminate 507
dissect.terminate_507 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.terminate_507 then
    local range = buffer(offset, 67)
    local display = display.terminate_507(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.terminate_507, range, display)
  end

  return dissect.terminate_507_fields(buffer, offset, packet, parent)
end

-- Size: Keep Alive Interval Lapsed
size_of.keep_alive_interval_lapsed = 1

-- Display: Keep Alive Interval Lapsed
display.keep_alive_interval_lapsed = function(value)
  return "Keep Alive Interval Lapsed: "..value
end

-- Dissect: Keep Alive Interval Lapsed
dissect.keep_alive_interval_lapsed = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.keep_alive_interval_lapsed)
  local value = range:le_uint()
  local display = display.keep_alive_interval_lapsed(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.keep_alive_interval_lapsed, range, value, display)

  return offset + size_of.keep_alive_interval_lapsed
end

-- Size: Fault Tolerance Indicator
size_of.fault_tolerance_indicator = 1

-- Display: Fault Tolerance Indicator
display.fault_tolerance_indicator = function(value)
  return "Fault Tolerance Indicator: "..value
end

-- Dissect: Fault Tolerance Indicator
dissect.fault_tolerance_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.fault_tolerance_indicator)
  local value = range:le_uint()
  local display = display.fault_tolerance_indicator(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.fault_tolerance_indicator, range, value, display)

  return offset + size_of.fault_tolerance_indicator
end

-- Size: Next Seq No
size_of.next_seq_no = 4

-- Display: Next Seq No
display.next_seq_no = function(value)
  return "Next Seq No: "..value
end

-- Dissect: Next Seq No
dissect.next_seq_no = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.next_seq_no)
  local value = range:le_uint()
  local display = display.next_seq_no(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.next_seq_no, range, value, display)

  return offset + size_of.next_seq_no
end

-- Display: Sequence 506
display.sequence_506 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence 506
dissect.sequence_506_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.next_seq_no(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Keep Alive Interval Lapsed: 1 Byte Unsigned Fixed Width Integer
  index = dissect.keep_alive_interval_lapsed(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence 506
dissect.sequence_506 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence_506 then
    local range = buffer(offset, 14)
    local display = display.sequence_506(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.sequence_506, range, display)
  end

  return dissect.sequence_506_fields(buffer, offset, packet, parent)
end

-- Display: Establishment Reject 505
display.establishment_reject_505 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establishment Reject 505
dissect.establishment_reject_505_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String
  index = dissect.reason(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.next_seq_no(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index = dissect.error_codes(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Reject 505
dissect.establishment_reject_505 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.establishment_reject_505 then
    local range = buffer(offset, 72)
    local display = display.establishment_reject_505(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.establishment_reject_505, range, display)
  end

  return dissect.establishment_reject_505_fields(buffer, offset, packet, parent)
end

-- Size: Secret Key Secure Id Expiration
size_of.secret_key_secure_id_expiration = 2

-- Display: Secret Key Secure Id Expiration
display.secret_key_secure_id_expiration = function(value)
  return "Secret Key Secure Id Expiration: "..value
end

-- Dissect: Secret Key Secure Id Expiration
dissect.secret_key_secure_id_expiration = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.secret_key_secure_id_expiration)
  local value = range:le_uint()
  local display = display.secret_key_secure_id_expiration(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.secret_key_secure_id_expiration, range, value, display)

  return offset + size_of.secret_key_secure_id_expiration
end

-- Size: Keep Alive Interval
size_of.keep_alive_interval = 2

-- Display: Keep Alive Interval
display.keep_alive_interval = function(value)
  return "Keep Alive Interval: "..value
end

-- Dissect: Keep Alive Interval
dissect.keep_alive_interval = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.keep_alive_interval)
  local value = range:le_uint()
  local display = display.keep_alive_interval(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.keep_alive_interval, range, value, display)

  return offset + size_of.keep_alive_interval
end

-- Size: Previous Uuid
size_of.previous_uuid = 8

-- Display: Previous Uuid
display.previous_uuid = function(value)
  return "Previous Uuid: "..value
end

-- Dissect: Previous Uuid
dissect.previous_uuid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.previous_uuid)
  local value = range:le_uint64()
  local display = display.previous_uuid(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.previous_uuid, range, value, display)

  return offset + size_of.previous_uuid
end

-- Size: Previous Seq No
size_of.previous_seq_no = 4

-- Display: Previous Seq No
display.previous_seq_no = function(value)
  return "Previous Seq No: "..value
end

-- Dissect: Previous Seq No
dissect.previous_seq_no = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.previous_seq_no)
  local value = range:le_uint()
  local display = display.previous_seq_no(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.previous_seq_no, range, value, display)

  return offset + size_of.previous_seq_no
end

-- Display: Establishment Ack 504
display.establishment_ack_504 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establishment Ack 504
dissect.establishment_ack_504_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.next_seq_no(buffer, index, packet, parent)

  -- Previous Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.previous_seq_no(buffer, index, packet, parent)

  -- Previous Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.previous_uuid(buffer, index, packet, parent)

  -- Keep Alive Interval: 2 Byte Unsigned Fixed Width Integer
  index = dissect.keep_alive_interval(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.secret_key_secure_id_expiration(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Establishment Ack 504
dissect.establishment_ack_504 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.establishment_ack_504 then
    local range = buffer(offset, 38)
    local display = display.establishment_ack_504(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.establishment_ack_504, range, display)
  end

  return dissect.establishment_ack_504_fields(buffer, offset, packet, parent)
end

-- Size: Firm
size_of.firm = 5

-- Display: Firm
display.firm = function(value)
  return "Firm: "..value
end

-- Dissect: Firm
dissect.firm = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.firm)
  local value = range:string()
  local display = display.firm(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.firm, range, value, display)

  return offset + size_of.firm
end

-- Size: Session
size_of.session = 3

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.session)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.session, range, value, display)

  return offset + size_of.session
end

-- Size: Trading System Vendor
size_of.trading_system_vendor = 10

-- Display: Trading System Vendor
display.trading_system_vendor = function(value)
  return "Trading System Vendor: "..value
end

-- Dissect: Trading System Vendor
dissect.trading_system_vendor = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_system_vendor)
  local value = range:string()
  local display = display.trading_system_vendor(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.trading_system_vendor, range, value, display)

  return offset + size_of.trading_system_vendor
end

-- Size: Trading System Version
size_of.trading_system_version = 10

-- Display: Trading System Version
display.trading_system_version = function(value)
  return "Trading System Version: "..value
end

-- Dissect: Trading System Version
dissect.trading_system_version = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_system_version)
  local value = range:string()
  local display = display.trading_system_version(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.trading_system_version, range, value, display)

  return offset + size_of.trading_system_version
end

-- Size: Trading System Name
size_of.trading_system_name = 30

-- Display: Trading System Name
display.trading_system_name = function(value)
  return "Trading System Name: "..value
end

-- Dissect: Trading System Name
dissect.trading_system_name = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_system_name)
  local value = range:string()
  local display = display.trading_system_name(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.trading_system_name, range, value, display)

  return offset + size_of.trading_system_name
end

-- Size: Access Key Id
size_of.access_key_id = 20

-- Display: Access Key Id
display.access_key_id = function(value)
  return "Access Key Id: "..value
end

-- Dissect: Access Key Id
dissect.access_key_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.access_key_id)
  local value = range:string()
  local display = display.access_key_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.access_key_id, range, value, display)

  return offset + size_of.access_key_id
end

-- Size: Hmac Signature
size_of.hmac_signature = 32

-- Display: Hmac Signature
display.hmac_signature = function(value)
  return "Hmac Signature: "..value
end

-- Dissect: Hmac Signature
dissect.hmac_signature = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.hmac_signature)
  local value = range:string()
  local display = display.hmac_signature(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.hmac_signature, range, value, display)

  return offset + size_of.hmac_signature
end

-- Display: Establish 503
display.establish_503 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Establish 503
dissect.establish_503_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: 32 Byte Ascii String
  index = dissect.hmac_signature(buffer, index, packet, parent)

  -- Access Key Id: 20 Byte Ascii String
  index = dissect.access_key_id(buffer, index, packet, parent)

  -- Trading System Name: 30 Byte Ascii String
  index = dissect.trading_system_name(buffer, index, packet, parent)

  -- Trading System Version: 10 Byte Ascii String
  index = dissect.trading_system_version(buffer, index, packet, parent)

  -- Trading System Vendor: 10 Byte Ascii String
  index = dissect.trading_system_vendor(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- Next Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.next_seq_no(buffer, index, packet, parent)

  -- Session: 3 Byte Ascii String
  index = dissect.session(buffer, index, packet, parent)

  -- Firm: 5 Byte Ascii String
  index = dissect.firm(buffer, index, packet, parent)

  -- Keep Alive Interval: 2 Byte Unsigned Fixed Width Integer
  index = dissect.keep_alive_interval(buffer, index, packet, parent)

  return index
end

-- Dissect: Establish 503
dissect.establish_503 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.establish_503 then
    local range = buffer(offset, 132)
    local display = display.establish_503(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.establish_503, range, display)
  end

  return dissect.establish_503_fields(buffer, offset, packet, parent)
end

-- Display: Negotiation Reject 502
display.negotiation_reject_502 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiation Reject 502
dissect.negotiation_reject_502_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason: 48 Byte Ascii String
  index = dissect.reason(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- Error Codes: 2 Byte Unsigned Fixed Width Integer
  index = dissect.error_codes(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Reject 502
dissect.negotiation_reject_502 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.negotiation_reject_502 then
    local range = buffer(offset, 68)
    local display = display.negotiation_reject_502(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.negotiation_reject_502, range, display)
  end

  return dissect.negotiation_reject_502_fields(buffer, offset, packet, parent)
end

-- Display: Negotiation Response 501
display.negotiation_response_501 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiation Response 501
dissect.negotiation_response_501_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- Secret Key Secure Id Expiration: 2 Byte Unsigned Fixed Width Integer
  index = dissect.secret_key_secure_id_expiration(buffer, index, packet, parent)

  -- Fault Tolerance Indicator: 1 Byte Unsigned Fixed Width Integer
  index = dissect.fault_tolerance_indicator(buffer, index, packet, parent)

  -- Split Msg: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.split_msg(buffer, index, packet, parent)

  -- Previous Seq No: 4 Byte Unsigned Fixed Width Integer
  index = dissect.previous_seq_no(buffer, index, packet, parent)

  -- Previous Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.previous_uuid(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiation Response 501
dissect.negotiation_response_501 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.negotiation_response_501 then
    local range = buffer(offset, 32)
    local display = display.negotiation_response_501(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.negotiation_response_501, range, display)
  end

  return dissect.negotiation_response_501_fields(buffer, offset, packet, parent)
end

-- Display: Negotiate 500
display.negotiate_500 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Negotiate 500
dissect.negotiate_500_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Hmac Signature: 32 Byte Ascii String
  index = dissect.hmac_signature(buffer, index, packet, parent)

  -- Access Key Id: 20 Byte Ascii String
  index = dissect.access_key_id(buffer, index, packet, parent)

  -- Uuid: 8 Byte Unsigned Fixed Width Integer
  index = dissect.uuid(buffer, index, packet, parent)

  -- Request Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.request_timestamp(buffer, index, packet, parent)

  -- Session: 3 Byte Ascii String
  index = dissect.session(buffer, index, packet, parent)

  -- Firm: 5 Byte Ascii String
  index = dissect.firm(buffer, index, packet, parent)

  return index
end

-- Dissect: Negotiate 500
dissect.negotiate_500 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.negotiate_500 then
    local range = buffer(offset, 76)
    local display = display.negotiate_500(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.negotiate_500, range, display)
  end

  return dissect.negotiate_500_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: payload
size_of.payload = function(buffer, offset, templateid)
  -- Size of Negotiate 500
  if templateid == 500 then
    return 76
  end
  -- Size of Negotiation Response 501
  if templateid == 501 then
    return 32
  end
  -- Size of Negotiation Reject 502
  if templateid == 502 then
    return 68
  end
  -- Size of Establish 503
  if templateid == 503 then
    return 132
  end
  -- Size of Establishment Ack 504
  if templateid == 504 then
    return 38
  end
  -- Size of Establishment Reject 505
  if templateid == 505 then
    return 72
  end
  -- Size of Sequence 506
  if templateid == 506 then
    return 14
  end
  -- Size of Terminate 507
  if templateid == 507 then
    return 67
  end
  -- Size of Retransmit Request 508
  if templateid == 508 then
    return 30
  end
  -- Size of Retransmission 509
  if templateid == 509 then
    return 31
  end
  -- Size of Retransmit Reject 510
  if templateid == 510 then
    return 75
  end
  -- Size of Not Applied 513
  if templateid == 513 then
    return 15
  end
  -- Size of New Order Single 514
  if templateid == 514 then
    return 116
  end
  -- Size of Order Cancel Replace Request 515
  if templateid == 515 then
    return 125
  end
  -- Size of Order Cancel Request 516
  if templateid == 516 then
    return 88
  end
  -- Size of Mass Quote 517
  if templateid == 517 then
    return size_of.mass_quote_517(buffer, offset)
  end
  -- Size of Party Details Definition Request 518
  if templateid == 518 then
    return size_of.party_details_definition_request_518(buffer, offset)
  end
  -- Size of Party Details Definition Request Ack 519
  if templateid == 519 then
    return size_of.party_details_definition_request_ack_519(buffer, offset)
  end
  -- Size of Business Reject 521
  if templateid == 521 then
    return 330
  end
  -- Size of Execution Report New 522
  if templateid == 522 then
    return 201
  end
  -- Size of Execution Report Reject 523
  if templateid == 523 then
    return 459
  end
  -- Size of Execution Report Elimination 524
  if templateid == 524 then
    return 202
  end
  -- Size of Execution Report Trade Outright 525
  if templateid == 525 then
    return size_of.execution_report_trade_outright_525(buffer, offset)
  end
  -- Size of Execution Report Trade Spread 526
  if templateid == 526 then
    return size_of.execution_report_trade_spread_526(buffer, offset)
  end
  -- Size of Execution Report Trade Spread Leg 527
  if templateid == 527 then
    return size_of.execution_report_trade_spread_leg_527(buffer, offset)
  end
  -- Size of Quote Cancel 528
  if templateid == 528 then
    return size_of.quote_cancel_528(buffer, offset)
  end
  -- Size of Order Mass Action Request 529
  if templateid == 529 then
    return 71
  end
  -- Size of Order Mass Status Request 530
  if templateid == 530 then
    return 68
  end
  -- Size of Execution Report Modify 531
  if templateid == 531 then
    return 209
  end
  -- Size of Execution Report Status 532
  if templateid == 532 then
    return 480
  end
  -- Size of Order Status Request 533
  if templateid == 533 then
    return 62
  end
  -- Size of Execution Report Cancel 534
  if templateid == 534 then
    return 206
  end
  -- Size of Order Cancel Reject 535
  if templateid == 535 then
    return 401
  end
  -- Size of Order Cancel Replace Reject 536
  if templateid == 536 then
    return 401
  end
  -- Size of Party Details List Request 537
  if templateid == 537 then
    return size_of.party_details_list_request_537(buffer, offset)
  end
  -- Size of Party Details List Report 538
  if templateid == 538 then
    return size_of.party_details_list_report_538(buffer, offset)
  end
  -- Size of Security Definition Request 541
  if templateid == 541 then
    return size_of.security_definition_request_541(buffer, offset)
  end
  -- Size of Security Definition Response 542
  if templateid == 542 then
    return size_of.security_definition_response_542(buffer, offset)
  end
  -- Size of Request For Quote 543
  if templateid == 543 then
    return size_of.request_for_quote_543(buffer, offset)
  end
  -- Size of New Order Cross 544
  if templateid == 544 then
    return size_of.new_order_cross_544(buffer, offset)
  end
  -- Size of Mass Quote Ack 545
  if templateid == 545 then
    return size_of.mass_quote_ack_545(buffer, offset)
  end
  -- Size of Request For Quote Ack 546
  if templateid == 546 then
    return 349
  end
  -- Size of Quote Cancel Ack 547
  if templateid == 547 then
    return size_of.quote_cancel_ack_547(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Outright 548
  if templateid == 548 then
    return size_of.execution_report_trade_addendum_outright_548(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Spread 549
  if templateid == 549 then
    return size_of.execution_report_trade_addendum_spread_549(buffer, offset)
  end
  -- Size of Execution Report Trade Addendum Spread Leg 550
  if templateid == 550 then
    return size_of.execution_report_trade_addendum_spread_leg_550(buffer, offset)
  end
  -- Size of Order Mass Action Report 558
  if templateid == 558 then
    return size_of.order_mass_action_report_558(buffer, offset)
  end

  return 0
end

-- Display: payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: payload
dissect.payload_branches = function(buffer, offset, packet, parent, templateid)
  -- Dissect Negotiate 500
  if templateid == 500 then
    return dissect.negotiate_500(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Response 501
  if templateid == 501 then
    return dissect.negotiation_response_501(buffer, offset, packet, parent)
  end
  -- Dissect Negotiation Reject 502
  if templateid == 502 then
    return dissect.negotiation_reject_502(buffer, offset, packet, parent)
  end
  -- Dissect Establish 503
  if templateid == 503 then
    return dissect.establish_503(buffer, offset, packet, parent)
  end
  -- Dissect Establishment Ack 504
  if templateid == 504 then
    return dissect.establishment_ack_504(buffer, offset, packet, parent)
  end
  -- Dissect Establishment Reject 505
  if templateid == 505 then
    return dissect.establishment_reject_505(buffer, offset, packet, parent)
  end
  -- Dissect Sequence 506
  if templateid == 506 then
    return dissect.sequence_506(buffer, offset, packet, parent)
  end
  -- Dissect Terminate 507
  if templateid == 507 then
    return dissect.terminate_507(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Request 508
  if templateid == 508 then
    return dissect.retransmit_request_508(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission 509
  if templateid == 509 then
    return dissect.retransmission_509(buffer, offset, packet, parent)
  end
  -- Dissect Retransmit Reject 510
  if templateid == 510 then
    return dissect.retransmit_reject_510(buffer, offset, packet, parent)
  end
  -- Dissect Not Applied 513
  if templateid == 513 then
    return dissect.not_applied_513(buffer, offset, packet, parent)
  end
  -- Dissect New Order Single 514
  if templateid == 514 then
    return dissect.new_order_single_514(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Request 515
  if templateid == 515 then
    return dissect.order_cancel_replace_request_515(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Request 516
  if templateid == 516 then
    return dissect.order_cancel_request_516(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote 517
  if templateid == 517 then
    return dissect.mass_quote_517(buffer, offset, packet, parent)
  end
  -- Dissect Party Details Definition Request 518
  if templateid == 518 then
    return dissect.party_details_definition_request_518(buffer, offset, packet, parent)
  end
  -- Dissect Party Details Definition Request Ack 519
  if templateid == 519 then
    return dissect.party_details_definition_request_ack_519(buffer, offset, packet, parent)
  end
  -- Dissect Business Reject 521
  if templateid == 521 then
    return dissect.business_reject_521(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report New 522
  if templateid == 522 then
    return dissect.execution_report_new_522(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Reject 523
  if templateid == 523 then
    return dissect.execution_report_reject_523(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Elimination 524
  if templateid == 524 then
    return dissect.execution_report_elimination_524(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Outright 525
  if templateid == 525 then
    return dissect.execution_report_trade_outright_525(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Spread 526
  if templateid == 526 then
    return dissect.execution_report_trade_spread_526(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Spread Leg 527
  if templateid == 527 then
    return dissect.execution_report_trade_spread_leg_527(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel 528
  if templateid == 528 then
    return dissect.quote_cancel_528(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Request 529
  if templateid == 529 then
    return dissect.order_mass_action_request_529(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Status Request 530
  if templateid == 530 then
    return dissect.order_mass_status_request_530(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Modify 531
  if templateid == 531 then
    return dissect.execution_report_modify_531(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Status 532
  if templateid == 532 then
    return dissect.execution_report_status_532(buffer, offset, packet, parent)
  end
  -- Dissect Order Status Request 533
  if templateid == 533 then
    return dissect.order_status_request_533(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Cancel 534
  if templateid == 534 then
    return dissect.execution_report_cancel_534(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Reject 535
  if templateid == 535 then
    return dissect.order_cancel_reject_535(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Replace Reject 536
  if templateid == 536 then
    return dissect.order_cancel_replace_reject_536(buffer, offset, packet, parent)
  end
  -- Dissect Party Details List Request 537
  if templateid == 537 then
    return dissect.party_details_list_request_537(buffer, offset, packet, parent)
  end
  -- Dissect Party Details List Report 538
  if templateid == 538 then
    return dissect.party_details_list_report_538(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request 541
  if templateid == 541 then
    return dissect.security_definition_request_541(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Response 542
  if templateid == 542 then
    return dissect.security_definition_response_542(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote 543
  if templateid == 543 then
    return dissect.request_for_quote_543(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross 544
  if templateid == 544 then
    return dissect.new_order_cross_544(buffer, offset, packet, parent)
  end
  -- Dissect Mass Quote Ack 545
  if templateid == 545 then
    return dissect.mass_quote_ack_545(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote Ack 546
  if templateid == 546 then
    return dissect.request_for_quote_ack_546(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancel Ack 547
  if templateid == 547 then
    return dissect.quote_cancel_ack_547(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Outright 548
  if templateid == 548 then
    return dissect.execution_report_trade_addendum_outright_548(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Spread 549
  if templateid == 549 then
    return dissect.execution_report_trade_addendum_spread_549(buffer, offset, packet, parent)
  end
  -- Dissect Execution Report Trade Addendum Spread Leg 550
  if templateid == 550 then
    return dissect.execution_report_trade_addendum_spread_leg_550(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Action Report 558
  if templateid == 558 then
    return dissect.order_mass_action_report_558(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: payload
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
  local element = parent:add(cme_futures_ilink3_sbe_v8_0.fields.payload, range, display)

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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.version, range, value, display)

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

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.schema_id, range, value, display)

  return offset + size_of.schema_id
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
  if value == 541 then
    return "Template Id: Security Definition Request (541)"
  end
  if value == 542 then
    return "Template Id: Security Definition Response (542)"
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
  if value == 547 then
    return "Template Id: Quote Cancel Ack (547)"
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
  if value == 558 then
    return "Template Id: Order Mass Action Report (558)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.template_id)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.template_id, range, value, display)

  return offset + size_of.template_id
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 47 values
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
    local range = buffer(offset, 8)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.message_header, range, display)
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
  local range = buffer(offset, size_of.encoding_type)
  local value = range:le_uint()
  local display = display.encoding_type(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.encoding_type, range, value, display)

  return offset + size_of.encoding_type
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(cme_futures_ilink3_sbe_v8_0.fields.message_length, range, value, display)

  return offset + size_of.message_length
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.message_length(buffer, index, packet, parent)

  -- Encoding Type: 2 Byte Unsigned Fixed Width Integer
  index = dissect.encoding_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 4)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(cme_futures_ilink3_sbe_v8_0.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 2 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- payload: Runtime Type with 47 branches
  local code = buffer(index - 6, 2):le_uint()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cme_futures_ilink3_sbe_v8_0.init()
end

-- Dissector for Cme Futures iLink3 Sbe 8.0
function cme_futures_ilink3_sbe_v8_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cme_futures_ilink3_sbe_v8_0.name

  -- Dissect protocol
  local protocol = parent:add(cme_futures_ilink3_sbe_v8_0, buffer(), cme_futures_ilink3_sbe_v8_0.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, cme_futures_ilink3_sbe_v8_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cme_futures_ilink3_sbe_v8_0_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 0 == buffer(8, 2):le_uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 8 == buffer(10, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Cme Futures iLink3 Sbe 8.0
local function cme_futures_ilink3_sbe_v8_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cme_futures_ilink3_sbe_v8_0_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cme_futures_ilink3_sbe_v8_0
  cme_futures_ilink3_sbe_v8_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cme Futures iLink3 Sbe 8.0
cme_futures_ilink3_sbe_v8_0:register_heuristic("tcp", cme_futures_ilink3_sbe_v8_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Mercantile Exchange
--   Version: 8.0
--   Date: Wednesday, July 24, 2019
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
