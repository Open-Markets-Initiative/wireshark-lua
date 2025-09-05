-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Futures OrderEntry Boe3 1.1.20 Protocol
local omi_cboe_futures_orderentry_boe3_v1_1_20 = Proto("Cboe.Futures.OrderEntry.Boe3.v1.1.20.Lua", "Cboe Futures OrderEntry Boe3 1.1.20")

-- Protocol table
local cboe_futures_orderentry_boe3_v1_1_20 = {}

-- Component Tables
local show = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Futures OrderEntry Boe3 1.1.20 Fields
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.account = ProtoField.new("Account", "cboe.futures.orderentry.boe3.v1.1.20.account", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.acknowledgement_style = ProtoField.new("Acknowledgement Style", "cboe.futures.orderentry.boe3.v1.1.20.acknowledgementstyle", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.futures.orderentry.boe3.v1.1.20.baseliquidityindicator", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.futures.orderentry.boe3.v1.1.20.cancelorigonreject", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.futures.orderentry.boe3.v1.1.20.cancelreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.futures.orderentry.boe3.v1.1.20.cancelrejectreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.futures.orderentry.boe3.v1.1.20.cancelledordercount", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.capacity = ProtoField.new("Capacity", "cboe.futures.orderentry.boe3.v1.1.20.capacity", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.futures.orderentry.boe3.v1.1.20.clordid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.futures.orderentry.boe3.v1.1.20.clearingaccount", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.futures.orderentry.boe3.v1.1.20.clearingfirm", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_firm_filter = ProtoField.new("Clearing Firm Filter", "cboe.futures.orderentry.boe3.v1.1.20.clearingfirmfilter", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_price = ProtoField.new("Clearing Price", "cboe.futures.orderentry.boe3.v1.1.20.clearingprice", ftypes.DOUBLE)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_size = ProtoField.new("Clearing Size", "cboe.futures.orderentry.boe3.v1.1.20.clearingsize", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_symbol = ProtoField.new("Clearing Symbol", "cboe.futures.orderentry.boe3.v1.1.20.clearingsymbol", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.futures.orderentry.boe3.v1.1.20.clientsequence", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cmta_number = ProtoField.new("Cmta Number", "cboe.futures.orderentry.boe3.v1.1.20.cmtanumber", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.complex_instrument_reject_reason = ProtoField.new("Complex Instrument Reject Reason", "cboe.futures.orderentry.boe3.v1.1.20.complexinstrumentrejectreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.futures.orderentry.boe3.v1.1.20.correctedprice", ftypes.DOUBLE)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.country_code = ProtoField.new("Country Code", "cboe.futures.orderentry.boe3.v1.1.20.countrycode", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cti_code = ProtoField.new("Cti Code", "cboe.futures.orderentry.boe3.v1.1.20.cticode", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cum_qty = ProtoField.new("Cum Qty", "cboe.futures.orderentry.boe3.v1.1.20.cumqty", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "cboe.futures.orderentry.boe3.v1.1.20.custorderhandlinginst", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.custom_group_id = ProtoField.new("Custom Group Id", "cboe.futures.orderentry.boe3.v1.1.20.customgroupid", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.custom_group_id_cnt = ProtoField.new("Custom Group Id Cnt", "cboe.futures.orderentry.boe3.v1.1.20.customgroupidcnt", ftypes.UINT8)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.exec_id = ProtoField.new("Exec Id", "cboe.futures.orderentry.boe3.v1.1.20.execid", ftypes.UINT64)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.futures.orderentry.boe3.v1.1.20.execrefid", ftypes.UINT64)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.expire_time = ProtoField.new("Expire Time", "cboe.futures.orderentry.boe3.v1.1.20.expiretime", ftypes.UINT64)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.fee_code = ProtoField.new("Fee Code", "cboe.futures.orderentry.boe3.v1.1.20.feecode", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.frequent_trader_id = ProtoField.new("Frequent Trader Id", "cboe.futures.orderentry.boe3.v1.1.20.frequenttraderid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.gtc_order_filter = ProtoField.new("Gtc Order Filter", "cboe.futures.orderentry.boe3.v1.1.20.gtcorderfilter", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.instruction_details = ProtoField.new("Instruction Details", "cboe.futures.orderentry.boe3.v1.1.20.instructiondetails", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.instrument_type_filter = ProtoField.new("Instrument Type Filter", "cboe.futures.orderentry.boe3.v1.1.20.instrumenttypefilter", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.last_px = ProtoField.new("Last Px", "cboe.futures.orderentry.boe3.v1.1.20.lastpx", ftypes.DOUBLE)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.last_shares = ProtoField.new("Last Shares", "cboe.futures.orderentry.boe3.v1.1.20.lastshares", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.futures.orderentry.boe3.v1.1.20.leavesqty", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_cnt = ProtoField.new("Leg Cnt", "cboe.futures.orderentry.boe3.v1.1.20.legcnt", ftypes.UINT8)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_position_effect = ProtoField.new("Leg Position Effect", "cboe.futures.orderentry.boe3.v1.1.20.legpositioneffect", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cboe.futures.orderentry.boe3.v1.1.20.legratioqty", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_side = ProtoField.new("Leg Side", "cboe.futures.orderentry.boe3.v1.1.20.legside", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.futures.orderentry.boe3.v1.1.20.legsymbol", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.lockout_instruction = ProtoField.new("Lockout Instruction", "cboe.futures.orderentry.boe3.v1.1.20.lockoutinstruction", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.futures.orderentry.boe3.v1.1.20.loginrequestmessage", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.futures.orderentry.boe3.v1.1.20.loginresponsemessage", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.futures.orderentry.boe3.v1.1.20.loginresponsestatus", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.futures.orderentry.boe3.v1.1.20.loginresponsetext", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.futures.orderentry.boe3.v1.1.20.logoutreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.futures.orderentry.boe3.v1.1.20.logoutreasontext", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.futures.orderentry.boe3.v1.1.20.logoutresponsemessage", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "cboe.futures.orderentry.boe3.v1.1.20.manualorderindicator", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.futures.orderentry.boe3.v1.1.20.masscancelid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.futures.orderentry.boe3.v1.1.20.masscancelinst", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "cboe.futures.orderentry.boe3.v1.1.20.masscancelrejectreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.futures.orderentry.boe3.v1.1.20.matchingunit", ftypes.UINT8)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.futures.orderentry.boe3.v1.1.20.maturitydate", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.message = ProtoField.new("Message", "cboe.futures.orderentry.boe3.v1.1.20.message", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.message_header = ProtoField.new("Message Header", "cboe.futures.orderentry.boe3.v1.1.20.messageheader", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.message_length = ProtoField.new("Message Length", "cboe.futures.orderentry.boe3.v1.1.20.messagelength", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.message_type = ProtoField.new("Message Type", "cboe.futures.orderentry.boe3.v1.1.20.messagetype", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.min_qty = ProtoField.new("Min Qty", "cboe.futures.orderentry.boe3.v1.1.20.minqty", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.futures.orderentry.boe3.v1.1.20.modifyrejectreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mtp_modifier = ProtoField.new("Mtp Modifier", "cboe.futures.orderentry.boe3.v1.1.20.mtpmodifier", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "cboe.futures.orderentry.boe3.v1.1.20.multilegreportingtype", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.no_of_complex_instruments = ProtoField.new("No Of Complex Instruments", "cboe.futures.orderentry.boe3.v1.1.20.noofcomplexinstruments", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.futures.orderentry.boe3.v1.1.20.numberofunits", ftypes.UINT8)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.oeo_id = ProtoField.new("Oeo Id", "cboe.futures.orderentry.boe3.v1.1.20.oeoid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.open_close = ProtoField.new("Open Close", "cboe.futures.orderentry.boe3.v1.1.20.openclose", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.option_leg = ProtoField.new("Option Leg", "cboe.futures.orderentry.boe3.v1.1.20.optionleg", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.ord_type = ProtoField.new("Ord Type", "cboe.futures.orderentry.boe3.v1.1.20.ordtype", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_id = ProtoField.new("Order Id", "cboe.futures.orderentry.boe3.v1.1.20.orderid", ftypes.UINT64)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_qty = ProtoField.new("Order Qty", "cboe.futures.orderentry.boe3.v1.1.20.orderqty", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.futures.orderentry.boe3.v1.1.20.orderrejectreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.futures.orderentry.boe3.v1.1.20.origclordid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.orig_time = ProtoField.new("Orig Time", "cboe.futures.orderentry.boe3.v1.1.20.origtime", ftypes.UINT64)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.packet = ProtoField.new("Packet", "cboe.futures.orderentry.boe3.v1.1.20.packet", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.password = ProtoField.new("Password", "cboe.futures.orderentry.boe3.v1.1.20.password", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.pending_status = ProtoField.new("Pending Status", "cboe.futures.orderentry.boe3.v1.1.20.pendingstatus", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.futures.orderentry.boe3.v1.1.20.preventmatch", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.price = ProtoField.new("Price", "cboe.futures.orderentry.boe3.v1.1.20.price", ftypes.DOUBLE)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.product_name = ProtoField.new("Product Name", "cboe.futures.orderentry.boe3.v1.1.20.productname", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.futures.orderentry.boe3.v1.1.20.purgerejectreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_cnt = ProtoField.new("Quote Cnt", "cboe.futures.orderentry.boe3.v1.1.20.quotecnt", ftypes.UINT8)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cboe.futures.orderentry.boe3.v1.1.20.quoterejectreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_result = ProtoField.new("Quote Result", "cboe.futures.orderentry.boe3.v1.1.20.quoteresult", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_symbol = ProtoField.new("Quote Symbol", "cboe.futures.orderentry.boe3.v1.1.20.quotesymbol", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_acknowledgement_group = ProtoField.new("Quote Update Acknowledgement Group", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdateacknowledgementgroup", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_group = ProtoField.new("Quote Update Group", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdategroup", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_id = ProtoField.new("Quote Update Id", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdateid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_option_group = ProtoField.new("Quote Update Option Group", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdateoptiongroup", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.replay_unspecified_unit = ProtoField.new("Replay Unspecified Unit", "cboe.futures.orderentry.boe3.v1.1.20.replayunspecifiedunit", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.request_received_time = ProtoField.new("Request Received Time", "cboe.futures.orderentry.boe3.v1.1.20.requestreceivedtime", ftypes.UINT64)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.futures.orderentry.boe3.v1.1.20.reservedfield", ftypes.UINT8)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.futures.orderentry.boe3.v1.1.20.restatementreason", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.futures.orderentry.boe3.v1.1.20.riskreset", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.risk_reset_result = ProtoField.new("Risk Reset Result", "cboe.futures.orderentry.boe3.v1.1.20.riskresetresult", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.risk_status_id = ProtoField.new("Risk Status Id", "cboe.futures.orderentry.boe3.v1.1.20.riskstatusid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "cboe.futures.orderentry.boe3.v1.1.20.secondaryexecid", ftypes.UINT64)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.security_desc = ProtoField.new("Security Desc", "cboe.futures.orderentry.boe3.v1.1.20.securitydesc", ftypes.BYTES)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.futures.orderentry.boe3.v1.1.20.sequencenumber", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.session_id = ProtoField.new("Session Id", "cboe.futures.orderentry.boe3.v1.1.20.sessionid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.futures.orderentry.boe3.v1.1.20.sessionsubid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.side = ProtoField.new("Side", "cboe.futures.orderentry.boe3.v1.1.20.side", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.size_modifier = ProtoField.new("Size Modifier", "cboe.futures.orderentry.boe3.v1.1.20.sizemodifier", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.futures.orderentry.boe3.v1.1.20.startofmessage", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.stop_px = ProtoField.new("Stop Px", "cboe.futures.orderentry.boe3.v1.1.20.stoppx", ftypes.DOUBLE)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.futures.orderentry.boe3.v1.1.20.subliquidityindicator", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.symbol = ProtoField.new("Symbol", "cboe.futures.orderentry.boe3.v1.1.20.symbol", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.text = ProtoField.new("Text", "cboe.futures.orderentry.boe3.v1.1.20.text", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.time_in_force = ProtoField.new("Time In Force", "cboe.futures.orderentry.boe3.v1.1.20.timeinforce", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.trade_date = ProtoField.new("Trade Date", "cboe.futures.orderentry.boe3.v1.1.20.tradedate", ftypes.UINT32)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.trading_group_id = ProtoField.new("Trading Group Id", "cboe.futures.orderentry.boe3.v1.1.20.tradinggroupid", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.futures.orderentry.boe3.v1.1.20.transactiontime", ftypes.UINT64)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.unique_id_level = ProtoField.new("Unique Id Level", "cboe.futures.orderentry.boe3.v1.1.20.uniqueidlevel", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.unit_number = ProtoField.new("Unit Number", "cboe.futures.orderentry.boe3.v1.1.20.unitnumber", ftypes.UINT8)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.futures.orderentry.boe3.v1.1.20.unitsequence", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.working_price = ProtoField.new("Working Price", "cboe.futures.orderentry.boe3.v1.1.20.workingprice", ftypes.DOUBLE)

-- Cboe Futures OrderEntry Boe3 1.1.20 messages
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_order = ProtoField.new("Cancel Order", "cboe.futures.orderentry.boe3.v1.1.20.cancelorder", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_rejected = ProtoField.new("Cancel Rejected", "cboe.futures.orderentry.boe3.v1.1.20.cancelrejected", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_acknowledgement = ProtoField.new("Mass Cancel Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.20.masscancelacknowledgement", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_order = ProtoField.new("Mass Cancel Order", "cboe.futures.orderentry.boe3.v1.1.20.masscancelorder", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_rejected = ProtoField.new("Mass Cancel Rejected", "cboe.futures.orderentry.boe3.v1.1.20.masscancelrejected", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.modify_order = ProtoField.new("Modify Order", "cboe.futures.orderentry.boe3.v1.1.20.modifyorder", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.modify_rejected = ProtoField.new("Modify Rejected", "cboe.futures.orderentry.boe3.v1.1.20.modifyrejected", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_complex_instrument_accepted_option = ProtoField.new("New Complex Instrument Accepted Option", "cboe.futures.orderentry.boe3.v1.1.20.newcomplexinstrumentacceptedoption", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_complex_instrument_option = ProtoField.new("New Complex Instrument Option", "cboe.futures.orderentry.boe3.v1.1.20.newcomplexinstrumentoption", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_complex_instrument_rejected_option = ProtoField.new("New Complex Instrument Rejected Option", "cboe.futures.orderentry.boe3.v1.1.20.newcomplexinstrumentrejectedoption", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_order = ProtoField.new("New Order", "cboe.futures.orderentry.boe3.v1.1.20.neworder", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_order_option = ProtoField.new("New Order Option", "cboe.futures.orderentry.boe3.v1.1.20.neworderoption", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_acknowledgement = ProtoField.new("Order Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.20.orderacknowledgement", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_acknowledgement_option = ProtoField.new("Order Acknowledgement Option", "cboe.futures.orderentry.boe3.v1.1.20.orderacknowledgementoption", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_cancelled = ProtoField.new("Order Cancelled", "cboe.futures.orderentry.boe3.v1.1.20.ordercancelled", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_execution = ProtoField.new("Order Execution", "cboe.futures.orderentry.boe3.v1.1.20.orderexecution", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_execution_option = ProtoField.new("Order Execution Option", "cboe.futures.orderentry.boe3.v1.1.20.orderexecutionoption", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_modified = ProtoField.new("Order Modified", "cboe.futures.orderentry.boe3.v1.1.20.ordermodified", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_rejected = ProtoField.new("Order Rejected", "cboe.futures.orderentry.boe3.v1.1.20.orderrejected", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.purge_acknowledgement = ProtoField.new("Purge Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.20.purgeacknowledgement", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.purge_orders = ProtoField.new("Purge Orders", "cboe.futures.orderentry.boe3.v1.1.20.purgeorders", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.purge_rejected = ProtoField.new("Purge Rejected", "cboe.futures.orderentry.boe3.v1.1.20.purgerejected", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_cancelled = ProtoField.new("Quote Cancelled", "cboe.futures.orderentry.boe3.v1.1.20.quotecancelled", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_execution = ProtoField.new("Quote Execution", "cboe.futures.orderentry.boe3.v1.1.20.quoteexecution", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_restated = ProtoField.new("Quote Restated", "cboe.futures.orderentry.boe3.v1.1.20.quoterestated", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update = ProtoField.new("Quote Update", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdate", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_acknowledgement = ProtoField.new("Quote Update Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdateacknowledgement", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_option = ProtoField.new("Quote Update Option", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdateoption", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_rejected = ProtoField.new("Quote Update Rejected", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdaterejected", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.reset_risk = ProtoField.new("Reset Risk", "cboe.futures.orderentry.boe3.v1.1.20.resetrisk", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.reset_risk_acknowledgement = ProtoField.new("Reset Risk Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.20.resetriskacknowledgement", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.tas_quote_restatement = ProtoField.new("Tas Quote Restatement", "cboe.futures.orderentry.boe3.v1.1.20.tasquoterestatement", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.tas_restatement = ProtoField.new("Tas Restatement", "cboe.futures.orderentry.boe3.v1.1.20.tasrestatement", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.trade_cancel_correct = ProtoField.new("Trade Cancel Correct", "cboe.futures.orderentry.boe3.v1.1.20.tradecancelcorrect", ftypes.STRING)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.trade_cancel_correct_option = ProtoField.new("Trade Cancel Correct Option", "cboe.futures.orderentry.boe3.v1.1.20.tradecancelcorrectoption", ftypes.STRING)

-- Cboe Futures OrderEntry Boe3 1.1.20 generated fields
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_position_effect_index = ProtoField.new("Leg Position Effect Index", "cboe.futures.orderentry.boe3.v1.1.20.legpositioneffectindex", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.option_leg_index = ProtoField.new("Option Leg Index", "cboe.futures.orderentry.boe3.v1.1.20.optionlegindex", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_acknowledgement_group_index = ProtoField.new("Quote Update Acknowledgement Group Index", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdateacknowledgementgroupindex", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_group_index = ProtoField.new("Quote Update Group Index", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdategroupindex", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_option_group_index = ProtoField.new("Quote Update Option Group Index", "cboe.futures.orderentry.boe3.v1.1.20.quoteupdateoptiongroupindex", ftypes.UINT16)
omi_cboe_futures_orderentry_boe3_v1_1_20.fields.unit_sequence_index = ProtoField.new("Unit Sequence Index", "cboe.futures.orderentry.boe3.v1.1.20.unitsequenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Futures OrderEntry Boe3 1.1.20 Element Dissection Options
show.cancel_order = true
show.cancel_rejected = true
show.login_request_message = true
show.login_response_message = true
show.logout_response_message = true
show.mass_cancel_acknowledgement = true
show.mass_cancel_inst = true
show.mass_cancel_order = true
show.mass_cancel_rejected = true
show.message_header = true
show.modify_order = true
show.modify_rejected = true
show.new_complex_instrument_accepted_option = true
show.new_complex_instrument_option = true
show.new_complex_instrument_rejected_option = true
show.new_order = true
show.new_order_option = true
show.option_leg = true
show.order_acknowledgement = true
show.order_acknowledgement_option = true
show.order_cancelled = true
show.order_execution = true
show.order_execution_option = true
show.order_modified = true
show.order_rejected = true
show.packet = true
show.prevent_match = true
show.purge_acknowledgement = true
show.purge_orders = true
show.purge_rejected = true
show.quote_cancelled = true
show.quote_execution = true
show.quote_restated = true
show.quote_update = true
show.quote_update_acknowledgement = true
show.quote_update_acknowledgement_group = true
show.quote_update_group = true
show.quote_update_option = true
show.quote_update_option_group = true
show.quote_update_rejected = true
show.reset_risk = true
show.reset_risk_acknowledgement = true
show.tas_quote_restatement = true
show.tas_restatement = true
show.trade_cancel_correct = true
show.trade_cancel_correct_option = true
show.unit_sequence = true
show.message = false

-- Register Cboe Futures OrderEntry Boe3 1.1.20 Show Options
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_cancel_order = Pref.bool("Show Cancel Order", show.cancel_order, "Parse and add Cancel Order to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_cancel_rejected = Pref.bool("Show Cancel Rejected", show.cancel_rejected, "Parse and add Cancel Rejected to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_login_response_message = Pref.bool("Show Login Response Message", show.login_response_message, "Parse and add Login Response Message to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_logout_response_message = Pref.bool("Show Logout Response Message", show.logout_response_message, "Parse and add Logout Response Message to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_acknowledgement = Pref.bool("Show Mass Cancel Acknowledgement", show.mass_cancel_acknowledgement, "Parse and add Mass Cancel Acknowledgement to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_inst = Pref.bool("Show Mass Cancel Inst", show.mass_cancel_inst, "Parse and add Mass Cancel Inst to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_order = Pref.bool("Show Mass Cancel Order", show.mass_cancel_order, "Parse and add Mass Cancel Order to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_rejected = Pref.bool("Show Mass Cancel Rejected", show.mass_cancel_rejected, "Parse and add Mass Cancel Rejected to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_modify_order = Pref.bool("Show Modify Order", show.modify_order, "Parse and add Modify Order to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_modify_rejected = Pref.bool("Show Modify Rejected", show.modify_rejected, "Parse and add Modify Rejected to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_accepted_option = Pref.bool("Show New Complex Instrument Accepted Option", show.new_complex_instrument_accepted_option, "Parse and add New Complex Instrument Accepted Option to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_option = Pref.bool("Show New Complex Instrument Option", show.new_complex_instrument_option, "Parse and add New Complex Instrument Option to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_rejected_option = Pref.bool("Show New Complex Instrument Rejected Option", show.new_complex_instrument_rejected_option, "Parse and add New Complex Instrument Rejected Option to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_order = Pref.bool("Show New Order", show.new_order, "Parse and add New Order to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_order_option = Pref.bool("Show New Order Option", show.new_order_option, "Parse and add New Order Option to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_option_leg = Pref.bool("Show Option Leg", show.option_leg, "Parse and add Option Leg to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_acknowledgement = Pref.bool("Show Order Acknowledgement", show.order_acknowledgement, "Parse and add Order Acknowledgement to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_acknowledgement_option = Pref.bool("Show Order Acknowledgement Option", show.order_acknowledgement_option, "Parse and add Order Acknowledgement Option to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_cancelled = Pref.bool("Show Order Cancelled", show.order_cancelled, "Parse and add Order Cancelled to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_execution = Pref.bool("Show Order Execution", show.order_execution, "Parse and add Order Execution to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_execution_option = Pref.bool("Show Order Execution Option", show.order_execution_option, "Parse and add Order Execution Option to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_modified = Pref.bool("Show Order Modified", show.order_modified, "Parse and add Order Modified to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_rejected = Pref.bool("Show Order Rejected", show.order_rejected, "Parse and add Order Rejected to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_prevent_match = Pref.bool("Show Prevent Match", show.prevent_match, "Parse and add Prevent Match to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_acknowledgement = Pref.bool("Show Purge Acknowledgement", show.purge_acknowledgement, "Parse and add Purge Acknowledgement to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_orders = Pref.bool("Show Purge Orders", show.purge_orders, "Parse and add Purge Orders to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_rejected = Pref.bool("Show Purge Rejected", show.purge_rejected, "Parse and add Purge Rejected to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_cancelled = Pref.bool("Show Quote Cancelled", show.quote_cancelled, "Parse and add Quote Cancelled to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_execution = Pref.bool("Show Quote Execution", show.quote_execution, "Parse and add Quote Execution to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_restated = Pref.bool("Show Quote Restated", show.quote_restated, "Parse and add Quote Restated to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update = Pref.bool("Show Quote Update", show.quote_update, "Parse and add Quote Update to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_acknowledgement = Pref.bool("Show Quote Update Acknowledgement", show.quote_update_acknowledgement, "Parse and add Quote Update Acknowledgement to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_acknowledgement_group = Pref.bool("Show Quote Update Acknowledgement Group", show.quote_update_acknowledgement_group, "Parse and add Quote Update Acknowledgement Group to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_group = Pref.bool("Show Quote Update Group", show.quote_update_group, "Parse and add Quote Update Group to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_option = Pref.bool("Show Quote Update Option", show.quote_update_option, "Parse and add Quote Update Option to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_option_group = Pref.bool("Show Quote Update Option Group", show.quote_update_option_group, "Parse and add Quote Update Option Group to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_rejected = Pref.bool("Show Quote Update Rejected", show.quote_update_rejected, "Parse and add Quote Update Rejected to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_reset_risk = Pref.bool("Show Reset Risk", show.reset_risk, "Parse and add Reset Risk to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_reset_risk_acknowledgement = Pref.bool("Show Reset Risk Acknowledgement", show.reset_risk_acknowledgement, "Parse and add Reset Risk Acknowledgement to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_tas_quote_restatement = Pref.bool("Show Tas Quote Restatement", show.tas_quote_restatement, "Parse and add Tas Quote Restatement to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_tas_restatement = Pref.bool("Show Tas Restatement", show.tas_restatement, "Parse and add Tas Restatement to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_trade_cancel_correct = Pref.bool("Show Trade Cancel Correct", show.trade_cancel_correct, "Parse and add Trade Cancel Correct to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_trade_cancel_correct_option = Pref.bool("Show Trade Cancel Correct Option", show.trade_cancel_correct_option, "Parse and add Trade Cancel Correct Option to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_unit_sequence = Pref.bool("Show Unit Sequence", show.unit_sequence, "Parse and add Unit Sequence to protocol tree")
omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")

-- Handle changed preferences
function omi_cboe_futures_orderentry_boe3_v1_1_20.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_order ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_cancel_order then
    show.cancel_order = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_cancel_order
    changed = true
  end
  if show.cancel_rejected ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_cancel_rejected then
    show.cancel_rejected = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_cancel_rejected
    changed = true
  end
  if show.login_request_message ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_login_request_message then
    show.login_request_message = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_login_request_message
    changed = true
  end
  if show.login_response_message ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_login_response_message then
    show.login_response_message = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_login_response_message
    changed = true
  end
  if show.logout_response_message ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_logout_response_message then
    show.logout_response_message = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_logout_response_message
    changed = true
  end
  if show.mass_cancel_acknowledgement ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_acknowledgement then
    show.mass_cancel_acknowledgement = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_acknowledgement
    changed = true
  end
  if show.mass_cancel_inst ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_inst then
    show.mass_cancel_inst = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_inst
    changed = true
  end
  if show.mass_cancel_order ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_order then
    show.mass_cancel_order = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_order
    changed = true
  end
  if show.mass_cancel_rejected ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_rejected then
    show.mass_cancel_rejected = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_mass_cancel_rejected
    changed = true
  end
  if show.message_header ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_message_header then
    show.message_header = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_message_header
    changed = true
  end
  if show.modify_order ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_modify_order then
    show.modify_order = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_modify_order
    changed = true
  end
  if show.modify_rejected ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_modify_rejected then
    show.modify_rejected = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_modify_rejected
    changed = true
  end
  if show.new_complex_instrument_accepted_option ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_accepted_option then
    show.new_complex_instrument_accepted_option = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_accepted_option
    changed = true
  end
  if show.new_complex_instrument_option ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_option then
    show.new_complex_instrument_option = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_option
    changed = true
  end
  if show.new_complex_instrument_rejected_option ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_rejected_option then
    show.new_complex_instrument_rejected_option = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_complex_instrument_rejected_option
    changed = true
  end
  if show.new_order ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_order then
    show.new_order = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_order
    changed = true
  end
  if show.new_order_option ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_order_option then
    show.new_order_option = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_new_order_option
    changed = true
  end
  if show.option_leg ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_option_leg then
    show.option_leg = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_option_leg
    changed = true
  end
  if show.order_acknowledgement ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_acknowledgement then
    show.order_acknowledgement = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_acknowledgement
    changed = true
  end
  if show.order_acknowledgement_option ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_acknowledgement_option then
    show.order_acknowledgement_option = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_acknowledgement_option
    changed = true
  end
  if show.order_cancelled ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_cancelled then
    show.order_cancelled = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_cancelled
    changed = true
  end
  if show.order_execution ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_execution then
    show.order_execution = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_execution
    changed = true
  end
  if show.order_execution_option ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_execution_option then
    show.order_execution_option = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_execution_option
    changed = true
  end
  if show.order_modified ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_modified then
    show.order_modified = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_modified
    changed = true
  end
  if show.order_rejected ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_rejected then
    show.order_rejected = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_order_rejected
    changed = true
  end
  if show.packet ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_packet then
    show.packet = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_packet
    changed = true
  end
  if show.prevent_match ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_prevent_match then
    show.prevent_match = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_prevent_match
    changed = true
  end
  if show.purge_acknowledgement ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_acknowledgement then
    show.purge_acknowledgement = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_acknowledgement
    changed = true
  end
  if show.purge_orders ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_orders then
    show.purge_orders = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_orders
    changed = true
  end
  if show.purge_rejected ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_rejected then
    show.purge_rejected = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_purge_rejected
    changed = true
  end
  if show.quote_cancelled ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_cancelled then
    show.quote_cancelled = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_cancelled
    changed = true
  end
  if show.quote_execution ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_execution then
    show.quote_execution = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_execution
    changed = true
  end
  if show.quote_restated ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_restated then
    show.quote_restated = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_restated
    changed = true
  end
  if show.quote_update ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update then
    show.quote_update = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update
    changed = true
  end
  if show.quote_update_acknowledgement ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_acknowledgement then
    show.quote_update_acknowledgement = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_acknowledgement
    changed = true
  end
  if show.quote_update_acknowledgement_group ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_acknowledgement_group then
    show.quote_update_acknowledgement_group = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_acknowledgement_group
    changed = true
  end
  if show.quote_update_group ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_group then
    show.quote_update_group = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_group
    changed = true
  end
  if show.quote_update_option ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_option then
    show.quote_update_option = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_option
    changed = true
  end
  if show.quote_update_option_group ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_option_group then
    show.quote_update_option_group = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_option_group
    changed = true
  end
  if show.quote_update_rejected ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_rejected then
    show.quote_update_rejected = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_quote_update_rejected
    changed = true
  end
  if show.reset_risk ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_reset_risk then
    show.reset_risk = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_reset_risk
    changed = true
  end
  if show.reset_risk_acknowledgement ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_reset_risk_acknowledgement then
    show.reset_risk_acknowledgement = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_reset_risk_acknowledgement
    changed = true
  end
  if show.tas_quote_restatement ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_tas_quote_restatement then
    show.tas_quote_restatement = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_tas_quote_restatement
    changed = true
  end
  if show.tas_restatement ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_tas_restatement then
    show.tas_restatement = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_tas_restatement
    changed = true
  end
  if show.trade_cancel_correct ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_trade_cancel_correct then
    show.trade_cancel_correct = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_trade_cancel_correct
    changed = true
  end
  if show.trade_cancel_correct_option ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_trade_cancel_correct_option then
    show.trade_cancel_correct_option = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_trade_cancel_correct_option
    changed = true
  end
  if show.unit_sequence ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_unit_sequence then
    show.unit_sequence = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_unit_sequence
    changed = true
  end
  if show.message ~= omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_message then
    show.message = omi_cboe_futures_orderentry_boe3_v1_1_20.prefs.show_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Futures OrderEntry Boe3 1.1.20
-----------------------------------------------------------------------

-- Text
cboe_futures_orderentry_boe3_v1_1_20.text = {}

-- Size: Text
cboe_futures_orderentry_boe3_v1_1_20.text.size = 60

-- Display: Text
cboe_futures_orderentry_boe3_v1_1_20.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_futures_orderentry_boe3_v1_1_20.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.text, range, value, display)

  return offset + length, value
end

-- Complex Instrument Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_reject_reason = {}

-- Size: Complex Instrument Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_reject_reason.size = 1

-- Display: Complex Instrument Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_reject_reason.display = function(value)
  return "Complex Instrument Reject Reason: "..value
end

-- Dissect: Complex Instrument Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.complex_instrument_reject_reason, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_futures_orderentry_boe3_v1_1_20.clearing_firm = {}

-- Size: Clearing Firm
cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.display = function(value)
  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_futures_orderentry_boe3_v1_1_20.transaction_time = {}

-- Size: Transaction Time
cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size = 8

-- Display: Transaction Time
cboe_futures_orderentry_boe3_v1_1_20.transaction_time.display = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option = {}

-- Calculate size of: New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_reject_reason.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.text.size

  return index
end

-- Display: New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Complex Instrument Reject Reason: Text
  index, complex_instrument_reject_reason = cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.dissect = function(buffer, offset, packet, parent)
  if show.new_complex_instrument_rejected_option then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_complex_instrument_rejected_option, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.fields(buffer, offset, packet, parent)
  end
end

-- Leg Side
cboe_futures_orderentry_boe3_v1_1_20.leg_side = {}

-- Size: Leg Side
cboe_futures_orderentry_boe3_v1_1_20.leg_side.size = 1

-- Display: Leg Side
cboe_futures_orderentry_boe3_v1_1_20.leg_side.display = function(value)
  if value == "1" then
    return "Leg Side: Buy (1)"
  end
  if value == "2" then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cboe_futures_orderentry_boe3_v1_1_20.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
cboe_futures_orderentry_boe3_v1_1_20.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
cboe_futures_orderentry_boe3_v1_1_20.leg_ratio_qty.size = 4

-- Display: Leg Ratio Qty
cboe_futures_orderentry_boe3_v1_1_20.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cboe_futures_orderentry_boe3_v1_1_20.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Leg Symbol
cboe_futures_orderentry_boe3_v1_1_20.leg_symbol = {}

-- Size: Leg Symbol
cboe_futures_orderentry_boe3_v1_1_20.leg_symbol.size = 8

-- Display: Leg Symbol
cboe_futures_orderentry_boe3_v1_1_20.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_futures_orderentry_boe3_v1_1_20.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.leg_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Option Leg
cboe_futures_orderentry_boe3_v1_1_20.option_leg = {}

-- Calculate size of: Option Leg
cboe_futures_orderentry_boe3_v1_1_20.option_leg.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leg_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leg_ratio_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leg_side.size

  return index
end

-- Display: Option Leg
cboe_futures_orderentry_boe3_v1_1_20.option_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Leg
cboe_futures_orderentry_boe3_v1_1_20.option_leg.fields = function(buffer, offset, packet, parent, option_leg_index)
  local index = offset

  -- Implicit Option Leg Index
  if option_leg_index ~= nil then
    local iteration = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.option_leg_index, option_leg_index)
    iteration:set_generated()
  end

  -- Leg Symbol: Alphanumeric
  index, leg_symbol = cboe_futures_orderentry_boe3_v1_1_20.leg_symbol.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: Binary
  index, leg_ratio_qty = cboe_futures_orderentry_boe3_v1_1_20.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Leg Side: Text
  index, leg_side = cboe_futures_orderentry_boe3_v1_1_20.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Leg
cboe_futures_orderentry_boe3_v1_1_20.option_leg.dissect = function(buffer, offset, packet, parent, option_leg_index)
  if show.option_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.option_leg, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.option_leg.fields(buffer, offset, packet, parent, option_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.option_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.option_leg.fields(buffer, offset, packet, parent, option_leg_index)
  end
end

-- Leg Cnt
cboe_futures_orderentry_boe3_v1_1_20.leg_cnt = {}

-- Size: Leg Cnt
cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.size = 1

-- Display: Leg Cnt
cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.display = function(value)
  return "Leg Cnt: "..value
end

-- Dissect: Leg Cnt
cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_cnt, range, value, display)

  return offset + length, value
end

-- No Of Complex Instruments
cboe_futures_orderentry_boe3_v1_1_20.no_of_complex_instruments = {}

-- Size: No Of Complex Instruments
cboe_futures_orderentry_boe3_v1_1_20.no_of_complex_instruments.size = 4

-- Display: No Of Complex Instruments
cboe_futures_orderentry_boe3_v1_1_20.no_of_complex_instruments.display = function(value)
  return "No Of Complex Instruments: "..value
end

-- Dissect: No Of Complex Instruments
cboe_futures_orderentry_boe3_v1_1_20.no_of_complex_instruments.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.no_of_complex_instruments.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.no_of_complex_instruments.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.no_of_complex_instruments, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_futures_orderentry_boe3_v1_1_20.symbol = {}

-- Size: Symbol
cboe_futures_orderentry_boe3_v1_1_20.symbol.size = 8

-- Display: Symbol
cboe_futures_orderentry_boe3_v1_1_20.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.symbol, range, value, display)

  return offset + length, value
end

-- New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option = {}

-- Calculate size of: New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.no_of_complex_instruments.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.size

  -- Calculate field size from count
  local option_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + option_leg_count * 13

  return index
end

-- Display: New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- No Of Complex Instruments: Binary
  index, no_of_complex_instruments = cboe_futures_orderentry_boe3_v1_1_20.no_of_complex_instruments.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Option Leg
  for option_leg_index = 1, leg_cnt do
    index, option_leg = cboe_futures_orderentry_boe3_v1_1_20.option_leg.dissect(buffer, index, packet, parent, option_leg_index)
  end

  return index
end

-- Dissect: New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_instrument_accepted_option then
    local length = cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_complex_instrument_accepted_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.fields(buffer, offset, packet, parent)
end

-- Request Received Time
cboe_futures_orderentry_boe3_v1_1_20.request_received_time = {}

-- Size: Request Received Time
cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size = 8

-- Display: Request Received Time
cboe_futures_orderentry_boe3_v1_1_20.request_received_time.display = function(value)
  return "Request Received Time: "..value
end

-- Dissect: Request Received Time
cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.request_received_time, range, value, display)

  return offset + length, value
end

-- Risk Reset Result
cboe_futures_orderentry_boe3_v1_1_20.risk_reset_result = {}

-- Size: Risk Reset Result
cboe_futures_orderentry_boe3_v1_1_20.risk_reset_result.size = 1

-- Display: Risk Reset Result
cboe_futures_orderentry_boe3_v1_1_20.risk_reset_result.display = function(value)
  if value == " " then
    return "Risk Reset Result: Ignored (<whitespace>)"
  end
  if value == "Y" then
    return "Risk Reset Result: Success (Y)"
  end
  if value == "F" then
    return "Risk Reset Result: Rejected Exceeds Firm Reset Limit (F)"
  end
  if value == "C" then
    return "Risk Reset Result: Rejected Exceeds Custom Group Id (C)"
  end
  if value == "E" then
    return "Risk Reset Result: Rejected Empty Reset Risk Field (E)"
  end
  if value == "I" then
    return "Risk Reset Result: Rejected Incorrect Data Center (I)"
  end
  if value == "S" then
    return "Risk Reset Result: Rejected Exceeds Product Level Reset (S)"
  end
  if value == "U" then
    return "Risk Reset Result: Rejected Invalid Risk Root (U)"
  end
  if value == "c" then
    return "Risk Reset Result: Rejected Invalid Efid Clearing Firm (c)"
  end
  if value == "y" then
    return "Risk Reset Result: Rejected In Replay (y)"
  end
  if value == "D" then
    return "Risk Reset Result: Custom Group Id Lockout Reset (D)"
  end

  return "Risk Reset Result: Unknown("..value..")"
end

-- Dissect: Risk Reset Result
cboe_futures_orderentry_boe3_v1_1_20.risk_reset_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.risk_reset_result.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.risk_reset_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.risk_reset_result, range, value, display)

  return offset + length, value
end

-- Risk Status Id
cboe_futures_orderentry_boe3_v1_1_20.risk_status_id = {}

-- Size: Risk Status Id
cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.size = 16

-- Display: Risk Status Id
cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.display = function(value)
  return "Risk Status Id: "..value
end

-- Dissect: Risk Status Id
cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.risk_status_id, range, value, display)

  return offset + length, value
end

-- Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement = {}

-- Calculate size of: Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.risk_reset_result.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size

  return index
end

-- Display: Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset Result: Text
  index, risk_reset_result = cboe_futures_orderentry_boe3_v1_1_20.risk_reset_result.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.reset_risk_acknowledgement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.reset_risk_acknowledgement, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Clearing Price
cboe_futures_orderentry_boe3_v1_1_20.clearing_price = {}

-- Size: Clearing Price
cboe_futures_orderentry_boe3_v1_1_20.clearing_price.size = 8

-- Display: Clearing Price
cboe_futures_orderentry_boe3_v1_1_20.clearing_price.display = function(value)
  return "Clearing Price: "..value
end

-- Translate: Clearing Price
cboe_futures_orderentry_boe3_v1_1_20.clearing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Clearing Price
cboe_futures_orderentry_boe3_v1_1_20.clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_futures_orderentry_boe3_v1_1_20.clearing_price.translate(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_20.clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_price, range, value, display)

  return offset + length, value
end

-- Clearing Symbol
cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol = {}

-- Size: Clearing Symbol
cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.size = 8

-- Display: Clearing Symbol
cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.display = function(value)
  return "Clearing Symbol: "..value
end

-- Dissect: Clearing Symbol
cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_symbol, range, value, display)

  return offset + length, value
end

-- Quote Symbol
cboe_futures_orderentry_boe3_v1_1_20.quote_symbol = {}

-- Size: Quote Symbol
cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.size = 6

-- Display: Quote Symbol
cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.display = function(value)
  return "Quote Symbol: "..value
end

-- Dissect: Quote Symbol
cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_symbol, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_futures_orderentry_boe3_v1_1_20.exec_id = {}

-- Size: Exec Id
cboe_futures_orderentry_boe3_v1_1_20.exec_id.size = 8

-- Display: Exec Id
cboe_futures_orderentry_boe3_v1_1_20.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_futures_orderentry_boe3_v1_1_20.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_20.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Quote Update Id
cboe_futures_orderentry_boe3_v1_1_20.quote_update_id = {}

-- Size: Quote Update Id
cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size = 16

-- Display: Quote Update Id
cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.display = function(value)
  return "Quote Update Id: "..value
end

-- Dissect: Quote Update Id
cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_id, range, value, display)

  return offset + length, value
end

-- Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement = {}

-- Calculate size of: Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.exec_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_price.size

  return index
end

-- Display: Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_20.exec_id.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.dissect(buffer, index, packet, parent)

  -- Clearing Symbol: Alphanumeric
  index, clearing_symbol = cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.dissect(buffer, index, packet, parent)

  -- Clearing Price: BinaryPrice
  index, clearing_price = cboe_futures_orderentry_boe3_v1_1_20.clearing_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.dissect = function(buffer, offset, packet, parent)
  if show.tas_quote_restatement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.tas_quote_restatement, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reason
cboe_futures_orderentry_boe3_v1_1_20.cancel_reason = {}

-- Size: Cancel Reason
cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.display = function(value)
  if value == "A" then
    return "Cancel Reason: Admin (A)"
  end
  if value == "B" then
    return "Cancel Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Cancel Reason: Unknown Product Name (C)"
  end
  if value == "D" then
    return "Cancel Reason: Duplicate Identifier (D)"
  end
  if value == "H" then
    return "Cancel Reason: Halted (H)"
  end
  if value == "I" then
    return "Cancel Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Cancel Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "M" then
    return "Cancel Reason: Liquidity Available Exceeds Order Size (M)"
  end
  if value == "N" then
    return "Cancel Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Cancel Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Cancel Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "U" then
    return "Cancel Reason: User Requested (U)"
  end
  if value == "V" then
    return "Cancel Reason: Would Wash (V)"
  end
  if value == "X" then
    return "Cancel Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Cancel Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Cancel Reason: Unforeseen Reason (Z)"
  end
  if value == "h" then
    return "Cancel Reason: Order Persisted (h)"
  end
  if value == "f" then
    return "Cancel Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Cancel Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Cancel Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Cancel Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Cancel Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Cancel Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reason: Session End (z)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Side
cboe_futures_orderentry_boe3_v1_1_20.side = {}

-- Size: Side
cboe_futures_orderentry_boe3_v1_1_20.side.size = 1

-- Display: Side
cboe_futures_orderentry_boe3_v1_1_20.side.display = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_futures_orderentry_boe3_v1_1_20.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.side, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_futures_orderentry_boe3_v1_1_20.order_id = {}

-- Size: Order Id
cboe_futures_orderentry_boe3_v1_1_20.order_id.size = 8

-- Display: Order Id
cboe_futures_orderentry_boe3_v1_1_20.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_futures_orderentry_boe3_v1_1_20.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_20.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_id, range, value, display)

  return offset + length, value
end

-- Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled = {}

-- Calculate size of: Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.size

  return index
end

-- Display: Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_20.order_id.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.dissect = function(buffer, offset, packet, parent)
  if show.quote_cancelled then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_cancelled, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.fields(buffer, offset, packet, parent)
  end
end

-- Fee Code
cboe_futures_orderentry_boe3_v1_1_20.fee_code = {}

-- Size: Fee Code
cboe_futures_orderentry_boe3_v1_1_20.fee_code.size = 2

-- Display: Fee Code
cboe_futures_orderentry_boe3_v1_1_20.fee_code.display = function(value)
  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_futures_orderentry_boe3_v1_1_20.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.fee_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.display = function(value)
  if value == "0x00" then
    return "Sub Liquidity Indicator: No Additional Information (0x00)"
  end
  if value == "C" then
    return "Sub Liquidity Indicator: Carried Order Indicator (C)"
  end
  if value == "U" then
    return "Sub Liquidity Indicator: Qualifying Market Turner Order (U)"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.display = function(value)
  if value == "A" then
    return "Base Liquidity Indicator: Added Liquidity (A)"
  end
  if value == "R" then
    return "Base Liquidity Indicator: Removed Liquidity (R)"
  end
  if value == "C" then
    return "Base Liquidity Indicator: Market Opening Trade (C)"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_futures_orderentry_boe3_v1_1_20.leaves_qty = {}

-- Size: Leaves Qty
cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_futures_orderentry_boe3_v1_1_20.last_px = {}

-- Size: Last Px
cboe_futures_orderentry_boe3_v1_1_20.last_px.size = 8

-- Display: Last Px
cboe_futures_orderentry_boe3_v1_1_20.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_futures_orderentry_boe3_v1_1_20.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_futures_orderentry_boe3_v1_1_20.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_futures_orderentry_boe3_v1_1_20.last_px.translate(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_20.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_futures_orderentry_boe3_v1_1_20.last_shares = {}

-- Size: Last Shares
cboe_futures_orderentry_boe3_v1_1_20.last_shares.size = 4

-- Display: Last Shares
cboe_futures_orderentry_boe3_v1_1_20.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_futures_orderentry_boe3_v1_1_20.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Quote Execution
cboe_futures_orderentry_boe3_v1_1_20.quote_execution = {}

-- Calculate size of: Quote Execution
cboe_futures_orderentry_boe3_v1_1_20.quote_execution.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.exec_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_shares.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.fee_code.size

  return index
end

-- Display: Quote Execution
cboe_futures_orderentry_boe3_v1_1_20.quote_execution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Execution
cboe_futures_orderentry_boe3_v1_1_20.quote_execution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_20.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_20.exec_id.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_20.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_20.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_futures_orderentry_boe3_v1_1_20.fee_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Execution
cboe_futures_orderentry_boe3_v1_1_20.quote_execution.dissect = function(buffer, offset, packet, parent)
  if show.quote_execution then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_execution, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.quote_execution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_execution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.quote_execution.fields(buffer, offset, packet, parent)
  end
end

-- Restatement Reason
cboe_futures_orderentry_boe3_v1_1_20.restatement_reason = {}

-- Size: Restatement Reason
cboe_futures_orderentry_boe3_v1_1_20.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_futures_orderentry_boe3_v1_1_20.restatement_reason.display = function(value)
  if value == "Q" then
    return "Restatement Reason: Liquidity (Q)"
  end
  if value == "W" then
    return "Restatement Reason: Wash (W)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_futures_orderentry_boe3_v1_1_20.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_futures_orderentry_boe3_v1_1_20.working_price = {}

-- Size: Working Price
cboe_futures_orderentry_boe3_v1_1_20.working_price.size = 8

-- Display: Working Price
cboe_futures_orderentry_boe3_v1_1_20.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_futures_orderentry_boe3_v1_1_20.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_futures_orderentry_boe3_v1_1_20.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_futures_orderentry_boe3_v1_1_20.working_price.translate(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_20.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.working_price, range, value, display)

  return offset + length, value
end

-- Quote Restated
cboe_futures_orderentry_boe3_v1_1_20.quote_restated = {}

-- Calculate size of: Quote Restated
cboe_futures_orderentry_boe3_v1_1_20.quote_restated.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.working_price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.restatement_reason.size

  return index
end

-- Display: Quote Restated
cboe_futures_orderentry_boe3_v1_1_20.quote_restated.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Restated
cboe_futures_orderentry_boe3_v1_1_20.quote_restated.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_20.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_futures_orderentry_boe3_v1_1_20.working_price.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Text
  index, restatement_reason = cboe_futures_orderentry_boe3_v1_1_20.restatement_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Restated
cboe_futures_orderentry_boe3_v1_1_20.quote_restated.dissect = function(buffer, offset, packet, parent)
  if show.quote_restated then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_restated, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.quote_restated.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_restated.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.quote_restated.fields(buffer, offset, packet, parent)
  end
end

-- Quote Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.quote_reject_reason = {}

-- Size: Quote Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.quote_reject_reason.size = 1

-- Display: Quote Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.quote_reject_reason.display = function(value)
  if value == "C" then
    return "Quote Reject Reason: Invalid Efid (C)"
  end
  if value == "D" then
    return "Quote Reject Reason: Invalid Wash Id (D)"
  end
  if value == "F" then
    return "Quote Reject Reason: Not Enabled For Quotes (F)"
  end
  if value == "I" then
    return "Quote Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Quote Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Quote Reject Reason: Invalid Quote Cnt (L)"
  end
  if value == "M" then
    return "Quote Reject Reason: Symbols Not On Same Matching Engine (M)"
  end
  if value == "O" then
    return "Quote Reject Reason: Invalid Manual Order Indicator (O)"
  end
  if value == "Q" then
    return "Quote Reject Reason: Invalid Quote Update Id (Q)"
  end
  if value == "R" then
    return "Quote Reject Reason: Futures Root Does Not Match Across Quotes (R)"
  end
  if value == "S" then
    return "Quote Reject Reason: Symbol Not Found (S)"
  end
  if value == "W" then
    return "Quote Reject Reason: Invalid Wash Prevent Type (W)"
  end
  if value == "a" then
    return "Quote Reject Reason: Admin (a)"
  end
  if value == "c" then
    return "Quote Reject Reason: Invalid Capacity (c)"
  end
  if value == "e" then
    return "Quote Reject Reason: Invalid Oeoid (e)"
  end
  if value == "f" then
    return "Quote Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "i" then
    return "Quote Reject Reason: Invalid Cti Code (i)"
  end
  if value == "m" then
    return "Quote Reject Reason: Invalid Wash Method (m)"
  end
  if value == "n" then
    return "Quote Reject Reason: Exceeds Max Notional Value Per Order (n)"
  end
  if value == "o" then
    return "Quote Reject Reason: Invalid Open Close (o)"
  end
  if value == "p" then
    return "Quote Reject Reason: Risk Management Product Level (p)"
  end
  if value == "r" then
    return "Quote Reject Reason: Invalid Remove (r)"
  end
  if value == "s" then
    return "Quote Reject Reason: Invalid Side (s)"
  end
  if value == "u" then
    return "Quote Reject Reason: Symbol Range Unreachable (u)"
  end
  if value == "x" then
    return "Quote Reject Reason: Exceeds Max Size Per Order (x)"
  end
  if value == "y" then
    return "Quote Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Quote Reject Reason: Invalid Size Modifier (z)"
  end

  return "Quote Reject Reason: Unknown("..value..")"
end

-- Dissect: Quote Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected = {}

-- Calculate size of: Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_reject_reason.size

  return index
end

-- Display: Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: Text
  index, quote_reject_reason = cboe_futures_orderentry_boe3_v1_1_20.quote_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.dissect = function(buffer, offset, packet, parent)
  if show.quote_update_rejected then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_rejected, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.fields(buffer, offset, packet, parent)
  end
end

-- Quote Result
cboe_futures_orderentry_boe3_v1_1_20.quote_result = {}

-- Size: Quote Result
cboe_futures_orderentry_boe3_v1_1_20.quote_result.size = 1

-- Display: Quote Result
cboe_futures_orderentry_boe3_v1_1_20.quote_result.display = function(value)
  if value == "A" then
    return "Quote Result: New Quote (A)"
  end
  if value == "L" then
    return "Quote Result: Modified Loss Of Priority (L)"
  end
  if value == "R" then
    return "Quote Result: Modified Retains Priority (R)"
  end
  if value == "N" then
    return "Quote Result: No Change (N)"
  end
  if value == "D" then
    return "Quote Result: New Quote (D)"
  end
  if value == "d" then
    return "Quote Result: Modified But May Remove Liquidity (d)"
  end
  if value == "U" then
    return "Quote Result: User Cancelled (U)"
  end
  if value == "a" then
    return "Quote Result: Admin (a)"
  end
  if value == "O" then
    return "Quote Result: Rejected Doesnt Match A Known Quote (O)"
  end
  if value == "P" then
    return "Quote Result: Rejected Cant Post (P)"
  end
  if value == "f" then
    return "Quote Result: Risk Management Efid Or Custom Group Id Level (f)"
  end
  if value == "S" then
    return "Quote Result: Rejected Symbol Not Found (S)"
  end
  if value == "p" then
    return "Quote Result: Rejected Invalid Price (p)"
  end
  if value == "s" then
    return "Quote Result: Risk Management Product Root Level (s)"
  end
  if value == "n" then
    return "Quote Result: Risk Management Configuration Is Insuffcient (n)"
  end
  if value == "u" then
    return "Quote Result: Rejected Other Reason (u)"
  end

  return "Quote Result: Unknown("..value..")"
end

-- Dissect: Quote Result
cboe_futures_orderentry_boe3_v1_1_20.quote_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.quote_result.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.quote_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_result, range, value, display)

  return offset + length, value
end

-- Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group = {}

-- Calculate size of: Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_result.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.size

  return index
end

-- Display: Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group.fields = function(buffer, offset, packet, parent, quote_update_acknowledgement_group_index)
  local index = offset

  -- Implicit Quote Update Acknowledgement Group Index
  if quote_update_acknowledgement_group_index ~= nil then
    local iteration = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_acknowledgement_group_index, quote_update_acknowledgement_group_index)
    iteration:set_generated()
  end

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_20.order_id.dissect(buffer, index, packet, parent)

  -- Quote Result: Text
  index, quote_result = cboe_futures_orderentry_boe3_v1_1_20.quote_result.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group.dissect = function(buffer, offset, packet, parent, quote_update_acknowledgement_group_index)
  if show.quote_update_acknowledgement_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_acknowledgement_group, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group.fields(buffer, offset, packet, parent, quote_update_acknowledgement_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group.fields(buffer, offset, packet, parent, quote_update_acknowledgement_group_index)
  end
end

-- Quote Cnt
cboe_futures_orderentry_boe3_v1_1_20.quote_cnt = {}

-- Size: Quote Cnt
cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.size = 1

-- Display: Quote Cnt
cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.display = function(value)
  return "Quote Cnt: "..value
end

-- Dissect: Quote Cnt
cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_cnt, range, value, display)

  return offset + length, value
end

-- Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement = {}

-- Calculate size of: Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.size

  -- Calculate field size from count
  local quote_update_acknowledgement_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_update_acknowledgement_group_count * 10

  return index
end

-- Display: Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Update Acknowledgement Group
  for quote_update_acknowledgement_group_index = 1, quote_cnt do
    index, quote_update_acknowledgement_group = cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement_group.dissect(buffer, index, packet, parent, quote_update_acknowledgement_group_index)
  end

  return index
end

-- Dissect: Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_acknowledgement then
    local length = cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_acknowledgement, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.fields(buffer, offset, packet, parent)
end

-- Secondary Exec Id
cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id = {}

-- Size: Secondary Exec Id
cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.size = 8

-- Display: Secondary Exec Id
cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.display = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Multileg Reporting Type
cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type = {}

-- Size: Multileg Reporting Type
cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.size = 1

-- Display: Multileg Reporting Type
cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.display = function(value)
  if value == "1" then
    return "Multileg Reporting Type: Simple Instrument Execution (1)"
  end
  if value == "2" then
    return "Multileg Reporting Type: Part Of A Spread Execution (2)"
  end
  if value == "3" then
    return "Multileg Reporting Type: Spread Instrument Execution (3)"
  end

  return "Multileg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multileg Reporting Type
cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- Trade Date
cboe_futures_orderentry_boe3_v1_1_20.trade_date = {}

-- Size: Trade Date
cboe_futures_orderentry_boe3_v1_1_20.trade_date.size = 4

-- Display: Trade Date
cboe_futures_orderentry_boe3_v1_1_20.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_futures_orderentry_boe3_v1_1_20.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Maturity Date
cboe_futures_orderentry_boe3_v1_1_20.maturity_date = {}

-- Size: Maturity Date
cboe_futures_orderentry_boe3_v1_1_20.maturity_date.size = 4

-- Display: Maturity Date
cboe_futures_orderentry_boe3_v1_1_20.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cboe_futures_orderentry_boe3_v1_1_20.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Price
cboe_futures_orderentry_boe3_v1_1_20.price = {}

-- Size: Price
cboe_futures_orderentry_boe3_v1_1_20.price.size = 8

-- Display: Price
cboe_futures_orderentry_boe3_v1_1_20.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_futures_orderentry_boe3_v1_1_20.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_futures_orderentry_boe3_v1_1_20.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_futures_orderentry_boe3_v1_1_20.price.translate(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_20.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.price, range, value, display)

  return offset + length, value
end

-- Tas Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_restatement = {}

-- Calculate size of: Tas Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.exec_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.maturity_date.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_shares.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.fee_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.trade_date.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.size

  return index
end

-- Display: Tas Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tas Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_20.exec_id.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_20.maturity_date.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_20.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_20.last_px.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_futures_orderentry_boe3_v1_1_20.fee_code.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_futures_orderentry_boe3_v1_1_20.trade_date.dissect(buffer, index, packet, parent)

  -- Clearing Price: BinaryPrice
  index, clearing_price = cboe_futures_orderentry_boe3_v1_1_20.clearing_price.dissect(buffer, index, packet, parent)

  -- Clearing Symbol: Alphanumeric
  index, clearing_symbol = cboe_futures_orderentry_boe3_v1_1_20.clearing_symbol.dissect(buffer, index, packet, parent)

  -- Multileg Reporting Type: Text
  index, multileg_reporting_type = cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: Binary
  index, secondary_exec_id = cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tas Restatement
cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.dissect = function(buffer, offset, packet, parent)
  if show.tas_restatement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.tas_restatement, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.fields(buffer, offset, packet, parent)
  end
end

-- Cmta Number
cboe_futures_orderentry_boe3_v1_1_20.cmta_number = {}

-- Size: Cmta Number
cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size = 4

-- Display: Cmta Number
cboe_futures_orderentry_boe3_v1_1_20.cmta_number.display = function(value)
  return "Cmta Number: "..value
end

-- Dissect: Cmta Number
cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cmta_number, range, value, display)

  return offset + length, value
end

-- Open Close
cboe_futures_orderentry_boe3_v1_1_20.open_close = {}

-- Size: Open Close
cboe_futures_orderentry_boe3_v1_1_20.open_close.size = 1

-- Display: Open Close
cboe_futures_orderentry_boe3_v1_1_20.open_close.display = function(value)
  if value == "O" then
    return "Open Close: Open (O)"
  end
  if value == "C" then
    return "Open Close: Close (C)"
  end
  if value == "N" then
    return "Open Close: None (N)"
  end
  if value == "0x00" then
    return "Open Close: None (0x00)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.open_close, range, value, display)

  return offset + length, value
end

-- Security Desc
cboe_futures_orderentry_boe3_v1_1_20.security_desc = {}

-- Size: Security Desc
cboe_futures_orderentry_boe3_v1_1_20.security_desc.size = 16

-- Display: Security Desc
cboe_futures_orderentry_boe3_v1_1_20.security_desc.display = function(value)
  return "Security Desc: "..value
end

-- Dissect: Security Desc
cboe_futures_orderentry_boe3_v1_1_20.security_desc.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.security_desc.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_futures_orderentry_boe3_v1_1_20.security_desc.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.security_desc, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_futures_orderentry_boe3_v1_1_20.capacity = {}

-- Size: Capacity
cboe_futures_orderentry_boe3_v1_1_20.capacity.size = 1

-- Display: Capacity
cboe_futures_orderentry_boe3_v1_1_20.capacity.display = function(value)
  if value == "C" then
    return "Capacity: Customer (C)"
  end
  if value == "F" then
    return "Capacity: Firm (F)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.capacity, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_futures_orderentry_boe3_v1_1_20.orig_time = {}

-- Size: Orig Time
cboe_futures_orderentry_boe3_v1_1_20.orig_time.size = 8

-- Display: Orig Time
cboe_futures_orderentry_boe3_v1_1_20.orig_time.display = function(value)
  return "Orig Time: "..value
end

-- Dissect: Orig Time
cboe_futures_orderentry_boe3_v1_1_20.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_20.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_futures_orderentry_boe3_v1_1_20.corrected_price = {}

-- Size: Corrected Price
cboe_futures_orderentry_boe3_v1_1_20.corrected_price.size = 8

-- Display: Corrected Price
cboe_futures_orderentry_boe3_v1_1_20.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_futures_orderentry_boe3_v1_1_20.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_futures_orderentry_boe3_v1_1_20.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_futures_orderentry_boe3_v1_1_20.corrected_price.translate(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_20.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_futures_orderentry_boe3_v1_1_20.clearing_account = {}

-- Size: Clearing Account
cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size = 4

-- Display: Clearing Account
cboe_futures_orderentry_boe3_v1_1_20.clearing_account.display = function(value)
  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option = {}

-- Calculate size of: Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_shares.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.corrected_price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.orig_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.capacity.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.security_desc.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.open_close.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size

  return index
end

-- Display: Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_20.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_20.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_futures_orderentry_boe3_v1_1_20.corrected_price.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_futures_orderentry_boe3_v1_1_20.orig_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect(buffer, index, packet, parent)

  -- Security Desc: Binary
  index, security_desc = cboe_futures_orderentry_boe3_v1_1_20.security_desc.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_correct_option then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.trade_cancel_correct_option, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct = {}

-- Calculate size of: Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_shares.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.corrected_price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.orig_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.capacity.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.maturity_date.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.open_close.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size

  return index
end

-- Display: Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_futures_orderentry_boe3_v1_1_20.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_20.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_20.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_futures_orderentry_boe3_v1_1_20.corrected_price.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_futures_orderentry_boe3_v1_1_20.orig_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_20.maturity_date.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_correct then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.trade_cancel_correct, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.fields(buffer, offset, packet, parent)
  end
end

-- Purge Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.purge_reject_reason.display = function(value)
  if value == "A" then
    return "Purge Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Purge Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Purge Reject Reason: Unknown Product Name (C)"
  end
  if value == "D" then
    return "Purge Reject Reason: Duplicate Identifier (D)"
  end
  if value == "H" then
    return "Purge Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Purge Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Purge Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "M" then
    return "Purge Reject Reason: Liquidity Available Exceeds Order Size (M)"
  end
  if value == "N" then
    return "Purge Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Purge Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Purge Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "U" then
    return "Purge Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Purge Reject Reason: Would Wash (V)"
  end
  if value == "X" then
    return "Purge Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Purge Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Purge Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "h" then
    return "Purge Reject Reason: Order Persisted (h)"
  end
  if value == "f" then
    return "Purge Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Purge Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Purge Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Purge Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Purge Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Purge Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Purge Reject Reason: Session End (z)"
  end

  return "Purge Reject Reason: Unknown("..value..")"
end

-- Dissect: Purge Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.purge_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.display = function(value)
  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Purge Rejected
cboe_futures_orderentry_boe3_v1_1_20.purge_rejected = {}

-- Calculate size of: Purge Rejected
cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.purge_reject_reason.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.text.size

  return index
end

-- Display: Purge Rejected
cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected
cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_futures_orderentry_boe3_v1_1_20.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected
cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.dissect = function(buffer, offset, packet, parent)
  if show.purge_rejected then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.purge_rejected, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.fields(buffer, offset, packet, parent)
  end
end

-- Cancelled Order Count
cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement = {}

-- Calculate size of: Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size

  return index
end

-- Display: Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.purge_acknowledgement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.purge_acknowledgement, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_reject_reason.display = function(value)
  if value == "A" then
    return "Mass Cancel Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Mass Cancel Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Mass Cancel Reject Reason: Unknown Product Name (C)"
  end
  if value == "D" then
    return "Mass Cancel Reject Reason: Duplicate Identifier (D)"
  end
  if value == "H" then
    return "Mass Cancel Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Mass Cancel Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Mass Cancel Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "M" then
    return "Mass Cancel Reject Reason: Liquidity Available Exceeds Order Size (M)"
  end
  if value == "N" then
    return "Mass Cancel Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Mass Cancel Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Mass Cancel Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "U" then
    return "Mass Cancel Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Mass Cancel Reject Reason: Would Wash (V)"
  end
  if value == "X" then
    return "Mass Cancel Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Mass Cancel Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Mass Cancel Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "h" then
    return "Mass Cancel Reject Reason: Order Persisted (h)"
  end
  if value == "f" then
    return "Mass Cancel Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Mass Cancel Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Mass Cancel Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Mass Cancel Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Mass Cancel Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Mass Cancel Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Mass Cancel Reject Reason: Session End (z)"
  end

  return "Mass Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected = {}

-- Calculate size of: Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_reject_reason.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.text.size

  return index
end

-- Display: Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: Text
  index, mass_cancel_reject_reason = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_rejected then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_rejected, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement = {}

-- Calculate size of: Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size

  return index
end

-- Display: Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_futures_orderentry_boe3_v1_1_20.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_acknowledgement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_acknowledgement, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.cancel_reject_reason.display = function(value)
  if value == "A" then
    return "Cancel Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Cancel Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Cancel Reject Reason: Unknown Product Name (C)"
  end
  if value == "D" then
    return "Cancel Reject Reason: Duplicate Identifier (D)"
  end
  if value == "H" then
    return "Cancel Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Cancel Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Cancel Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "M" then
    return "Cancel Reject Reason: Liquidity Available Exceeds Order Size (M)"
  end
  if value == "N" then
    return "Cancel Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Cancel Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Cancel Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "U" then
    return "Cancel Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Cancel Reject Reason: Would Wash (V)"
  end
  if value == "X" then
    return "Cancel Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Cancel Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Cancel Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "h" then
    return "Cancel Reject Reason: Order Persisted (h)"
  end
  if value == "f" then
    return "Cancel Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Cancel Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Cancel Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Cancel Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Cancel Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Cancel Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Cancel Reject Reason: Session End (z)"
  end

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected = {}

-- Calculate size of: Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cancel_reject_reason.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.text.size

  return index
end

-- Display: Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_futures_orderentry_boe3_v1_1_20.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.dissect = function(buffer, offset, packet, parent)
  if show.cancel_rejected then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_rejected, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled
cboe_futures_orderentry_boe3_v1_1_20.order_cancelled = {}

-- Calculate size of: Order Cancelled
cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size

  return index
end

-- Display: Order Cancelled
cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled
cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_futures_orderentry_boe3_v1_1_20.cancel_reason.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled
cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.dissect = function(buffer, offset, packet, parent)
  if show.order_cancelled then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_cancelled, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.fields(buffer, offset, packet, parent)
  end
end

-- Pending Status
cboe_futures_orderentry_boe3_v1_1_20.pending_status = {}

-- Size: Pending Status
cboe_futures_orderentry_boe3_v1_1_20.pending_status.size = 1

-- Display: Pending Status
cboe_futures_orderentry_boe3_v1_1_20.pending_status.display = function(value)
  if value == "N" then
    return "Pending Status: Not Applicable (N)"
  end
  if value == "P" then
    return "Pending Status: Pending (P)"
  end

  return "Pending Status: Unknown("..value..")"
end

-- Dissect: Pending Status
cboe_futures_orderentry_boe3_v1_1_20.pending_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.pending_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.pending_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.pending_status, range, value, display)

  return offset + length, value
end

-- Clearing Size
cboe_futures_orderentry_boe3_v1_1_20.clearing_size = {}

-- Size: Clearing Size
cboe_futures_orderentry_boe3_v1_1_20.clearing_size.size = 4

-- Display: Clearing Size
cboe_futures_orderentry_boe3_v1_1_20.clearing_size.display = function(value)
  return "Clearing Size: "..value
end

-- Dissect: Clearing Size
cboe_futures_orderentry_boe3_v1_1_20.clearing_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.clearing_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.clearing_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_size, range, value, display)

  return offset + length, value
end

-- Order Execution Option
cboe_futures_orderentry_boe3_v1_1_20.order_execution_option = {}

-- Calculate size of: Order Execution Option
cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.exec_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_shares.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.security_desc.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.fee_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.trade_date.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_size.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.pending_status.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.size

  return index
end

-- Display: Order Execution Option
cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Option
cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_20.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_20.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_20.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Security Desc: Binary
  index, security_desc = cboe_futures_orderentry_boe3_v1_1_20.security_desc.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_futures_orderentry_boe3_v1_1_20.fee_code.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_futures_orderentry_boe3_v1_1_20.trade_date.dissect(buffer, index, packet, parent)

  -- Clearing Size: Binary
  index, clearing_size = cboe_futures_orderentry_boe3_v1_1_20.clearing_size.dissect(buffer, index, packet, parent)

  -- Pending Status: Text
  index, pending_status = cboe_futures_orderentry_boe3_v1_1_20.pending_status.dissect(buffer, index, packet, parent)

  -- Multileg Reporting Type: Text
  index, multileg_reporting_type = cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: Binary
  index, secondary_exec_id = cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Option
cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.dissect = function(buffer, offset, packet, parent)
  if show.order_execution_option then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_execution_option, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.fields(buffer, offset, packet, parent)
  end
end

-- Order Execution
cboe_futures_orderentry_boe3_v1_1_20.order_execution = {}

-- Calculate size of: Order Execution
cboe_futures_orderentry_boe3_v1_1_20.order_execution.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.exec_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_shares.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.last_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.maturity_date.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.fee_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.trade_date.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_size.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.pending_status.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.size

  return index
end

-- Display: Order Execution
cboe_futures_orderentry_boe3_v1_1_20.order_execution.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution
cboe_futures_orderentry_boe3_v1_1_20.order_execution.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_20.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_20.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_20.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_20.maturity_date.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_futures_orderentry_boe3_v1_1_20.fee_code.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_futures_orderentry_boe3_v1_1_20.trade_date.dissect(buffer, index, packet, parent)

  -- Clearing Size: Binary
  index, clearing_size = cboe_futures_orderentry_boe3_v1_1_20.clearing_size.dissect(buffer, index, packet, parent)

  -- Pending Status: Text
  index, pending_status = cboe_futures_orderentry_boe3_v1_1_20.pending_status.dissect(buffer, index, packet, parent)

  -- Multileg Reporting Type: Text
  index, multileg_reporting_type = cboe_futures_orderentry_boe3_v1_1_20.multileg_reporting_type.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: Binary
  index, secondary_exec_id = cboe_futures_orderentry_boe3_v1_1_20.secondary_exec_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution
cboe_futures_orderentry_boe3_v1_1_20.order_execution.dissect = function(buffer, offset, packet, parent)
  if show.order_execution then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_execution, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.order_execution.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.order_execution.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.order_execution.fields(buffer, offset, packet, parent)
  end
end

-- Modify Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.modify_reject_reason.display = function(value)
  if value == "A" then
    return "Modify Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Modify Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Modify Reject Reason: Unknown Product Name (C)"
  end
  if value == "D" then
    return "Modify Reject Reason: Duplicate Identifier (D)"
  end
  if value == "H" then
    return "Modify Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Modify Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Modify Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "M" then
    return "Modify Reject Reason: Liquidity Available Exceeds Order Size (M)"
  end
  if value == "N" then
    return "Modify Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Modify Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Modify Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "U" then
    return "Modify Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Modify Reject Reason: Would Wash (V)"
  end
  if value == "X" then
    return "Modify Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Modify Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Modify Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "h" then
    return "Modify Reject Reason: Order Persisted (h)"
  end
  if value == "f" then
    return "Modify Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Modify Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Modify Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Modify Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Modify Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Modify Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Modify Reject Reason: Session End (z)"
  end

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.modify_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Modify Rejected
cboe_futures_orderentry_boe3_v1_1_20.modify_rejected = {}

-- Calculate size of: Modify Rejected
cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.modify_reject_reason.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.text.size

  return index
end

-- Display: Modify Rejected
cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected
cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_futures_orderentry_boe3_v1_1_20.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected
cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.dissect = function(buffer, offset, packet, parent)
  if show.modify_rejected then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.modify_rejected, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.fields(buffer, offset, packet, parent)
  end
end

-- Cust Order Handling Inst
cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst = {}

-- Size: Cust Order Handling Inst
cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.size = 1

-- Display: Cust Order Handling Inst
cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.display = function(value)
  if value == "W" then
    return "Cust Order Handling Inst: Desk (W)"
  end
  if value == "Y" then
    return "Cust Order Handling Inst: Electronic (Y)"
  end
  if value == "C" then
    return "Cust Order Handling Inst: Vendorprovided Platform Billed By (C)"
  end
  if value == "G" then
    return "Cust Order Handling Inst: Sponsored Access Via Exchange Api (G)"
  end
  if value == "H" then
    return "Cust Order Handling Inst: Premium Algorithmic Trading (H)"
  end
  if value == "D" then
    return "Cust Order Handling Inst: Other (D)"
  end
  if value == "0x00" then
    return "Cust Order Handling Inst: Apply Default (0x00)"
  end

  return "Cust Order Handling Inst: Unknown("..value..")"
end

-- Dissect: Cust Order Handling Inst
cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Frequent Trader Id
cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id = {}

-- Size: Frequent Trader Id
cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.size = 6

-- Display: Frequent Trader Id
cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.display = function(value)
  return "Frequent Trader Id: "..value
end

-- Dissect: Frequent Trader Id
cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.frequent_trader_id, range, value, display)

  return offset + length, value
end

-- Stop Px
cboe_futures_orderentry_boe3_v1_1_20.stop_px = {}

-- Size: Stop Px
cboe_futures_orderentry_boe3_v1_1_20.stop_px.size = 99

-- Display: Stop Px
cboe_futures_orderentry_boe3_v1_1_20.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
cboe_futures_orderentry_boe3_v1_1_20.stop_px.translate = function(raw)
  return raw/10000
end

-- Dissect: Stop Px
cboe_futures_orderentry_boe3_v1_1_20.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.stop_px.size
  local range = buffer(offset, length)
  local raw = range:bytes():tohex(false, " ")
  local value = cboe_futures_orderentry_boe3_v1_1_20.stop_px.translate(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_20.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_futures_orderentry_boe3_v1_1_20.order_qty = {}

-- Size: Order Qty
cboe_futures_orderentry_boe3_v1_1_20.order_qty.size = 4

-- Display: Order Qty
cboe_futures_orderentry_boe3_v1_1_20.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_futures_orderentry_boe3_v1_1_20.ord_type = {}

-- Size: Ord Type
cboe_futures_orderentry_boe3_v1_1_20.ord_type.size = 1

-- Display: Ord Type
cboe_futures_orderentry_boe3_v1_1_20.ord_type.display = function(value)
  if value == "1" then
    return "Ord Type: Market (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
  end
  if value == "4" then
    return "Ord Type: Stop Limit (4)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cboe_futures_orderentry_boe3_v1_1_20.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Modified
cboe_futures_orderentry_boe3_v1_1_20.order_modified = {}

-- Calculate size of: Order Modified
cboe_futures_orderentry_boe3_v1_1_20.order_modified.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.ord_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.stop_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size

  return index
end

-- Display: Order Modified
cboe_futures_orderentry_boe3_v1_1_20.order_modified.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified
cboe_futures_orderentry_boe3_v1_1_20.order_modified.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_20.order_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_20.ord_type.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_futures_orderentry_boe3_v1_1_20.stop_px.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified
cboe_futures_orderentry_boe3_v1_1_20.order_modified.dissect = function(buffer, offset, packet, parent)
  if show.order_modified then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_modified, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.order_modified.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.order_modified.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.order_modified.fields(buffer, offset, packet, parent)
  end
end

-- Order Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.order_reject_reason.display = function(value)
  if value == "A" then
    return "Order Reject Reason: Admin (A)"
  end
  if value == "B" then
    return "Order Reject Reason: Unknown Maturity Date (B)"
  end
  if value == "C" then
    return "Order Reject Reason: Unknown Product Name (C)"
  end
  if value == "D" then
    return "Order Reject Reason: Duplicate Identifier (D)"
  end
  if value == "H" then
    return "Order Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Order Reject Reason: Incorrect Data Center (I)"
  end
  if value == "K" then
    return "Order Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "M" then
    return "Order Reject Reason: Liquidity Available Exceeds Order Size (M)"
  end
  if value == "N" then
    return "Order Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Order Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Order Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "U" then
    return "Order Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Order Reject Reason: Would Wash (V)"
  end
  if value == "X" then
    return "Order Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Order Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Order Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "h" then
    return "Order Reject Reason: Order Persisted (h)"
  end
  if value == "f" then
    return "Order Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Order Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "n" then
    return "Order Reject Reason: Risk Management Configuration Is Insufficient (n)"
  end
  if value == "o" then
    return "Order Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "s" then
    return "Order Reject Reason: Risk Management Product Level (s)"
  end
  if value == "y" then
    return "Order Reject Reason: Order Received By Cfe During Replay (y)"
  end
  if value == "z" then
    return "Order Reject Reason: Session End (z)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_futures_orderentry_boe3_v1_1_20.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Order Rejected
cboe_futures_orderentry_boe3_v1_1_20.order_rejected = {}

-- Calculate size of: Order Rejected
cboe_futures_orderentry_boe3_v1_1_20.order_rejected.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_reject_reason.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.text.size

  return index
end

-- Display: Order Rejected
cboe_futures_orderentry_boe3_v1_1_20.order_rejected.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected
cboe_futures_orderentry_boe3_v1_1_20.order_rejected.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_futures_orderentry_boe3_v1_1_20.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_20.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected
cboe_futures_orderentry_boe3_v1_1_20.order_rejected.dissect = function(buffer, offset, packet, parent)
  if show.order_rejected then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_rejected, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.order_rejected.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.order_rejected.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.order_rejected.fields(buffer, offset, packet, parent)
  end
end

-- Leg Position Effect
cboe_futures_orderentry_boe3_v1_1_20.leg_position_effect = {}

-- Size: Leg Position Effect
cboe_futures_orderentry_boe3_v1_1_20.leg_position_effect.size = 1

-- Display: Leg Position Effect
cboe_futures_orderentry_boe3_v1_1_20.leg_position_effect.display = function(value)
  if value == "O" then
    return "Leg Position Effect: Open (O)"
  end
  if value == "C" then
    return "Leg Position Effect: Close (C)"
  end
  if value == "N" then
    return "Leg Position Effect: None (N)"
  end

  return "Leg Position Effect: Unknown("..value..")"
end

-- Dissect: Leg Position Effect
cboe_futures_orderentry_boe3_v1_1_20.leg_position_effect.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.leg_position_effect.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.leg_position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.leg_position_effect, range, value, display)

  return offset + length, value
end

-- Country Code
cboe_futures_orderentry_boe3_v1_1_20.country_code = {}

-- Size: Country Code
cboe_futures_orderentry_boe3_v1_1_20.country_code.size = 2

-- Display: Country Code
cboe_futures_orderentry_boe3_v1_1_20.country_code.display = function(value)
  return "Country Code: "..value
end

-- Dissect: Country Code
cboe_futures_orderentry_boe3_v1_1_20.country_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.country_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.country_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.country_code, range, value, display)

  return offset + length, value
end

-- Cum Qty
cboe_futures_orderentry_boe3_v1_1_20.cum_qty = {}

-- Size: Cum Qty
cboe_futures_orderentry_boe3_v1_1_20.cum_qty.size = 4

-- Display: Cum Qty
cboe_futures_orderentry_boe3_v1_1_20.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
cboe_futures_orderentry_boe3_v1_1_20.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Oeo Id
cboe_futures_orderentry_boe3_v1_1_20.oeo_id = {}

-- Size: Oeo Id
cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size = 18

-- Display: Oeo Id
cboe_futures_orderentry_boe3_v1_1_20.oeo_id.display = function(value)
  return "Oeo Id: "..value
end

-- Dissect: Oeo Id
cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.oeo_id, range, value, display)

  return offset + length, value
end

-- Manual Order Indicator
cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator = {}

-- Size: Manual Order Indicator
cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size = 1

-- Display: Manual Order Indicator
cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.display = function(value)
  if value == "Y" then
    return "Manual Order Indicator: Manual (Y)"
  end
  if value == "N" then
    return "Manual Order Indicator: Automated (N)"
  end

  return "Manual Order Indicator: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator
cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.manual_order_indicator, range, value, display)

  return offset + length, value
end

-- Cti Code
cboe_futures_orderentry_boe3_v1_1_20.cti_code = {}

-- Size: Cti Code
cboe_futures_orderentry_boe3_v1_1_20.cti_code.size = 1

-- Display: Cti Code
cboe_futures_orderentry_boe3_v1_1_20.cti_code.display = function(value)
  if value == "1" then
    return "Cti Code: Cti 1 (1)"
  end
  if value == "2" then
    return "Cti Code: Cti 2 (2)"
  end
  if value == "3" then
    return "Cti Code: Cti 3 (3)"
  end
  if value == "4" then
    return "Cti Code: Cti 4 (4)"
  end

  return "Cti Code: Unknown("..value..")"
end

-- Dissect: Cti Code
cboe_futures_orderentry_boe3_v1_1_20.cti_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cti_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cti_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cti_code, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_futures_orderentry_boe3_v1_1_20.expire_time = {}

-- Size: Expire Time
cboe_futures_orderentry_boe3_v1_1_20.expire_time.size = 8

-- Display: Expire Time
cboe_futures_orderentry_boe3_v1_1_20.expire_time.display = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
cboe_futures_orderentry_boe3_v1_1_20.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_20.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Trading Group Id
cboe_futures_orderentry_boe3_v1_1_20.trading_group_id = {}

-- Size: Trading Group Id
cboe_futures_orderentry_boe3_v1_1_20.trading_group_id.size = 1

-- Display: Trading Group Id
cboe_futures_orderentry_boe3_v1_1_20.trading_group_id.display = function(value)
  return "Trading Group Id: "..value
end

-- Dissect: Trading Group Id
cboe_futures_orderentry_boe3_v1_1_20.trading_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.trading_group_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.trading_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.trading_group_id, range, value, display)

  return offset + length, value
end

-- Unique Id Level
cboe_futures_orderentry_boe3_v1_1_20.unique_id_level = {}

-- Size: Unique Id Level
cboe_futures_orderentry_boe3_v1_1_20.unique_id_level.size = 1

-- Display: Unique Id Level
cboe_futures_orderentry_boe3_v1_1_20.unique_id_level.display = function(value)
  if value == "N" then
    return "Unique Id Level: Cancel Newest (N)"
  end
  if value == "F" then
    return "Unique Id Level: Tph (F)"
  end
  if value == "M" then
    return "Unique Id Level: Efid (M)"
  end

  return "Unique Id Level: Unknown("..value..")"
end

-- Dissect: Unique Id Level
cboe_futures_orderentry_boe3_v1_1_20.unique_id_level.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.unique_id_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.unique_id_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.unique_id_level, range, value, display)

  return offset + length, value
end

-- Mtp Modifier
cboe_futures_orderentry_boe3_v1_1_20.mtp_modifier = {}

-- Size: Mtp Modifier
cboe_futures_orderentry_boe3_v1_1_20.mtp_modifier.size = 1

-- Display: Mtp Modifier
cboe_futures_orderentry_boe3_v1_1_20.mtp_modifier.display = function(value)
  if value == "N" then
    return "Mtp Modifier: Cancel Newest (N)"
  end
  if value == "O" then
    return "Mtp Modifier: Cancel Oldest (O)"
  end
  if value == "B" then
    return "Mtp Modifier: Cancel Both (B)"
  end

  return "Mtp Modifier: Unknown("..value..")"
end

-- Dissect: Mtp Modifier
cboe_futures_orderentry_boe3_v1_1_20.mtp_modifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.mtp_modifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.mtp_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mtp_modifier, range, value, display)

  return offset + length, value
end

-- Prevent Match
cboe_futures_orderentry_boe3_v1_1_20.prevent_match = {}

-- Calculate size of: Prevent Match
cboe_futures_orderentry_boe3_v1_1_20.prevent_match.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mtp_modifier.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.unique_id_level.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.trading_group_id.size

  return index
end

-- Display: Prevent Match
cboe_futures_orderentry_boe3_v1_1_20.prevent_match.display = function(buffer, offset, value, packet, parent)
  return "Prevent Match: "..value
end

-- Dissect Fields: Prevent Match
cboe_futures_orderentry_boe3_v1_1_20.prevent_match.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mtp Modifier: Text
  index, mtp_modifier = cboe_futures_orderentry_boe3_v1_1_20.mtp_modifier.dissect(buffer, index, packet, parent)

  -- Unique Id Level: Text
  index, unique_id_level = cboe_futures_orderentry_boe3_v1_1_20.unique_id_level.dissect(buffer, index, packet, parent)

  -- Trading Group Id: Alphanumeric
  index, trading_group_id = cboe_futures_orderentry_boe3_v1_1_20.trading_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prevent Match
cboe_futures_orderentry_boe3_v1_1_20.prevent_match.dissect = function(buffer, offset, packet, parent)
  -- Optionally add element to protocol tree
  if show.prevent_match then
    local length = cboe_futures_orderentry_boe3_v1_1_20.prevent_match.size(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = cboe_futures_orderentry_boe3_v1_1_20.prevent_match.display(buffer, offset, value, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.prevent_match, range, value, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.prevent_match.fields(buffer, offset, packet, parent)
end

-- Account
cboe_futures_orderentry_boe3_v1_1_20.account = {}

-- Size: Account
cboe_futures_orderentry_boe3_v1_1_20.account.size = 16

-- Display: Account
cboe_futures_orderentry_boe3_v1_1_20.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
cboe_futures_orderentry_boe3_v1_1_20.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.account, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_futures_orderentry_boe3_v1_1_20.time_in_force = {}

-- Size: Time In Force
cboe_futures_orderentry_boe3_v1_1_20.time_in_force.size = 1

-- Display: Time In Force
cboe_futures_orderentry_boe3_v1_1_20.time_in_force.display = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Gtc (1)"
  end
  if value == "3" then
    return "Time In Force: Ioc (3)"
  end
  if value == "4" then
    return "Time In Force: Fok (4)"
  end
  if value == "6" then
    return "Time In Force: Gtd (6)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cboe_futures_orderentry_boe3_v1_1_20.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option = {}

-- Calculate size of: Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.ord_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.time_in_force.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.security_desc.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.capacity.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.prevent_match.size(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_20.open_close.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.expire_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cti_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cum_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.country_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.size

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_20.order_id.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_20.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_futures_orderentry_boe3_v1_1_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Security Desc: Binary
  index, security_desc = cboe_futures_orderentry_boe3_v1_1_20.security_desc.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_20.account.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_futures_orderentry_boe3_v1_1_20.prevent_match.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_futures_orderentry_boe3_v1_1_20.expire_time.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_20.cti_code.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: Binary
  index, cum_qty = cboe_futures_orderentry_boe3_v1_1_20.cum_qty.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Country Code: Text
  index, country_code = cboe_futures_orderentry_boe3_v1_1_20.country_code.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Position Effect
  for leg_position_effect_index = 1, leg_cnt do
    index, leg_position_effect = cboe_futures_orderentry_boe3_v1_1_20.leg_position_effect.dissect(buffer, index, packet, parent, leg_position_effect_index)
  end

  return index
end

-- Dissect: Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_acknowledgement_option then
    local length = cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_acknowledgement_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.fields(buffer, offset, packet, parent)
end

-- Min Qty
cboe_futures_orderentry_boe3_v1_1_20.min_qty = {}

-- Size: Min Qty
cboe_futures_orderentry_boe3_v1_1_20.min_qty.size = 4

-- Display: Min Qty
cboe_futures_orderentry_boe3_v1_1_20.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_futures_orderentry_boe3_v1_1_20.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement = {}

-- Calculate size of: Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.transaction_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.ord_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.time_in_force.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.min_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.capacity.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.prevent_match.size(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_20.maturity_date.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.open_close.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.expire_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.stop_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cti_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cum_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.request_received_time.size

  return index
end

-- Display: Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_20.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_20.order_id.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_20.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_futures_orderentry_boe3_v1_1_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_futures_orderentry_boe3_v1_1_20.min_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_20.account.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_futures_orderentry_boe3_v1_1_20.prevent_match.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_20.maturity_date.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_20.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_futures_orderentry_boe3_v1_1_20.expire_time.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_20.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_futures_orderentry_boe3_v1_1_20.stop_px.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_20.cti_code.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  -- Cum Qty: Binary
  index, cum_qty = cboe_futures_orderentry_boe3_v1_1_20.cum_qty.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_20.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.dissect = function(buffer, offset, packet, parent)
  if show.order_acknowledgement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.order_acknowledgement, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.fields(buffer, offset, packet, parent)
  end
end

-- New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option = {}

-- Calculate size of: New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_option_leg.size

  return index
end

-- Display: New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.dissect(buffer, index, packet, parent)

  -- Complex Instrument Option Leg
  index, complex_instrument_option_leg = cboe_futures_orderentry_boe3_v1_1_20.complex_instrument_option_leg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.dissect = function(buffer, offset, packet, parent)
  if show.new_complex_instrument_option then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_complex_instrument_option, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.fields(buffer, offset, packet, parent)
  end
end

-- Custom Group Id
cboe_futures_orderentry_boe3_v1_1_20.custom_group_id = {}

-- Size: Custom Group Id
cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.size = 2

-- Display: Custom Group Id
cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.display = function(value)
  return "Custom Group Id: "..value
end

-- Dissect: Custom Group Id
cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.custom_group_id, range, value, display)

  return offset + length, value
end

-- Product Name
cboe_futures_orderentry_boe3_v1_1_20.product_name = {}

-- Size: Product Name
cboe_futures_orderentry_boe3_v1_1_20.product_name.size = 6

-- Display: Product Name
cboe_futures_orderentry_boe3_v1_1_20.product_name.display = function(value)
  return "Product Name: "..value
end

-- Dissect: Product Name
cboe_futures_orderentry_boe3_v1_1_20.product_name.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.product_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.product_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.product_name, range, value, display)

  return offset + length, value
end

-- Risk Reset
cboe_futures_orderentry_boe3_v1_1_20.risk_reset = {}

-- Size: Risk Reset
cboe_futures_orderentry_boe3_v1_1_20.risk_reset.size = 8

-- Display: Risk Reset
cboe_futures_orderentry_boe3_v1_1_20.risk_reset.display = function(value)
  if value == "S" then
    return "Risk Reset: Productlevel (S)"
  end
  if value == "F" then
    return "Risk Reset: Firmlevel (F)"
  end
  if value == "C" then
    return "Risk Reset: Custom Group Id (C)"
  end
  if value == "R" then
    return "Risk Reset: Productlevel Options (R)"
  end
  if value == "I" then
    return "Risk Reset: Firmlevel Options (I)"
  end
  if value == "D" then
    return "Risk Reset: Custom Group Id Options (D)"
  end

  return "Risk Reset: Unknown("..value..")"
end

-- Dissect: Risk Reset
cboe_futures_orderentry_boe3_v1_1_20.risk_reset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.risk_reset.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.risk_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Reset Risk
cboe_futures_orderentry_boe3_v1_1_20.reset_risk = {}

-- Calculate size of: Reset Risk
cboe_futures_orderentry_boe3_v1_1_20.reset_risk.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.risk_reset.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.product_name.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.size

  return index
end

-- Display: Reset Risk
cboe_futures_orderentry_boe3_v1_1_20.reset_risk.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk
cboe_futures_orderentry_boe3_v1_1_20.reset_risk.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_futures_orderentry_boe3_v1_1_20.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset: Text
  index, risk_reset = cboe_futures_orderentry_boe3_v1_1_20.risk_reset.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Product Name: Text
  index, product_name = cboe_futures_orderentry_boe3_v1_1_20.product_name.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk
cboe_futures_orderentry_boe3_v1_1_20.reset_risk.dissect = function(buffer, offset, packet, parent)
  if show.reset_risk then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.reset_risk, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.reset_risk.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.reset_risk.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.reset_risk.fields(buffer, offset, packet, parent)
  end
end

-- Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group = {}

-- Calculate size of: Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.open_close.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_qty.size

  return index
end

-- Display: Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group.fields = function(buffer, offset, packet, parent, quote_update_option_group_index)
  local index = offset

  -- Implicit Quote Update Option Group Index
  if quote_update_option_group_index ~= nil then
    local iteration = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_option_group_index, quote_update_option_group_index)
    iteration:set_generated()
  end

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group.dissect = function(buffer, offset, packet, parent, quote_update_option_group_index)
  if show.quote_update_option_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_option_group, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group.fields(buffer, offset, packet, parent, quote_update_option_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group.fields(buffer, offset, packet, parent, quote_update_option_group_index)
  end
end

-- Size Modifier
cboe_futures_orderentry_boe3_v1_1_20.size_modifier = {}

-- Size: Size Modifier
cboe_futures_orderentry_boe3_v1_1_20.size_modifier.size = 1

-- Display: Size Modifier
cboe_futures_orderentry_boe3_v1_1_20.size_modifier.display = function(value)
  if value == "0x00" then
    return "Size Modifier: New Quote Size (0x00)"
  end
  if value == "R" then
    return "Size Modifier: Reduced Size (R)"
  end

  return "Size Modifier: Unknown("..value..")"
end

-- Dissect: Size Modifier
cboe_futures_orderentry_boe3_v1_1_20.size_modifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.size_modifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.size_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.size_modifier, range, value, display)

  return offset + length, value
end

-- Quote Update Option
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option = {}

-- Calculate size of: Quote Update Option
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.capacity.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cti_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.size_modifier.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.size

  -- Calculate field size from count
  local quote_update_option_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_update_option_group_count * 20

  return index
end

-- Display: Quote Update Option
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Option
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_20.account.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_20.cti_code.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_futures_orderentry_boe3_v1_1_20.size_modifier.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Update Option Group
  for quote_update_option_group_index = 1, quote_cnt do
    index, quote_update_option_group = cboe_futures_orderentry_boe3_v1_1_20.quote_update_option_group.dissect(buffer, index, packet, parent, quote_update_option_group_index)
  end

  return index
end

-- Dissect: Quote Update Option
cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_option then
    local length = cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.fields(buffer, offset, packet, parent)
end

-- Quote Update Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_group = {}

-- Calculate size of: Quote Update Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_group.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.open_close.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_qty.size

  return index
end

-- Display: Quote Update Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_group.fields = function(buffer, offset, packet, parent, quote_update_group_index)
  local index = offset

  -- Implicit Quote Update Group Index
  if quote_update_group_index ~= nil then
    local iteration = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_group_index, quote_update_group_index)
    iteration:set_generated()
  end

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_20.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Group
cboe_futures_orderentry_boe3_v1_1_20.quote_update_group.dissect = function(buffer, offset, packet, parent, quote_update_group_index)
  if show.quote_update_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update_group, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.quote_update_group.fields(buffer, offset, packet, parent, quote_update_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_update_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_group.fields(buffer, offset, packet, parent, quote_update_group_index)
  end
end

-- Quote Update
cboe_futures_orderentry_boe3_v1_1_20.quote_update = {}

-- Calculate size of: Quote Update
cboe_futures_orderentry_boe3_v1_1_20.quote_update.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.capacity.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cti_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.size_modifier.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.size

  -- Calculate field size from count
  local quote_update_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_update_group_count * 20

  return index
end

-- Display: Quote Update
cboe_futures_orderentry_boe3_v1_1_20.quote_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update
cboe_futures_orderentry_boe3_v1_1_20.quote_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_20.quote_update_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_20.account.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_20.cti_code.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_futures_orderentry_boe3_v1_1_20.size_modifier.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_futures_orderentry_boe3_v1_1_20.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Update Group
  for quote_update_group_index = 1, quote_cnt do
    index, quote_update_group = cboe_futures_orderentry_boe3_v1_1_20.quote_update_group.dissect(buffer, index, packet, parent, quote_update_group_index)
  end

  return index
end

-- Dissect: Quote Update
cboe_futures_orderentry_boe3_v1_1_20.quote_update.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update then
    local length = cboe_futures_orderentry_boe3_v1_1_20.quote_update.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.quote_update.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.quote_update, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.quote_update.fields(buffer, offset, packet, parent)
end

-- Custom Group Id Cnt
cboe_futures_orderentry_boe3_v1_1_20.custom_group_id_cnt = {}

-- Size: Custom Group Id Cnt
cboe_futures_orderentry_boe3_v1_1_20.custom_group_id_cnt.size = 1

-- Display: Custom Group Id Cnt
cboe_futures_orderentry_boe3_v1_1_20.custom_group_id_cnt.display = function(value)
  return "Custom Group Id Cnt: "..value
end

-- Dissect: Custom Group Id Cnt
cboe_futures_orderentry_boe3_v1_1_20.custom_group_id_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.custom_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Instruction Details
cboe_futures_orderentry_boe3_v1_1_20.instruction_details = {}

-- Size: Instruction Details
cboe_futures_orderentry_boe3_v1_1_20.instruction_details.size = 11

-- Display: Instruction Details
cboe_futures_orderentry_boe3_v1_1_20.instruction_details.display = function(value)
  return "Instruction Details: "..value
end

-- Dissect: Instruction Details
cboe_futures_orderentry_boe3_v1_1_20.instruction_details.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.instruction_details.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.instruction_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.instruction_details, range, value, display)

  return offset + length, value
end

-- Gtc Order Filter
cboe_futures_orderentry_boe3_v1_1_20.gtc_order_filter = {}

-- Size: Gtc Order Filter
cboe_futures_orderentry_boe3_v1_1_20.gtc_order_filter.size = 1

-- Display: Gtc Order Filter
cboe_futures_orderentry_boe3_v1_1_20.gtc_order_filter.display = function(value)
  if value == "C" then
    return "Gtc Order Filter: Cancel Gtc And Gtd Orders (C)"
  end
  if value == "P" then
    return "Gtc Order Filter: Preserve Gtc And Gtd Orders (P)"
  end

  return "Gtc Order Filter: Unknown("..value..")"
end

-- Dissect: Gtc Order Filter
cboe_futures_orderentry_boe3_v1_1_20.gtc_order_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.gtc_order_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.gtc_order_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.gtc_order_filter, range, value, display)

  return offset + length, value
end

-- Instrument Type Filter
cboe_futures_orderentry_boe3_v1_1_20.instrument_type_filter = {}

-- Size: Instrument Type Filter
cboe_futures_orderentry_boe3_v1_1_20.instrument_type_filter.size = 1

-- Display: Instrument Type Filter
cboe_futures_orderentry_boe3_v1_1_20.instrument_type_filter.display = function(value)
  if value == "B" then
    return "Instrument Type Filter: Both Simple And Complex Orders (B)"
  end
  if value == "S" then
    return "Instrument Type Filter: Simple Orders Only (S)"
  end
  if value == "C" then
    return "Instrument Type Filter: Spread Orders Only (C)"
  end

  return "Instrument Type Filter: Unknown("..value..")"
end

-- Dissect: Instrument Type Filter
cboe_futures_orderentry_boe3_v1_1_20.instrument_type_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.instrument_type_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.instrument_type_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.instrument_type_filter, range, value, display)

  return offset + length, value
end

-- Lockout Instruction
cboe_futures_orderentry_boe3_v1_1_20.lockout_instruction = {}

-- Size: Lockout Instruction
cboe_futures_orderentry_boe3_v1_1_20.lockout_instruction.size = 1

-- Display: Lockout Instruction
cboe_futures_orderentry_boe3_v1_1_20.lockout_instruction.display = function(value)
  if value == "N" then
    return "Lockout Instruction: No Lockout (N)"
  end
  if value == "L" then
    return "Lockout Instruction: Lockout Until Corresponding Reset Risk Received (L)"
  end

  return "Lockout Instruction: Unknown("..value..")"
end

-- Dissect: Lockout Instruction
cboe_futures_orderentry_boe3_v1_1_20.lockout_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.lockout_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.lockout_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.lockout_instruction, range, value, display)

  return offset + length, value
end

-- Acknowledgement Style
cboe_futures_orderentry_boe3_v1_1_20.acknowledgement_style = {}

-- Size: Acknowledgement Style
cboe_futures_orderentry_boe3_v1_1_20.acknowledgement_style.size = 1

-- Display: Acknowledgement Style
cboe_futures_orderentry_boe3_v1_1_20.acknowledgement_style.display = function(value)
  if value == "M" then
    return "Acknowledgement Style: Order Cancelled Messages Are Sent For Each Cancelled Order (M)"
  end
  if value == "S" then
    return "Acknowledgement Style: A Single Mass Cancel Acknowledgement Message Is Sent (S)"
  end
  if value == "B" then
    return "Acknowledgement Style: Both Individual Order Cancelled And Mass Cancel Acknowledgement Messages Will Be Sent (B)"
  end

  return "Acknowledgement Style: Unknown("..value..")"
end

-- Dissect: Acknowledgement Style
cboe_futures_orderentry_boe3_v1_1_20.acknowledgement_style.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.acknowledgement_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.acknowledgement_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.acknowledgement_style, range, value, display)

  return offset + length, value
end

-- Clearing Firm Filter
cboe_futures_orderentry_boe3_v1_1_20.clearing_firm_filter = {}

-- Size: Clearing Firm Filter
cboe_futures_orderentry_boe3_v1_1_20.clearing_firm_filter.size = 1

-- Display: Clearing Firm Filter
cboe_futures_orderentry_boe3_v1_1_20.clearing_firm_filter.display = function(value)
  if value == "A" then
    return "Clearing Firm Filter: No Filtering By Clearing Firm (A)"
  end
  if value == "F" then
    return "Clearing Firm Filter: Specified Clearing Firm Optional Field (F)"
  end

  return "Clearing Firm Filter: Unknown("..value..")"
end

-- Dissect: Clearing Firm Filter
cboe_futures_orderentry_boe3_v1_1_20.clearing_firm_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.clearing_firm_filter, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst = {}

-- Calculate size of: Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm_filter.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.acknowledgement_style.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.lockout_instruction.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.instrument_type_filter.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.gtc_order_filter.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.instruction_details.size

  return index
end

-- Display: Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.display = function(buffer, offset, value, packet, parent)
  return "Mass Cancel Inst: "..value
end

-- Dissect Fields: Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Filter: Alphanumeric
  index, clearing_firm_filter = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm_filter.dissect(buffer, index, packet, parent)

  -- Acknowledgement Style: Alphanumeric
  index, acknowledgement_style = cboe_futures_orderentry_boe3_v1_1_20.acknowledgement_style.dissect(buffer, index, packet, parent)

  -- Lockout Instruction: Alphanumeric
  index, lockout_instruction = cboe_futures_orderentry_boe3_v1_1_20.lockout_instruction.dissect(buffer, index, packet, parent)

  -- Instrument Type Filter: Alphanumeric
  index, instrument_type_filter = cboe_futures_orderentry_boe3_v1_1_20.instrument_type_filter.dissect(buffer, index, packet, parent)

  -- Gtc Order Filter: Alphanumeric
  index, gtc_order_filter = cboe_futures_orderentry_boe3_v1_1_20.gtc_order_filter.dissect(buffer, index, packet, parent)

  -- Instruction Details: Alphanumeric
  index, instruction_details = cboe_futures_orderentry_boe3_v1_1_20.instruction_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  -- Optionally add element to protocol tree
  if show.mass_cancel_inst then
    local length = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.size(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.display(buffer, offset, value, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_inst, range, value, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.fields(buffer, offset, packet, parent)
end

-- Purge Orders
cboe_futures_orderentry_boe3_v1_1_20.purge_orders = {}

-- Calculate size of: Purge Orders
cboe_futures_orderentry_boe3_v1_1_20.purge_orders.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.product_name.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.size(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.custom_group_id_cnt.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.size

  return index
end

-- Display: Purge Orders
cboe_futures_orderentry_boe3_v1_1_20.purge_orders.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Orders
cboe_futures_orderentry_boe3_v1_1_20.purge_orders.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Product Name: Text
  index, product_name = cboe_futures_orderentry_boe3_v1_1_20.product_name.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id Cnt: Binary
  index, custom_group_id_cnt = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id_cnt.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Orders
cboe_futures_orderentry_boe3_v1_1_20.purge_orders.dissect = function(buffer, offset, packet, parent)
  if show.purge_orders then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.purge_orders, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.purge_orders.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.purge_orders.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.purge_orders.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order = {}

-- Calculate size of: Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.product_name.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.size(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  return index
end

-- Display: Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Product Name: Text
  index, product_name = cboe_futures_orderentry_boe3_v1_1_20.product_name.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.mass_cancel_order, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.cancel_order = {}

-- Calculate size of: Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.cancel_order.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  return index
end

-- Display: Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.cancel_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.cancel_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order
cboe_futures_orderentry_boe3_v1_1_20.cancel_order.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_order, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.cancel_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.cancel_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.cancel_order.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Orig On Reject
cboe_futures_orderentry_boe3_v1_1_20.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_futures_orderentry_boe3_v1_1_20.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_futures_orderentry_boe3_v1_1_20.cancel_orig_on_reject.display = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_futures_orderentry_boe3_v1_1_20.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.cancel_orig_on_reject.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Modify Order
cboe_futures_orderentry_boe3_v1_1_20.modify_order = {}

-- Calculate size of: Modify Order
cboe_futures_orderentry_boe3_v1_1_20.modify_order.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.ord_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cancel_orig_on_reject.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.stop_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.size

  return index
end

-- Display: Modify Order
cboe_futures_orderentry_boe3_v1_1_20.modify_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order
cboe_futures_orderentry_boe3_v1_1_20.modify_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_20.ord_type.dissect(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Alpha
  index, cancel_orig_on_reject = cboe_futures_orderentry_boe3_v1_1_20.cancel_orig_on_reject.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_futures_orderentry_boe3_v1_1_20.stop_px.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order
cboe_futures_orderentry_boe3_v1_1_20.modify_order.dissect = function(buffer, offset, packet, parent)
  if show.modify_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.modify_order, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.modify_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.modify_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.modify_order.fields(buffer, offset, packet, parent)
  end
end

-- New Order Option
cboe_futures_orderentry_boe3_v1_1_20.new_order_option = {}

-- Calculate size of: New Order Option
cboe_futures_orderentry_boe3_v1_1_20.new_order_option.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.ord_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.time_in_force.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.security_desc.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.capacity.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.prevent_match.size(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_20.expire_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.open_close.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cti_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.country_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.size

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Order Option
cboe_futures_orderentry_boe3_v1_1_20.new_order_option.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Option
cboe_futures_orderentry_boe3_v1_1_20.new_order_option.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_20.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_futures_orderentry_boe3_v1_1_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Security Desc: Binary
  index, security_desc = cboe_futures_orderentry_boe3_v1_1_20.security_desc.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_20.account.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_futures_orderentry_boe3_v1_1_20.prevent_match.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_futures_orderentry_boe3_v1_1_20.expire_time.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_20.cti_code.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Country Code: Text
  index, country_code = cboe_futures_orderentry_boe3_v1_1_20.country_code.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_futures_orderentry_boe3_v1_1_20.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Position Effect
  for leg_position_effect_index = 1, leg_cnt do
    index, leg_position_effect = cboe_futures_orderentry_boe3_v1_1_20.leg_position_effect.dissect(buffer, index, packet, parent, leg_position_effect_index)
  end

  return index
end

-- Dissect: New Order Option
cboe_futures_orderentry_boe3_v1_1_20.new_order_option.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_option then
    local length = cboe_futures_orderentry_boe3_v1_1_20.new_order_option.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.new_order_option.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_order_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.new_order_option.fields(buffer, offset, packet, parent)
end

-- New Order
cboe_futures_orderentry_boe3_v1_1_20.new_order = {}

-- Calculate size of: New Order
cboe_futures_orderentry_boe3_v1_1_20.new_order.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.side.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.order_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.clearing_account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.price.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.ord_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.time_in_force.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.min_qty.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.symbol.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.capacity.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.account.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.prevent_match.size(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_20.expire_time.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.maturity_date.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.open_close.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cmta_number.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.stop_px.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cti_code.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.oeo_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.country_code.size

  return index
end

-- Display: New Order
cboe_futures_orderentry_boe3_v1_1_20.new_order.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order
cboe_futures_orderentry_boe3_v1_1_20.new_order.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_20.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_20.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_20.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_20.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_20.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_20.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_20.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_futures_orderentry_boe3_v1_1_20.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_futures_orderentry_boe3_v1_1_20.min_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_20.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_20.capacity.dissect(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_20.account.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_futures_orderentry_boe3_v1_1_20.prevent_match.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_futures_orderentry_boe3_v1_1_20.expire_time.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_20.maturity_date.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_20.open_close.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_20.cmta_number.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_futures_orderentry_boe3_v1_1_20.stop_px.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_20.custom_group_id.dissect(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_20.cti_code.dissect(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_20.manual_order_indicator.dissect(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_20.oeo_id.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_20.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_20.cust_order_handling_inst.dissect(buffer, index, packet, parent)

  -- Country Code: Text
  index, country_code = cboe_futures_orderentry_boe3_v1_1_20.country_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order
cboe_futures_orderentry_boe3_v1_1_20.new_order.dissect = function(buffer, offset, packet, parent)
  if show.new_order then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.new_order, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.new_order.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.new_order.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.new_order.fields(buffer, offset, packet, parent)
  end
end

-- Logout Reason Text
cboe_futures_orderentry_boe3_v1_1_20.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_futures_orderentry_boe3_v1_1_20.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_futures_orderentry_boe3_v1_1_20.logout_reason_text.display = function(value)
  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_futures_orderentry_boe3_v1_1_20.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.logout_reason_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_futures_orderentry_boe3_v1_1_20.logout_reason = {}

-- Size: Logout Reason
cboe_futures_orderentry_boe3_v1_1_20.logout_reason.size = 1

-- Display: Logout Reason
cboe_futures_orderentry_boe3_v1_1_20.logout_reason.display = function(value)
  if value == "U" then
    return "Logout Reason: User Requested (U)"
  end
  if value == "A" then
    return "Logout Reason: Administrative (A)"
  end
  if value == "!" then
    return "Logout Reason: Protocol Violation (!)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
cboe_futures_orderentry_boe3_v1_1_20.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Response Message
cboe_futures_orderentry_boe3_v1_1_20.logout_response_message = {}

-- Calculate size of: Logout Response Message
cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.logout_reason.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.logout_reason_text.size

  return index
end

-- Display: Logout Response Message
cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_futures_orderentry_boe3_v1_1_20.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_futures_orderentry_boe3_v1_1_20.logout_reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.logout_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.logout_response_message, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number
cboe_futures_orderentry_boe3_v1_1_20.sequence_number = {}

-- Size: Sequence Number
cboe_futures_orderentry_boe3_v1_1_20.sequence_number.size = 4

-- Display: Sequence Number
cboe_futures_orderentry_boe3_v1_1_20.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_futures_orderentry_boe3_v1_1_20.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_futures_orderentry_boe3_v1_1_20.unit_number = {}

-- Size: Unit Number
cboe_futures_orderentry_boe3_v1_1_20.unit_number.size = 1

-- Display: Unit Number
cboe_futures_orderentry_boe3_v1_1_20.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_futures_orderentry_boe3_v1_1_20.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Unit Sequence
cboe_futures_orderentry_boe3_v1_1_20.unit_sequence = {}

-- Calculate size of: Unit Sequence
cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.unit_number.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.sequence_number.size

  return index
end

-- Display: Unit Sequence
cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.fields = function(buffer, offset, packet, parent, unit_sequence_index)
  local index = offset

  -- Implicit Unit Sequence Index
  if unit_sequence_index ~= nil then
    local iteration = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.unit_sequence_index, unit_sequence_index)
    iteration:set_generated()
  end

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_futures_orderentry_boe3_v1_1_20.unit_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_futures_orderentry_boe3_v1_1_20.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.dissect = function(buffer, offset, packet, parent, unit_sequence_index)
  if show.unit_sequence then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.unit_sequence, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
  end
end

-- Number Of Units
cboe_futures_orderentry_boe3_v1_1_20.number_of_units = {}

-- Size: Number Of Units
cboe_futures_orderentry_boe3_v1_1_20.number_of_units.size = 1

-- Display: Number Of Units
cboe_futures_orderentry_boe3_v1_1_20.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_futures_orderentry_boe3_v1_1_20.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Client Sequence
cboe_futures_orderentry_boe3_v1_1_20.client_sequence = {}

-- Size: Client Sequence
cboe_futures_orderentry_boe3_v1_1_20.client_sequence.size = 4

-- Display: Client Sequence
cboe_futures_orderentry_boe3_v1_1_20.client_sequence.display = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_futures_orderentry_boe3_v1_1_20.client_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.client_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.client_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_futures_orderentry_boe3_v1_1_20.login_response_text = {}

-- Size: Login Response Text
cboe_futures_orderentry_boe3_v1_1_20.login_response_text.size = 60

-- Display: Login Response Text
cboe_futures_orderentry_boe3_v1_1_20.login_response_text.display = function(value)
  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_futures_orderentry_boe3_v1_1_20.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.login_response_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_futures_orderentry_boe3_v1_1_20.login_response_status = {}

-- Size: Login Response Status
cboe_futures_orderentry_boe3_v1_1_20.login_response_status.size = 1

-- Display: Login Response Status
cboe_futures_orderentry_boe3_v1_1_20.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Accepted (A)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "D" then
    return "Login Response Status: Disabled (D)"
  end
  if value == "I" then
    return "Login Response Status: Invalid Unit (I)"
  end
  if value == "M" then
    return "Login Response Status: Invalid Message (M)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized (N)"
  end
  if value == "Q" then
    return "Login Response Status: Sequence Ahead (Q)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_futures_orderentry_boe3_v1_1_20.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Message
cboe_futures_orderentry_boe3_v1_1_20.login_response_message = {}

-- Calculate size of: Login Response Message
cboe_futures_orderentry_boe3_v1_1_20.login_response_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.login_response_status.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.login_response_text.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.client_sequence.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_futures_orderentry_boe3_v1_1_20.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_futures_orderentry_boe3_v1_1_20.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 8 values
  index, login_response_status = cboe_futures_orderentry_boe3_v1_1_20.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_futures_orderentry_boe3_v1_1_20.login_response_text.dissect(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_futures_orderentry_boe3_v1_1_20.client_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_futures_orderentry_boe3_v1_1_20.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_futures_orderentry_boe3_v1_1_20.login_response_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_response_message then
    local length = cboe_futures_orderentry_boe3_v1_1_20.login_response_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.login_response_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.login_response_message, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.login_response_message.fields(buffer, offset, packet, parent)
end

-- Replay Unspecified Unit
cboe_futures_orderentry_boe3_v1_1_20.replay_unspecified_unit = {}

-- Size: Replay Unspecified Unit
cboe_futures_orderentry_boe3_v1_1_20.replay_unspecified_unit.size = 1

-- Display: Replay Unspecified Unit
cboe_futures_orderentry_boe3_v1_1_20.replay_unspecified_unit.display = function(value)
  if value == "F" then
    return "Replay Unspecified Unit: Fail If Unit Not Specified (F)"
  end
  if value == "R" then
    return "Replay Unspecified Unit: Replay Any Unspecified Unit From Zero (R)"
  end
  if value == "S" then
    return "Replay Unspecified Unit: Skip Replay Of Unspecified Units (S)"
  end

  return "Replay Unspecified Unit: Unknown("..value..")"
end

-- Dissect: Replay Unspecified Unit
cboe_futures_orderentry_boe3_v1_1_20.replay_unspecified_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.replay_unspecified_unit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.replay_unspecified_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.replay_unspecified_unit, range, value, display)

  return offset + length, value
end

-- Password
cboe_futures_orderentry_boe3_v1_1_20.password = {}

-- Size: Password
cboe_futures_orderentry_boe3_v1_1_20.password.size = 10

-- Display: Password
cboe_futures_orderentry_boe3_v1_1_20.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_futures_orderentry_boe3_v1_1_20.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.password, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_futures_orderentry_boe3_v1_1_20.session_sub_id = {}

-- Size: Session Sub Id
cboe_futures_orderentry_boe3_v1_1_20.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_futures_orderentry_boe3_v1_1_20.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_futures_orderentry_boe3_v1_1_20.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.session_sub_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Session Id
cboe_futures_orderentry_boe3_v1_1_20.session_id = {}

-- Size: Session Id
cboe_futures_orderentry_boe3_v1_1_20.session_id.size = 4

-- Display: Session Id
cboe_futures_orderentry_boe3_v1_1_20.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_futures_orderentry_boe3_v1_1_20.session_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_20.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.session_id, range, value, display)

  return offset + length, value
end

-- Login Request Message
cboe_futures_orderentry_boe3_v1_1_20.login_request_message = {}

-- Calculate size of: Login Request Message
cboe_futures_orderentry_boe3_v1_1_20.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.session_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.session_sub_id.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.password.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.replay_unspecified_unit.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_futures_orderentry_boe3_v1_1_20.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_futures_orderentry_boe3_v1_1_20.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_futures_orderentry_boe3_v1_1_20.session_id.dissect(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_futures_orderentry_boe3_v1_1_20.session_sub_id.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_futures_orderentry_boe3_v1_1_20.password.dissect(buffer, index, packet, parent)

  -- Replay Unspecified Unit: 1 Byte Ascii String Enum with 3 values
  index, replay_unspecified_unit = cboe_futures_orderentry_boe3_v1_1_20.replay_unspecified_unit.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_futures_orderentry_boe3_v1_1_20.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_futures_orderentry_boe3_v1_1_20.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_futures_orderentry_boe3_v1_1_20.login_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_request_message then
    local length = cboe_futures_orderentry_boe3_v1_1_20.login_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.login_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.login_request_message, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_20.login_request_message.fields(buffer, offset, packet, parent)
end

-- Message
cboe_futures_orderentry_boe3_v1_1_20.message = {}

-- Calculate runtime size of: Message
cboe_futures_orderentry_boe3_v1_1_20.message.size = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 1 then
    return cboe_futures_orderentry_boe3_v1_1_20.login_request_message.size(buffer, offset)
  end
  -- Size of Logout Request Message
  if message_type == 2 then
    return 0
  end
  -- Size of Client Heartbeat Message
  if message_type == 3 then
    return 0
  end
  -- Size of Login Response Message
  if message_type == 501 then
    return cboe_futures_orderentry_boe3_v1_1_20.login_response_message.size(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 502 then
    return 0
  end
  -- Size of Logout Response Message
  if message_type == 503 then
    return cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.size(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 504 then
    return 0
  end
  -- Size of New Order
  if message_type == 1008 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_order.size(buffer, offset)
  end
  -- Size of New Order Option
  if message_type == 1009 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_order_option.size(buffer, offset)
  end
  -- Size of Modify Order
  if message_type == 1002 then
    return cboe_futures_orderentry_boe3_v1_1_20.modify_order.size(buffer, offset)
  end
  -- Size of Cancel Order
  if message_type == 1003 then
    return cboe_futures_orderentry_boe3_v1_1_20.cancel_order.size(buffer, offset)
  end
  -- Size of Mass Cancel Order
  if message_type == 1004 then
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.size(buffer, offset)
  end
  -- Size of Purge Orders
  if message_type == 1005 then
    return cboe_futures_orderentry_boe3_v1_1_20.purge_orders.size(buffer, offset)
  end
  -- Size of Quote Update
  if message_type == 1006 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update.size(buffer, offset)
  end
  -- Size of Quote Update Option
  if message_type == 1010 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.size(buffer, offset)
  end
  -- Size of Reset Risk
  if message_type == 1007 then
    return cboe_futures_orderentry_boe3_v1_1_20.reset_risk.size(buffer, offset)
  end
  -- Size of New Complex Instrument Option
  if message_type == 1011 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.size(buffer, offset)
  end
  -- Size of Order Acknowledgement
  if message_type == 1501 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.size(buffer, offset)
  end
  -- Size of Order Acknowledgement Option
  if message_type == 1523 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.size(buffer, offset)
  end
  -- Size of Order Rejected
  if message_type == 1502 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_rejected.size(buffer, offset)
  end
  -- Size of Order Modified
  if message_type == 1503 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_modified.size(buffer, offset)
  end
  -- Size of Modify Rejected
  if message_type == 1504 then
    return cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.size(buffer, offset)
  end
  -- Size of Order Execution
  if message_type == 1505 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_execution.size(buffer, offset)
  end
  -- Size of Order Execution Option
  if message_type == 1524 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.size(buffer, offset)
  end
  -- Size of Order Cancelled
  if message_type == 1506 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.size(buffer, offset)
  end
  -- Size of Cancel Rejected
  if message_type == 1507 then
    return cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.size(buffer, offset)
  end
  -- Size of Mass Cancel Acknowledgement
  if message_type == 1508 then
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.size(buffer, offset)
  end
  -- Size of Mass Cancel Rejected
  if message_type == 1509 then
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.size(buffer, offset)
  end
  -- Size of Purge Acknowledgement
  if message_type == 1510 then
    return cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.size(buffer, offset)
  end
  -- Size of Purge Rejected
  if message_type == 1511 then
    return cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.size(buffer, offset)
  end
  -- Size of Trade Cancel Correct
  if message_type == 1512 then
    return cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.size(buffer, offset)
  end
  -- Size of Trade Cancel Correct Option
  if message_type == 1525 then
    return cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.size(buffer, offset)
  end
  -- Size of Tas Restatement
  if message_type == 1513 then
    return cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.size(buffer, offset)
  end
  -- Size of Quote Update Acknowledgement
  if message_type == 1515 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.size(buffer, offset)
  end
  -- Size of Quote Update Rejected
  if message_type == 1516 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.size(buffer, offset)
  end
  -- Size of Quote Restated
  if message_type == 1517 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_restated.size(buffer, offset)
  end
  -- Size of Quote Execution
  if message_type == 1518 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_execution.size(buffer, offset)
  end
  -- Size of Quote Cancelled
  if message_type == 1519 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.size(buffer, offset)
  end
  -- Size of Tas Quote Restatement
  if message_type == 1520 then
    return cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.size(buffer, offset)
  end
  -- Size of Reset Risk Acknowledgement
  if message_type == 1522 then
    return cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.size(buffer, offset)
  end
  -- Size of New Complex Instrument Accepted Option
  if message_type == 1526 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.size(buffer, offset)
  end
  -- Size of New Complex Instrument Rejected Option
  if message_type == 1527 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.size(buffer, offset)
  end

  return 0
end

-- Display: Message
cboe_futures_orderentry_boe3_v1_1_20.message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message
cboe_futures_orderentry_boe3_v1_1_20.message.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 1 then
    return cboe_futures_orderentry_boe3_v1_1_20.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 2 then
  end
  -- Dissect Client Heartbeat Message
  if message_type == 3 then
  end
  -- Dissect Login Response Message
  if message_type == 501 then
    return cboe_futures_orderentry_boe3_v1_1_20.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 502 then
  end
  -- Dissect Logout Response Message
  if message_type == 503 then
    return cboe_futures_orderentry_boe3_v1_1_20.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 504 then
  end
  -- Dissect New Order
  if message_type == 1008 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Option
  if message_type == 1009 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_order_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order
  if message_type == 1002 then
    return cboe_futures_orderentry_boe3_v1_1_20.modify_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order
  if message_type == 1003 then
    return cboe_futures_orderentry_boe3_v1_1_20.cancel_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order
  if message_type == 1004 then
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_order.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Orders
  if message_type == 1005 then
    return cboe_futures_orderentry_boe3_v1_1_20.purge_orders.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update
  if message_type == 1006 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Option
  if message_type == 1010 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk
  if message_type == 1007 then
    return cboe_futures_orderentry_boe3_v1_1_20.reset_risk.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Option
  if message_type == 1011 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement
  if message_type == 1501 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement Option
  if message_type == 1523 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_acknowledgement_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected
  if message_type == 1502 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_rejected.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified
  if message_type == 1503 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_modified.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected
  if message_type == 1504 then
    return cboe_futures_orderentry_boe3_v1_1_20.modify_rejected.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution
  if message_type == 1505 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_execution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Option
  if message_type == 1524 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_execution_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled
  if message_type == 1506 then
    return cboe_futures_orderentry_boe3_v1_1_20.order_cancelled.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected
  if message_type == 1507 then
    return cboe_futures_orderentry_boe3_v1_1_20.cancel_rejected.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgement
  if message_type == 1508 then
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Rejected
  if message_type == 1509 then
    return cboe_futures_orderentry_boe3_v1_1_20.mass_cancel_rejected.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Acknowledgement
  if message_type == 1510 then
    return cboe_futures_orderentry_boe3_v1_1_20.purge_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected
  if message_type == 1511 then
    return cboe_futures_orderentry_boe3_v1_1_20.purge_rejected.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct
  if message_type == 1512 then
    return cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct Option
  if message_type == 1525 then
    return cboe_futures_orderentry_boe3_v1_1_20.trade_cancel_correct_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tas Restatement
  if message_type == 1513 then
    return cboe_futures_orderentry_boe3_v1_1_20.tas_restatement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Acknowledgement
  if message_type == 1515 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Rejected
  if message_type == 1516 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_update_rejected.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Restated
  if message_type == 1517 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_restated.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution
  if message_type == 1518 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_execution.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancelled
  if message_type == 1519 then
    return cboe_futures_orderentry_boe3_v1_1_20.quote_cancelled.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tas Quote Restatement
  if message_type == 1520 then
    return cboe_futures_orderentry_boe3_v1_1_20.tas_quote_restatement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Acknowledgement
  if message_type == 1522 then
    return cboe_futures_orderentry_boe3_v1_1_20.reset_risk_acknowledgement.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Accepted Option
  if message_type == 1526 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_accepted_option.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Rejected Option
  if message_type == 1527 then
    return cboe_futures_orderentry_boe3_v1_1_20.new_complex_instrument_rejected_option.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message
cboe_futures_orderentry_boe3_v1_1_20.message.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.message then
    return cboe_futures_orderentry_boe3_v1_1_20.message.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_futures_orderentry_boe3_v1_1_20.message.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_futures_orderentry_boe3_v1_1_20.message.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.message, range, display)

  return cboe_futures_orderentry_boe3_v1_1_20.message.branches(buffer, offset, packet, parent, message_type)
end

-- Reserved Field
cboe_futures_orderentry_boe3_v1_1_20.reserved_field = {}

-- Size: Reserved Field
cboe_futures_orderentry_boe3_v1_1_20.reserved_field.size = 1

-- Display: Reserved Field
cboe_futures_orderentry_boe3_v1_1_20.reserved_field.display = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_futures_orderentry_boe3_v1_1_20.reserved_field.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.reserved_field.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.reserved_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_futures_orderentry_boe3_v1_1_20.matching_unit = {}

-- Size: Matching Unit
cboe_futures_orderentry_boe3_v1_1_20.matching_unit.size = 1

-- Display: Matching Unit
cboe_futures_orderentry_boe3_v1_1_20.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_futures_orderentry_boe3_v1_1_20.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_futures_orderentry_boe3_v1_1_20.message_type = {}

-- Size: Message Type
cboe_futures_orderentry_boe3_v1_1_20.message_type.size = 2

-- Display: Message Type
cboe_futures_orderentry_boe3_v1_1_20.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Login Request Message (1)"
  end
  if value == 2 then
    return "Message Type: Logout Request Message (2)"
  end
  if value == 3 then
    return "Message Type: Client Heartbeat Message (3)"
  end
  if value == 501 then
    return "Message Type: Login Response Message (501)"
  end
  if value == 502 then
    return "Message Type: Replay Complete Message (502)"
  end
  if value == 503 then
    return "Message Type: Logout Response Message (503)"
  end
  if value == 504 then
    return "Message Type: Replay Complete Message (504)"
  end
  if value == 1008 then
    return "Message Type: New Order (1008)"
  end
  if value == 1009 then
    return "Message Type: New Order Option (1009)"
  end
  if value == 1002 then
    return "Message Type: Modify Order (1002)"
  end
  if value == 1003 then
    return "Message Type: Cancel Order (1003)"
  end
  if value == 1004 then
    return "Message Type: Mass Cancel Order (1004)"
  end
  if value == 1005 then
    return "Message Type: Purge Orders (1005)"
  end
  if value == 1006 then
    return "Message Type: Quote Update (1006)"
  end
  if value == 1010 then
    return "Message Type: Quote Update Option (1010)"
  end
  if value == 1007 then
    return "Message Type: Reset Risk (1007)"
  end
  if value == 1011 then
    return "Message Type: New Complex Instrument Option (1011)"
  end
  if value == 1501 then
    return "Message Type: Order Acknowledgement (1501)"
  end
  if value == 1523 then
    return "Message Type: Order Acknowledgement Option (1523)"
  end
  if value == 1502 then
    return "Message Type: Order Rejected (1502)"
  end
  if value == 1503 then
    return "Message Type: Order Modified (1503)"
  end
  if value == 1504 then
    return "Message Type: Modify Rejected (1504)"
  end
  if value == 1505 then
    return "Message Type: Order Execution (1505)"
  end
  if value == 1524 then
    return "Message Type: Order Execution Option (1524)"
  end
  if value == 1506 then
    return "Message Type: Order Cancelled (1506)"
  end
  if value == 1507 then
    return "Message Type: Cancel Rejected (1507)"
  end
  if value == 1508 then
    return "Message Type: Mass Cancel Acknowledgement (1508)"
  end
  if value == 1509 then
    return "Message Type: Mass Cancel Rejected (1509)"
  end
  if value == 1510 then
    return "Message Type: Purge Acknowledgement (1510)"
  end
  if value == 1511 then
    return "Message Type: Purge Rejected (1511)"
  end
  if value == 1512 then
    return "Message Type: Trade Cancel Correct (1512)"
  end
  if value == 1525 then
    return "Message Type: Trade Cancel Correct Option (1525)"
  end
  if value == 1513 then
    return "Message Type: Tas Restatement (1513)"
  end
  if value == 1515 then
    return "Message Type: Quote Update Acknowledgement (1515)"
  end
  if value == 1516 then
    return "Message Type: Quote Update Rejected (1516)"
  end
  if value == 1517 then
    return "Message Type: Quote Restated (1517)"
  end
  if value == 1518 then
    return "Message Type: Quote Execution (1518)"
  end
  if value == 1519 then
    return "Message Type: Quote Cancelled (1519)"
  end
  if value == 1520 then
    return "Message Type: Tas Quote Restatement (1520)"
  end
  if value == 1522 then
    return "Message Type: Reset Risk Acknowledgement (1522)"
  end
  if value == 1526 then
    return "Message Type: New Complex Instrument Accepted Option (1526)"
  end
  if value == 1527 then
    return "Message Type: New Complex Instrument Rejected Option (1527)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_futures_orderentry_boe3_v1_1_20.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_futures_orderentry_boe3_v1_1_20.message_length = {}

-- Size: Message Length
cboe_futures_orderentry_boe3_v1_1_20.message_length.size = 2

-- Display: Message Length
cboe_futures_orderentry_boe3_v1_1_20.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_futures_orderentry_boe3_v1_1_20.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.message_length, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_futures_orderentry_boe3_v1_1_20.start_of_message = {}

-- Size: Start Of Message
cboe_futures_orderentry_boe3_v1_1_20.start_of_message.size = 2

-- Display: Start Of Message
cboe_futures_orderentry_boe3_v1_1_20.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_futures_orderentry_boe3_v1_1_20.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_20.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_20.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_futures_orderentry_boe3_v1_1_20.message_header = {}

-- Calculate size of: Message Header
cboe_futures_orderentry_boe3_v1_1_20.message_header.size = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_20.start_of_message.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.message_length.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.message_type.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.matching_unit.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.reserved_field.size

  index = index + cboe_futures_orderentry_boe3_v1_1_20.sequence_number.size

  return index
end

-- Display: Message Header
cboe_futures_orderentry_boe3_v1_1_20.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_futures_orderentry_boe3_v1_1_20.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_futures_orderentry_boe3_v1_1_20.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_futures_orderentry_boe3_v1_1_20.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 42 values
  index, message_type = cboe_futures_orderentry_boe3_v1_1_20.message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_futures_orderentry_boe3_v1_1_20.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_futures_orderentry_boe3_v1_1_20.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_futures_orderentry_boe3_v1_1_20.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_futures_orderentry_boe3_v1_1_20.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20.fields.message_header, buffer(offset, 0))
    local index = cboe_futures_orderentry_boe3_v1_1_20.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_futures_orderentry_boe3_v1_1_20.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_futures_orderentry_boe3_v1_1_20.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_futures_orderentry_boe3_v1_1_20.packet = {}

-- Dissect Packet
cboe_futures_orderentry_boe3_v1_1_20.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 6 fields
  index, message_header = cboe_futures_orderentry_boe3_v1_1_20.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 8, 2):le_uint()

  -- Message: Runtime Type with 42 branches
  index = cboe_futures_orderentry_boe3_v1_1_20.message.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_futures_orderentry_boe3_v1_1_20.init()
end

-- Dissector for Cboe Futures OrderEntry Boe3 1.1.20
function omi_cboe_futures_orderentry_boe3_v1_1_20.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_futures_orderentry_boe3_v1_1_20.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_futures_orderentry_boe3_v1_1_20, buffer(), omi_cboe_futures_orderentry_boe3_v1_1_20.description, "("..buffer:len().." Bytes)")
  return cboe_futures_orderentry_boe3_v1_1_20.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_cboe_futures_orderentry_boe3_v1_1_20)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_futures_orderentry_boe3_v1_1_20.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Futures OrderEntry Boe3 1.1.20
local function omi_cboe_futures_orderentry_boe3_v1_1_20_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_futures_orderentry_boe3_v1_1_20.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_futures_orderentry_boe3_v1_1_20
  omi_cboe_futures_orderentry_boe3_v1_1_20.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Futures OrderEntry Boe3 1.1.20
omi_cboe_futures_orderentry_boe3_v1_1_20:register_heuristic("tcp", omi_cboe_futures_orderentry_boe3_v1_1_20_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.20
--   Date: Thursday, January 23, 2025
--   Specification: CBOE_FUTURES_EXCHANGE_BOE3_SPECIFICATION.pdf
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
