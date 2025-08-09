-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe Futures OrderEntry Boe3 1.1.18 Protocol
local cboe_futures_orderentry_boe3_v1_1_18 = Proto("Cboe.Futures.OrderEntry.Boe3.v1.1.18.Lua", "Cboe Futures OrderEntry Boe3 1.1.18")

-- Component Tables
local show = {}
local format = {}
local cboe_futures_orderentry_boe3_v1_1_18_display = {}
local cboe_futures_orderentry_boe3_v1_1_18_dissect = {}
local cboe_futures_orderentry_boe3_v1_1_18_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe Futures OrderEntry Boe3 1.1.18 Fields
cboe_futures_orderentry_boe3_v1_1_18.fields.account = ProtoField.new("Account", "cboe.futures.orderentry.boe3.v1.1.18.account", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.acknowledgement_style = ProtoField.new("Acknowledgement Style", "cboe.futures.orderentry.boe3.v1.1.18.acknowledgementstyle", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.futures.orderentry.boe3.v1.1.18.baseliquidityindicator", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_order = ProtoField.new("Cancel Order", "cboe.futures.orderentry.boe3.v1.1.18.cancelorder", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.futures.orderentry.boe3.v1.1.18.cancelorigonreject", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.futures.orderentry.boe3.v1.1.18.cancelreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.futures.orderentry.boe3.v1.1.18.cancelrejectreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_rejected = ProtoField.new("Cancel Rejected", "cboe.futures.orderentry.boe3.v1.1.18.cancelrejected", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.futures.orderentry.boe3.v1.1.18.cancelledordercount", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.capacity = ProtoField.new("Capacity", "cboe.futures.orderentry.boe3.v1.1.18.capacity", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.futures.orderentry.boe3.v1.1.18.clordid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.futures.orderentry.boe3.v1.1.18.clearingaccount", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.futures.orderentry.boe3.v1.1.18.clearingfirm", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_firm_filter = ProtoField.new("Clearing Firm Filter", "cboe.futures.orderentry.boe3.v1.1.18.clearingfirmfilter", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_price = ProtoField.new("Clearing Price", "cboe.futures.orderentry.boe3.v1.1.18.clearingprice", ftypes.DOUBLE)
cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_size = ProtoField.new("Clearing Size", "cboe.futures.orderentry.boe3.v1.1.18.clearingsize", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_symbol = ProtoField.new("Clearing Symbol", "cboe.futures.orderentry.boe3.v1.1.18.clearingsymbol", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.futures.orderentry.boe3.v1.1.18.clientsequence", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.cmta_number = ProtoField.new("Cmta Number", "cboe.futures.orderentry.boe3.v1.1.18.cmtanumber", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.futures.orderentry.boe3.v1.1.18.correctedprice", ftypes.DOUBLE)
cboe_futures_orderentry_boe3_v1_1_18.fields.country_code = ProtoField.new("Country Code", "cboe.futures.orderentry.boe3.v1.1.18.countrycode", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cti_code = ProtoField.new("Cti Code", "cboe.futures.orderentry.boe3.v1.1.18.cticode", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.cust_order_handling_inst = ProtoField.new("Cust Order Handling Inst", "cboe.futures.orderentry.boe3.v1.1.18.custorderhandlinginst", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.custom_group_id = ProtoField.new("Custom Group Id", "cboe.futures.orderentry.boe3.v1.1.18.customgroupid", ftypes.UINT16)
cboe_futures_orderentry_boe3_v1_1_18.fields.custom_group_id_cnt = ProtoField.new("Custom Group Id Cnt", "cboe.futures.orderentry.boe3.v1.1.18.customgroupidcnt", ftypes.UINT8)
cboe_futures_orderentry_boe3_v1_1_18.fields.exec_id = ProtoField.new("Exec Id", "cboe.futures.orderentry.boe3.v1.1.18.execid", ftypes.UINT64)
cboe_futures_orderentry_boe3_v1_1_18.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.futures.orderentry.boe3.v1.1.18.execrefid", ftypes.UINT64)
cboe_futures_orderentry_boe3_v1_1_18.fields.expire_time = ProtoField.new("Expire Time", "cboe.futures.orderentry.boe3.v1.1.18.expiretime", ftypes.UINT64)
cboe_futures_orderentry_boe3_v1_1_18.fields.fee_code = ProtoField.new("Fee Code", "cboe.futures.orderentry.boe3.v1.1.18.feecode", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.frequent_trader_id = ProtoField.new("Frequent Trader Id", "cboe.futures.orderentry.boe3.v1.1.18.frequenttraderid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.gtc_order_filter = ProtoField.new("Gtc Order Filter", "cboe.futures.orderentry.boe3.v1.1.18.gtcorderfilter", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.instruction_details = ProtoField.new("Instruction Details", "cboe.futures.orderentry.boe3.v1.1.18.instructiondetails", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.instrument_type_filter = ProtoField.new("Instrument Type Filter", "cboe.futures.orderentry.boe3.v1.1.18.instrumenttypefilter", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.last_px = ProtoField.new("Last Px", "cboe.futures.orderentry.boe3.v1.1.18.lastpx", ftypes.DOUBLE)
cboe_futures_orderentry_boe3_v1_1_18.fields.last_shares = ProtoField.new("Last Shares", "cboe.futures.orderentry.boe3.v1.1.18.lastshares", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.futures.orderentry.boe3.v1.1.18.leavesqty", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.leg_cnt = ProtoField.new("Leg Cnt", "cboe.futures.orderentry.boe3.v1.1.18.legcnt", ftypes.UINT8)
cboe_futures_orderentry_boe3_v1_1_18.fields.leg_position_effect = ProtoField.new("Leg Position Effect", "cboe.futures.orderentry.boe3.v1.1.18.legpositioneffect", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "cboe.futures.orderentry.boe3.v1.1.18.legratioqty", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.leg_side = ProtoField.new("Leg Side", "cboe.futures.orderentry.boe3.v1.1.18.legside", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.leg_symbol = ProtoField.new("Leg Symbol", "cboe.futures.orderentry.boe3.v1.1.18.legsymbol", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.lockout_instruction = ProtoField.new("Lockout Instruction", "cboe.futures.orderentry.boe3.v1.1.18.lockoutinstruction", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.futures.orderentry.boe3.v1.1.18.loginrequestmessage", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.futures.orderentry.boe3.v1.1.18.loginresponsemessage", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.futures.orderentry.boe3.v1.1.18.loginresponsestatus", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.futures.orderentry.boe3.v1.1.18.loginresponsetext", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.futures.orderentry.boe3.v1.1.18.logoutreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.futures.orderentry.boe3.v1.1.18.logoutreasontext", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.futures.orderentry.boe3.v1.1.18.logoutresponsemessage", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.manual_order_indicator = ProtoField.new("Manual Order Indicator", "cboe.futures.orderentry.boe3.v1.1.18.manualorderindicator", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_acknowledgement = ProtoField.new("Mass Cancel Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.18.masscancelacknowledgement", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.futures.orderentry.boe3.v1.1.18.masscancelid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.futures.orderentry.boe3.v1.1.18.masscancelinst", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_order = ProtoField.new("Mass Cancel Order", "cboe.futures.orderentry.boe3.v1.1.18.masscancelorder", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "cboe.futures.orderentry.boe3.v1.1.18.masscancelrejectreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_rejected = ProtoField.new("Mass Cancel Rejected", "cboe.futures.orderentry.boe3.v1.1.18.masscancelrejected", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.futures.orderentry.boe3.v1.1.18.matchingunit", ftypes.UINT8)
cboe_futures_orderentry_boe3_v1_1_18.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.futures.orderentry.boe3.v1.1.18.maturitydate", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.message = ProtoField.new("Message", "cboe.futures.orderentry.boe3.v1.1.18.message", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.message_header = ProtoField.new("Message Header", "cboe.futures.orderentry.boe3.v1.1.18.messageheader", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.message_length = ProtoField.new("Message Length", "cboe.futures.orderentry.boe3.v1.1.18.messagelength", ftypes.UINT16)
cboe_futures_orderentry_boe3_v1_1_18.fields.message_type = ProtoField.new("Message Type", "cboe.futures.orderentry.boe3.v1.1.18.messagetype", ftypes.UINT16)
cboe_futures_orderentry_boe3_v1_1_18.fields.min_qty = ProtoField.new("Min Qty", "cboe.futures.orderentry.boe3.v1.1.18.minqty", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.modify_order = ProtoField.new("Modify Order", "cboe.futures.orderentry.boe3.v1.1.18.modifyorder", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.futures.orderentry.boe3.v1.1.18.modifyrejectreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.modify_rejected = ProtoField.new("Modify Rejected", "cboe.futures.orderentry.boe3.v1.1.18.modifyrejected", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.mtp_modifier = ProtoField.new("Mtp Modifier", "cboe.futures.orderentry.boe3.v1.1.18.mtpmodifier", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "cboe.futures.orderentry.boe3.v1.1.18.multilegreportingtype", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.new_complex_instrument_accepted_option = ProtoField.new("New Complex Instrument Accepted Option", "cboe.futures.orderentry.boe3.v1.1.18.newcomplexinstrumentacceptedoption", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.new_complex_instrument_option = ProtoField.new("New Complex Instrument Option", "cboe.futures.orderentry.boe3.v1.1.18.newcomplexinstrumentoption", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.new_complex_instrument_rejected_option = ProtoField.new("New Complex Instrument Rejected Option", "cboe.futures.orderentry.boe3.v1.1.18.newcomplexinstrumentrejectedoption", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.new_order = ProtoField.new("New Order", "cboe.futures.orderentry.boe3.v1.1.18.neworder", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.new_order_option = ProtoField.new("New Order Option", "cboe.futures.orderentry.boe3.v1.1.18.neworderoption", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.futures.orderentry.boe3.v1.1.18.numberofunits", ftypes.UINT8)
cboe_futures_orderentry_boe3_v1_1_18.fields.oeo_id = ProtoField.new("Oeo Id", "cboe.futures.orderentry.boe3.v1.1.18.oeoid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.open_close = ProtoField.new("Open Close", "cboe.futures.orderentry.boe3.v1.1.18.openclose", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.option_leg = ProtoField.new("Option Leg", "cboe.futures.orderentry.boe3.v1.1.18.optionleg", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.ord_type = ProtoField.new("Ord Type", "cboe.futures.orderentry.boe3.v1.1.18.ordtype", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_acknowledgement = ProtoField.new("Order Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.18.orderacknowledgement", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_acknowledgement_option = ProtoField.new("Order Acknowledgement Option", "cboe.futures.orderentry.boe3.v1.1.18.orderacknowledgementoption", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_cancelled = ProtoField.new("Order Cancelled", "cboe.futures.orderentry.boe3.v1.1.18.ordercancelled", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_execution = ProtoField.new("Order Execution", "cboe.futures.orderentry.boe3.v1.1.18.orderexecution", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_execution_option = ProtoField.new("Order Execution Option", "cboe.futures.orderentry.boe3.v1.1.18.orderexecutionoption", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_id = ProtoField.new("Order Id", "cboe.futures.orderentry.boe3.v1.1.18.orderid", ftypes.UINT64)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_modified = ProtoField.new("Order Modified", "cboe.futures.orderentry.boe3.v1.1.18.ordermodified", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_qty = ProtoField.new("Order Qty", "cboe.futures.orderentry.boe3.v1.1.18.orderqty", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.futures.orderentry.boe3.v1.1.18.orderrejectreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.order_rejected = ProtoField.new("Order Rejected", "cboe.futures.orderentry.boe3.v1.1.18.orderrejected", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.futures.orderentry.boe3.v1.1.18.origclordid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.orig_time = ProtoField.new("Orig Time", "cboe.futures.orderentry.boe3.v1.1.18.origtime", ftypes.UINT64)
cboe_futures_orderentry_boe3_v1_1_18.fields.packet = ProtoField.new("Packet", "cboe.futures.orderentry.boe3.v1.1.18.packet", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.password = ProtoField.new("Password", "cboe.futures.orderentry.boe3.v1.1.18.password", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.pending_status = ProtoField.new("Pending Status", "cboe.futures.orderentry.boe3.v1.1.18.pendingstatus", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.futures.orderentry.boe3.v1.1.18.preventmatch", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.price = ProtoField.new("Price", "cboe.futures.orderentry.boe3.v1.1.18.price", ftypes.DOUBLE)
cboe_futures_orderentry_boe3_v1_1_18.fields.product_name = ProtoField.new("Product Name", "cboe.futures.orderentry.boe3.v1.1.18.productname", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.purge_acknowledgement = ProtoField.new("Purge Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.18.purgeacknowledgement", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.purge_orders = ProtoField.new("Purge Orders", "cboe.futures.orderentry.boe3.v1.1.18.purgeorders", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.futures.orderentry.boe3.v1.1.18.purgerejectreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.purge_rejected = ProtoField.new("Purge Rejected", "cboe.futures.orderentry.boe3.v1.1.18.purgerejected", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_cancelled = ProtoField.new("Quote Cancelled", "cboe.futures.orderentry.boe3.v1.1.18.quotecancelled", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_cnt = ProtoField.new("Quote Cnt", "cboe.futures.orderentry.boe3.v1.1.18.quotecnt", ftypes.UINT8)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_execution = ProtoField.new("Quote Execution", "cboe.futures.orderentry.boe3.v1.1.18.quoteexecution", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cboe.futures.orderentry.boe3.v1.1.18.quoterejectreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_restated = ProtoField.new("Quote Restated", "cboe.futures.orderentry.boe3.v1.1.18.quoterestated", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_result = ProtoField.new("Quote Result", "cboe.futures.orderentry.boe3.v1.1.18.quoteresult", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_symbol = ProtoField.new("Quote Symbol", "cboe.futures.orderentry.boe3.v1.1.18.quotesymbol", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update = ProtoField.new("Quote Update", "cboe.futures.orderentry.boe3.v1.1.18.quoteupdate", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_acknowledgement = ProtoField.new("Quote Update Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.18.quoteupdateacknowledgement", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_acknowledgement_group = ProtoField.new("Quote Update Acknowledgement Group", "cboe.futures.orderentry.boe3.v1.1.18.quoteupdateacknowledgementgroup", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_group = ProtoField.new("Quote Update Group", "cboe.futures.orderentry.boe3.v1.1.18.quoteupdategroup", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_id = ProtoField.new("Quote Update Id", "cboe.futures.orderentry.boe3.v1.1.18.quoteupdateid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_option = ProtoField.new("Quote Update Option", "cboe.futures.orderentry.boe3.v1.1.18.quoteupdateoption", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_option_group = ProtoField.new("Quote Update Option Group", "cboe.futures.orderentry.boe3.v1.1.18.quoteupdateoptiongroup", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_rejected = ProtoField.new("Quote Update Rejected", "cboe.futures.orderentry.boe3.v1.1.18.quoteupdaterejected", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.replay_unspecified_unit = ProtoField.new("Replay Unspecified Unit", "cboe.futures.orderentry.boe3.v1.1.18.replayunspecifiedunit", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.request_received_time = ProtoField.new("Request Received Time", "cboe.futures.orderentry.boe3.v1.1.18.requestreceivedtime", ftypes.UINT64)
cboe_futures_orderentry_boe3_v1_1_18.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.futures.orderentry.boe3.v1.1.18.reservedfield", ftypes.UINT8)
cboe_futures_orderentry_boe3_v1_1_18.fields.reset_risk = ProtoField.new("Reset Risk", "cboe.futures.orderentry.boe3.v1.1.18.resetrisk", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.reset_risk_acknowledgement = ProtoField.new("Reset Risk Acknowledgement", "cboe.futures.orderentry.boe3.v1.1.18.resetriskacknowledgement", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.futures.orderentry.boe3.v1.1.18.restatementreason", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.futures.orderentry.boe3.v1.1.18.riskreset", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.risk_reset_result = ProtoField.new("Risk Reset Result", "cboe.futures.orderentry.boe3.v1.1.18.riskresetresult", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.risk_status_id = ProtoField.new("Risk Status Id", "cboe.futures.orderentry.boe3.v1.1.18.riskstatusid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "cboe.futures.orderentry.boe3.v1.1.18.secondaryexecid", ftypes.UINT64)
cboe_futures_orderentry_boe3_v1_1_18.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.futures.orderentry.boe3.v1.1.18.sequencenumber", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.session_id = ProtoField.new("Session Id", "cboe.futures.orderentry.boe3.v1.1.18.sessionid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.futures.orderentry.boe3.v1.1.18.sessionsubid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.side = ProtoField.new("Side", "cboe.futures.orderentry.boe3.v1.1.18.side", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.size_modifier = ProtoField.new("Size Modifier", "cboe.futures.orderentry.boe3.v1.1.18.sizemodifier", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.futures.orderentry.boe3.v1.1.18.startofmessage", ftypes.UINT16)
cboe_futures_orderentry_boe3_v1_1_18.fields.stop_px = ProtoField.new("Stop Px", "cboe.futures.orderentry.boe3.v1.1.18.stoppx", ftypes.DOUBLE)
cboe_futures_orderentry_boe3_v1_1_18.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.futures.orderentry.boe3.v1.1.18.subliquidityindicator", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.symbol = ProtoField.new("Symbol", "cboe.futures.orderentry.boe3.v1.1.18.symbol", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.tas_quote_restatement = ProtoField.new("Tas Quote Restatement", "cboe.futures.orderentry.boe3.v1.1.18.tasquoterestatement", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.tas_restatement = ProtoField.new("Tas Restatement", "cboe.futures.orderentry.boe3.v1.1.18.tasrestatement", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.text = ProtoField.new("Text", "cboe.futures.orderentry.boe3.v1.1.18.text", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.time_in_force = ProtoField.new("Time In Force", "cboe.futures.orderentry.boe3.v1.1.18.timeinforce", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.trade_cancel_correct = ProtoField.new("Trade Cancel Correct", "cboe.futures.orderentry.boe3.v1.1.18.tradecancelcorrect", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.trade_cancel_correct_option = ProtoField.new("Trade Cancel Correct Option", "cboe.futures.orderentry.boe3.v1.1.18.tradecancelcorrectoption", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.trade_date = ProtoField.new("Trade Date", "cboe.futures.orderentry.boe3.v1.1.18.tradedate", ftypes.UINT32)
cboe_futures_orderentry_boe3_v1_1_18.fields.trading_group_id = ProtoField.new("Trading Group Id", "cboe.futures.orderentry.boe3.v1.1.18.tradinggroupid", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.futures.orderentry.boe3.v1.1.18.transactiontime", ftypes.UINT64)
cboe_futures_orderentry_boe3_v1_1_18.fields.unique_id_level = ProtoField.new("Unique Id Level", "cboe.futures.orderentry.boe3.v1.1.18.uniqueidlevel", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.unit_number = ProtoField.new("Unit Number", "cboe.futures.orderentry.boe3.v1.1.18.unitnumber", ftypes.UINT8)
cboe_futures_orderentry_boe3_v1_1_18.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.futures.orderentry.boe3.v1.1.18.unitsequence", ftypes.STRING)
cboe_futures_orderentry_boe3_v1_1_18.fields.working_price = ProtoField.new("Working Price", "cboe.futures.orderentry.boe3.v1.1.18.workingprice", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe Futures OrderEntry Boe3 1.1.18 Element Dissection Options
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

-- Register Cboe Futures OrderEntry Boe3 1.1.18 Show Options
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_cancel_order = Pref.bool("Show Cancel Order", show.cancel_order, "Parse and add Cancel Order to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_cancel_rejected = Pref.bool("Show Cancel Rejected", show.cancel_rejected, "Parse and add Cancel Rejected to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_login_response_message = Pref.bool("Show Login Response Message", show.login_response_message, "Parse and add Login Response Message to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_logout_response_message = Pref.bool("Show Logout Response Message", show.logout_response_message, "Parse and add Logout Response Message to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_acknowledgement = Pref.bool("Show Mass Cancel Acknowledgement", show.mass_cancel_acknowledgement, "Parse and add Mass Cancel Acknowledgement to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_inst = Pref.bool("Show Mass Cancel Inst", show.mass_cancel_inst, "Parse and add Mass Cancel Inst to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_order = Pref.bool("Show Mass Cancel Order", show.mass_cancel_order, "Parse and add Mass Cancel Order to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_rejected = Pref.bool("Show Mass Cancel Rejected", show.mass_cancel_rejected, "Parse and add Mass Cancel Rejected to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_modify_order = Pref.bool("Show Modify Order", show.modify_order, "Parse and add Modify Order to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_modify_rejected = Pref.bool("Show Modify Rejected", show.modify_rejected, "Parse and add Modify Rejected to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_accepted_option = Pref.bool("Show New Complex Instrument Accepted Option", show.new_complex_instrument_accepted_option, "Parse and add New Complex Instrument Accepted Option to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_option = Pref.bool("Show New Complex Instrument Option", show.new_complex_instrument_option, "Parse and add New Complex Instrument Option to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_rejected_option = Pref.bool("Show New Complex Instrument Rejected Option", show.new_complex_instrument_rejected_option, "Parse and add New Complex Instrument Rejected Option to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_order = Pref.bool("Show New Order", show.new_order, "Parse and add New Order to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_order_option = Pref.bool("Show New Order Option", show.new_order_option, "Parse and add New Order Option to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_option_leg = Pref.bool("Show Option Leg", show.option_leg, "Parse and add Option Leg to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_acknowledgement = Pref.bool("Show Order Acknowledgement", show.order_acknowledgement, "Parse and add Order Acknowledgement to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_acknowledgement_option = Pref.bool("Show Order Acknowledgement Option", show.order_acknowledgement_option, "Parse and add Order Acknowledgement Option to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_cancelled = Pref.bool("Show Order Cancelled", show.order_cancelled, "Parse and add Order Cancelled to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_execution = Pref.bool("Show Order Execution", show.order_execution, "Parse and add Order Execution to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_execution_option = Pref.bool("Show Order Execution Option", show.order_execution_option, "Parse and add Order Execution Option to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_modified = Pref.bool("Show Order Modified", show.order_modified, "Parse and add Order Modified to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_rejected = Pref.bool("Show Order Rejected", show.order_rejected, "Parse and add Order Rejected to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_prevent_match = Pref.bool("Show Prevent Match", show.prevent_match, "Parse and add Prevent Match to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_acknowledgement = Pref.bool("Show Purge Acknowledgement", show.purge_acknowledgement, "Parse and add Purge Acknowledgement to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_orders = Pref.bool("Show Purge Orders", show.purge_orders, "Parse and add Purge Orders to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_rejected = Pref.bool("Show Purge Rejected", show.purge_rejected, "Parse and add Purge Rejected to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_cancelled = Pref.bool("Show Quote Cancelled", show.quote_cancelled, "Parse and add Quote Cancelled to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_execution = Pref.bool("Show Quote Execution", show.quote_execution, "Parse and add Quote Execution to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_restated = Pref.bool("Show Quote Restated", show.quote_restated, "Parse and add Quote Restated to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update = Pref.bool("Show Quote Update", show.quote_update, "Parse and add Quote Update to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_acknowledgement = Pref.bool("Show Quote Update Acknowledgement", show.quote_update_acknowledgement, "Parse and add Quote Update Acknowledgement to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_acknowledgement_group = Pref.bool("Show Quote Update Acknowledgement Group", show.quote_update_acknowledgement_group, "Parse and add Quote Update Acknowledgement Group to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_group = Pref.bool("Show Quote Update Group", show.quote_update_group, "Parse and add Quote Update Group to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_option = Pref.bool("Show Quote Update Option", show.quote_update_option, "Parse and add Quote Update Option to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_option_group = Pref.bool("Show Quote Update Option Group", show.quote_update_option_group, "Parse and add Quote Update Option Group to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_rejected = Pref.bool("Show Quote Update Rejected", show.quote_update_rejected, "Parse and add Quote Update Rejected to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_reset_risk = Pref.bool("Show Reset Risk", show.reset_risk, "Parse and add Reset Risk to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_reset_risk_acknowledgement = Pref.bool("Show Reset Risk Acknowledgement", show.reset_risk_acknowledgement, "Parse and add Reset Risk Acknowledgement to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_tas_quote_restatement = Pref.bool("Show Tas Quote Restatement", show.tas_quote_restatement, "Parse and add Tas Quote Restatement to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_tas_restatement = Pref.bool("Show Tas Restatement", show.tas_restatement, "Parse and add Tas Restatement to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_trade_cancel_correct = Pref.bool("Show Trade Cancel Correct", show.trade_cancel_correct, "Parse and add Trade Cancel Correct to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_trade_cancel_correct_option = Pref.bool("Show Trade Cancel Correct Option", show.trade_cancel_correct_option, "Parse and add Trade Cancel Correct Option to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_unit_sequence = Pref.bool("Show Unit Sequence", show.unit_sequence, "Parse and add Unit Sequence to protocol tree")
cboe_futures_orderentry_boe3_v1_1_18.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")

-- Handle changed preferences
function cboe_futures_orderentry_boe3_v1_1_18.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_order ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_cancel_order then
    show.cancel_order = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_cancel_order
    changed = true
  end
  if show.cancel_rejected ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_cancel_rejected then
    show.cancel_rejected = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_cancel_rejected
    changed = true
  end
  if show.login_request_message ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_login_request_message then
    show.login_request_message = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_login_request_message
    changed = true
  end
  if show.login_response_message ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_login_response_message then
    show.login_response_message = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_login_response_message
    changed = true
  end
  if show.logout_response_message ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_logout_response_message then
    show.logout_response_message = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_logout_response_message
    changed = true
  end
  if show.mass_cancel_acknowledgement ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_acknowledgement then
    show.mass_cancel_acknowledgement = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_acknowledgement
    changed = true
  end
  if show.mass_cancel_inst ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_inst then
    show.mass_cancel_inst = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_inst
    changed = true
  end
  if show.mass_cancel_order ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_order then
    show.mass_cancel_order = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_order
    changed = true
  end
  if show.mass_cancel_rejected ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_rejected then
    show.mass_cancel_rejected = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_mass_cancel_rejected
    changed = true
  end
  if show.message_header ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_message_header then
    show.message_header = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_message_header
    changed = true
  end
  if show.modify_order ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_modify_order then
    show.modify_order = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_modify_order
    changed = true
  end
  if show.modify_rejected ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_modify_rejected then
    show.modify_rejected = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_modify_rejected
    changed = true
  end
  if show.new_complex_instrument_accepted_option ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_accepted_option then
    show.new_complex_instrument_accepted_option = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_accepted_option
    changed = true
  end
  if show.new_complex_instrument_option ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_option then
    show.new_complex_instrument_option = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_option
    changed = true
  end
  if show.new_complex_instrument_rejected_option ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_rejected_option then
    show.new_complex_instrument_rejected_option = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_complex_instrument_rejected_option
    changed = true
  end
  if show.new_order ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_order then
    show.new_order = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_order
    changed = true
  end
  if show.new_order_option ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_order_option then
    show.new_order_option = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_new_order_option
    changed = true
  end
  if show.option_leg ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_option_leg then
    show.option_leg = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_option_leg
    changed = true
  end
  if show.order_acknowledgement ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_acknowledgement then
    show.order_acknowledgement = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_acknowledgement
    changed = true
  end
  if show.order_acknowledgement_option ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_acknowledgement_option then
    show.order_acknowledgement_option = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_acknowledgement_option
    changed = true
  end
  if show.order_cancelled ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_cancelled then
    show.order_cancelled = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_cancelled
    changed = true
  end
  if show.order_execution ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_execution then
    show.order_execution = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_execution
    changed = true
  end
  if show.order_execution_option ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_execution_option then
    show.order_execution_option = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_execution_option
    changed = true
  end
  if show.order_modified ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_modified then
    show.order_modified = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_modified
    changed = true
  end
  if show.order_rejected ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_rejected then
    show.order_rejected = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_order_rejected
    changed = true
  end
  if show.packet ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_packet then
    show.packet = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_packet
    changed = true
  end
  if show.prevent_match ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_prevent_match then
    show.prevent_match = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_prevent_match
    changed = true
  end
  if show.purge_acknowledgement ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_acknowledgement then
    show.purge_acknowledgement = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_acknowledgement
    changed = true
  end
  if show.purge_orders ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_orders then
    show.purge_orders = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_orders
    changed = true
  end
  if show.purge_rejected ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_rejected then
    show.purge_rejected = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_purge_rejected
    changed = true
  end
  if show.quote_cancelled ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_cancelled then
    show.quote_cancelled = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_cancelled
    changed = true
  end
  if show.quote_execution ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_execution then
    show.quote_execution = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_execution
    changed = true
  end
  if show.quote_restated ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_restated then
    show.quote_restated = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_restated
    changed = true
  end
  if show.quote_update ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update then
    show.quote_update = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update
    changed = true
  end
  if show.quote_update_acknowledgement ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_acknowledgement then
    show.quote_update_acknowledgement = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_acknowledgement
    changed = true
  end
  if show.quote_update_acknowledgement_group ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_acknowledgement_group then
    show.quote_update_acknowledgement_group = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_acknowledgement_group
    changed = true
  end
  if show.quote_update_group ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_group then
    show.quote_update_group = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_group
    changed = true
  end
  if show.quote_update_option ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_option then
    show.quote_update_option = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_option
    changed = true
  end
  if show.quote_update_option_group ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_option_group then
    show.quote_update_option_group = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_option_group
    changed = true
  end
  if show.quote_update_rejected ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_rejected then
    show.quote_update_rejected = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_quote_update_rejected
    changed = true
  end
  if show.reset_risk ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_reset_risk then
    show.reset_risk = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_reset_risk
    changed = true
  end
  if show.reset_risk_acknowledgement ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_reset_risk_acknowledgement then
    show.reset_risk_acknowledgement = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_reset_risk_acknowledgement
    changed = true
  end
  if show.tas_quote_restatement ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_tas_quote_restatement then
    show.tas_quote_restatement = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_tas_quote_restatement
    changed = true
  end
  if show.tas_restatement ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_tas_restatement then
    show.tas_restatement = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_tas_restatement
    changed = true
  end
  if show.trade_cancel_correct ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_trade_cancel_correct then
    show.trade_cancel_correct = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_trade_cancel_correct
    changed = true
  end
  if show.trade_cancel_correct_option ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_trade_cancel_correct_option then
    show.trade_cancel_correct_option = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_trade_cancel_correct_option
    changed = true
  end
  if show.unit_sequence ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_unit_sequence then
    show.unit_sequence = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_unit_sequence
    changed = true
  end
  if show.message ~= cboe_futures_orderentry_boe3_v1_1_18.prefs.show_message then
    show.message = cboe_futures_orderentry_boe3_v1_1_18.prefs.show_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe Futures OrderEntry Boe3 1.1.18
-----------------------------------------------------------------------

-- Size: Text
cboe_futures_orderentry_boe3_v1_1_18_size_of.text = 60

-- Display: Text
cboe_futures_orderentry_boe3_v1_1_18_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_futures_orderentry_boe3_v1_1_18_dissect.text = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.text(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.text, range, value, display)

  return offset + length, value
end

-- Size: Clearing Firm
cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm = 4

-- Display: Clearing Firm
cboe_futures_orderentry_boe3_v1_1_18_display.clearing_firm = function(value)
  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.clearing_firm(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Size: Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id = 20

-- Display: Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_18_display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Transaction Time
cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time = 8

-- Display: Transaction Time
cboe_futures_orderentry_boe3_v1_1_18_display.transaction_time = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.transaction_time(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_rejected_option = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.reject_reason

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.text

  return index
end

-- Display: New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_18_display.new_complex_instrument_rejected_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_rejected_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Reject Reason
  index, reject_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.reject_reason(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_18_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Instrument Rejected Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_rejected_option = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_complex_instrument_rejected_option then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_rejected_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.new_complex_instrument_rejected_option(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.new_complex_instrument_rejected_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_rejected_option_fields(buffer, offset, packet, parent)
end

-- Size: Leg Side
cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_side = 1

-- Display: Leg Side
cboe_futures_orderentry_boe3_v1_1_18_display.leg_side = function(value)
  if value == "1" then
    return "Leg Side: Buy (1)"
  end
  if value == "2" then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_ratio_qty = 4

-- Display: Leg Ratio Qty
cboe_futures_orderentry_boe3_v1_1_18_display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_symbol = 8

-- Display: Leg Symbol
cboe_futures_orderentry_boe3_v1_1_18_display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Leg
cboe_futures_orderentry_boe3_v1_1_18_size_of.option_leg = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_ratio_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_side

  return index
end

-- Display: Option Leg
cboe_futures_orderentry_boe3_v1_1_18_display.option_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Leg
cboe_futures_orderentry_boe3_v1_1_18_dissect.option_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol: Alphanumeric
  index, leg_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_symbol(buffer, index, packet, parent)

  -- Leg Ratio Qty: Binary
  index, leg_ratio_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Side: Text
  index, leg_side = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Leg
cboe_futures_orderentry_boe3_v1_1_18_dissect.option_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_leg then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.option_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.option_leg(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.option_leg, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.option_leg_fields(buffer, offset, packet, parent)
end

-- Size: Leg Cnt
cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_cnt = 1

-- Display: Leg Cnt
cboe_futures_orderentry_boe3_v1_1_18_display.leg_cnt = function(value)
  return "Leg Cnt: "..value
end

-- Dissect: Leg Cnt
cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_cnt = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_cnt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.leg_cnt(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.leg_cnt, range, value, display)

  return offset + length, value
end

-- Size: Symbol
cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol = 8

-- Display: Symbol
cboe_futures_orderentry_boe3_v1_1_18_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_accepted_option = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.no_of_complex_instruments

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_cnt

  -- Calculate field size from count
  local option_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + option_leg_count * 13

  return index
end

-- Display: New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_18_display.new_complex_instrument_accepted_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_accepted_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- No Of Complex Instruments
  index, no_of_complex_instruments = cboe_futures_orderentry_boe3_v1_1_18_dissect.no_of_complex_instruments(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_cnt(buffer, index, packet, parent)

  -- Option Leg: Struct of 3 fields
  for i = 1, leg_cnt do
    index = cboe_futures_orderentry_boe3_v1_1_18_dissect.option_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Complex Instrument Accepted Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_accepted_option = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_instrument_accepted_option then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_accepted_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.new_complex_instrument_accepted_option(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.new_complex_instrument_accepted_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_accepted_option_fields(buffer, offset, packet, parent)
end

-- Size: Request Received Time
cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time = 8

-- Display: Request Received Time
cboe_futures_orderentry_boe3_v1_1_18_display.request_received_time = function(value)
  return "Request Received Time: "..value
end

-- Dissect: Request Received Time
cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.request_received_time(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.request_received_time, range, value, display)

  return offset + length, value
end

-- Size: Risk Reset Result
cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_reset_result = 1

-- Display: Risk Reset Result
cboe_futures_orderentry_boe3_v1_1_18_display.risk_reset_result = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.risk_reset_result = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_reset_result
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.risk_reset_result(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.risk_reset_result, range, value, display)

  return offset + length, value
end

-- Size: Risk Status Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_status_id = 16

-- Display: Risk Status Id
cboe_futures_orderentry_boe3_v1_1_18_display.risk_status_id = function(value)
  return "Risk Status Id: "..value
end

-- Dissect: Risk Status Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.risk_status_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_status_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.risk_status_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.risk_status_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_size_of.reset_risk_acknowledgement = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_status_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_reset_result

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time

  return index
end

-- Display: Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_display.reset_risk_acknowledgement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.reset_risk_acknowledgement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.risk_status_id(buffer, index, packet, parent)

  -- Risk Reset Result: Text
  index, risk_reset_result = cboe_futures_orderentry_boe3_v1_1_18_dissect.risk_reset_result(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.reset_risk_acknowledgement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reset_risk_acknowledgement then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.reset_risk_acknowledgement(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.reset_risk_acknowledgement(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.reset_risk_acknowledgement, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.reset_risk_acknowledgement_fields(buffer, offset, packet, parent)
end

-- Size: Clearing Price
cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_price = 8

-- Display: Clearing Price
cboe_futures_orderentry_boe3_v1_1_18_display.clearing_price = function(value)
  return "Clearing Price: "..value
end

-- Translate: Clearing Price
translate.clearing_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Clearing Price
cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.clearing_price(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.clearing_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_price, range, value, display)

  return offset + length, value
end

-- Size: Clearing Symbol
cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_symbol = 8

-- Display: Clearing Symbol
cboe_futures_orderentry_boe3_v1_1_18_display.clearing_symbol = function(value)
  return "Clearing Symbol: "..value
end

-- Dissect: Clearing Symbol
cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_symbol = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.clearing_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_symbol, range, value, display)

  return offset + length, value
end

-- Size: Quote Symbol
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_symbol = 6

-- Display: Quote Symbol
cboe_futures_orderentry_boe3_v1_1_18_display.quote_symbol = function(value)
  return "Quote Symbol: "..value
end

-- Dissect: Quote Symbol
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_symbol = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_symbol, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_id = 8

-- Display: Exec Id
cboe_futures_orderentry_boe3_v1_1_18_display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Update Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id = 16

-- Display: Quote Update Id
cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_id = function(value)
  return "Quote Update Id: "..value
end

-- Dissect: Quote Update Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_18_size_of.tas_quote_restatement = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_price

  return index
end

-- Display: Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_18_display.tas_quote_restatement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_18_dissect.tas_quote_restatement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_id(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_symbol(buffer, index, packet, parent)

  -- Clearing Symbol: Alphanumeric
  index, clearing_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_symbol(buffer, index, packet, parent)

  -- Clearing Price: BinaryPrice
  index, clearing_price = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Tas Quote Restatement
cboe_futures_orderentry_boe3_v1_1_18_dissect.tas_quote_restatement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tas_quote_restatement then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.tas_quote_restatement(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.tas_quote_restatement(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.tas_quote_restatement, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.tas_quote_restatement_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_reason = 1

-- Display: Cancel Reason
cboe_futures_orderentry_boe3_v1_1_18_display.cancel_reason = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Size: Side
cboe_futures_orderentry_boe3_v1_1_18_size_of.side = 1

-- Display: Side
cboe_futures_orderentry_boe3_v1_1_18_display.side = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_futures_orderentry_boe3_v1_1_18_dissect.side = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.side(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id = 8

-- Display: Order Id
cboe_futures_orderentry_boe3_v1_1_18_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_cancelled = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_reason

  return index
end

-- Display: Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_18_display.quote_cancelled = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_cancelled_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_id(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_symbol(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancelled
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_cancelled = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_cancelled then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_cancelled(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_cancelled(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_cancelled, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_cancelled_fields(buffer, offset, packet, parent)
end

-- Size: Fee Code
cboe_futures_orderentry_boe3_v1_1_18_size_of.fee_code = 2

-- Display: Fee Code
cboe_futures_orderentry_boe3_v1_1_18_display.fee_code = function(value)
  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_futures_orderentry_boe3_v1_1_18_dissect.fee_code = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.fee_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.fee_code(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Size: Sub Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_18_size_of.sub_liquidity_indicator = 1

-- Display: Sub Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_18_display.sub_liquidity_indicator = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.sub_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.sub_liquidity_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.sub_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Base Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator = 1

-- Display: Base Liquidity Indicator
cboe_futures_orderentry_boe3_v1_1_18_display.base_liquidity_indicator = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.base_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty = 4

-- Display: Leaves Qty
cboe_futures_orderentry_boe3_v1_1_18_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_futures_orderentry_boe3_v1_1_18_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Last Px
cboe_futures_orderentry_boe3_v1_1_18_size_of.last_px = 8

-- Display: Last Px
cboe_futures_orderentry_boe3_v1_1_18_display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_futures_orderentry_boe3_v1_1_18_dissect.last_px = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_px(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.last_px(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Last Shares
cboe_futures_orderentry_boe3_v1_1_18_size_of.last_shares = 4

-- Display: Last Shares
cboe_futures_orderentry_boe3_v1_1_18_display.last_shares = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_futures_orderentry_boe3_v1_1_18_dissect.last_shares = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.last_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.last_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Execution
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_execution = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_shares

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.sub_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.fee_code

  return index
end

-- Display: Quote Execution
cboe_futures_orderentry_boe3_v1_1_18_display.quote_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Execution
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_execution_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_id(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_id(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_symbol(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.leaves_qty(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.fee_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Execution
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_execution = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_execution then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_execution(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_execution(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_execution, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_execution_fields(buffer, offset, packet, parent)
end

-- Size: Restatement Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.restatement_reason = 1

-- Display: Restatement Reason
cboe_futures_orderentry_boe3_v1_1_18_display.restatement_reason = function(value)
  if value == "Q" then
    return "Restatement Reason: Liquidity (Q)"
  end
  if value == "W" then
    return "Restatement Reason: Wash (W)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_futures_orderentry_boe3_v1_1_18_dissect.restatement_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.restatement_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.restatement_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Size: Working Price
cboe_futures_orderentry_boe3_v1_1_18_size_of.working_price = 8

-- Display: Working Price
cboe_futures_orderentry_boe3_v1_1_18_display.working_price = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
translate.working_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_futures_orderentry_boe3_v1_1_18_dissect.working_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.working_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.working_price(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.working_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.working_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Restated
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_restated = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.working_price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.restatement_reason

  return index
end

-- Display: Quote Restated
cboe_futures_orderentry_boe3_v1_1_18_display.quote_restated = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Restated
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_restated_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_id(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.leaves_qty(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_futures_orderentry_boe3_v1_1_18_dissect.working_price(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_symbol(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Restatement Reason: Text
  index, restatement_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.restatement_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Restated
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_restated = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_restated then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_restated(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_restated(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_restated, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_restated_fields(buffer, offset, packet, parent)
end

-- Size: Quote Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_reject_reason = 1

-- Display: Quote Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_display.quote_reject_reason = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_rejected = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_reject_reason

  return index
end

-- Display: Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_rejected = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_rejected_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id(buffer, index, packet, parent)

  -- Quote Reject Reason: Text
  index, quote_reject_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_rejected = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_update_rejected then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_rejected(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_rejected(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_rejected, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_rejected_fields(buffer, offset, packet, parent)
end

-- Size: Quote Result
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_result = 1

-- Display: Quote Result
cboe_futures_orderentry_boe3_v1_1_18_display.quote_result = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_result = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_result
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_result(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_result, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_acknowledgement_group = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_result

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.sub_liquidity_indicator

  return index
end

-- Display: Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_acknowledgement_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_acknowledgement_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_id(buffer, index, packet, parent)

  -- Quote Result: Text
  index, quote_result = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_result(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Acknowledgement Group
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_acknowledgement_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_update_acknowledgement_group then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_acknowledgement_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_acknowledgement_group(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_acknowledgement_group, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_acknowledgement_group_fields(buffer, offset, packet, parent)
end

-- Size: Quote Cnt
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_cnt = 1

-- Display: Quote Cnt
cboe_futures_orderentry_boe3_v1_1_18_display.quote_cnt = function(value)
  return "Quote Cnt: "..value
end

-- Dissect: Quote Cnt
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_cnt = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_cnt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_cnt(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_cnt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_acknowledgement = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_cnt

  -- Calculate field size from count
  local quote_update_acknowledgement_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_update_acknowledgement_group_count * 10

  return index
end

-- Display: Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_acknowledgement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_acknowledgement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_cnt(buffer, index, packet, parent)

  -- Quote Update Acknowledgement Group: Struct of 3 fields
  for i = 1, quote_cnt do
    index = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_acknowledgement_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Update Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_acknowledgement = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_acknowledgement then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_acknowledgement(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_acknowledgement(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_acknowledgement, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_acknowledgement_fields(buffer, offset, packet, parent)
end

-- Size: Secondary Exec Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.secondary_exec_id = 8

-- Display: Secondary Exec Id
cboe_futures_orderentry_boe3_v1_1_18_display.secondary_exec_id = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.secondary_exec_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.secondary_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.secondary_exec_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Multileg Reporting Type
cboe_futures_orderentry_boe3_v1_1_18_size_of.multileg_reporting_type = 1

-- Display: Multileg Reporting Type
cboe_futures_orderentry_boe3_v1_1_18_display.multileg_reporting_type = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.multileg_reporting_type = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.multileg_reporting_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.multileg_reporting_type(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_date = 4

-- Display: Trade Date
cboe_futures_orderentry_boe3_v1_1_18_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
cboe_futures_orderentry_boe3_v1_1_18_size_of.maturity_date = 4

-- Display: Maturity Date
cboe_futures_orderentry_boe3_v1_1_18_display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cboe_futures_orderentry_boe3_v1_1_18_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Price
cboe_futures_orderentry_boe3_v1_1_18_size_of.price = 8

-- Display: Price
cboe_futures_orderentry_boe3_v1_1_18_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_futures_orderentry_boe3_v1_1_18_dissect.price = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.price(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tas Restatement
cboe_futures_orderentry_boe3_v1_1_18_size_of.tas_restatement = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.maturity_date

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_shares

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.fee_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_date

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.multileg_reporting_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.secondary_exec_id

  return index
end

-- Display: Tas Restatement
cboe_futures_orderentry_boe3_v1_1_18_display.tas_restatement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tas Restatement
cboe_futures_orderentry_boe3_v1_1_18_dissect.tas_restatement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_id(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_18_dissect.maturity_date(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_px(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.fee_code(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_date(buffer, index, packet, parent)

  -- Clearing Price: BinaryPrice
  index, clearing_price = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_price(buffer, index, packet, parent)

  -- Clearing Symbol: Alphanumeric
  index, clearing_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_symbol(buffer, index, packet, parent)

  -- Multileg Reporting Type: Text
  index, multileg_reporting_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.multileg_reporting_type(buffer, index, packet, parent)

  -- Secondary Exec Id: Binary
  index, secondary_exec_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.secondary_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Tas Restatement
cboe_futures_orderentry_boe3_v1_1_18_dissect.tas_restatement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tas_restatement then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.tas_restatement(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.tas_restatement(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.tas_restatement, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.tas_restatement_fields(buffer, offset, packet, parent)
end

-- Size: Cmta Number
cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number = 4

-- Display: Cmta Number
cboe_futures_orderentry_boe3_v1_1_18_display.cmta_number = function(value)
  return "Cmta Number: "..value
end

-- Dissect: Cmta Number
cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.cmta_number(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cmta_number, range, value, display)

  return offset + length, value
end

-- Size: Open Close
cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close = 1

-- Display: Open Close
cboe_futures_orderentry_boe3_v1_1_18_display.open_close = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.open_close(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.open_close, range, value, display)

  return offset + length, value
end

-- Size: Capacity
cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity = 1

-- Display: Capacity
cboe_futures_orderentry_boe3_v1_1_18_display.capacity = function(value)
  if value == "C" then
    return "Capacity: Customer (C)"
  end
  if value == "F" then
    return "Capacity: Firm (F)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.capacity(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.capacity, range, value, display)

  return offset + length, value
end

-- Size: Orig Time
cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_time = 8

-- Display: Orig Time
cboe_futures_orderentry_boe3_v1_1_18_display.orig_time = function(value)
  return "Orig Time: "..value
end

-- Dissect: Orig Time
cboe_futures_orderentry_boe3_v1_1_18_dissect.orig_time = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.orig_time(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Size: Corrected Price
cboe_futures_orderentry_boe3_v1_1_18_size_of.corrected_price = 8

-- Display: Corrected Price
cboe_futures_orderentry_boe3_v1_1_18_display.corrected_price = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
translate.corrected_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_futures_orderentry_boe3_v1_1_18_dissect.corrected_price = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.corrected_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.corrected_price(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.corrected_price(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Size: Clearing Account
cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account = 4

-- Display: Clearing Account
cboe_futures_orderentry_boe3_v1_1_18_display.clearing_account = function(value)
  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.clearing_account(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Size: Exec Ref Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_ref_id = 8

-- Display: Exec Ref Id
cboe_futures_orderentry_boe3_v1_1_18_display.exec_ref_id = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_ref_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.exec_ref_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_cancel_correct_option = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_ref_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_shares

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.corrected_price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.security_desc

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number

  return index
end

-- Display: Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_18_display.trade_cancel_correct_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_cancel_correct_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_ref_id(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_px(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_futures_orderentry_boe3_v1_1_18_dissect.corrected_price(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.orig_time(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity(buffer, index, packet, parent)

  -- Security Desc
  index, security_desc = cboe_futures_orderentry_boe3_v1_1_18_dissect.security_desc(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_cancel_correct_option = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_correct_option then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_cancel_correct_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.trade_cancel_correct_option(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.trade_cancel_correct_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_cancel_correct_option_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_cancel_correct = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_ref_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_shares

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.corrected_price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.maturity_date

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number

  return index
end

-- Display: Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_18_display.trade_cancel_correct = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_cancel_correct_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_ref_id(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_px(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_futures_orderentry_boe3_v1_1_18_dissect.corrected_price(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.orig_time(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_18_dissect.maturity_date(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct
cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_cancel_correct = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_correct then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_cancel_correct(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.trade_cancel_correct(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.trade_cancel_correct, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_cancel_correct_fields(buffer, offset, packet, parent)
end

-- Size: Purge Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_reject_reason = 1

-- Display: Purge Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_display.purge_reject_reason = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.purge_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Mass Cancel Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_id = 20

-- Display: Mass Cancel Id
cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_id = function(value)
  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Purge Rejected
cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_rejected = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_reject_reason

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.text

  return index
end

-- Display: Purge Rejected
cboe_futures_orderentry_boe3_v1_1_18_display.purge_rejected = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Purge Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_rejected_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_reject_reason(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_18_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_rejected = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.purge_rejected then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_rejected(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.purge_rejected(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.purge_rejected, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_rejected_fields(buffer, offset, packet, parent)
end

-- Size: Cancelled Order Count
cboe_futures_orderentry_boe3_v1_1_18_size_of.cancelled_order_count = 4

-- Display: Cancelled Order Count
cboe_futures_orderentry_boe3_v1_1_18_display.cancelled_order_count = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_futures_orderentry_boe3_v1_1_18_dissect.cancelled_order_count = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cancelled_order_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.cancelled_order_count(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Calculate size of: Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_acknowledgement = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cancelled_order_count

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time

  return index
end

-- Display: Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_display.purge_acknowledgement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_acknowledgement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_futures_orderentry_boe3_v1_1_18_dissect.cancelled_order_count(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_acknowledgement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.purge_acknowledgement then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_acknowledgement(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.purge_acknowledgement(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.purge_acknowledgement, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_acknowledgement_fields(buffer, offset, packet, parent)
end

-- Size: Mass Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_reject_reason = 1

-- Display: Mass Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_reject_reason = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_rejected = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_reject_reason

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.text

  return index
end

-- Display: Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_rejected = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_rejected_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: Text
  index, mass_cancel_reject_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_reject_reason(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_18_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_rejected = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_rejected then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_rejected(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_rejected(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_rejected, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_rejected_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_acknowledgement = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cancelled_order_count

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time

  return index
end

-- Display: Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_acknowledgement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_acknowledgement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_futures_orderentry_boe3_v1_1_18_dissect.cancelled_order_count(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_acknowledgement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_acknowledgement then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_acknowledgement(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_acknowledgement(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_acknowledgement, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_acknowledgement_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_reject_reason = 1

-- Display: Cancel Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_display.cancel_reject_reason = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.cancel_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_rejected = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_reject_reason

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.text

  return index
end

-- Display: Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_18_display.cancel_rejected = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_rejected_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_reject_reason(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_18_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_rejected = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_rejected then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_rejected(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.cancel_rejected(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_rejected, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_rejected_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancelled
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_cancelled = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_reason

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time

  return index
end

-- Display: Order Cancelled
cboe_futures_orderentry_boe3_v1_1_18_display.order_cancelled = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_cancelled_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_reason(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_cancelled = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_cancelled(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_cancelled(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_cancelled, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_cancelled_fields(buffer, offset, packet, parent)
end

-- Size: Pending Status
cboe_futures_orderentry_boe3_v1_1_18_size_of.pending_status = 1

-- Display: Pending Status
cboe_futures_orderentry_boe3_v1_1_18_display.pending_status = function(value)
  if value == "N" then
    return "Pending Status: Not Applicable (N)"
  end
  if value == "P" then
    return "Pending Status: Pending (P)"
  end

  return "Pending Status: Unknown("..value..")"
end

-- Dissect: Pending Status
cboe_futures_orderentry_boe3_v1_1_18_dissect.pending_status = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.pending_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.pending_status(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.pending_status, range, value, display)

  return offset + length, value
end

-- Size: Clearing Size
cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_size = 4

-- Display: Clearing Size
cboe_futures_orderentry_boe3_v1_1_18_display.clearing_size = function(value)
  return "Clearing Size: "..value
end

-- Dissect: Clearing Size
cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_size = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.clearing_size(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Execution Option
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_execution_option = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_shares

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.sub_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.security_desc

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.fee_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_date

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_size

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.pending_status

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.multileg_reporting_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.secondary_exec_id

  return index
end

-- Display: Order Execution Option
cboe_futures_orderentry_boe3_v1_1_18_display.order_execution_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Execution Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_execution_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_id(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.leaves_qty(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Security Desc
  index, security_desc = cboe_futures_orderentry_boe3_v1_1_18_dissect.security_desc(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.fee_code(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_date(buffer, index, packet, parent)

  -- Clearing Size: Binary
  index, clearing_size = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_size(buffer, index, packet, parent)

  -- Pending Status: Text
  index, pending_status = cboe_futures_orderentry_boe3_v1_1_18_dissect.pending_status(buffer, index, packet, parent)

  -- Multileg Reporting Type: Text
  index, multileg_reporting_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.multileg_reporting_type(buffer, index, packet, parent)

  -- Secondary Exec Id: Binary
  index, secondary_exec_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.secondary_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_execution_option = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_execution_option then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_execution_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_execution_option(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_execution_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_execution_option_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Execution
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_execution = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.exec_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_shares

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.last_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.sub_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.maturity_date

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.fee_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_date

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_size

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.pending_status

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.multileg_reporting_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.secondary_exec_id

  return index
end

-- Display: Order Execution
cboe_futures_orderentry_boe3_v1_1_18_display.order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Execution
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_execution_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.exec_id(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.leaves_qty(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_18_dissect.maturity_date(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.fee_code(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_date(buffer, index, packet, parent)

  -- Clearing Size: Binary
  index, clearing_size = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_size(buffer, index, packet, parent)

  -- Pending Status: Text
  index, pending_status = cboe_futures_orderentry_boe3_v1_1_18_dissect.pending_status(buffer, index, packet, parent)

  -- Multileg Reporting Type: Text
  index, multileg_reporting_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.multileg_reporting_type(buffer, index, packet, parent)

  -- Secondary Exec Id: Binary
  index, secondary_exec_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.secondary_exec_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_execution = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_execution then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_execution(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_execution(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_execution, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_execution_fields(buffer, offset, packet, parent)
end

-- Size: Modify Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_reject_reason = 1

-- Display: Modify Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_display.modify_reject_reason = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.modify_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Orig Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_cl_ord_id = 20

-- Display: Orig Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_18_display.orig_cl_ord_id = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Rejected
cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_rejected = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_reject_reason

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.text

  return index
end

-- Display: Modify Rejected
cboe_futures_orderentry_boe3_v1_1_18_display.modify_rejected = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_rejected_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_reject_reason(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_18_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_rejected = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_rejected then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_rejected(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.modify_rejected(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.modify_rejected, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_rejected_fields(buffer, offset, packet, parent)
end

-- Size: Cust Order Handling Inst
cboe_futures_orderentry_boe3_v1_1_18_size_of.cust_order_handling_inst = 1

-- Display: Cust Order Handling Inst
cboe_futures_orderentry_boe3_v1_1_18_display.cust_order_handling_inst = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.cust_order_handling_inst = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cust_order_handling_inst
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.cust_order_handling_inst(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cust_order_handling_inst, range, value, display)

  return offset + length, value
end

-- Size: Frequent Trader Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.frequent_trader_id = 6

-- Display: Frequent Trader Id
cboe_futures_orderentry_boe3_v1_1_18_display.frequent_trader_id = function(value)
  return "Frequent Trader Id: "..value
end

-- Dissect: Frequent Trader Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.frequent_trader_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.frequent_trader_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.frequent_trader_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.frequent_trader_id, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
cboe_futures_orderentry_boe3_v1_1_18_size_of.stop_px = 99

-- Display: Stop Px
cboe_futures_orderentry_boe3_v1_1_18_display.stop_px = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
translate.stop_px = function(raw)
  return raw/10000
end

-- Dissect: Stop Px
cboe_futures_orderentry_boe3_v1_1_18_dissect.stop_px = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.stop_px
  local range = buffer(offset, length)
  local raw = range:bytes():tohex(false, " ")
  local value = translate.stop_px(raw)
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.stop_px(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty = 4

-- Display: Order Qty
cboe_futures_orderentry_boe3_v1_1_18_display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
cboe_futures_orderentry_boe3_v1_1_18_size_of.ord_type = 1

-- Display: Ord Type
cboe_futures_orderentry_boe3_v1_1_18_display.ord_type = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.ord_type = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.ord_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.ord_type(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modified
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_modified = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.ord_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.stop_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.frequent_trader_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cust_order_handling_inst

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time

  return index
end

-- Display: Order Modified
cboe_futures_orderentry_boe3_v1_1_18_display.order_modified = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modified
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_modified_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.ord_type(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.leaves_qty(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.stop_px(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_18_dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_modified = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modified then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_modified(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_modified(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_modified, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_modified_fields(buffer, offset, packet, parent)
end

-- Size: Order Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_reject_reason = 1

-- Display: Order Reject Reason
cboe_futures_orderentry_boe3_v1_1_18_display.order_reject_reason = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Rejected
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_rejected = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_reject_reason

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.text

  return index
end

-- Display: Order Rejected
cboe_futures_orderentry_boe3_v1_1_18_display.order_rejected = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_rejected_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_reject_reason(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_futures_orderentry_boe3_v1_1_18_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_rejected = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_rejected then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_rejected(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_rejected(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_rejected, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_rejected_fields(buffer, offset, packet, parent)
end

-- Size: Leg Position Effect
cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_position_effect = 1

-- Display: Leg Position Effect
cboe_futures_orderentry_boe3_v1_1_18_display.leg_position_effect = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_position_effect = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_position_effect
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.leg_position_effect(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.leg_position_effect, range, value, display)

  return offset + length, value
end

-- Size: Country Code
cboe_futures_orderentry_boe3_v1_1_18_size_of.country_code = 2

-- Display: Country Code
cboe_futures_orderentry_boe3_v1_1_18_display.country_code = function(value)
  return "Country Code: "..value
end

-- Dissect: Country Code
cboe_futures_orderentry_boe3_v1_1_18_dissect.country_code = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.country_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.country_code(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.country_code, range, value, display)

  return offset + length, value
end

-- Size: Oeo Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id = 18

-- Display: Oeo Id
cboe_futures_orderentry_boe3_v1_1_18_display.oeo_id = function(value)
  return "Oeo Id: "..value
end

-- Dissect: Oeo Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.oeo_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.oeo_id, range, value, display)

  return offset + length, value
end

-- Size: Manual Order Indicator
cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator = 1

-- Display: Manual Order Indicator
cboe_futures_orderentry_boe3_v1_1_18_display.manual_order_indicator = function(value)
  if value == "Y" then
    return "Manual Order Indicator: Manual (Y)"
  end
  if value == "N" then
    return "Manual Order Indicator: Automated (N)"
  end

  return "Manual Order Indicator: Unknown("..value..")"
end

-- Dissect: Manual Order Indicator
cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.manual_order_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.manual_order_indicator, range, value, display)

  return offset + length, value
end

-- Size: Cti Code
cboe_futures_orderentry_boe3_v1_1_18_size_of.cti_code = 1

-- Display: Cti Code
cboe_futures_orderentry_boe3_v1_1_18_display.cti_code = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.cti_code = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cti_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.cti_code(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cti_code, range, value, display)

  return offset + length, value
end

-- Size: Expire Time
cboe_futures_orderentry_boe3_v1_1_18_size_of.expire_time = 8

-- Display: Expire Time
cboe_futures_orderentry_boe3_v1_1_18_display.expire_time = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
cboe_futures_orderentry_boe3_v1_1_18_dissect.expire_time = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.expire_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.expire_time(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Size: Trading Group Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.trading_group_id = 1

-- Display: Trading Group Id
cboe_futures_orderentry_boe3_v1_1_18_display.trading_group_id = function(value)
  return "Trading Group Id: "..value
end

-- Dissect: Trading Group Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.trading_group_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.trading_group_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.trading_group_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.trading_group_id, range, value, display)

  return offset + length, value
end

-- Size: Unique Id Level
cboe_futures_orderentry_boe3_v1_1_18_size_of.unique_id_level = 1

-- Display: Unique Id Level
cboe_futures_orderentry_boe3_v1_1_18_display.unique_id_level = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.unique_id_level = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.unique_id_level
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.unique_id_level(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.unique_id_level, range, value, display)

  return offset + length, value
end

-- Size: Mtp Modifier
cboe_futures_orderentry_boe3_v1_1_18_size_of.mtp_modifier = 1

-- Display: Mtp Modifier
cboe_futures_orderentry_boe3_v1_1_18_display.mtp_modifier = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.mtp_modifier = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.mtp_modifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.mtp_modifier(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.mtp_modifier, range, value, display)

  return offset + length, value
end

-- Calculate size of: Prevent Match
cboe_futures_orderentry_boe3_v1_1_18_size_of.prevent_match = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mtp_modifier

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.unique_id_level

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.trading_group_id

  return index
end

-- Display: Prevent Match
cboe_futures_orderentry_boe3_v1_1_18_display.prevent_match = function(buffer, offset, value, packet, parent)
  return "Prevent Match: "..value
end

-- Dissect Fields: Prevent Match
cboe_futures_orderentry_boe3_v1_1_18_dissect.prevent_match_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mtp Modifier: Text
  index, mtp_modifier = cboe_futures_orderentry_boe3_v1_1_18_dissect.mtp_modifier(buffer, index, packet, parent)

  -- Unique Id Level: Text
  index, unique_id_level = cboe_futures_orderentry_boe3_v1_1_18_dissect.unique_id_level(buffer, index, packet, parent)

  -- Trading Group Id: Alphanumeric
  index, trading_group_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.trading_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Prevent Match
cboe_futures_orderentry_boe3_v1_1_18_dissect.prevent_match = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.prevent_match then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.prevent_match(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.prevent_match(buffer, offset, value, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.prevent_match, range, value, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.prevent_match_fields(buffer, offset, packet, parent)
end

-- Size: Account
cboe_futures_orderentry_boe3_v1_1_18_size_of.account = 16

-- Display: Account
cboe_futures_orderentry_boe3_v1_1_18_display.account = function(value)
  return "Account: "..value
end

-- Dissect: Account
cboe_futures_orderentry_boe3_v1_1_18_dissect.account = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.account
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.account(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.account, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
cboe_futures_orderentry_boe3_v1_1_18_size_of.time_in_force = 1

-- Display: Time In Force
cboe_futures_orderentry_boe3_v1_1_18_display.time_in_force = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_acknowledgement_option = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.ord_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.time_in_force

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.security_desc

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.expire_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.sub_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cti_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cum_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.frequent_trader_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cust_order_handling_inst

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.country_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_cnt

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_18_display.order_acknowledgement_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_acknowledgement_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_id(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_futures_orderentry_boe3_v1_1_18_dissect.time_in_force(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Security Desc
  index, security_desc = cboe_futures_orderentry_boe3_v1_1_18_dissect.security_desc(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_18_dissect.account(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_futures_orderentry_boe3_v1_1_18_dissect.prevent_match(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.leaves_qty(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.expire_time(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.cti_code(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  -- Cum Qty
  index, cum_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.cum_qty(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_18_dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Country Code: Text
  index, country_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.country_code(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_cnt(buffer, index, packet, parent)

  -- Leg Position Effect: Text
  for i = 1, leg_cnt do
    index = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_position_effect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Acknowledgement Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_acknowledgement_option = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_acknowledgement_option then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_acknowledgement_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_acknowledgement_option(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_acknowledgement_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_acknowledgement_option_fields(buffer, offset, packet, parent)
end

-- Size: Min Qty
cboe_futures_orderentry_boe3_v1_1_18_size_of.min_qty = 4

-- Display: Min Qty
cboe_futures_orderentry_boe3_v1_1_18_display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_futures_orderentry_boe3_v1_1_18_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_size_of.order_acknowledgement = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.transaction_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.ord_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.time_in_force

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.min_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.maturity_date

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leaves_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.base_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.expire_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.sub_liquidity_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.stop_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cti_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cum_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.frequent_trader_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cust_order_handling_inst

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.request_received_time

  return index
end

-- Display: Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_display.order_acknowledgement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_acknowledgement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_id(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_futures_orderentry_boe3_v1_1_18_dissect.time_in_force(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.min_qty(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_18_dissect.account(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_futures_orderentry_boe3_v1_1_18_dissect.prevent_match(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_18_dissect.maturity_date(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.leaves_qty(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.expire_time(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Text
  index, sub_liquidity_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.stop_px(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.cti_code(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  -- Cum Qty
  index, cum_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.cum_qty(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_18_dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement
cboe_futures_orderentry_boe3_v1_1_18_dissect.order_acknowledgement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_acknowledgement then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.order_acknowledgement(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.order_acknowledgement(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.order_acknowledgement, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_acknowledgement_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_option = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_cnt

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_group

  return index
end

-- Display: New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_18_display.new_complex_instrument_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_cnt(buffer, index, packet, parent)

  -- Leg Group
  index, leg_group = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_group(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Instrument Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_option = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_complex_instrument_option then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.new_complex_instrument_option(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.new_complex_instrument_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_option_fields(buffer, offset, packet, parent)
end

-- Size: Custom Group Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id = 2

-- Display: Custom Group Id
cboe_futures_orderentry_boe3_v1_1_18_display.custom_group_id = function(value)
  return "Custom Group Id: "..value
end

-- Dissect: Custom Group Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.custom_group_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.custom_group_id, range, value, display)

  return offset + length, value
end

-- Size: Product Name
cboe_futures_orderentry_boe3_v1_1_18_size_of.product_name = 6

-- Display: Product Name
cboe_futures_orderentry_boe3_v1_1_18_display.product_name = function(value)
  return "Product Name: "..value
end

-- Dissect: Product Name
cboe_futures_orderentry_boe3_v1_1_18_dissect.product_name = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.product_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.product_name(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.product_name, range, value, display)

  return offset + length, value
end

-- Size: Risk Reset
cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_reset = 8

-- Display: Risk Reset
cboe_futures_orderentry_boe3_v1_1_18_display.risk_reset = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.risk_reset = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_reset
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.risk_reset(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reset Risk
cboe_futures_orderentry_boe3_v1_1_18_size_of.reset_risk = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_status_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.risk_reset

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.product_name

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id

  return index
end

-- Display: Reset Risk
cboe_futures_orderentry_boe3_v1_1_18_display.reset_risk = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reset Risk
cboe_futures_orderentry_boe3_v1_1_18_dissect.reset_risk_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.risk_status_id(buffer, index, packet, parent)

  -- Risk Reset: Text
  index, risk_reset = cboe_futures_orderentry_boe3_v1_1_18_dissect.risk_reset(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Product Name: Text
  index, product_name = cboe_futures_orderentry_boe3_v1_1_18_dissect.product_name(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk
cboe_futures_orderentry_boe3_v1_1_18_dissect.reset_risk = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reset_risk then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.reset_risk(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.reset_risk(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.reset_risk, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.reset_risk_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_option_group = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty

  return index
end

-- Display: Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_option_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_option_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_symbol(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Option Group
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_option_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_update_option_group then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_option_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_option_group(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_option_group, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_option_group_fields(buffer, offset, packet, parent)
end

-- Size: Size Modifier
cboe_futures_orderentry_boe3_v1_1_18_size_of.size_modifier = 1

-- Display: Size Modifier
cboe_futures_orderentry_boe3_v1_1_18_display.size_modifier = function(value)
  if value == "0x00" then
    return "Size Modifier: New Quote Size (0x00)"
  end
  if value == "R" then
    return "Size Modifier: Reduced Size (R)"
  end

  return "Size Modifier: Unknown("..value..")"
end

-- Dissect: Size Modifier
cboe_futures_orderentry_boe3_v1_1_18_dissect.size_modifier = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.size_modifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.size_modifier(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.size_modifier, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Update Option
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_option = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cti_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.size_modifier

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_cnt

  -- Calculate field size from count
  local quote_update_option_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_update_option_group_count * 20

  return index
end

-- Display: Quote Update Option
cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_18_dissect.account(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.cti_code(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_futures_orderentry_boe3_v1_1_18_dissect.size_modifier(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_cnt(buffer, index, packet, parent)

  -- Quote Update Option Group: Struct of 5 fields
  for i = 1, quote_cnt do
    index = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_option_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Update Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_option = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_option then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_option(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_option_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Update Group
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_group = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty

  return index
end

-- Display: Quote Update Group
cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Group
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_symbol(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Group
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_update_group then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_group(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_update_group(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update_group, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Update
cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cti_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.size_modifier

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_cnt

  -- Calculate field size from count
  local quote_update_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_update_group_count * 20

  return index
end

-- Display: Quote Update
cboe_futures_orderentry_boe3_v1_1_18_display.quote_update = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_18_dissect.account(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.cti_code(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_futures_orderentry_boe3_v1_1_18_dissect.size_modifier(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_cnt(buffer, index, packet, parent)

  -- Quote Update Group: Struct of 5 fields
  for i = 1, quote_cnt do
    index = cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Update
cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.quote_update(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.quote_update, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_fields(buffer, offset, packet, parent)
end

-- Size: Custom Group Id Cnt
cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id_cnt = 1

-- Display: Custom Group Id Cnt
cboe_futures_orderentry_boe3_v1_1_18_display.custom_group_id_cnt = function(value)
  return "Custom Group Id Cnt: "..value
end

-- Dissect: Custom Group Id Cnt
cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id_cnt = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id_cnt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.custom_group_id_cnt(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.custom_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Size: Instruction Details
cboe_futures_orderentry_boe3_v1_1_18_size_of.instruction_details = 11

-- Display: Instruction Details
cboe_futures_orderentry_boe3_v1_1_18_display.instruction_details = function(value)
  return "Instruction Details: "..value
end

-- Dissect: Instruction Details
cboe_futures_orderentry_boe3_v1_1_18_dissect.instruction_details = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.instruction_details
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.instruction_details(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.instruction_details, range, value, display)

  return offset + length, value
end

-- Size: Gtc Order Filter
cboe_futures_orderentry_boe3_v1_1_18_size_of.gtc_order_filter = 1

-- Display: Gtc Order Filter
cboe_futures_orderentry_boe3_v1_1_18_display.gtc_order_filter = function(value)
  if value == "C" then
    return "Gtc Order Filter: Cancel Gtc And Gtd Orders (C)"
  end
  if value == "P" then
    return "Gtc Order Filter: Preserve Gtc And Gtd Orders (P)"
  end

  return "Gtc Order Filter: Unknown("..value..")"
end

-- Dissect: Gtc Order Filter
cboe_futures_orderentry_boe3_v1_1_18_dissect.gtc_order_filter = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.gtc_order_filter
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.gtc_order_filter(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.gtc_order_filter, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type Filter
cboe_futures_orderentry_boe3_v1_1_18_size_of.instrument_type_filter = 1

-- Display: Instrument Type Filter
cboe_futures_orderentry_boe3_v1_1_18_display.instrument_type_filter = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.instrument_type_filter = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.instrument_type_filter
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.instrument_type_filter(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.instrument_type_filter, range, value, display)

  return offset + length, value
end

-- Size: Lockout Instruction
cboe_futures_orderentry_boe3_v1_1_18_size_of.lockout_instruction = 1

-- Display: Lockout Instruction
cboe_futures_orderentry_boe3_v1_1_18_display.lockout_instruction = function(value)
  if value == "N" then
    return "Lockout Instruction: No Lockout (N)"
  end
  if value == "L" then
    return "Lockout Instruction: Lockout Until Corresponding Reset Risk Received (L)"
  end

  return "Lockout Instruction: Unknown("..value..")"
end

-- Dissect: Lockout Instruction
cboe_futures_orderentry_boe3_v1_1_18_dissect.lockout_instruction = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.lockout_instruction
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.lockout_instruction(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.lockout_instruction, range, value, display)

  return offset + length, value
end

-- Size: Acknowledgement Style
cboe_futures_orderentry_boe3_v1_1_18_size_of.acknowledgement_style = 1

-- Display: Acknowledgement Style
cboe_futures_orderentry_boe3_v1_1_18_display.acknowledgement_style = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.acknowledgement_style = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.acknowledgement_style
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.acknowledgement_style(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.acknowledgement_style, range, value, display)

  return offset + length, value
end

-- Size: Clearing Firm Filter
cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm_filter = 1

-- Display: Clearing Firm Filter
cboe_futures_orderentry_boe3_v1_1_18_display.clearing_firm_filter = function(value)
  if value == "A" then
    return "Clearing Firm Filter: No Filtering By Clearing Firm (A)"
  end
  if value == "F" then
    return "Clearing Firm Filter: Specified Clearing Firm Optional Field (F)"
  end

  return "Clearing Firm Filter: Unknown("..value..")"
end

-- Dissect: Clearing Firm Filter
cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm_filter = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm_filter
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.clearing_firm_filter(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.clearing_firm_filter, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_inst = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm_filter

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.acknowledgement_style

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.lockout_instruction

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.instrument_type_filter

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.gtc_order_filter

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.instruction_details

  return index
end

-- Display: Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_inst = function(buffer, offset, value, packet, parent)
  return "Mass Cancel Inst: "..value
end

-- Dissect Fields: Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_inst_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Filter: Alphanumeric
  index, clearing_firm_filter = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm_filter(buffer, index, packet, parent)

  -- Acknowledgement Style: Alphanumeric
  index, acknowledgement_style = cboe_futures_orderentry_boe3_v1_1_18_dissect.acknowledgement_style(buffer, index, packet, parent)

  -- Lockout Instruction: Alphanumeric
  index, lockout_instruction = cboe_futures_orderentry_boe3_v1_1_18_dissect.lockout_instruction(buffer, index, packet, parent)

  -- Instrument Type Filter: Alphanumeric
  index, instrument_type_filter = cboe_futures_orderentry_boe3_v1_1_18_dissect.instrument_type_filter(buffer, index, packet, parent)

  -- Gtc Order Filter: Alphanumeric
  index, gtc_order_filter = cboe_futures_orderentry_boe3_v1_1_18_dissect.gtc_order_filter(buffer, index, packet, parent)

  -- Instruction Details: Alphanumeric
  index, instruction_details = cboe_futures_orderentry_boe3_v1_1_18_dissect.instruction_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Inst
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_inst = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_inst then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_inst(buffer, offset)
    local range = buffer(offset, length)
    local value = range:string()
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_inst(buffer, offset, value, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_inst, range, value, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_inst_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Purge Orders
cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_orders = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.product_name

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_inst(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id_cnt

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id

  return index
end

-- Display: Purge Orders
cboe_futures_orderentry_boe3_v1_1_18_display.purge_orders = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Purge Orders
cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_orders_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Product Name: Text
  index, product_name = cboe_futures_orderentry_boe3_v1_1_18_dissect.product_name(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_inst(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  -- Custom Group Id Cnt: Binary
  index, custom_group_id_cnt = cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id_cnt(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Orders
cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_orders = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.purge_orders then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_orders(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.purge_orders(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.purge_orders, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_orders_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_order = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.product_name

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_inst(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  return index
end

-- Display: Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_order = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_order_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Product Name: Text
  index, product_name = cboe_futures_orderentry_boe3_v1_1_18_dissect.product_name(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_inst(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order
cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_order = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_order then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_order(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.mass_cancel_order(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.mass_cancel_order, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_order_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Order
cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_order = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  return index
end

-- Display: Cancel Order
cboe_futures_orderentry_boe3_v1_1_18_display.cancel_order = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order
cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_order_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order
cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_order = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_order(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.cancel_order(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_order, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_order_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Orig On Reject
cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_orig_on_reject = 1

-- Display: Cancel Orig On Reject
cboe_futures_orderentry_boe3_v1_1_18_display.cancel_orig_on_reject = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_orig_on_reject = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_orig_on_reject
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.cancel_orig_on_reject(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order
cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_order = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.orig_cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.ord_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_orig_on_reject

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.stop_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.frequent_trader_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cust_order_handling_inst

  return index
end

-- Display: Modify Order
cboe_futures_orderentry_boe3_v1_1_18_display.modify_order = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order
cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_order_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.ord_type(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Alpha
  index, cancel_orig_on_reject = cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_orig_on_reject(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.stop_px(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_18_dissect.cust_order_handling_inst(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order
cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_order = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_order(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.modify_order(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.modify_order, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_order_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Option
cboe_futures_orderentry_boe3_v1_1_18_size_of.new_order_option = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.ord_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.time_in_force

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.security_desc

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.expire_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cti_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.frequent_trader_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cust_order_handling_inst

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.country_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.leg_cnt

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Order Option
cboe_futures_orderentry_boe3_v1_1_18_display.new_order_option = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_order_option_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_futures_orderentry_boe3_v1_1_18_dissect.time_in_force(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Security Desc
  index, security_desc = cboe_futures_orderentry_boe3_v1_1_18_dissect.security_desc(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_18_dissect.account(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_futures_orderentry_boe3_v1_1_18_dissect.prevent_match(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.expire_time(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.cti_code(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_18_dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Country Code: Text
  index, country_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.country_code(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_cnt(buffer, index, packet, parent)

  -- Leg Position Effect: Text
  for i = 1, leg_cnt do
    index = cboe_futures_orderentry_boe3_v1_1_18_dissect.leg_position_effect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Option
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_order_option = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_option then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.new_order_option(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.new_order_option(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.new_order_option, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_order_option_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order
cboe_futures_orderentry_boe3_v1_1_18_size_of.new_order = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cl_ord_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.side

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.order_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_firm

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.clearing_account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.price

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.ord_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.time_in_force

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.min_qty

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.symbol

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.capacity

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.account

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.expire_time

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.maturity_date

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.open_close

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cmta_number

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.stop_px

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.custom_group_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cti_code

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.manual_order_indicator

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.oeo_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.frequent_trader_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.cust_order_handling_inst

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.country_code

  return index
end

-- Display: New Order
cboe_futures_orderentry_boe3_v1_1_18_display.new_order = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_order_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Side: Text
  index, side = cboe_futures_orderentry_boe3_v1_1_18_dissect.side(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.order_qty(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_futures_orderentry_boe3_v1_1_18_dissect.clearing_account(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_futures_orderentry_boe3_v1_1_18_dissect.price(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: Text
  index, time_in_force = cboe_futures_orderentry_boe3_v1_1_18_dissect.time_in_force(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_futures_orderentry_boe3_v1_1_18_dissect.min_qty(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_futures_orderentry_boe3_v1_1_18_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: Alphanumeric
  index, capacity = cboe_futures_orderentry_boe3_v1_1_18_dissect.capacity(buffer, index, packet, parent)

  -- Account: Alphanumeric
  index, account = cboe_futures_orderentry_boe3_v1_1_18_dissect.account(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_futures_orderentry_boe3_v1_1_18_dissect.prevent_match(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_futures_orderentry_boe3_v1_1_18_dissect.expire_time(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_futures_orderentry_boe3_v1_1_18_dissect.maturity_date(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_futures_orderentry_boe3_v1_1_18_dissect.open_close(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.cmta_number(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_futures_orderentry_boe3_v1_1_18_dissect.stop_px(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.custom_group_id(buffer, index, packet, parent)

  -- Cti Code: Alphanumeric
  index, cti_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.cti_code(buffer, index, packet, parent)

  -- Manual Order Indicator: Alpha
  index, manual_order_indicator = cboe_futures_orderentry_boe3_v1_1_18_dissect.manual_order_indicator(buffer, index, packet, parent)

  -- Oeo Id: Alphanumeric
  index, oeo_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.oeo_id(buffer, index, packet, parent)

  -- Frequent Trader Id: Alphanumeric
  index, frequent_trader_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Cust Order Handling Inst: Alphanumeric
  index, cust_order_handling_inst = cboe_futures_orderentry_boe3_v1_1_18_dissect.cust_order_handling_inst(buffer, index, packet, parent)

  -- Country Code: Text
  index, country_code = cboe_futures_orderentry_boe3_v1_1_18_dissect.country_code(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order
cboe_futures_orderentry_boe3_v1_1_18_dissect.new_order = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.new_order(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.new_order(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.new_order, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_order_fields(buffer, offset, packet, parent)
end

-- Size: Logout Reason Text
cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_reason_text = 60

-- Display: Logout Reason Text
cboe_futures_orderentry_boe3_v1_1_18_display.logout_reason_text = function(value)
  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_futures_orderentry_boe3_v1_1_18_dissect.logout_reason_text = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_reason_text
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.logout_reason_text(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Size: Logout Reason
cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_reason = 1

-- Display: Logout Reason
cboe_futures_orderentry_boe3_v1_1_18_display.logout_reason = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.logout_reason = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.logout_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logout Response Message
cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_response_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_reason

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_reason_text

  return index
end

-- Display: Logout Response Message
cboe_futures_orderentry_boe3_v1_1_18_display.logout_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.logout_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_futures_orderentry_boe3_v1_1_18_dissect.logout_reason(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_futures_orderentry_boe3_v1_1_18_dissect.logout_reason_text(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.logout_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_response_message then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.logout_response_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.logout_response_message, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.logout_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
cboe_futures_orderentry_boe3_v1_1_18_size_of.sequence_number = 4

-- Display: Sequence Number
cboe_futures_orderentry_boe3_v1_1_18_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_futures_orderentry_boe3_v1_1_18_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Unit Number
cboe_futures_orderentry_boe3_v1_1_18_size_of.unit_number = 1

-- Display: Unit Number
cboe_futures_orderentry_boe3_v1_1_18_display.unit_number = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_futures_orderentry_boe3_v1_1_18_dissect.unit_number = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.unit_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.unit_number(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Sequence
cboe_futures_orderentry_boe3_v1_1_18_size_of.unit_sequence = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.unit_number

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.sequence_number

  return index
end

-- Display: Unit Sequence
cboe_futures_orderentry_boe3_v1_1_18_display.unit_sequence = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_futures_orderentry_boe3_v1_1_18_dissect.unit_sequence_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.unit_number(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_futures_orderentry_boe3_v1_1_18_dissect.unit_sequence = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_sequence then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.unit_sequence(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.unit_sequence(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.unit_sequence, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.unit_sequence_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Units
cboe_futures_orderentry_boe3_v1_1_18_size_of.number_of_units = 1

-- Display: Number Of Units
cboe_futures_orderentry_boe3_v1_1_18_display.number_of_units = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_futures_orderentry_boe3_v1_1_18_dissect.number_of_units = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.number_of_units
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.number_of_units(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Size: Client Sequence
cboe_futures_orderentry_boe3_v1_1_18_size_of.client_sequence = 4

-- Display: Client Sequence
cboe_futures_orderentry_boe3_v1_1_18_display.client_sequence = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_futures_orderentry_boe3_v1_1_18_dissect.client_sequence = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.client_sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.client_sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Size: Login Response Text
cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_text = 60

-- Display: Login Response Text
cboe_futures_orderentry_boe3_v1_1_18_display.login_response_text = function(value)
  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_futures_orderentry_boe3_v1_1_18_dissect.login_response_text = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_text
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.login_response_text(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Size: Login Response Status
cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_status = 1

-- Display: Login Response Status
cboe_futures_orderentry_boe3_v1_1_18_display.login_response_status = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.login_response_status = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.login_response_status(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Response Message
cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_status

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_text

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.client_sequence

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.number_of_units

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_futures_orderentry_boe3_v1_1_18_display.login_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.login_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 8 values
  index, login_response_status = cboe_futures_orderentry_boe3_v1_1_18_dissect.login_response_status(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_futures_orderentry_boe3_v1_1_18_dissect.login_response_text(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_futures_orderentry_boe3_v1_1_18_dissect.client_sequence(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_futures_orderentry_boe3_v1_1_18_dissect.number_of_units(buffer, index, packet, parent)

  -- Unit Sequence: Struct of 2 fields
  for i = 1, number_of_units do
    index = cboe_futures_orderentry_boe3_v1_1_18_dissect.unit_sequence(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Login Response Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.login_response_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_response_message then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.login_response_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.login_response_message, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.login_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Replay Unspecified Unit
cboe_futures_orderentry_boe3_v1_1_18_size_of.replay_unspecified_unit = 1

-- Display: Replay Unspecified Unit
cboe_futures_orderentry_boe3_v1_1_18_display.replay_unspecified_unit = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.replay_unspecified_unit = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.replay_unspecified_unit
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.replay_unspecified_unit(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.replay_unspecified_unit, range, value, display)

  return offset + length, value
end

-- Size: Password
cboe_futures_orderentry_boe3_v1_1_18_size_of.password = 10

-- Display: Password
cboe_futures_orderentry_boe3_v1_1_18_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_futures_orderentry_boe3_v1_1_18_dissect.password = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.password
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.password(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Session Sub Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.session_sub_id = 4

-- Display: Session Sub Id
cboe_futures_orderentry_boe3_v1_1_18_display.session_sub_id = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.session_sub_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.session_sub_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.session_sub_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Session Id
cboe_futures_orderentry_boe3_v1_1_18_size_of.session_id = 4

-- Display: Session Id
cboe_futures_orderentry_boe3_v1_1_18_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_futures_orderentry_boe3_v1_1_18_dissect.session_id = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.session_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.session_id(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Message
cboe_futures_orderentry_boe3_v1_1_18_size_of.login_request_message = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.session_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.session_sub_id

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.password

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.replay_unspecified_unit

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.number_of_units

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_futures_orderentry_boe3_v1_1_18_display.login_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.login_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.session_id(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_futures_orderentry_boe3_v1_1_18_dissect.session_sub_id(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_futures_orderentry_boe3_v1_1_18_dissect.password(buffer, index, packet, parent)

  -- Replay Unspecified Unit: 1 Byte Ascii String Enum with 3 values
  index, replay_unspecified_unit = cboe_futures_orderentry_boe3_v1_1_18_dissect.replay_unspecified_unit(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_futures_orderentry_boe3_v1_1_18_dissect.number_of_units(buffer, index, packet, parent)

  -- Unit Sequence: Struct of 2 fields
  for i = 1, number_of_units do
    index = cboe_futures_orderentry_boe3_v1_1_18_dissect.unit_sequence(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Login Request Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.login_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_request_message then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.login_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.login_request_message(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.login_request_message, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.login_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Message
cboe_futures_orderentry_boe3_v1_1_18_size_of.message = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 1 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.login_request_message(buffer, offset)
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
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.login_response_message(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 502 then
    return 0
  end
  -- Size of Logout Response Message
  if message_type == 503 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.logout_response_message(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 504 then
    return 0
  end
  -- Size of New Order
  if message_type == 1008 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.new_order(buffer, offset)
  end
  -- Size of New Order Option
  if message_type == 1009 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.new_order_option(buffer, offset)
  end
  -- Size of Modify Order
  if message_type == 1002 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_order(buffer, offset)
  end
  -- Size of Cancel Order
  if message_type == 1003 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_order(buffer, offset)
  end
  -- Size of Mass Cancel Order
  if message_type == 1004 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_order(buffer, offset)
  end
  -- Size of Purge Orders
  if message_type == 1005 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_orders(buffer, offset)
  end
  -- Size of Quote Update
  if message_type == 1006 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update(buffer, offset)
  end
  -- Size of Quote Update Option
  if message_type == 1010 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_option(buffer, offset)
  end
  -- Size of Reset Risk
  if message_type == 1007 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.reset_risk(buffer, offset)
  end
  -- Size of New Complex Instrument Option
  if message_type == 1011 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_option(buffer, offset)
  end
  -- Size of Order Acknowledgement
  if message_type == 1501 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.order_acknowledgement(buffer, offset)
  end
  -- Size of Order Acknowledgement Option
  if message_type == 1523 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.order_acknowledgement_option(buffer, offset)
  end
  -- Size of Order Rejected
  if message_type == 1502 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.order_rejected(buffer, offset)
  end
  -- Size of Order Modified
  if message_type == 1503 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.order_modified(buffer, offset)
  end
  -- Size of Modify Rejected
  if message_type == 1504 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.modify_rejected(buffer, offset)
  end
  -- Size of Order Execution
  if message_type == 1505 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.order_execution(buffer, offset)
  end
  -- Size of Order Execution Option
  if message_type == 1524 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.order_execution_option(buffer, offset)
  end
  -- Size of Order Cancelled
  if message_type == 1506 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.order_cancelled(buffer, offset)
  end
  -- Size of Cancel Rejected
  if message_type == 1507 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.cancel_rejected(buffer, offset)
  end
  -- Size of Mass Cancel Acknowledgement
  if message_type == 1508 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_acknowledgement(buffer, offset)
  end
  -- Size of Mass Cancel Rejected
  if message_type == 1509 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.mass_cancel_rejected(buffer, offset)
  end
  -- Size of Purge Acknowledgement
  if message_type == 1510 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_acknowledgement(buffer, offset)
  end
  -- Size of Purge Rejected
  if message_type == 1511 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.purge_rejected(buffer, offset)
  end
  -- Size of Trade Cancel Correct
  if message_type == 1512 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_cancel_correct(buffer, offset)
  end
  -- Size of Trade Cancel Correct Option
  if message_type == 1525 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.trade_cancel_correct_option(buffer, offset)
  end
  -- Size of Tas Restatement
  if message_type == 1513 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.tas_restatement(buffer, offset)
  end
  -- Size of Quote Update Acknowledgement
  if message_type == 1515 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_acknowledgement(buffer, offset)
  end
  -- Size of Quote Update Rejected
  if message_type == 1516 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_update_rejected(buffer, offset)
  end
  -- Size of Quote Restated
  if message_type == 1517 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_restated(buffer, offset)
  end
  -- Size of Quote Execution
  if message_type == 1518 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_execution(buffer, offset)
  end
  -- Size of Quote Cancelled
  if message_type == 1519 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.quote_cancelled(buffer, offset)
  end
  -- Size of Tas Quote Restatement
  if message_type == 1520 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.tas_quote_restatement(buffer, offset)
  end
  -- Size of Reset Risk Acknowledgement
  if message_type == 1522 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.reset_risk_acknowledgement(buffer, offset)
  end
  -- Size of New Complex Instrument Accepted Option
  if message_type == 1526 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_accepted_option(buffer, offset)
  end
  -- Size of New Complex Instrument Rejected Option
  if message_type == 1527 then
    return cboe_futures_orderentry_boe3_v1_1_18_size_of.new_complex_instrument_rejected_option(buffer, offset)
  end

  return 0
end

-- Display: Message
cboe_futures_orderentry_boe3_v1_1_18_display.message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.message_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 1 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.login_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 2 then
  end
  -- Dissect Client Heartbeat Message
  if message_type == 3 then
  end
  -- Dissect Login Response Message
  if message_type == 501 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.login_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 502 then
  end
  -- Dissect Logout Response Message
  if message_type == 503 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.logout_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 504 then
  end
  -- Dissect New Order
  if message_type == 1008 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_order(buffer, offset, packet, parent)
  end
  -- Dissect New Order Option
  if message_type == 1009 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_order_option(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order
  if message_type == 1002 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_order(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order
  if message_type == 1003 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_order(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order
  if message_type == 1004 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_order(buffer, offset, packet, parent)
  end
  -- Dissect Purge Orders
  if message_type == 1005 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_orders(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update
  if message_type == 1006 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Option
  if message_type == 1010 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_option(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk
  if message_type == 1007 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.reset_risk(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Option
  if message_type == 1011 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_option(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement
  if message_type == 1501 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_acknowledgement(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement Option
  if message_type == 1523 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_acknowledgement_option(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected
  if message_type == 1502 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_rejected(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified
  if message_type == 1503 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_modified(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected
  if message_type == 1504 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.modify_rejected(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution
  if message_type == 1505 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_execution(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Option
  if message_type == 1524 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_execution_option(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled
  if message_type == 1506 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.order_cancelled(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected
  if message_type == 1507 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.cancel_rejected(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgement
  if message_type == 1508 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_acknowledgement(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Rejected
  if message_type == 1509 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.mass_cancel_rejected(buffer, offset, packet, parent)
  end
  -- Dissect Purge Acknowledgement
  if message_type == 1510 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_acknowledgement(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected
  if message_type == 1511 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.purge_rejected(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct
  if message_type == 1512 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_cancel_correct(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct Option
  if message_type == 1525 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.trade_cancel_correct_option(buffer, offset, packet, parent)
  end
  -- Dissect Tas Restatement
  if message_type == 1513 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.tas_restatement(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Acknowledgement
  if message_type == 1515 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_acknowledgement(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Rejected
  if message_type == 1516 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_update_rejected(buffer, offset, packet, parent)
  end
  -- Dissect Quote Restated
  if message_type == 1517 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_restated(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution
  if message_type == 1518 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_execution(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancelled
  if message_type == 1519 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.quote_cancelled(buffer, offset, packet, parent)
  end
  -- Dissect Tas Quote Restatement
  if message_type == 1520 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.tas_quote_restatement(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Acknowledgement
  if message_type == 1522 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.reset_risk_acknowledgement(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Accepted Option
  if message_type == 1526 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_accepted_option(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Rejected Option
  if message_type == 1527 then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.new_complex_instrument_rejected_option(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.message = function(buffer, offset, packet, parent, message_type)
  if not show.message then
    return cboe_futures_orderentry_boe3_v1_1_18_dissect.message_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_futures_orderentry_boe3_v1_1_18_size_of.message(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.message(buffer, packet, parent)
  local element = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.message, range, display)

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.message_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Reserved Field
cboe_futures_orderentry_boe3_v1_1_18_size_of.reserved_field = 1

-- Display: Reserved Field
cboe_futures_orderentry_boe3_v1_1_18_display.reserved_field = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_futures_orderentry_boe3_v1_1_18_dissect.reserved_field = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.reserved_field
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.reserved_field(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Size: Matching Unit
cboe_futures_orderentry_boe3_v1_1_18_size_of.matching_unit = 1

-- Display: Matching Unit
cboe_futures_orderentry_boe3_v1_1_18_display.matching_unit = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_futures_orderentry_boe3_v1_1_18_dissect.matching_unit = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.matching_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.matching_unit(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Size: Message Type
cboe_futures_orderentry_boe3_v1_1_18_size_of.message_type = 2

-- Display: Message Type
cboe_futures_orderentry_boe3_v1_1_18_display.message_type = function(value)
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
cboe_futures_orderentry_boe3_v1_1_18_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_futures_orderentry_boe3_v1_1_18_size_of.message_length = 2

-- Display: Message Length
cboe_futures_orderentry_boe3_v1_1_18_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_futures_orderentry_boe3_v1_1_18_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Start Of Message
cboe_futures_orderentry_boe3_v1_1_18_size_of.start_of_message = 2

-- Display: Start Of Message
cboe_futures_orderentry_boe3_v1_1_18_display.start_of_message = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_futures_orderentry_boe3_v1_1_18_dissect.start_of_message = function(buffer, offset, packet, parent)
  local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.start_of_message
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_futures_orderentry_boe3_v1_1_18_display.start_of_message(value, buffer, offset, packet, parent)

  parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_futures_orderentry_boe3_v1_1_18_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.start_of_message

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.message_length

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.message_type

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.matching_unit

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.reserved_field

  index = index + cboe_futures_orderentry_boe3_v1_1_18_size_of.sequence_number

  return index
end

-- Display: Message Header
cboe_futures_orderentry_boe3_v1_1_18_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
cboe_futures_orderentry_boe3_v1_1_18_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_futures_orderentry_boe3_v1_1_18_dissect.start_of_message(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_futures_orderentry_boe3_v1_1_18_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 42 values
  index, message_type = cboe_futures_orderentry_boe3_v1_1_18_dissect.message_type(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_futures_orderentry_boe3_v1_1_18_dissect.matching_unit(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_futures_orderentry_boe3_v1_1_18_dissect.reserved_field(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_futures_orderentry_boe3_v1_1_18_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_futures_orderentry_boe3_v1_1_18_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = cboe_futures_orderentry_boe3_v1_1_18_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_futures_orderentry_boe3_v1_1_18_display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_futures_orderentry_boe3_v1_1_18.fields.message_header, range, display)
  end

  return cboe_futures_orderentry_boe3_v1_1_18_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
cboe_futures_orderentry_boe3_v1_1_18_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 6 fields
  index, message_header = cboe_futures_orderentry_boe3_v1_1_18_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 8, 2):le_uint()

  -- Message: Runtime Type with 42 branches
  index = cboe_futures_orderentry_boe3_v1_1_18_dissect.message(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_futures_orderentry_boe3_v1_1_18.init()
end

-- Dissector for Cboe Futures OrderEntry Boe3 1.1.18
function cboe_futures_orderentry_boe3_v1_1_18.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_futures_orderentry_boe3_v1_1_18.name

  -- Dissect protocol
  local protocol = parent:add(cboe_futures_orderentry_boe3_v1_1_18, buffer(), cboe_futures_orderentry_boe3_v1_1_18.description, "("..buffer:len().." Bytes)")
  return cboe_futures_orderentry_boe3_v1_1_18_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, cboe_futures_orderentry_boe3_v1_1_18)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_futures_orderentry_boe3_v1_1_18_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe Futures OrderEntry Boe3 1.1.18
local function cboe_futures_orderentry_boe3_v1_1_18_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_futures_orderentry_boe3_v1_1_18_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_futures_orderentry_boe3_v1_1_18
  cboe_futures_orderentry_boe3_v1_1_18.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe Futures OrderEntry Boe3 1.1.18
cboe_futures_orderentry_boe3_v1_1_18:register_heuristic("tcp", cboe_futures_orderentry_boe3_v1_1_18_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.1.18
--   Date: Monday, November 4, 2024
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
