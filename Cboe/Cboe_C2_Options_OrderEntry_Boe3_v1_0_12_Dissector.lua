-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C2 Options OrderEntry Boe3 1.0.12 Protocol
local cboe_c2_options_orderentry_boe3_v1_0_12 = Proto("Cboe.C2.Options.OrderEntry.Boe3.v1.0.12.Lua", "Cboe C2 Options OrderEntry Boe3 1.0.12")

-- Component Tables
local show = {}
local format = {}
local cboe_c2_options_orderentry_boe3_v1_0_12_display = {}
local cboe_c2_options_orderentry_boe3_v1_0_12_dissect = {}
local cboe_c2_options_orderentry_boe3_v1_0_12_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C2 Options OrderEntry Boe3 1.0.12 Fields
cboe_c2_options_orderentry_boe3_v1_0_12.fields.account = ProtoField.new("Account", "cboe.c2.options.orderentry.boe3.v1.0.12.account", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.acknowledgement_style = ProtoField.new("Acknowledgement Style", "cboe.c2.options.orderentry.boe3.v1.0.12.acknowledgementstyle", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.attributed_quote = ProtoField.new("Attributed Quote", "cboe.c2.options.orderentry.boe3.v1.0.12.attributedquote", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.auction_id = ProtoField.new("Auction Id", "cboe.c2.options.orderentry.boe3.v1.0.12.auctionid", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.c2.options.orderentry.boe3.v1.0.12.baseliquidityindicator", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "cboe.c2.options.orderentry.boe3.v1.0.12.cancelordermessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.c2.options.orderentry.boe3.v1.0.12.cancelorigonreject", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.cancelreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.cancelrejectreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "cboe.c2.options.orderentry.boe3.v1.0.12.cancelrejectedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_sub_reason = ProtoField.new("Cancel Sub Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.cancelsubreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.c2.options.orderentry.boe3.v1.0.12.cancelledordercount", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.capacity = ProtoField.new("Capacity", "cboe.c2.options.orderentry.boe3.v1.0.12.capacity", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.carried_restatement_message = ProtoField.new("Carried Restatement Message", "cboe.c2.options.orderentry.boe3.v1.0.12.carriedrestatementmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cfi_code = ProtoField.new("Cfi Code", "cboe.c2.options.orderentry.boe3.v1.0.12.cficode", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.c2.options.orderentry.boe3.v1.0.12.clordid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.c2.options.orderentry.boe3.v1.0.12.clearingaccount", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.c2.options.orderentry.boe3.v1.0.12.clearingfirm", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.clearing_firm_filter = ProtoField.new("Clearing Firm Filter", "cboe.c2.options.orderentry.boe3.v1.0.12.clearingfirmfilter", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.clearing_optional_data = ProtoField.new("Clearing Optional Data", "cboe.c2.options.orderentry.boe3.v1.0.12.clearingoptionaldata", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.client_id_attr = ProtoField.new("Client Id Attr", "cboe.c2.options.orderentry.boe3.v1.0.12.clientidattr", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.c2.options.orderentry.boe3.v1.0.12.clientsequence", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cmta_number = ProtoField.new("Cmta Number", "cboe.c2.options.orderentry.boe3.v1.0.12.cmtanumber", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.c2.options.orderentry.boe3.v1.0.12.complexleg", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.c2.options.orderentry.boe3.v1.0.12.contrabroker", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.contra_capacity = ProtoField.new("Contra Capacity", "cboe.c2.options.orderentry.boe3.v1.0.12.contracapacity", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.contra_trader = ProtoField.new("Contra Trader", "cboe.c2.options.orderentry.boe3.v1.0.12.contratrader", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.c2.options.orderentry.boe3.v1.0.12.correctedprice", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.corrected_size = ProtoField.new("Corrected Size", "cboe.c2.options.orderentry.boe3.v1.0.12.correctedsize", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.cum_qty = ProtoField.new("Cum Qty", "cboe.c2.options.orderentry.boe3.v1.0.12.cumqty", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.custom_group_id = ProtoField.new("Custom Group Id", "cboe.c2.options.orderentry.boe3.v1.0.12.customgroupid", ftypes.UINT16)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.custom_group_id_cnt = ProtoField.new("Custom Group Id Cnt", "cboe.c2.options.orderentry.boe3.v1.0.12.customgroupidcnt", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.c2.options.orderentry.boe3.v1.0.12.displayindicator", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.display_price = ProtoField.new("Display Price", "cboe.c2.options.orderentry.boe3.v1.0.12.displayprice", ftypes.DOUBLE)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.display_range = ProtoField.new("Display Range", "cboe.c2.options.orderentry.boe3.v1.0.12.displayrange", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.done_for_day_message = ProtoField.new("Done For Day Message", "cboe.c2.options.orderentry.boe3.v1.0.12.donefordaymessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.drill_thru_protection = ProtoField.new("Drill Thru Protection", "cboe.c2.options.orderentry.boe3.v1.0.12.drillthruprotection", ftypes.DOUBLE)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.ex_destination = ProtoField.new("Ex Destination", "cboe.c2.options.orderentry.boe3.v1.0.12.exdestination", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.exec_id = ProtoField.new("Exec Id", "cboe.c2.options.orderentry.boe3.v1.0.12.execid", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.c2.options.orderentry.boe3.v1.0.12.execinst", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.c2.options.orderentry.boe3.v1.0.12.execrefid", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.expire_time = ProtoField.new("Expire Time", "cboe.c2.options.orderentry.boe3.v1.0.12.expiretime", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.fee_code = ProtoField.new("Fee Code", "cboe.c2.options.orderentry.boe3.v1.0.12.feecode", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.gtc_order_filter = ProtoField.new("Gtc Order Filter", "cboe.c2.options.orderentry.boe3.v1.0.12.gtcorderfilter", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.in_flight = ProtoField.new("In Flight", "cboe.c2.options.orderentry.boe3.v1.0.12.inflight", ftypes.UINT16)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.instruction_details = ProtoField.new("Instruction Details", "cboe.c2.options.orderentry.boe3.v1.0.12.instructiondetails", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.instrument_type_filter = ProtoField.new("Instrument Type Filter", "cboe.c2.options.orderentry.boe3.v1.0.12.instrumenttypefilter", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.last_px = ProtoField.new("Last Px", "cboe.c2.options.orderentry.boe3.v1.0.12.lastpx", ftypes.DOUBLE)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.last_shares = ProtoField.new("Last Shares", "cboe.c2.options.orderentry.boe3.v1.0.12.lastshares", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.c2.options.orderentry.boe3.v1.0.12.leavesqty", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.leg_cnt = ProtoField.new("Leg Cnt", "cboe.c2.options.orderentry.boe3.v1.0.12.legcnt", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.leg_position_effect = ProtoField.new("Leg Position Effect", "cboe.c2.options.orderentry.boe3.v1.0.12.legpositioneffect", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.lockout_instruction = ProtoField.new("Lockout Instruction", "cboe.c2.options.orderentry.boe3.v1.0.12.lockoutinstruction", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.c2.options.orderentry.boe3.v1.0.12.loginrequestmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.c2.options.orderentry.boe3.v1.0.12.loginresponsemessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.c2.options.orderentry.boe3.v1.0.12.loginresponsestatus", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.c2.options.orderentry.boe3.v1.0.12.loginresponsetext", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.logoutreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.c2.options.orderentry.boe3.v1.0.12.logoutreasontext", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.c2.options.orderentry.boe3.v1.0.12.logoutresponsemessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_acknowledgment_message = ProtoField.new("Mass Cancel Acknowledgment Message", "cboe.c2.options.orderentry.boe3.v1.0.12.masscancelacknowledgmentmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.c2.options.orderentry.boe3.v1.0.12.masscancelid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.c2.options.orderentry.boe3.v1.0.12.masscancelinst", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_lockout = ProtoField.new("Mass Cancel Lockout", "cboe.c2.options.orderentry.boe3.v1.0.12.masscancellockout", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_order_message = ProtoField.new("Mass Cancel Order Message", "cboe.c2.options.orderentry.boe3.v1.0.12.masscancelordermessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.masscancelrejectreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_rejected_message = ProtoField.new("Mass Cancel Rejected Message", "cboe.c2.options.orderentry.boe3.v1.0.12.masscancelrejectedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.c2.options.orderentry.boe3.v1.0.12.matchingunit", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.c2.options.orderentry.boe3.v1.0.12.maturitydate", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.max_floor = ProtoField.new("Max Floor", "cboe.c2.options.orderentry.boe3.v1.0.12.maxfloor", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.message = ProtoField.new("Message", "cboe.c2.options.orderentry.boe3.v1.0.12.message", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.message_header = ProtoField.new("Message Header", "cboe.c2.options.orderentry.boe3.v1.0.12.messageheader", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.message_length = ProtoField.new("Message Length", "cboe.c2.options.orderentry.boe3.v1.0.12.messagelength", ftypes.UINT16)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.message_type = ProtoField.new("Message Type", "cboe.c2.options.orderentry.boe3.v1.0.12.messagetype", ftypes.UINT16)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.min_qty = ProtoField.new("Min Qty", "cboe.c2.options.orderentry.boe3.v1.0.12.minqty", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.modify_order_message = ProtoField.new("Modify Order Message", "cboe.c2.options.orderentry.boe3.v1.0.12.modifyordermessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.modifyrejectreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.modify_rejected_message = ProtoField.new("Modify Rejected Message", "cboe.c2.options.orderentry.boe3.v1.0.12.modifyrejectedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.mtp_modifier = ProtoField.new("Mtp Modifier", "cboe.c2.options.orderentry.boe3.v1.0.12.mtpmodifier", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "cboe.c2.options.orderentry.boe3.v1.0.12.multilegreportingtype", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_accepted_message = ProtoField.new("New Complex Instrument Accepted Message", "cboe.c2.options.orderentry.boe3.v1.0.12.newcomplexinstrumentacceptedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_message = ProtoField.new("New Complex Instrument Message", "cboe.c2.options.orderentry.boe3.v1.0.12.newcomplexinstrumentmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_rejected_message = ProtoField.new("New Complex Instrument Rejected Message", "cboe.c2.options.orderentry.boe3.v1.0.12.newcomplexinstrumentrejectedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_order_message = ProtoField.new("New Complex Order Message", "cboe.c2.options.orderentry.boe3.v1.0.12.newcomplexordermessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_order_short_message = ProtoField.new("New Complex Order Short Message", "cboe.c2.options.orderentry.boe3.v1.0.12.newcomplexordershortmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_order_message = ProtoField.new("New Order Message", "cboe.c2.options.orderentry.boe3.v1.0.12.newordermessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_order_short_message = ProtoField.new("New Order Short Message", "cboe.c2.options.orderentry.boe3.v1.0.12.newordershortmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.no_of_securities = ProtoField.new("No Of Securities", "cboe.c2.options.orderentry.boe3.v1.0.12.noofsecurities", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.c2.options.orderentry.boe3.v1.0.12.numberofunits", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.open_close = ProtoField.new("Open Close", "cboe.c2.options.orderentry.boe3.v1.0.12.openclose", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.ord_type = ProtoField.new("Ord Type", "cboe.c2.options.orderentry.boe3.v1.0.12.ordtype", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_acknowledgement_message = ProtoField.new("Order Acknowledgement Message", "cboe.c2.options.orderentry.boe3.v1.0.12.orderacknowledgementmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "cboe.c2.options.orderentry.boe3.v1.0.12.ordercancelledmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_execution_message = ProtoField.new("Order Execution Message", "cboe.c2.options.orderentry.boe3.v1.0.12.orderexecutionmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_id = ProtoField.new("Order Id", "cboe.c2.options.orderentry.boe3.v1.0.12.orderid", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_modified_message = ProtoField.new("Order Modified Message", "cboe.c2.options.orderentry.boe3.v1.0.12.ordermodifiedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_qty = ProtoField.new("Order Qty", "cboe.c2.options.orderentry.boe3.v1.0.12.orderqty", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_qty_short = ProtoField.new("Order Qty Short", "cboe.c2.options.orderentry.boe3.v1.0.12.orderqtyshort", ftypes.UINT16)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.orderrejectreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "cboe.c2.options.orderentry.boe3.v1.0.12.orderrejectedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_restated_message = ProtoField.new("Order Restated Message", "cboe.c2.options.orderentry.boe3.v1.0.12.orderrestatedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_restatement_reason = ProtoField.new("Order Restatement Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.orderrestatementreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.c2.options.orderentry.boe3.v1.0.12.origclordid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.orig_time = ProtoField.new("Orig Time", "cboe.c2.options.orderentry.boe3.v1.0.12.origtime", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.packet = ProtoField.new("Packet", "cboe.c2.options.orderentry.boe3.v1.0.12.packet", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.password = ProtoField.new("Password", "cboe.c2.options.orderentry.boe3.v1.0.12.password", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.posting_instruction = ProtoField.new("Posting Instruction", "cboe.c2.options.orderentry.boe3.v1.0.12.postinginstruction", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.c2.options.orderentry.boe3.v1.0.12.preventmatch", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.price_short = ProtoField.new("Price Short", "cboe.c2.options.orderentry.boe3.v1.0.12.priceshort", ftypes.DOUBLE)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_acknowledgement_message = ProtoField.new("Purge Acknowledgement Message", "cboe.c2.options.orderentry.boe3.v1.0.12.purgeacknowledgementmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_notification_message = ProtoField.new("Purge Notification Message", "cboe.c2.options.orderentry.boe3.v1.0.12.purgenotificationmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_orders_message = ProtoField.new("Purge Orders Message", "cboe.c2.options.orderentry.boe3.v1.0.12.purgeordersmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.purgerejectreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_rejected_message = ProtoField.new("Purge Rejected Message", "cboe.c2.options.orderentry.boe3.v1.0.12.purgerejectedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.put_or_call = ProtoField.new("Put Or Call", "cboe.c2.options.orderentry.boe3.v1.0.12.putorcall", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote = ProtoField.new("Quote", "cboe.c2.options.orderentry.boe3.v1.0.12.quote", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_acknowledgement = ProtoField.new("Quote Acknowledgement", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteacknowledgement", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_cancelled_message = ProtoField.new("Quote Cancelled Message", "cboe.c2.options.orderentry.boe3.v1.0.12.quotecancelledmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_cnt = ProtoField.new("Quote Cnt", "cboe.c2.options.orderentry.boe3.v1.0.12.quotecnt", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_execution_message = ProtoField.new("Quote Execution Message", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteexecutionmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.quoterejectreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_reject_sub_reason = ProtoField.new("Quote Reject Sub Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.quoterejectsubreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_restated_message = ProtoField.new("Quote Restated Message", "cboe.c2.options.orderentry.boe3.v1.0.12.quoterestatedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_result = ProtoField.new("Quote Result", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteresult", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_short = ProtoField.new("Quote Short", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteshort", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_symbol = ProtoField.new("Quote Symbol", "cboe.c2.options.orderentry.boe3.v1.0.12.quotesymbol", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_acknowledgement_message = ProtoField.new("Quote Update Acknowledgement Message", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteupdateacknowledgementmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_id = ProtoField.new("Quote Update Id", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteupdateid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_message = ProtoField.new("Quote Update Message", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteupdatemessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_rejected_message = ProtoField.new("Quote Update Rejected Message", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteupdaterejectedmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_short_message = ProtoField.new("Quote Update Short Message", "cboe.c2.options.orderentry.boe3.v1.0.12.quoteupdateshortmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.ratio_qty = ProtoField.new("Ratio Qty", "cboe.c2.options.orderentry.boe3.v1.0.12.ratioqty", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.replay_unspecified_unit = ProtoField.new("Replay Unspecified Unit", "cboe.c2.options.orderentry.boe3.v1.0.12.replayunspecifiedunit", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.request_received_time = ProtoField.new("Request Received Time", "cboe.c2.options.orderentry.boe3.v1.0.12.requestreceivedtime", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.c2.options.orderentry.boe3.v1.0.12.reservedfield", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.reset_risk_acknowledgement_message = ProtoField.new("Reset Risk Acknowledgement Message", "cboe.c2.options.orderentry.boe3.v1.0.12.resetriskacknowledgementmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.reset_risk_message = ProtoField.new("Reset Risk Message", "cboe.c2.options.orderentry.boe3.v1.0.12.resetriskmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.c2.options.orderentry.boe3.v1.0.12.restatementreason", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.c2.options.orderentry.boe3.v1.0.12.riskreset", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.risk_reset_result = ProtoField.new("Risk Reset Result", "cboe.c2.options.orderentry.boe3.v1.0.12.riskresetresult", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.risk_root = ProtoField.new("Risk Root", "cboe.c2.options.orderentry.boe3.v1.0.12.riskroot", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.risk_status_id = ProtoField.new("Risk Status Id", "cboe.c2.options.orderentry.boe3.v1.0.12.riskstatusid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.rout_strategy = ProtoField.new("Rout Strategy", "cboe.c2.options.orderentry.boe3.v1.0.12.routstrategy", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.route_delivery_method = ProtoField.new("Route Delivery Method", "cboe.c2.options.orderentry.boe3.v1.0.12.routedeliverymethod", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.routing_firm_id = ProtoField.new("Routing Firm Id", "cboe.c2.options.orderentry.boe3.v1.0.12.routingfirmid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.c2.options.orderentry.boe3.v1.0.12.routinginst", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.scratch_pad = ProtoField.new("Scratch Pad", "cboe.c2.options.orderentry.boe3.v1.0.12.scratchpad", ftypes.UINT16)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "cboe.c2.options.orderentry.boe3.v1.0.12.secondaryexecid", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.c2.options.orderentry.boe3.v1.0.12.secondaryorderid", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.send_time = ProtoField.new("Send Time", "cboe.c2.options.orderentry.boe3.v1.0.12.sendtime", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.c2.options.orderentry.boe3.v1.0.12.sequencenumber", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.session_id = ProtoField.new("Session Id", "cboe.c2.options.orderentry.boe3.v1.0.12.sessionid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.c2.options.orderentry.boe3.v1.0.12.sessionsubid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.side = ProtoField.new("Side", "cboe.c2.options.orderentry.boe3.v1.0.12.side", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.size_modifier = ProtoField.new("Size Modifier", "cboe.c2.options.orderentry.boe3.v1.0.12.sizemodifier", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.source_matching_unit = ProtoField.new("Source Matching Unit", "cboe.c2.options.orderentry.boe3.v1.0.12.sourcematchingunit", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.c2.options.orderentry.boe3.v1.0.12.startofmessage", ftypes.UINT16)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.stop_px = ProtoField.new("Stop Px", "cboe.c2.options.orderentry.boe3.v1.0.12.stoppx", ftypes.DOUBLE)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.strike_price = ProtoField.new("Strike Price", "cboe.c2.options.orderentry.boe3.v1.0.12.strikeprice", ftypes.DOUBLE)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.c2.options.orderentry.boe3.v1.0.12.subliquidityindicator", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.symbol = ProtoField.new("Symbol", "cboe.c2.options.orderentry.boe3.v1.0.12.symbol", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.target_matching_unit = ProtoField.new("Target Matching Unit", "cboe.c2.options.orderentry.boe3.v1.0.12.targetmatchingunit", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.text = ProtoField.new("Text", "cboe.c2.options.orderentry.boe3.v1.0.12.text", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.time_in_force = ProtoField.new("Time In Force", "cboe.c2.options.orderentry.boe3.v1.0.12.timeinforce", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.trade_cancel_correct_message = ProtoField.new("Trade Cancel Correct Message", "cboe.c2.options.orderentry.boe3.v1.0.12.tradecancelcorrectmessage", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.trade_date = ProtoField.new("Trade Date", "cboe.c2.options.orderentry.boe3.v1.0.12.tradedate", ftypes.UINT32)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.trading_group_id = ProtoField.new("Trading Group Id", "cboe.c2.options.orderentry.boe3.v1.0.12.tradinggroupid", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.c2.options.orderentry.boe3.v1.0.12.transactiontime", ftypes.UINT64)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.unique_id_level = ProtoField.new("Unique Id Level", "cboe.c2.options.orderentry.boe3.v1.0.12.uniqueidlevel", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.unit_number = ProtoField.new("Unit Number", "cboe.c2.options.orderentry.boe3.v1.0.12.unitnumber", ftypes.UINT8)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.c2.options.orderentry.boe3.v1.0.12.unitsequence", ftypes.STRING)
cboe_c2_options_orderentry_boe3_v1_0_12.fields.working_price = ProtoField.new("Working Price", "cboe.c2.options.orderentry.boe3.v1.0.12.workingprice", ftypes.DOUBLE)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Cboe C2 Options OrderEntry Boe3 1.0.12 Element Dissection Options
show.cancel_order_message = true
show.cancel_rejected_message = true
show.carried_restatement_message = true
show.complex_leg = true
show.done_for_day_message = true
show.login_request_message = true
show.login_response_message = true
show.logout_response_message = true
show.mass_cancel_acknowledgment_message = true
show.mass_cancel_inst = true
show.mass_cancel_order_message = true
show.mass_cancel_rejected_message = true
show.message_header = true
show.modify_order_message = true
show.modify_rejected_message = true
show.new_complex_instrument_accepted_message = true
show.new_complex_instrument_message = true
show.new_complex_instrument_rejected_message = true
show.new_complex_order_message = true
show.new_complex_order_short_message = true
show.new_order_message = true
show.new_order_short_message = true
show.order_acknowledgement_message = true
show.order_cancelled_message = true
show.order_execution_message = true
show.order_modified_message = true
show.order_rejected_message = true
show.order_restated_message = true
show.packet = true
show.prevent_match = true
show.purge_acknowledgement_message = true
show.purge_notification_message = true
show.purge_orders_message = true
show.purge_rejected_message = true
show.quote = true
show.quote_acknowledgement = true
show.quote_cancelled_message = true
show.quote_execution_message = true
show.quote_restated_message = true
show.quote_short = true
show.quote_update_acknowledgement_message = true
show.quote_update_message = true
show.quote_update_rejected_message = true
show.quote_update_short_message = true
show.reset_risk_acknowledgement_message = true
show.reset_risk_message = true
show.trade_cancel_correct_message = true
show.unit_sequence = true
show.message = false

-- Register Cboe C2 Options OrderEntry Boe3 1.0.12 Show Options
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_cancel_rejected_message = Pref.bool("Show Cancel Rejected Message", show.cancel_rejected_message, "Parse and add Cancel Rejected Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_carried_restatement_message = Pref.bool("Show Carried Restatement Message", show.carried_restatement_message, "Parse and add Carried Restatement Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_complex_leg = Pref.bool("Show Complex Leg", show.complex_leg, "Parse and add Complex Leg to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_done_for_day_message = Pref.bool("Show Done For Day Message", show.done_for_day_message, "Parse and add Done For Day Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_login_response_message = Pref.bool("Show Login Response Message", show.login_response_message, "Parse and add Login Response Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_logout_response_message = Pref.bool("Show Logout Response Message", show.logout_response_message, "Parse and add Logout Response Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_acknowledgment_message = Pref.bool("Show Mass Cancel Acknowledgment Message", show.mass_cancel_acknowledgment_message, "Parse and add Mass Cancel Acknowledgment Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_inst = Pref.bool("Show Mass Cancel Inst", show.mass_cancel_inst, "Parse and add Mass Cancel Inst to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_order_message = Pref.bool("Show Mass Cancel Order Message", show.mass_cancel_order_message, "Parse and add Mass Cancel Order Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_rejected_message = Pref.bool("Show Mass Cancel Rejected Message", show.mass_cancel_rejected_message, "Parse and add Mass Cancel Rejected Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_modify_rejected_message = Pref.bool("Show Modify Rejected Message", show.modify_rejected_message, "Parse and add Modify Rejected Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_accepted_message = Pref.bool("Show New Complex Instrument Accepted Message", show.new_complex_instrument_accepted_message, "Parse and add New Complex Instrument Accepted Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_message = Pref.bool("Show New Complex Instrument Message", show.new_complex_instrument_message, "Parse and add New Complex Instrument Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_rejected_message = Pref.bool("Show New Complex Instrument Rejected Message", show.new_complex_instrument_rejected_message, "Parse and add New Complex Instrument Rejected Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_message = Pref.bool("Show New Complex Order Message", show.new_complex_order_message, "Parse and add New Complex Order Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_short_message = Pref.bool("Show New Complex Order Short Message", show.new_complex_order_short_message, "Parse and add New Complex Order Short Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_order_short_message = Pref.bool("Show New Order Short Message", show.new_order_short_message, "Parse and add New Order Short Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_acknowledgement_message = Pref.bool("Show Order Acknowledgement Message", show.order_acknowledgement_message, "Parse and add Order Acknowledgement Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_cancelled_message = Pref.bool("Show Order Cancelled Message", show.order_cancelled_message, "Parse and add Order Cancelled Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_execution_message = Pref.bool("Show Order Execution Message", show.order_execution_message, "Parse and add Order Execution Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_modified_message = Pref.bool("Show Order Modified Message", show.order_modified_message, "Parse and add Order Modified Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_rejected_message = Pref.bool("Show Order Rejected Message", show.order_rejected_message, "Parse and add Order Rejected Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_restated_message = Pref.bool("Show Order Restated Message", show.order_restated_message, "Parse and add Order Restated Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_prevent_match = Pref.bool("Show Prevent Match", show.prevent_match, "Parse and add Prevent Match to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_acknowledgement_message = Pref.bool("Show Purge Acknowledgement Message", show.purge_acknowledgement_message, "Parse and add Purge Acknowledgement Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_notification_message = Pref.bool("Show Purge Notification Message", show.purge_notification_message, "Parse and add Purge Notification Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_orders_message = Pref.bool("Show Purge Orders Message", show.purge_orders_message, "Parse and add Purge Orders Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_rejected_message = Pref.bool("Show Purge Rejected Message", show.purge_rejected_message, "Parse and add Purge Rejected Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote = Pref.bool("Show Quote", show.quote, "Parse and add Quote to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_acknowledgement = Pref.bool("Show Quote Acknowledgement", show.quote_acknowledgement, "Parse and add Quote Acknowledgement to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_cancelled_message = Pref.bool("Show Quote Cancelled Message", show.quote_cancelled_message, "Parse and add Quote Cancelled Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_execution_message = Pref.bool("Show Quote Execution Message", show.quote_execution_message, "Parse and add Quote Execution Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_restated_message = Pref.bool("Show Quote Restated Message", show.quote_restated_message, "Parse and add Quote Restated Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_short = Pref.bool("Show Quote Short", show.quote_short, "Parse and add Quote Short to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_acknowledgement_message = Pref.bool("Show Quote Update Acknowledgement Message", show.quote_update_acknowledgement_message, "Parse and add Quote Update Acknowledgement Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_message = Pref.bool("Show Quote Update Message", show.quote_update_message, "Parse and add Quote Update Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_rejected_message = Pref.bool("Show Quote Update Rejected Message", show.quote_update_rejected_message, "Parse and add Quote Update Rejected Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_short_message = Pref.bool("Show Quote Update Short Message", show.quote_update_short_message, "Parse and add Quote Update Short Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_acknowledgement_message = Pref.bool("Show Reset Risk Acknowledgement Message", show.reset_risk_acknowledgement_message, "Parse and add Reset Risk Acknowledgement Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_message = Pref.bool("Show Reset Risk Message", show.reset_risk_message, "Parse and add Reset Risk Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_trade_cancel_correct_message = Pref.bool("Show Trade Cancel Correct Message", show.trade_cancel_correct_message, "Parse and add Trade Cancel Correct Message to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_unit_sequence = Pref.bool("Show Unit Sequence", show.unit_sequence, "Parse and add Unit Sequence to protocol tree")
cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")

-- Handle changed preferences
function cboe_c2_options_orderentry_boe3_v1_0_12.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.cancel_order_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_cancel_order_message then
    show.cancel_order_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_rejected_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_cancel_rejected_message then
    show.cancel_rejected_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_cancel_rejected_message
    changed = true
  end
  if show.carried_restatement_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_carried_restatement_message then
    show.carried_restatement_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_carried_restatement_message
    changed = true
  end
  if show.complex_leg ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_complex_leg then
    show.complex_leg = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_complex_leg
    changed = true
  end
  if show.done_for_day_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_done_for_day_message then
    show.done_for_day_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_done_for_day_message
    changed = true
  end
  if show.login_request_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_login_request_message then
    show.login_request_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_login_request_message
    changed = true
  end
  if show.login_response_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_login_response_message then
    show.login_response_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_login_response_message
    changed = true
  end
  if show.logout_response_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_logout_response_message then
    show.logout_response_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_logout_response_message
    changed = true
  end
  if show.mass_cancel_acknowledgment_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_acknowledgment_message then
    show.mass_cancel_acknowledgment_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_acknowledgment_message
    changed = true
  end
  if show.mass_cancel_inst ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_inst then
    show.mass_cancel_inst = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_inst
    changed = true
  end
  if show.mass_cancel_order_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_order_message then
    show.mass_cancel_order_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_order_message
    changed = true
  end
  if show.mass_cancel_rejected_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_rejected_message then
    show.mass_cancel_rejected_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_rejected_message
    changed = true
  end
  if show.message_header ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_message_header then
    show.message_header = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_message_header
    changed = true
  end
  if show.modify_order_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_modify_order_message then
    show.modify_order_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_modify_order_message
    changed = true
  end
  if show.modify_rejected_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_modify_rejected_message then
    show.modify_rejected_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_modify_rejected_message
    changed = true
  end
  if show.new_complex_instrument_accepted_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_accepted_message then
    show.new_complex_instrument_accepted_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_accepted_message
    changed = true
  end
  if show.new_complex_instrument_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_message then
    show.new_complex_instrument_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_message
    changed = true
  end
  if show.new_complex_instrument_rejected_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_rejected_message then
    show.new_complex_instrument_rejected_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_rejected_message
    changed = true
  end
  if show.new_complex_order_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_message then
    show.new_complex_order_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_message
    changed = true
  end
  if show.new_complex_order_short_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_short_message then
    show.new_complex_order_short_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_short_message
    changed = true
  end
  if show.new_order_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_order_message then
    show.new_order_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_order_message
    changed = true
  end
  if show.new_order_short_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_order_short_message then
    show.new_order_short_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_new_order_short_message
    changed = true
  end
  if show.order_acknowledgement_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_acknowledgement_message then
    show.order_acknowledgement_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_acknowledgement_message
    changed = true
  end
  if show.order_cancelled_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_cancelled_message then
    show.order_cancelled_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_cancelled_message
    changed = true
  end
  if show.order_execution_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_execution_message then
    show.order_execution_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_execution_message
    changed = true
  end
  if show.order_modified_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_modified_message then
    show.order_modified_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_modified_message
    changed = true
  end
  if show.order_rejected_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_rejected_message then
    show.order_rejected_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_rejected_message
    changed = true
  end
  if show.order_restated_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_restated_message then
    show.order_restated_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_order_restated_message
    changed = true
  end
  if show.packet ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_packet then
    show.packet = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_packet
    changed = true
  end
  if show.prevent_match ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_prevent_match then
    show.prevent_match = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_prevent_match
    changed = true
  end
  if show.purge_acknowledgement_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_acknowledgement_message then
    show.purge_acknowledgement_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_acknowledgement_message
    changed = true
  end
  if show.purge_notification_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_notification_message then
    show.purge_notification_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_notification_message
    changed = true
  end
  if show.purge_orders_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_orders_message then
    show.purge_orders_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_orders_message
    changed = true
  end
  if show.purge_rejected_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_rejected_message then
    show.purge_rejected_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_purge_rejected_message
    changed = true
  end
  if show.quote ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote then
    show.quote = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote
    changed = true
  end
  if show.quote_acknowledgement ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_acknowledgement then
    show.quote_acknowledgement = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_acknowledgement
    changed = true
  end
  if show.quote_cancelled_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_cancelled_message then
    show.quote_cancelled_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_cancelled_message
    changed = true
  end
  if show.quote_execution_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_execution_message then
    show.quote_execution_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_execution_message
    changed = true
  end
  if show.quote_restated_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_restated_message then
    show.quote_restated_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_restated_message
    changed = true
  end
  if show.quote_short ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_short then
    show.quote_short = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_short
    changed = true
  end
  if show.quote_update_acknowledgement_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_acknowledgement_message then
    show.quote_update_acknowledgement_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_acknowledgement_message
    changed = true
  end
  if show.quote_update_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_message then
    show.quote_update_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_message
    changed = true
  end
  if show.quote_update_rejected_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_rejected_message then
    show.quote_update_rejected_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_rejected_message
    changed = true
  end
  if show.quote_update_short_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_short_message then
    show.quote_update_short_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_short_message
    changed = true
  end
  if show.reset_risk_acknowledgement_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_acknowledgement_message then
    show.reset_risk_acknowledgement_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_acknowledgement_message
    changed = true
  end
  if show.reset_risk_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_message then
    show.reset_risk_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_message
    changed = true
  end
  if show.trade_cancel_correct_message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_trade_cancel_correct_message then
    show.trade_cancel_correct_message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_trade_cancel_correct_message
    changed = true
  end
  if show.unit_sequence ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_unit_sequence then
    show.unit_sequence = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_unit_sequence
    changed = true
  end
  if show.message ~= cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_message then
    show.message = cboe_c2_options_orderentry_boe3_v1_0_12.prefs.show_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe C2 Options OrderEntry Boe3 1.0.12
-----------------------------------------------------------------------

-- Size: Symbol
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol = 8

-- Display: Symbol
cboe_c2_options_orderentry_boe3_v1_0_12_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Size: Routing Firm Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id = 4

-- Display: Routing Firm Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.routing_firm_id = function(value)
  return "Routing Firm Id: "..value
end

-- Dissect: Routing Firm Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.routing_firm_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.routing_firm_id, range, value, display)

  return offset + length, value
end

-- Size: Clearing Firm
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm = 4

-- Display: Clearing Firm
cboe_c2_options_orderentry_boe3_v1_0_12_display.clearing_firm = function(value)
  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.clearing_firm(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Size: Cl Ord Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id = 20

-- Display: Cl Ord Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.cl_ord_id = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Size: Transaction Time
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time = 8

-- Display: Transaction Time
cboe_c2_options_orderentry_boe3_v1_0_12_display.transaction_time = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.transaction_time(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Size: In Flight
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight = 2

-- Display: In Flight
cboe_c2_options_orderentry_boe3_v1_0_12_display.in_flight = function(value)
  return "In Flight: "..value
end

-- Dissect: In Flight
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.in_flight(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.in_flight, range, value, display)

  return offset + length, value
end

-- Calculate size of: Done For Day Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.done_for_day_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  return index
end

-- Display: Done For Day Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.done_for_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Done For Day Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.done_for_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Done For Day Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.done_for_day_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.done_for_day_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.done_for_day_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.done_for_day_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.done_for_day_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.done_for_day_message_fields(buffer, offset, packet, parent)
end

-- Size: Client Id Attr
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.client_id_attr = 4

-- Display: Client Id Attr
cboe_c2_options_orderentry_boe3_v1_0_12_display.client_id_attr = function(value)
  return "Client Id Attr: "..value
end

-- Dissect: Client Id Attr
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.client_id_attr = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.client_id_attr
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.client_id_attr(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.client_id_attr, range, value, display)

  return offset + length, value
end

-- Size: Drill Thru Protection
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.drill_thru_protection = 8

-- Display: Drill Thru Protection
cboe_c2_options_orderentry_boe3_v1_0_12_display.drill_thru_protection = function(value)
  return "Drill Thru Protection: "..value
end

-- Translate: Drill Thru Protection
translate.drill_thru_protection = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Drill Thru Protection
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.drill_thru_protection = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.drill_thru_protection
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.drill_thru_protection(raw)
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.drill_thru_protection(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.drill_thru_protection, range, value, display)

  return offset + length, value
end

-- Size: Cum Qty
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cum_qty = 4

-- Display: Cum Qty
cboe_c2_options_orderentry_boe3_v1_0_12_display.cum_qty = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cum_qty = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cum_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cum_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Size: Clearing Optional Data
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_optional_data = 16

-- Display: Clearing Optional Data
cboe_c2_options_orderentry_boe3_v1_0_12_display.clearing_optional_data = function(value)
  return "Clearing Optional Data: "..value
end

-- Dissect: Clearing Optional Data
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_optional_data = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_optional_data
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.clearing_optional_data(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.clearing_optional_data, range, value, display)

  return offset + length, value
end

-- Size: Cmta Number
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number = 4

-- Display: Cmta Number
cboe_c2_options_orderentry_boe3_v1_0_12_display.cmta_number = function(value)
  return "Cmta Number: "..value
end

-- Dissect: Cmta Number
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cmta_number = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cmta_number(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cmta_number, range, value, display)

  return offset + length, value
end

-- Size: Auction Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.auction_id = 8

-- Display: Auction Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Ex Destination
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ex_destination = 1

-- Display: Ex Destination
cboe_c2_options_orderentry_boe3_v1_0_12_display.ex_destination = function(value)
  if value == "A" then
    return "Ex Destination: Nyse Arca (A)"
  end
  if value == "E" then
    return "Ex Destination: Nasdaq Ise (E)"
  end
  if value == "F" then
    return "Ex Destination: Miax (F)"
  end
  if value == "P" then
    return "Ex Destination: Miax Pearl (P)"
  end
  if value == "D" then
    return "Ex Destination: Miax Emerald (D)"
  end
  if value == "G" then
    return "Ex Destination: Edgx Options (G)"
  end
  if value == "H" then
    return "Ex Destination: C 2 (H)"
  end
  if value == "K" then
    return "Ex Destination: Box (K)"
  end
  if value == "M" then
    return "Ex Destination: Memx (M)"
  end
  if value == "N" then
    return "Ex Destination: Nasdaq (N)"
  end
  if value == "S" then
    return "Ex Destination: Nasdaq Bx (S)"
  end
  if value == "U" then
    return "Ex Destination: Nyse American (U)"
  end
  if value == "W" then
    return "Ex Destination: Cboe Options C 1 (W)"
  end
  if value == "X" then
    return "Ex Destination: Nasdaq Phlx (X)"
  end
  if value == "Z" then
    return "Ex Destination: Bzx Options (Z)"
  end
  if value == "g" then
    return "Ex Destination: Nasdaq Gemx (g)"
  end
  if value == "m" then
    return "Ex Destination: Nasdaq Mrx (m)"
  end
  if value == "w" then
    return "Ex Destination: Miax Sapphire (w)"
  end

  return "Ex Destination: Unknown("..value..")"
end

-- Dissect: Ex Destination
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ex_destination = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ex_destination
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.ex_destination(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.ex_destination, range, value, display)

  return offset + length, value
end

-- Size: Route Delivery Method
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.route_delivery_method = 3

-- Display: Route Delivery Method
cboe_c2_options_orderentry_boe3_v1_0_12_display.route_delivery_method = function(value)
  if value == "RTI" then
    return "Route Delivery Method: Route To Improve (RTI)"
  end
  if value == "RTF" then
    return "Route Delivery Method: Route To Fill (RTF)"
  end

  return "Route Delivery Method: Unknown("..value..")"
end

-- Dissect: Route Delivery Method
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.route_delivery_method = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.route_delivery_method
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.route_delivery_method(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.route_delivery_method, range, value, display)

  return offset + length, value
end

-- Size: Rout Strategy
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.rout_strategy = 6

-- Display: Rout Strategy
cboe_c2_options_orderentry_boe3_v1_0_12_display.rout_strategy = function(value)
  return "Rout Strategy: "..value
end

-- Dissect: Rout Strategy
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.rout_strategy = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.rout_strategy
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.rout_strategy(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.rout_strategy, range, value, display)

  return offset + length, value
end

-- Size: Routing Inst
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_inst = 4

-- Display: Routing Inst
cboe_c2_options_orderentry_boe3_v1_0_12_display.routing_inst = function(value)
  return "Routing Inst: "..value
end

-- Dissect: Routing Inst
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_inst = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_inst
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.routing_inst(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.stop_px = 8

-- Display: Stop Px
cboe_c2_options_orderentry_boe3_v1_0_12_display.stop_px = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
translate.stop_px = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Stop Px
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.stop_px = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.stop_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.stop_px(raw)
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.stop_px(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Size: Attributed Quote
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.attributed_quote = 1

-- Display: Attributed Quote
cboe_c2_options_orderentry_boe3_v1_0_12_display.attributed_quote = function(value)
  if value == "N" then
    return "Attributed Quote: Do Not Attribute Firm Executing Broker Id To This Order (N)"
  end
  if value == "Y" then
    return "Attributed Quote: Attribute Firm Executing Broker Id To This Order (Y)"
  end
  if value == "C" then
    return "Attributed Quote: Attribute Client Id Only (C)"
  end
  if value == "Z" then
    return "Attributed Quote: Attribute Both Clearing Firm Efid And Client Id (Z)"
  end

  return "Attributed Quote: Unknown("..value..")"
end

-- Dissect: Attributed Quote
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.attributed_quote = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.attributed_quote
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.attributed_quote(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.attributed_quote, range, value, display)

  return offset + length, value
end

-- Size: Expire Time
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.expire_time = 8

-- Display: Expire Time
cboe_c2_options_orderentry_boe3_v1_0_12_display.expire_time = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.expire_time = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.expire_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.expire_time(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Size: Working Price
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.working_price = 8

-- Display: Working Price
cboe_c2_options_orderentry_boe3_v1_0_12_display.working_price = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
translate.working_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.working_price = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.working_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.working_price(raw)
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.working_price(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.working_price, range, value, display)

  return offset + length, value
end

-- Size: Display Price
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_price = 8

-- Display: Display Price
cboe_c2_options_orderentry_boe3_v1_0_12_display.display_price = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
translate.display_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Display Price
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_price = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.display_price(raw)
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.display_price(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.display_price, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty = 4

-- Display: Leaves Qty
cboe_c2_options_orderentry_boe3_v1_0_12_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Open Close
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.open_close = 1

-- Display: Open Close
cboe_c2_options_orderentry_boe3_v1_0_12_display.open_close = function(value)
  if value == "O" then
    return "Open Close: Open (O)"
  end
  if value == "C" then
    return "Open Close: Close (C)"
  end
  if value == "N" then
    return "Open Close: None (N)"
  end

  return "Open Close: Unknown("..value..")"
end

-- Dissect: Open Close
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.open_close = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.open_close
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.open_close(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.open_close, range, value, display)

  return offset + length, value
end

-- Size: Put Or Call
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.put_or_call = 1

-- Display: Put Or Call
cboe_c2_options_orderentry_boe3_v1_0_12_display.put_or_call = function(value)
  if value == "0" then
    return "Put Or Call: Put (0)"
  end
  if value == "1" then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.strike_price = 8

-- Display: Strike Price
cboe_c2_options_orderentry_boe3_v1_0_12_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Price
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.strike_price(raw)
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.maturity_date = 4

-- Display: Maturity Date
cboe_c2_options_orderentry_boe3_v1_0_12_display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Trading Group Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trading_group_id = 1

-- Display: Trading Group Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.trading_group_id = function(value)
  return "Trading Group Id: "..value
end

-- Dissect: Trading Group Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trading_group_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trading_group_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.trading_group_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.trading_group_id, range, value, display)

  return offset + length, value
end

-- Size: Unique Id Level
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.unique_id_level = 1

-- Display: Unique Id Level
cboe_c2_options_orderentry_boe3_v1_0_12_display.unique_id_level = function(value)
  return "Unique Id Level: "..value
end

-- Dissect: Unique Id Level
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unique_id_level = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.unique_id_level
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.unique_id_level(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.unique_id_level, range, value, display)

  return offset + length, value
end

-- Size: Mtp Modifier
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mtp_modifier = 1

-- Display: Mtp Modifier
cboe_c2_options_orderentry_boe3_v1_0_12_display.mtp_modifier = function(value)
  return "Mtp Modifier: "..value
end

-- Dissect: Mtp Modifier
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mtp_modifier = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mtp_modifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.mtp_modifier(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.mtp_modifier, range, value, display)

  return offset + length, value
end

-- Calculate size of: Prevent Match
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.prevent_match = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mtp_modifier

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.unique_id_level

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trading_group_id

  return index
end

-- Display: Prevent Match
cboe_c2_options_orderentry_boe3_v1_0_12_display.prevent_match = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Prevent Match
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.prevent_match_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mtp Modifier: 1 Byte Ascii String
  index, mtp_modifier = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mtp_modifier(buffer, index, packet, parent)

  -- Unique Id Level: 1 Byte Ascii String
  index, unique_id_level = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unique_id_level(buffer, index, packet, parent)

  -- Trading Group Id: 1 Byte Ascii String
  index, trading_group_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trading_group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Prevent Match
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.prevent_match = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.prevent_match then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.prevent_match(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.prevent_match(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.prevent_match, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.prevent_match_fields(buffer, offset, packet, parent)
end

-- Size: Order Qty
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty = 4

-- Display: Order Qty
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Max Floor
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor = 4

-- Display: Max Floor
cboe_c2_options_orderentry_boe3_v1_0_12_display.max_floor = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.max_floor = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.max_floor(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Size: Display Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_indicator = 1

-- Display: Display Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_display.display_indicator = function(value)
  if value == "V" then
    return "Display Indicator: Default (V)"
  end
  if value == "P" then
    return "Display Indicator: Price Adjust (P)"
  end
  if value == "m" then
    return "Display Indicator: Multiple Price Adjust (m)"
  end
  if value == "R" then
    return "Display Indicator: Reject The Order If It Cannot Be Booked And Displayed Without (R)"
  end

  return "Display Indicator: Unknown("..value..")"
end

-- Dissect: Display Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_indicator = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.display_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Size: Clearing Account
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account = 4

-- Display: Clearing Account
cboe_c2_options_orderentry_boe3_v1_0_12_display.clearing_account = function(value)
  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.clearing_account(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Size: Account
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.account = 16

-- Display: Account
cboe_c2_options_orderentry_boe3_v1_0_12_display.account = function(value)
  return "Account: "..value
end

-- Dissect: Account
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.account = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.account
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.account(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.account, range, value, display)

  return offset + length, value
end

-- Size: Capacity
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.capacity = 1

-- Display: Capacity
cboe_c2_options_orderentry_boe3_v1_0_12_display.capacity = function(value)
  if value == "C" then
    return "Capacity: Customer (C)"
  end
  if value == "M" then
    return "Capacity: Market Maker (M)"
  end
  if value == "F" then
    return "Capacity: Firm (F)"
  end
  if value == "U" then
    return "Capacity: Professional Customer (U)"
  end
  if value == "N" then
    return "Capacity: Away Market Maker (N)"
  end
  if value == "B" then
    return "Capacity: Broker Dealer (B)"
  end
  if value == "J" then
    return "Capacity: Joint Back Office (J)"
  end
  if value == "L" then
    return "Capacity: Non Trading Permit Holder Affiliate (L)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.capacity = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.capacity(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.capacity, range, value, display)

  return offset + length, value
end

-- Size: Min Qty
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.min_qty = 4

-- Display: Min Qty
cboe_c2_options_orderentry_boe3_v1_0_12_display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.min_qty = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.min_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.min_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.time_in_force = 1

-- Display: Time In Force
cboe_c2_options_orderentry_boe3_v1_0_12_display.time_in_force = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Gtc (1)"
  end
  if value == "2" then
    return "Time In Force: At The Open (2)"
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
  if value == "7" then
    return "Time In Force: At The Closee (7)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type = 1

-- Display: Ord Type
cboe_c2_options_orderentry_boe3_v1_0_12_display.ord_type = function(value)
  if value == "1" then
    return "Ord Type: Market (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
  end
  if value == "3" then
    return "Ord Type: Stop (3)"
  end
  if value == "4" then
    return "Ord Type: Stop Limit (4)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ord_type = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.ord_type(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Exec Inst
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_inst = 1

-- Display: Exec Inst
cboe_c2_options_orderentry_boe3_v1_0_12_display.exec_inst = function(value)
  if value == "f" then
    return "Exec Inst: Intermarket Sweep (f)"
  end
  if value == "G" then
    return "Exec Inst: All Or None (G)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_inst = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_inst
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.exec_inst(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Size: Side
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side = 1

-- Display: Side
cboe_c2_options_orderentry_boe3_v1_0_12_display.side = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.side(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Order Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id = 8

-- Display: Order Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Carried Restatement Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.carried_restatement_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.time_in_force

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.min_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.capacity

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.maturity_date

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.strike_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.put_or_call

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.open_close

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.working_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.expire_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.attributed_quote

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.stop_px

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.rout_strategy

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.route_delivery_method

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ex_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.target_party_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.auction_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_optional_data

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cum_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.drill_thru_protection

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.equity_party_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.client_id_attr

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.frequent_trader_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_eligibility

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.combo_order

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.compression

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_origin

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.strategy_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.held

  return index
end

-- Display: Carried Restatement Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.carried_restatement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Carried Restatement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.carried_restatement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Ascii String Enum with 2 values
  index, exec_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_inst(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 4 values
  index, ord_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.time_in_force(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.min_qty(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 8 values
  index, capacity = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.capacity(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.account(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account(buffer, index, packet, parent)

  -- Display Indicator: 1 Byte Ascii String Enum with 4 values
  index, display_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_indicator(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.max_floor(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.prevent_match(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, maturity_date = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.maturity_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.strike_price(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Ascii String Enum with 2 values
  index, put_or_call = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.put_or_call(buffer, index, packet, parent)

  -- Open Close: 1 Byte Ascii String Enum with 3 values
  index, open_close = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.open_close(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leaves_qty(buffer, index, packet, parent)

  -- Display Price: 8 Byte Signed Fixed Width Integer
  index, display_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_price(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.working_price(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.expire_time(buffer, index, packet, parent)

  -- Attributed Quote: 1 Byte Ascii String Enum with 4 values
  index, attributed_quote = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.attributed_quote(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index, stop_px = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.stop_px(buffer, index, packet, parent)

  -- Routing Inst: 4 Byte Ascii String
  index, routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_inst(buffer, index, packet, parent)

  -- Rout Strategy: 6 Byte Ascii String
  index, rout_strategy = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.rout_strategy(buffer, index, packet, parent)

  -- Route Delivery Method: 3 Byte Ascii String Enum with 2 values
  index, route_delivery_method = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.route_delivery_method(buffer, index, packet, parent)

  -- Ex Destination: 1 Byte Ascii String Enum with 18 values
  index, ex_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ex_destination(buffer, index, packet, parent)

  -- Target Party Id
  index, target_party_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.target_party_id(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.auction_id(buffer, index, packet, parent)

  -- Cmta Number: 4 Byte Unsigned Fixed Width Integer
  index, cmta_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cmta_number(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Clearing Optional Data: 16 Byte Ascii String
  index, clearing_optional_data = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_optional_data(buffer, index, packet, parent)

  -- Cum Qty: 4 Byte Unsigned Fixed Width Integer
  index, cum_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cum_qty(buffer, index, packet, parent)

  -- Drill Thru Protection: 8 Byte Signed Fixed Width Integer
  index, drill_thru_protection = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.drill_thru_protection(buffer, index, packet, parent)

  -- Equity Party Id
  index, equity_party_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.equity_party_id(buffer, index, packet, parent)

  -- Client Id Attr: 4 Byte Ascii String
  index, client_id_attr = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.client_id_attr(buffer, index, packet, parent)

  -- Frequent Trader Id
  index, frequent_trader_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Session Eligibility
  index, session_eligibility = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_eligibility(buffer, index, packet, parent)

  -- Combo Order
  index, combo_order = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.combo_order(buffer, index, packet, parent)

  -- Compression
  index, compression = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.compression(buffer, index, packet, parent)

  -- Floor Destination
  index, floor_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_destination(buffer, index, packet, parent)

  -- Floor Routing Inst
  index, floor_routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_routing_inst(buffer, index, packet, parent)

  -- Order Origin
  index, order_origin = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_origin(buffer, index, packet, parent)

  -- Price Type
  index, price_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price_type(buffer, index, packet, parent)

  -- Strategy Id
  index, strategy_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.strategy_id(buffer, index, packet, parent)

  -- Held
  index, held = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.held(buffer, index, packet, parent)

  return index
end

-- Dissect: Carried Restatement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.carried_restatement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.carried_restatement_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.carried_restatement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.carried_restatement_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.carried_restatement_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.carried_restatement_message_fields(buffer, offset, packet, parent)
end

-- Size: Text
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.text = 60

-- Display: Text
cboe_c2_options_orderentry_boe3_v1_0_12_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.text = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.text
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.text(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.text, range, value, display)

  return offset + length, value
end

-- Size: Order Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_reject_reason = 1

-- Display: Order Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_reject_reason = function(value)
  return "Order Reject Reason: "..value
end

-- Dissect: Order Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: No Of Securities
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.no_of_securities = 4

-- Display: No Of Securities
cboe_c2_options_orderentry_boe3_v1_0_12_display.no_of_securities = function(value)
  return "No Of Securities: "..value
end

-- Dissect: No Of Securities
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.no_of_securities = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.no_of_securities
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.no_of_securities(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.no_of_securities, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Complex Instrument Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_rejected_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.no_of_securities

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_reject_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.text

  return index
end

-- Display: New Complex Instrument Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_instrument_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Complex Instrument Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- No Of Securities: 4 Byte Unsigned Fixed Width Integer
  index, no_of_securities = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.no_of_securities(buffer, index, packet, parent)

  -- Order Reject Reason: 1 Byte Ascii String
  index, order_reject_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_reject_reason(buffer, index, packet, parent)

  -- Text: 60 Byte Ascii String
  index, text = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Instrument Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_complex_instrument_rejected_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_instrument_rejected_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_rejected_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Ratio Qty
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ratio_qty = 4

-- Display: Ratio Qty
cboe_c2_options_orderentry_boe3_v1_0_12_display.ratio_qty = function(value)
  return "Ratio Qty: "..value
end

-- Dissect: Ratio Qty
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ratio_qty = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ratio_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.ratio_qty(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Cfi Code
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cfi_code = 2

-- Display: Cfi Code
cboe_c2_options_orderentry_boe3_v1_0_12_display.cfi_code = function(value)
  if value == "O" then
    return "Cfi Code: Options (O)"
  end

  return "Cfi Code: Unknown("..value..")"
end

-- Dissect: Cfi Code
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cfi_code = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cfi_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Leg
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.complex_leg = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.maturity_date

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.strike_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cfi_code

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ratio_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  return index
end

-- Display: Complex Leg
cboe_c2_options_orderentry_boe3_v1_0_12_display.complex_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.complex_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, maturity_date = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.maturity_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.strike_price(buffer, index, packet, parent)

  -- Cfi Code: 2 Byte Ascii String Enum with 1 values
  index, cfi_code = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cfi_code(buffer, index, packet, parent)

  -- Ratio Qty: 4 Byte Unsigned Fixed Width Integer
  index, ratio_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ratio_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.complex_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_leg then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.complex_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.complex_leg(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.complex_leg, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.complex_leg_fields(buffer, offset, packet, parent)
end

-- Size: Leg Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leg_cnt = 1

-- Display: Leg Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_display.leg_cnt = function(value)
  return "Leg Cnt: "..value
end

-- Dissect: Leg Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leg_cnt = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leg_cnt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.leg_cnt(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.leg_cnt, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Complex Instrument Accepted Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_accepted_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.no_of_securities

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leg_cnt

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 27

  return index
end

-- Display: New Complex Instrument Accepted Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_instrument_accepted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Complex Instrument Accepted Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_accepted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- No Of Securities: 4 Byte Unsigned Fixed Width Integer
  index, no_of_securities = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.no_of_securities(buffer, index, packet, parent)

  -- Leg Cnt: 1 Byte Unsigned Fixed Width Integer
  index, leg_cnt = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leg_cnt(buffer, index, packet, parent)

  -- Complex Leg: Struct of 6 fields
  for i = 1, leg_cnt do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.complex_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Complex Instrument Accepted Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_accepted_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_instrument_accepted_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_accepted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_instrument_accepted_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_accepted_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_accepted_message_fields(buffer, offset, packet, parent)
end

-- Size: Mass Cancel Lockout
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_lockout = 1

-- Display: Mass Cancel Lockout
cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_lockout = function(value)
  if value == "Y" then
    return "Mass Cancel Lockout: Lockout (Y)"
  end
  if value == "N" then
    return "Mass Cancel Lockout: No Lockout (N)"
  end

  return "Mass Cancel Lockout: Unknown("..value..")"
end

-- Dissect: Mass Cancel Lockout
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_lockout = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_lockout
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_lockout(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_lockout, range, value, display)

  return offset + length, value
end

-- Size: Risk Root
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_root = 6

-- Display: Risk Root
cboe_c2_options_orderentry_boe3_v1_0_12_display.risk_root = function(value)
  return "Risk Root: "..value
end

-- Dissect: Risk Root
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_root = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_root
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.risk_root(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.risk_root, range, value, display)

  return offset + length, value
end

-- Size: Source Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.source_matching_unit = 1

-- Display: Source Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_display.source_matching_unit = function(value)
  return "Source Matching Unit: "..value
end

-- Dissect: Source Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.source_matching_unit = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.source_matching_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.source_matching_unit(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.source_matching_unit, range, value, display)

  return offset + length, value
end

-- Size: Cancelled Order Count
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancelled_order_count = 4

-- Display: Cancelled Order Count
cboe_c2_options_orderentry_boe3_v1_0_12_display.cancelled_order_count = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancelled_order_count = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancelled_order_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cancelled_order_count(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Size: Mass Cancel Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id = 20

-- Display: Mass Cancel Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_id = function(value)
  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Purge Notification Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_notification_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancelled_order_count

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.source_matching_unit

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_root

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_lockout

  return index
end

-- Display: Purge Notification Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Purge Notification Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: 20 Byte Ascii String
  index, mass_cancel_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Cancelled Order Count: 4 Byte Unsigned Fixed Width Integer
  index, cancelled_order_count = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancelled_order_count(buffer, index, packet, parent)

  -- Source Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, source_matching_unit = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.source_matching_unit(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Risk Root: 6 Byte Ascii String
  index, risk_root = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_root(buffer, index, packet, parent)

  -- Mass Cancel Lockout: 1 Byte Ascii String Enum with 2 values
  index, mass_cancel_lockout = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_lockout(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Notification Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.purge_notification_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_notification_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_notification_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Request Received Time
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time = 8

-- Display: Request Received Time
cboe_c2_options_orderentry_boe3_v1_0_12_display.request_received_time = function(value)
  return "Request Received Time: "..value
end

-- Dissect: Request Received Time
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.request_received_time = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.request_received_time(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.request_received_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Purge Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_acknowledgement_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancelled_order_count

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.source_matching_unit

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time

  return index
end

-- Display: Purge Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_acknowledgement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Purge Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_acknowledgement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: 20 Byte Ascii String
  index, mass_cancel_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Cancelled Order Count: 4 Byte Unsigned Fixed Width Integer
  index, cancelled_order_count = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancelled_order_count(buffer, index, packet, parent)

  -- Source Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, source_matching_unit = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.source_matching_unit(buffer, index, packet, parent)

  -- Request Received Time: 8 Byte Unsigned Fixed Width Integer
  index, request_received_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_acknowledgement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.purge_acknowledgement_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_acknowledgement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_acknowledgement_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_acknowledgement_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_acknowledgement_message_fields(buffer, offset, packet, parent)
end

-- Size: Mass Cancel Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_reject_reason = 1

-- Display: Mass Cancel Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_reject_reason = function(value)
  return "Mass Cancel Reject Reason: "..value
end

-- Dissect: Mass Cancel Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_rejected_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_reject_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.text

  return index
end

-- Display: Mass Cancel Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: 20 Byte Ascii String
  index, mass_cancel_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: 1 Byte Ascii String
  index, mass_cancel_reject_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_reject_reason(buffer, index, packet, parent)

  -- Text: 60 Byte Ascii String
  index, text = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_rejected_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_rejected_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_rejected_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_rejected_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Acknowledgment Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_acknowledgment_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancelled_order_count

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time

  return index
end

-- Display: Mass Cancel Acknowledgment Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_acknowledgment_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgment Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_acknowledgment_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: 20 Byte Ascii String
  index, mass_cancel_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Cancelled Order Count: 4 Byte Unsigned Fixed Width Integer
  index, cancelled_order_count = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancelled_order_count(buffer, index, packet, parent)

  -- Request Received Time: 8 Byte Unsigned Fixed Width Integer
  index, request_received_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgment Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_acknowledgment_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_acknowledgment_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_acknowledgment_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_acknowledgment_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_acknowledgment_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_acknowledgment_message_fields(buffer, offset, packet, parent)
end

-- Size: Risk Reset Result
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_reset_result = 1

-- Display: Risk Reset Result
cboe_c2_options_orderentry_boe3_v1_0_12_display.risk_reset_result = function(value)
  if value == " " then
    return "Risk Reset Result: Ignored (<whitespace>)"
  end
  if value == "C" then
    return "Risk Reset Result: Rejected Exceeds Custom Group Id Limit (C)"
  end
  if value == "D" then
    return "Risk Reset Result: Rejected Automatic Risk Resets Are Disabled (D)"
  end
  if value == "E" then
    return "Risk Reset Result: Rejected Empty Reset Risk Field (E)"
  end
  if value == "F" then
    return "Risk Reset Result: Rejected Exceeds Firm Reset Limit (F)"
  end
  if value == "I" then
    return "Risk Reset Result: Rejected Incorrect Data Center (I)"
  end
  if value == "M" then
    return "Risk Reset Result: Rejected Invalid Matching Unit (M)"
  end
  if value == "S" then
    return "Risk Reset Result: Rejected Exceeds Risk Root Reset Limit (S)"
  end
  if value == "U" then
    return "Risk Reset Result: Rejected Invalid Risk Root (U)"
  end
  if value == "Y" then
    return "Risk Reset Result: Success (Y)"
  end
  if value == "c" then
    return "Risk Reset Result: Rejected Invalid Efid Clearing Firm (c)"
  end
  if value == "y" then
    return "Risk Reset Result: Rejected In Replay (y)"
  end

  return "Risk Reset Result: Unknown("..value..")"
end

-- Dissect: Risk Reset Result
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_reset_result = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_reset_result
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.risk_reset_result(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.risk_reset_result, range, value, display)

  return offset + length, value
end

-- Size: Risk Status Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_status_id = 16

-- Display: Risk Status Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.risk_status_id = function(value)
  return "Risk Status Id: "..value
end

-- Dissect: Risk Status Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_status_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_status_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.risk_status_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.risk_status_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reset Risk Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reset_risk_acknowledgement_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_status_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_reset_result

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time

  return index
end

-- Display: Reset Risk Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.reset_risk_acknowledgement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reset Risk Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reset_risk_acknowledgement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Risk Status Id: 16 Byte Ascii String
  index, risk_status_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_status_id(buffer, index, packet, parent)

  -- Risk Reset Result: 1 Byte Ascii String Enum with 12 values
  index, risk_reset_result = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_reset_result(buffer, index, packet, parent)

  -- Request Received Time: 8 Byte Unsigned Fixed Width Integer
  index, request_received_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reset_risk_acknowledgement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reset_risk_acknowledgement_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reset_risk_acknowledgement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.reset_risk_acknowledgement_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.reset_risk_acknowledgement_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reset_risk_acknowledgement_message_fields(buffer, offset, packet, parent)
end

-- Size: Purge Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_reject_reason = 1

-- Display: Purge Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_reject_reason = function(value)
  return "Purge Reject Reason: "..value
end

-- Dissect: Purge Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Purge Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_rejected_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_reject_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.text

  return index
end

-- Display: Purge Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Purge Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Mass Cancel Id: 20 Byte Ascii String
  index, mass_cancel_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Purge Reject Reason: 1 Byte Ascii String
  index, purge_reject_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_reject_reason(buffer, index, packet, parent)

  -- Text: 60 Byte Ascii String
  index, text = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.purge_rejected_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_rejected_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_rejected_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Orig Time
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_time = 8

-- Display: Orig Time
cboe_c2_options_orderentry_boe3_v1_0_12_display.orig_time = function(value)
  return "Orig Time: "..value
end

-- Dissect: Orig Time
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.orig_time = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.orig_time(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Size: Corrected Size
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.corrected_size = 4

-- Display: Corrected Size
cboe_c2_options_orderentry_boe3_v1_0_12_display.corrected_size = function(value)
  return "Corrected Size: "..value
end

-- Dissect: Corrected Size
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.corrected_size = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.corrected_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.corrected_size(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.corrected_size, range, value, display)

  return offset + length, value
end

-- Size: Corrected Price
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.corrected_price = 8

-- Display: Corrected Price
cboe_c2_options_orderentry_boe3_v1_0_12_display.corrected_price = function(value)
  return "Corrected Price: "..value
end

-- Dissect: Corrected Price
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.corrected_price = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.corrected_price
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.corrected_price(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Size: Last Px
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_px = 8

-- Display: Last Px
cboe_c2_options_orderentry_boe3_v1_0_12_display.last_px = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_px = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = translate.last_px(raw)
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.last_px(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Last Shares
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_shares = 4

-- Display: Last Shares
cboe_c2_options_orderentry_boe3_v1_0_12_display.last_shares = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_shares = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_shares
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.last_shares(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Size: Sub Liquidity Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sub_liquidity_indicator = 1

-- Display: Sub Liquidity Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_display.sub_liquidity_indicator = function(value)
  if value == "0x00" then
    return "Sub Liquidity Indicator: No Additional Information (0x00)"
  end
  if value == "S" then
    return "Sub Liquidity Indicator: Execution From Order That Set The Nbbo (S)"
  end
  if value == "C" then
    return "Sub Liquidity Indicator: Carried (C)"
  end
  if value == "D" then
    return "Sub Liquidity Indicator: Done For Day (D)"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sub_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sub_liquidity_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.sub_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Base Liquidity Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.base_liquidity_indicator = 1

-- Display: Base Liquidity Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_display.base_liquidity_indicator = function(value)
  if value == "A" then
    return "Base Liquidity Indicator: Added Liquidity (A)"
  end
  if value == "R" then
    return "Base Liquidity Indicator: Removed Liquidity (R)"
  end
  if value == "X" then
    return "Base Liquidity Indicator: Routed To Another Market (X)"
  end
  if value == "C" then
    return "Base Liquidity Indicator: Auction Uncrossing (C)"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.base_liquidity_indicator = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.base_liquidity_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.base_liquidity_indicator(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Size: Exec Ref Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_ref_id = 8

-- Display: Exec Ref Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.exec_ref_id = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_ref_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_ref_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.exec_ref_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancel Correct Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trade_cancel_correct_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_ref_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.base_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sub_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_shares

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_px

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.corrected_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.corrected_size

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.maturity_date

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.strike_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.put_or_call

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.capacity

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.open_close

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.marketing_fee_code

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.target_party_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number

  return index
end

-- Display: Trade Cancel Correct Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.trade_cancel_correct_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Correct Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trade_cancel_correct_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Exec Ref Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_ref_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_ref_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Base Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, base_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, sub_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer
  index, last_shares = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_px(buffer, index, packet, parent)

  -- Corrected Price: 8 Byte Unsigned Fixed Width Integer
  index, corrected_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.corrected_price(buffer, index, packet, parent)

  -- Corrected Size: 4 Byte Unsigned Fixed Width Integer
  index, corrected_size = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.corrected_size(buffer, index, packet, parent)

  -- Orig Time: 8 Byte Unsigned Fixed Width Integer
  index, orig_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.orig_time(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, maturity_date = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.maturity_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.strike_price(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Ascii String Enum with 2 values
  index, put_or_call = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.put_or_call(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 8 values
  index, capacity = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.capacity(buffer, index, packet, parent)

  -- Open Close: 1 Byte Ascii String Enum with 3 values
  index, open_close = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.open_close(buffer, index, packet, parent)

  -- Marketing Fee Code
  index, marketing_fee_code = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.marketing_fee_code(buffer, index, packet, parent)

  -- Target Party Id
  index, target_party_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.target_party_id(buffer, index, packet, parent)

  -- Cmta Number: 4 Byte Unsigned Fixed Width Integer
  index, cmta_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cmta_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trade_cancel_correct_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_correct_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trade_cancel_correct_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.trade_cancel_correct_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.trade_cancel_correct_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trade_cancel_correct_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Date
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trade_date = 4

-- Display: Trade Date
cboe_c2_options_orderentry_boe3_v1_0_12_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Fee Code
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.fee_code = 2

-- Display: Fee Code
cboe_c2_options_orderentry_boe3_v1_0_12_display.fee_code = function(value)
  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.fee_code = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.fee_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.fee_code(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Size: Contra Capacity
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_capacity = 1

-- Display: Contra Capacity
cboe_c2_options_orderentry_boe3_v1_0_12_display.contra_capacity = function(value)
  return "Contra Capacity: "..value
end

-- Dissect: Contra Capacity
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.contra_capacity = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.contra_capacity(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.contra_capacity, range, value, display)

  return offset + length, value
end

-- Size: Contra Trader
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_trader = 4

-- Display: Contra Trader
cboe_c2_options_orderentry_boe3_v1_0_12_display.contra_trader = function(value)
  return "Contra Trader: "..value
end

-- Dissect: Contra Trader
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.contra_trader = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_trader
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.contra_trader(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.contra_trader, range, value, display)

  return offset + length, value
end

-- Size: Quote Symbol
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_symbol = 1

-- Display: Quote Symbol
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_symbol = function(value)
  return "Quote Symbol: "..value
end

-- Dissect: Quote Symbol
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_symbol = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_symbol(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_symbol, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_id = 8

-- Display: Exec Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.exec_id = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Size: Quote Update Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id = 16

-- Display: Quote Update Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_id = function(value)
  return "Quote Update Id: "..value
end

-- Dissect: Quote Update Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Execution Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_execution_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_shares

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_px

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_trader

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_capacity

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.base_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sub_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.fee_code

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.marketing_fee_code

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trade_date

  return index
end

-- Display: Quote Execution Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Execution Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: 16 Byte Ascii String
  index, quote_update_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_id(buffer, index, packet, parent)

  -- Quote Symbol: 1 Byte Ascii String
  index, quote_symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_symbol(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer
  index, last_shares = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leaves_qty(buffer, index, packet, parent)

  -- Contra Trader: 4 Byte Ascii String
  index, contra_trader = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.contra_trader(buffer, index, packet, parent)

  -- Contra Capacity: 1 Byte Ascii String
  index, contra_capacity = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.contra_capacity(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Base Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, base_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, sub_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Fee Code: 2 Byte Ascii String
  index, fee_code = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.fee_code(buffer, index, packet, parent)

  -- Marketing Fee Code
  index, marketing_fee_code = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.marketing_fee_code(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trade_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Execution Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_execution_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_execution_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_execution_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Secondary Exec Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.secondary_exec_id = 8

-- Display: Secondary Exec Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.secondary_exec_id = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.secondary_exec_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.secondary_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.secondary_exec_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Multileg Reporting Type
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.multileg_reporting_type = 1

-- Display: Multileg Reporting Type
cboe_c2_options_orderentry_boe3_v1_0_12_display.multileg_reporting_type = function(value)
  if value == "1" then
    return "Multileg Reporting Type: Singleleg Instrument (1)"
  end
  if value == "2" then
    return "Multileg Reporting Type: Individual Leg Of Multileg Instrument (2)"
  end
  if value == "3" then
    return "Multileg Reporting Type: Entire Multileg Instrument Package (3)"
  end
  if value == "4" then
    return "Multileg Reporting Type: Last Individual Leg Of Multileg Instrument (4)"
  end

  return "Multileg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multileg Reporting Type
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.multileg_reporting_type = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.multileg_reporting_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.multileg_reporting_type(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- Size: Contra Broker
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_broker = 4

-- Display: Contra Broker
cboe_c2_options_orderentry_boe3_v1_0_12_display.contra_broker = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.contra_broker = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_broker
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.contra_broker(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Execution Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_execution_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_shares

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_px

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.base_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sub_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_broker

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_trader

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.contra_capacity

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.fee_code

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.marketing_fee_code

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cross_exclusion_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trade_date

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.multileg_reporting_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.secondary_exec_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trade_through_alert_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sender_location_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_trader_acronym

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_trade_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ex_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.equity_ex_destination

  return index
end

-- Display: Order Execution Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Execution Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, exec_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_id(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer
  index, last_shares = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leaves_qty(buffer, index, packet, parent)

  -- Base Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, base_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, sub_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Contra Broker: 4 Byte Ascii String
  index, contra_broker = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.contra_broker(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Contra Trader: 4 Byte Ascii String
  index, contra_trader = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.contra_trader(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Contra Capacity: 1 Byte Ascii String
  index, contra_capacity = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.contra_capacity(buffer, index, packet, parent)

  -- Fee Code: 2 Byte Ascii String
  index, fee_code = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.fee_code(buffer, index, packet, parent)

  -- Marketing Fee Code
  index, marketing_fee_code = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.marketing_fee_code(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Cross Exclusion Indicator
  index, cross_exclusion_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cross_exclusion_indicator(buffer, index, packet, parent)

  -- Trade Date: 4 Byte Unsigned Fixed Width Integer
  index, trade_date = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trade_date(buffer, index, packet, parent)

  -- Multileg Reporting Type: 1 Byte Ascii String Enum with 4 values
  index, multileg_reporting_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.multileg_reporting_type(buffer, index, packet, parent)

  -- Secondary Exec Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_exec_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.secondary_exec_id(buffer, index, packet, parent)

  -- Price Type
  index, price_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price_type(buffer, index, packet, parent)

  -- Trade Through Alert Type
  index, trade_through_alert_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trade_through_alert_type(buffer, index, packet, parent)

  -- Sender Location Id
  index, sender_location_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sender_location_id(buffer, index, packet, parent)

  -- Floor Trader Acronym
  index, floor_trader_acronym = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_trader_acronym(buffer, index, packet, parent)

  -- Floor Trade Time
  index, floor_trade_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_trade_time(buffer, index, packet, parent)

  -- Ex Destination: 1 Byte Ascii String Enum with 18 values
  index, ex_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ex_destination(buffer, index, packet, parent)

  -- Equity Ex Destination
  index, equity_ex_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.equity_ex_destination(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_execution_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_execution_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_execution_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_reject_reason = 1

-- Display: Cancel Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_reject_reason = function(value)
  return "Cancel Reject Reason: "..value
end

-- Dissect: Cancel Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_rejected_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_reject_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.text

  return index
end

-- Display: Cancel Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Cancel Reject Reason: 1 Byte Ascii String
  index, cancel_reject_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_reject_reason(buffer, index, packet, parent)

  -- Text: 60 Byte Ascii String
  index, text = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_rejected_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_rejected_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_rejected_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Sub Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_sub_reason = 1

-- Display: Cancel Sub Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_sub_reason = function(value)
  return "Cancel Sub Reason: "..value
end

-- Dissect: Cancel Sub Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_sub_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_sub_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_sub_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_sub_reason, range, value, display)

  return offset + length, value
end

-- Size: Cancel Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_reason = 1

-- Display: Cancel Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_reason = function(value)
  return "Cancel Reason: "..value
end

-- Dissect: Cancel Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Cancelled Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_sub_reason

  return index
end

-- Display: Quote Cancelled Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Cancelled Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: 16 Byte Ascii String
  index, quote_update_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Quote Symbol: 1 Byte Ascii String
  index, quote_symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_symbol(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Ascii String
  index, cancel_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_reason(buffer, index, packet, parent)

  -- Cancel Sub Reason: 1 Byte Ascii String
  index, cancel_sub_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_sub_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancelled Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_cancelled_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_cancelled_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_cancelled_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Cancelled Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_sub_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time

  return index
end

-- Display: Order Cancelled Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Cancelled Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Cancel Reason: 1 Byte Ascii String
  index, cancel_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_reason(buffer, index, packet, parent)

  -- Cancel Sub Reason: 1 Byte Ascii String
  index, cancel_sub_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_sub_reason(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Request Received Time: 8 Byte Unsigned Fixed Width Integer
  index, request_received_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_cancelled_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_cancelled_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_cancelled_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Size: Modify Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_reject_reason = 1

-- Display: Modify Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.modify_reject_reason = function(value)
  return "Modify Reject Reason: "..value
end

-- Dissect: Modify Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.modify_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- Size: Orig Cl Ord Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_cl_ord_id = 20

-- Display: Orig Cl Ord Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.orig_cl_ord_id = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.orig_cl_ord_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_cl_ord_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.orig_cl_ord_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_rejected_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_reject_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.text

  return index
end

-- Display: Modify Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.modify_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 20 Byte Ascii String
  index, orig_cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Modify Reject Reason: 1 Byte Ascii String
  index, modify_reject_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_reject_reason(buffer, index, packet, parent)

  -- Text: 60 Byte Ascii String
  index, text = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_rejected_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.modify_rejected_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.modify_rejected_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Restatement Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.restatement_reason = 1

-- Display: Restatement Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.restatement_reason = function(value)
  if value == "Q" then
    return "Restatement Reason: Liquidity (Q)"
  end
  if value == "W" then
    return "Restatement Reason: Wash (W)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.restatement_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.restatement_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.restatement_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Restated Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_restated_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.working_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.restatement_reason

  return index
end

-- Display: Quote Restated Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_restated_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Restated Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_restated_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: 16 Byte Ascii String
  index, quote_update_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leaves_qty(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.working_price(buffer, index, packet, parent)

  -- Quote Symbol: 1 Byte Ascii String
  index, quote_symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_symbol(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Restatement Reason: 1 Byte Ascii String Enum with 2 values
  index, restatement_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.restatement_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Restated Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_restated_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_restated_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_restated_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_restated_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_restated_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_restated_message_fields(buffer, offset, packet, parent)
end

-- Size: Secondary Order Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.secondary_order_id = 8

-- Display: Secondary Order Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.secondary_order_id = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.secondary_order_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.secondary_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.secondary_order_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Size: Order Restatement Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_restatement_reason = 1

-- Display: Order Restatement Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_restatement_reason = function(value)
  if value == "L" then
    return "Order Restatement Reason: Reload (L)"
  end
  if value == "P" then
    return "Order Restatement Reason: Price Sliding Reprice (P)"
  end
  if value == "Q" then
    return "Order Restatement Reason: Liquidity Updated (Q)"
  end
  if value == "R" then
    return "Order Restatement Reason: Reroute (R)"
  end
  if value == "S" then
    return "Order Restatement Reason: Ship And Post (S)"
  end
  if value == "W" then
    return "Order Restatement Reason: Wash (W)"
  end

  return "Order Restatement Reason: Unknown("..value..")"
end

-- Dissect: Order Restatement Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_restatement_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_restatement_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_restatement_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_restatement_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Restated Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_restated_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_restatement_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.working_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.base_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.secondary_order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_shares

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.last_px

  return index
end

-- Display: Order Restated Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_restated_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Restated Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_restated_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Order Restatement Reason: 1 Byte Ascii String Enum with 6 values
  index, order_restatement_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_restatement_reason(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leaves_qty(buffer, index, packet, parent)

  -- Display Price: 8 Byte Signed Fixed Width Integer
  index, display_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_price(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.working_price(buffer, index, packet, parent)

  -- Base Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, base_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Last Shares: 4 Byte Unsigned Fixed Width Integer
  index, last_shares = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_shares(buffer, index, packet, parent)

  -- Last Px: 8 Byte Signed Fixed Width Integer
  index, last_px = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.last_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Restated Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_restated_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_restated_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_restated_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_restated_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_restated_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_restated_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Modified Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_modified_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.stop_px

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.working_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.base_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.secondary_order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time

  return index
end

-- Display: Order Modified Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_modified_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modified Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_modified_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 20 Byte Ascii String
  index, orig_cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 4 values
  index, ord_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ord_type(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.max_floor(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index, stop_px = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.stop_px(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leaves_qty(buffer, index, packet, parent)

  -- Display Price: 8 Byte Signed Fixed Width Integer
  index, display_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_price(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.working_price(buffer, index, packet, parent)

  -- Base Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, base_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Secondary Order Id: 8 Byte Unsigned Fixed Width Integer
  index, secondary_order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.secondary_order_id(buffer, index, packet, parent)

  -- Request Received Time: 8 Byte Unsigned Fixed Width Integer
  index, request_received_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.request_received_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_modified_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modified_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_modified_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_modified_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_modified_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_modified_message_fields(buffer, offset, packet, parent)
end

-- Size: Quote Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_reject_reason = 1

-- Display: Quote Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_reject_reason = function(value)
  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_reject_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_reject_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_reject_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Update Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_rejected_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_reject_reason

  return index
end

-- Display: Quote Update Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: 16 Byte Ascii String
  index, quote_update_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_id(buffer, index, packet, parent)

  -- Quote Reject Reason: 1 Byte Ascii String
  index, quote_reject_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_reject_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_update_rejected_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_rejected_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_rejected_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_rejected_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_rejected_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_reject_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.text

  return index
end

-- Display: Order Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_rejected_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_rejected_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Order Reject Reason: 1 Byte Ascii String
  index, order_reject_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_reject_reason(buffer, index, packet, parent)

  -- Text: 60 Byte Ascii String
  index, text = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_rejected_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_rejected_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_rejected_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_rejected_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_rejected_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_rejected_message_fields(buffer, offset, packet, parent)
end

-- Size: Quote Reject Sub Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_reject_sub_reason = 1

-- Display: Quote Reject Sub Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_reject_sub_reason = function(value)
  return "Quote Reject Sub Reason: "..value
end

-- Dissect: Quote Reject Sub Reason
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_reject_sub_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_reject_sub_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_reject_sub_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_reject_sub_reason, range, value, display)

  return offset + length, value
end

-- Size: Quote Result
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_result = 1

-- Display: Quote Result
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_result = function(value)
  if value == "A" then
    return "Quote Result: New Quote (A)"
  end
  if value == "I" then
    return "Quote Result: Ioc Quote Accepted (I)"
  end
  if value == "L" then
    return "Quote Result: Modified Loss Of Priority (L)"
  end
  if value == "R" then
    return "Quote Result: Modified Retains Priority (R)"
  end
  if value == "N" then
    return "Quote Result: No Change Matches Existing Quote (N)"
  end
  if value == "D" then
    return "Quote Result: New Quote But May Remove Liquidity (D)"
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
    return "Quote Result: Risk Management Firm Or Custom Group Id Level (f)"
  end
  if value == "S" then
    return "Quote Result: Rejected Symbol Not Found (S)"
  end
  if value == "p" then
    return "Quote Result: Rejected Invalid Price (p)"
  end
  if value == "r" then
    return "Quote Result: Invalid Remove (r)"
  end
  if value == "s" then
    return "Quote Result: Risk Management Risk Root Level (s)"
  end
  if value == "u" then
    return "Quote Result: Rejected Other Reason (u)"
  end
  if value == "+" then
    return "Quote Result: Risk Management Efid Group Level (+)"
  end
  if value == "c" then
    return "Quote Result: Rejected Closing Only Series (c)"
  end

  return "Quote Result: Unknown("..value..")"
end

-- Dissect: Quote Result
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_result = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_result
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_result(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_result, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Acknowledgement
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_acknowledgement = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_result

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sub_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_reject_sub_reason

  return index
end

-- Display: Quote Acknowledgement
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_acknowledgement = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Acknowledgement
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_acknowledgement_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Quote Result: 1 Byte Ascii String Enum with 19 values
  index, quote_result = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_result(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, sub_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Quote Reject Sub Reason: 1 Byte Ascii String
  index, quote_reject_sub_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_reject_sub_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Acknowledgement
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_acknowledgement = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_acknowledgement then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_acknowledgement(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_acknowledgement(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_acknowledgement, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_acknowledgement_fields(buffer, offset, packet, parent)
end

-- Size: Quote Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_cnt = 1

-- Display: Quote Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_cnt = function(value)
  return "Quote Cnt: "..value
end

-- Dissect: Quote Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_cnt = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_cnt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_cnt(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_cnt, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Update Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_acknowledgement_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_cnt

  -- Calculate field size from count
  local quote_acknowledgement_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_acknowledgement_count * 11

  return index
end

-- Display: Quote Update Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_acknowledgement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_acknowledgement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Quote Update Id: 16 Byte Ascii String
  index, quote_update_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_id(buffer, index, packet, parent)

  -- Request Received Time: 8 Byte Unsigned Fixed Width Integer
  index, request_received_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.request_received_time(buffer, index, packet, parent)

  -- Quote Cnt: 1 Byte Unsigned Fixed Width Integer
  index, quote_cnt = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_cnt(buffer, index, packet, parent)

  -- Quote Acknowledgement: Struct of 4 fields
  for i = 1, quote_cnt do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_acknowledgement(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Update Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_acknowledgement_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_acknowledgement_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_acknowledgement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_acknowledgement_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_acknowledgement_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_acknowledgement_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Type
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_type = 2

-- Display: Message Type
cboe_c2_options_orderentry_boe3_v1_0_12_display.message_type = function(value)
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
  if value == 0x07D1 then
    return "Message Type: New Order Message (0x07D1)"
  end
  if value == 0x07D2 then
    return "Message Type: New Order Short Message (0x07D2)"
  end
  if value == 0x07D5 then
    return "Message Type: New Complex Instrument Message (0x07D5)"
  end
  if value == 0x07D6 then
    return "Message Type: New Complex Order Message (0x07D6)"
  end
  if value == 0x07D7 then
    return "Message Type: New Complex Order Short Message (0x07D7)"
  end
  if value == 0x07DA then
    return "Message Type: Cancel Order Message (0x07DA)"
  end
  if value == 0x07DF then
    return "Message Type: Mass Cancel Order Message (0x07DF)"
  end
  if value == 0x07DB then
    return "Message Type: Modify Order Message (0x07DB)"
  end
  if value == 0x07DC then
    return "Message Type: Quote Update Message (0x07DC)"
  end
  if value == 0x07DD then
    return "Message Type: Quote Update Short Message (0x07DD)"
  end
  if value == 0x07E0 then
    return "Message Type: Purge Orders Message (0x07E0)"
  end
  if value == 0x07DE then
    return "Message Type: Reset Risk Message (0x07DE)"
  end
  if value == 0x09C5 then
    return "Message Type: Order Acknowledgement Message (0x09C5)"
  end
  if value == 0x09D5 then
    return "Message Type: Quote Update Acknowledgement Message (0x09D5)"
  end
  if value == 0x09C7 then
    return "Message Type: Order Rejected Message (0x09C7)"
  end
  if value == 0x09D6 then
    return "Message Type: Quote Update Rejected Message (0x09D6)"
  end
  if value == 0x09CB then
    return "Message Type: Order Modified Message (0x09CB)"
  end
  if value == 0x09CD then
    return "Message Type: Order Restated Message (0x09CD)"
  end
  if value == 0x09D9 then
    return "Message Type: Quote Restated Message (0x09D9)"
  end
  if value == 0x09CC then
    return "Message Type: Modify Rejected Message (0x09CC)"
  end
  if value == 0x09D0 then
    return "Message Type: Order Cancelled Message (0x09D0)"
  end
  if value == 0x09D7 then
    return "Message Type: Quote Cancelled Message (0x09D7)"
  end
  if value == 0x09D2 then
    return "Message Type: Cancel Rejected Message (0x09D2)"
  end
  if value == 0x09D3 then
    return "Message Type: Order Execution Message (0x09D3)"
  end
  if value == 0x09D8 then
    return "Message Type: Quote Execution Message (0x09D8)"
  end
  if value == 0x09D4 then
    return "Message Type: Trade Cancel Correct Message (0x09D4)"
  end
  if value == 0x09DE then
    return "Message Type: Purge Rejected Message (0x09DE)"
  end
  if value == 0x09DA then
    return "Message Type: Reset Risk Acknowledgement Message (0x09DA)"
  end
  if value == 0x09DB then
    return "Message Type: Mass Cancel Acknowledgment Message (0x09DB)"
  end
  if value == 0x09DC then
    return "Message Type: Mass Cancel Rejected Message (0x09DC)"
  end
  if value == 0x09DD then
    return "Message Type: Purge Acknowledgement Message (0x09DD)"
  end
  if value == 0x09DF then
    return "Message Type: Purge Notification Message (0x09DF)"
  end
  if value == 0x09C9 then
    return "Message Type: New Complex Instrument Accepted Message (0x09C9)"
  end
  if value == 0x09CA then
    return "Message Type: New Complex Instrument Rejected Message (0x09CA)"
  end
  if value == 0x09CE then
    return "Message Type: Carried Restatement Message (0x09CE)"
  end
  if value == 0x09CF then
    return "Message Type: Done For Day Message (0x09CF)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_type = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.message_type(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_acknowledgement_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.in_flight

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.transaction_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leaves_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.working_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.base_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sub_liquidity_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.request_received_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_type

  return index
end

-- Display: Order Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_acknowledgement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_acknowledgement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: 2 Byte Unsigned Fixed Width Integer
  index, in_flight = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.in_flight(buffer, index, packet, parent)

  -- Transaction Time: 8 Byte Unsigned Fixed Width Integer
  index, transaction_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.transaction_time(buffer, index, packet, parent)

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Leaves Qty: 4 Byte Unsigned Fixed Width Integer
  index, leaves_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leaves_qty(buffer, index, packet, parent)

  -- Display Price: 8 Byte Signed Fixed Width Integer
  index, display_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_price(buffer, index, packet, parent)

  -- Working Price: 8 Byte Signed Fixed Width Integer
  index, working_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.working_price(buffer, index, packet, parent)

  -- Base Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, base_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.base_liquidity_indicator(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: 1 Byte Ascii String Enum with 4 values
  index, sub_liquidity_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sub_liquidity_indicator(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Request Received Time: 8 Byte Unsigned Fixed Width Integer
  index, request_received_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.request_received_time(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 43 values
  index, message_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_acknowledgement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_acknowledgement_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_acknowledgement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_acknowledgement_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_acknowledgement_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_acknowledgement_message_fields(buffer, offset, packet, parent)
end

-- Size: Scratch Pad
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad = 2

-- Display: Scratch Pad
cboe_c2_options_orderentry_boe3_v1_0_12_display.scratch_pad = function(value)
  return "Scratch Pad: "..value
end

-- Dissect: Scratch Pad
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.scratch_pad(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.scratch_pad, range, value, display)

  return offset + length, value
end

-- Size: Custom Group Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id = 2

-- Display: Custom Group Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.custom_group_id = function(value)
  return "Custom Group Id: "..value
end

-- Dissect: Custom Group Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.custom_group_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.custom_group_id, range, value, display)

  return offset + length, value
end

-- Size: Target Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.target_matching_unit = 1

-- Display: Target Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_display.target_matching_unit = function(value)
  return "Target Matching Unit: "..value
end

-- Dissect: Target Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.target_matching_unit = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.target_matching_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.target_matching_unit(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.target_matching_unit, range, value, display)

  return offset + length, value
end

-- Size: Risk Reset
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_reset = 8

-- Display: Risk Reset
cboe_c2_options_orderentry_boe3_v1_0_12_display.risk_reset = function(value)
  return "Risk Reset: "..value
end

-- Dissect: Risk Reset
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_reset = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_reset
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.risk_reset(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reset Risk Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reset_risk_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_status_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_reset

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_root

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.target_matching_unit

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  return index
end

-- Display: Reset Risk Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.reset_risk_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reset Risk Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reset_risk_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Risk Status Id: 16 Byte Ascii String
  index, risk_status_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_status_id(buffer, index, packet, parent)

  -- Risk Reset: 8 Byte Ascii String
  index, risk_reset = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_reset(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Risk Root: 6 Byte Ascii String
  index, risk_root = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_root(buffer, index, packet, parent)

  -- Target Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, target_matching_unit = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.target_matching_unit(buffer, index, packet, parent)

  -- Custom Group Id: 2 Byte Unsigned Fixed Width Integer
  index, custom_group_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reset_risk_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reset_risk_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reset_risk_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.reset_risk_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.reset_risk_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reset_risk_message_fields(buffer, offset, packet, parent)
end

-- Size: Custom Group Id Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id_cnt = 1

-- Display: Custom Group Id Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_display.custom_group_id_cnt = function(value)
  return "Custom Group Id Cnt: "..value
end

-- Dissect: Custom Group Id Cnt
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id_cnt = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id_cnt
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.custom_group_id_cnt(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.custom_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Size: Send Time
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.send_time = 8

-- Display: Send Time
cboe_c2_options_orderentry_boe3_v1_0_12_display.send_time = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.send_time = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.send_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.send_time(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.send_time, range, value, display)

  return offset + length, value
end

-- Size: Instruction Details
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.instruction_details = 3

-- Display: Instruction Details
cboe_c2_options_orderentry_boe3_v1_0_12_display.instruction_details = function(value)
  return "Instruction Details: "..value
end

-- Dissect: Instruction Details
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.instruction_details = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.instruction_details
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.instruction_details(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.instruction_details, range, value, display)

  return offset + length, value
end

-- Size: Gtc Order Filter
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.gtc_order_filter = 1

-- Display: Gtc Order Filter
cboe_c2_options_orderentry_boe3_v1_0_12_display.gtc_order_filter = function(value)
  return "Gtc Order Filter: "..value
end

-- Dissect: Gtc Order Filter
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.gtc_order_filter = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.gtc_order_filter
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.gtc_order_filter(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.gtc_order_filter, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type Filter
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.instrument_type_filter = 1

-- Display: Instrument Type Filter
cboe_c2_options_orderentry_boe3_v1_0_12_display.instrument_type_filter = function(value)
  return "Instrument Type Filter: "..value
end

-- Dissect: Instrument Type Filter
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.instrument_type_filter = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.instrument_type_filter
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.instrument_type_filter(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.instrument_type_filter, range, value, display)

  return offset + length, value
end

-- Size: Lockout Instruction
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.lockout_instruction = 1

-- Display: Lockout Instruction
cboe_c2_options_orderentry_boe3_v1_0_12_display.lockout_instruction = function(value)
  return "Lockout Instruction: "..value
end

-- Dissect: Lockout Instruction
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.lockout_instruction = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.lockout_instruction
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.lockout_instruction(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.lockout_instruction, range, value, display)

  return offset + length, value
end

-- Size: Acknowledgement Style
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.acknowledgement_style = 1

-- Display: Acknowledgement Style
cboe_c2_options_orderentry_boe3_v1_0_12_display.acknowledgement_style = function(value)
  return "Acknowledgement Style: "..value
end

-- Dissect: Acknowledgement Style
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.acknowledgement_style = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.acknowledgement_style
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.acknowledgement_style(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.acknowledgement_style, range, value, display)

  return offset + length, value
end

-- Size: Clearing Firm Filter
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm_filter = 1

-- Display: Clearing Firm Filter
cboe_c2_options_orderentry_boe3_v1_0_12_display.clearing_firm_filter = function(value)
  return "Clearing Firm Filter: "..value
end

-- Dissect: Clearing Firm Filter
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm_filter = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm_filter
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.clearing_firm_filter(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.clearing_firm_filter, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Inst
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_inst = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm_filter

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.acknowledgement_style

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.lockout_instruction

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.instrument_type_filter

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.gtc_order_filter

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.instruction_details

  return index
end

-- Display: Mass Cancel Inst
cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_inst = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Inst
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_inst_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Filter: 1 Byte Ascii String
  index, clearing_firm_filter = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm_filter(buffer, index, packet, parent)

  -- Acknowledgement Style: 1 Byte Ascii String
  index, acknowledgement_style = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.acknowledgement_style(buffer, index, packet, parent)

  -- Lockout Instruction: 1 Byte Ascii String
  index, lockout_instruction = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.lockout_instruction(buffer, index, packet, parent)

  -- Instrument Type Filter: 1 Byte Ascii String
  index, instrument_type_filter = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.instrument_type_filter(buffer, index, packet, parent)

  -- Gtc Order Filter: 1 Byte Ascii String
  index, gtc_order_filter = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.gtc_order_filter(buffer, index, packet, parent)

  -- Instruction Details: 3 Byte Ascii String
  index, instruction_details = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.instruction_details(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Inst
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_inst = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_inst then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_inst(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_inst(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_inst, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_inst_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Purge Orders Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_orders_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_root

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_inst(buffer, offset + index)

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.send_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id_cnt

  -- Calculate field size from count
  local custom_group_id_count = buffer(offset + index - 1, 1):le_uint()
  index = index + custom_group_id_count * 2

  return index
end

-- Display: Purge Orders Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_orders_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Purge Orders Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_orders_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: 20 Byte Ascii String
  index, mass_cancel_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Risk Root: 6 Byte Ascii String
  index, risk_root = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_root(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_inst(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.send_time(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  -- Custom Group Id Cnt: 1 Byte Unsigned Fixed Width Integer
  index, custom_group_id_cnt = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id_cnt(buffer, index, packet, parent)

  -- Custom Group Id: 2 Byte Unsigned Fixed Width Integer
  for i = 1, custom_group_id_cnt do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Purge Orders Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_orders_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.purge_orders_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_orders_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.purge_orders_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.purge_orders_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_orders_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Qty Short
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty_short = 2

-- Display: Order Qty Short
cboe_c2_options_orderentry_boe3_v1_0_12_display.order_qty_short = function(value)
  return "Order Qty Short: "..value
end

-- Dissect: Order Qty Short
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty_short = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.order_qty_short(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.order_qty_short, range, value, display)

  return offset + length, value
end

-- Size: Price Short
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price_short = 4

-- Display: Price Short
cboe_c2_options_orderentry_boe3_v1_0_12_display.price_short = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
translate.price_short = function(raw)
  return raw/10000
end

-- Dissect: Price Short
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price_short = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price_short
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = translate.price_short(raw)
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.price_short(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.price_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Short
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_short = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.open_close

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price_short

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty_short

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  return index
end

-- Display: Quote Short
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_short = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Short
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_short_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Symbol: 1 Byte Ascii String
  index, quote_symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_symbol(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Open Close: 1 Byte Ascii String Enum with 3 values
  index, open_close = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.open_close(buffer, index, packet, parent)

  -- Price Short: 4 Byte Signed Fixed Width Integer
  index, price_short = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price_short(buffer, index, packet, parent)

  -- Order Qty Short: 2 Byte Unsigned Fixed Width Integer
  index, order_qty_short = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty_short(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Short
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_short = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_short then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_short(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_short(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_short, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_short_fields(buffer, offset, packet, parent)
end

-- Size: Size Modifier
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.size_modifier = 1

-- Display: Size Modifier
cboe_c2_options_orderentry_boe3_v1_0_12_display.size_modifier = function(value)
  if value == "0x00" then
    return "Size Modifier: New Quote Size Will Be Set To Value Of Order Qty (0x00)"
  end
  if value == "R" then
    return "Size Modifier: Reduce Outstanding Size Of Quote By The Order Qty Provided (R)"
  end

  return "Size Modifier: Unknown("..value..")"
end

-- Dissect: Size Modifier
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.size_modifier = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.size_modifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.size_modifier(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.size_modifier, range, value, display)

  return offset + length, value
end

-- Size: Posting Instruction
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.posting_instruction = 1

-- Display: Posting Instruction
cboe_c2_options_orderentry_boe3_v1_0_12_display.posting_instruction = function(value)
  if value == "P" then
    return "Posting Instruction: Post Only (P)"
  end
  if value == "B" then
    return "Posting Instruction: Book Only (B)"
  end
  if value == "N" then
    return "Posting Instruction: Book Only No Slide (N)"
  end
  if value == "P" then
    return "Posting Instruction: Post Only No Slide (P)"
  end
  if value == "I" then
    return "Posting Instruction: Book Only Ioc (I)"
  end
  if value == "R" then
    return "Posting Instruction: Reroute (R)"
  end
  if value == "S" then
    return "Posting Instruction: Ship And Post Swp (S)"
  end
  if value == "W" then
    return "Posting Instruction: Wash (W)"
  end
  if value == "f" then
    return "Posting Instruction: Unsolicited Floor Action C 1 Only (f)"
  end
  if value == "E" then
    return "Posting Instruction: Reduction Of Ord Qty Due To Equity Leg Reject C 1 Only (E)"
  end
  if value == "F" then
    return "Posting Instruction: Represented On Floor C 1 Only (F)"
  end
  if value == "L" then
    return "Posting Instruction: Reload (L)"
  end
  if value == "P" then
    return "Posting Instruction: Price Sliding Reprice (P)"
  end
  if value == "Q" then
    return "Posting Instruction: Liquidity Updated (Q)"
  end
  if value == "Required for limit orders (OrdType" then
    return "Posting Instruction: 2 If Specified On Market Orders (Required for limit orders (OrdType)"
  end
  if value == "(OrdType" then
    return "Posting Instruction: 1 The Order Will Be Rejected ((OrdType)"
  end

  return "Posting Instruction: Unknown("..value..")"
end

-- Dissect: Posting Instruction
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.posting_instruction = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.posting_instruction
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.posting_instruction(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.posting_instruction, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Update Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.send_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.posting_instruction

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_eligibility

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.size_modifier

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_cnt

  -- Calculate field size from count
  local quote_short_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_short_count * 11

  return index
end

-- Display: Quote Update Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: 16 Byte Ascii String
  index, quote_update_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account(buffer, index, packet, parent)

  -- Custom Group Id: 2 Byte Unsigned Fixed Width Integer
  index, custom_group_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.send_time(buffer, index, packet, parent)

  -- Posting Instruction: 1 Byte Ascii String Enum with 16 values
  index, posting_instruction = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.posting_instruction(buffer, index, packet, parent)

  -- Session Eligibility
  index, session_eligibility = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_eligibility(buffer, index, packet, parent)

  -- Size Modifier: 1 Byte Ascii String Enum with 2 values
  index, size_modifier = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.size_modifier(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  -- Quote Cnt: 1 Byte Unsigned Fixed Width Integer
  index, quote_cnt = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_cnt(buffer, index, packet, parent)

  -- Quote Short: Struct of 6 fields
  for i = 1, quote_cnt do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_short(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Update Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_short_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_short_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_short_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_short_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.open_close

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  return index
end

-- Display: Quote
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Symbol: 1 Byte Ascii String
  index, quote_symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_symbol(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Open Close: 1 Byte Ascii String Enum with 3 values
  index, open_close = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.open_close(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Update Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.send_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.posting_instruction

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_eligibility

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.size_modifier

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_cnt

  -- Calculate field size from count
  local quote_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_count * 9

  return index
end

-- Display: Quote Update Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Update Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: 16 Byte Ascii String
  index, quote_update_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account(buffer, index, packet, parent)

  -- Cmta Number: 4 Byte Unsigned Fixed Width Integer
  index, cmta_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cmta_number(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.account(buffer, index, packet, parent)

  -- Custom Group Id: 2 Byte Unsigned Fixed Width Integer
  index, custom_group_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.send_time(buffer, index, packet, parent)

  -- Posting Instruction: 1 Byte Ascii String Enum with 16 values
  index, posting_instruction = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.posting_instruction(buffer, index, packet, parent)

  -- Session Eligibility
  index, session_eligibility = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_eligibility(buffer, index, packet, parent)

  -- Size Modifier: 1 Byte Ascii String Enum with 2 values
  index, size_modifier = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.size_modifier(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  -- Quote Cnt: 1 Byte Unsigned Fixed Width Integer
  index, quote_cnt = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_cnt(buffer, index, packet, parent)

  -- Quote: Struct of 6 fields
  for i = 1, quote_cnt do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Update Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.quote_update_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.quote_update_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Cancel Orig On Reject
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_orig_on_reject = 1

-- Display: Cancel Orig On Reject
cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_orig_on_reject = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_orig_on_reject = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_orig_on_reject
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_orig_on_reject(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Calculate size of: Modify Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.stop_px

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_orig_on_reject

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reserved

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  return index
end

-- Display: Modify Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Orig Cl Ord Id: 20 Byte Ascii String
  index, orig_cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 4 values
  index, ord_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ord_type(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.max_floor(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index, stop_px = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.stop_px(buffer, index, packet, parent)

  -- Cancel Orig On Reject: 1 Byte Ascii String Enum with 2 values
  index, cancel_orig_on_reject = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_orig_on_reject(buffer, index, packet, parent)

  -- Reserved
  index, reserved = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reserved(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.modify_order_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.modify_order_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.risk_root

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_inst(buffer, offset + index)

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.send_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  return index
end

-- Display: Mass Cancel Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: 20 Byte Ascii String
  index, mass_cancel_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Risk Root: 6 Byte Ascii String
  index, risk_root = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.risk_root(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_inst(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.send_time(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_order_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.mass_cancel_order_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.mass_cancel_order_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.orig_cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  return index
end

-- Display: Cancel Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: 20 Byte Ascii String
  index, orig_cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.orig_cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_order_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.cancel_order_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.cancel_order_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Position Effect
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leg_position_effect = 1

-- Display: Leg Position Effect
cboe_c2_options_orderentry_boe3_v1_0_12_display.leg_position_effect = function(value)
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
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leg_position_effect = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leg_position_effect
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.leg_position_effect(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.leg_position_effect, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Complex Order Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.time_in_force

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.capacity

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.target_party_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.auction_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.equity_party_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.frequent_trader_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_eligibility

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leg_cnt

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Complex Order Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Complex Order Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Ascii String Enum with 2 values
  index, exec_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_inst(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 4 values
  index, ord_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.time_in_force(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 8 values
  index, capacity = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.capacity(buffer, index, packet, parent)

  -- Routing Inst: 4 Byte Ascii String
  index, routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_inst(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.account(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.prevent_match(buffer, index, packet, parent)

  -- Cmta Number: 4 Byte Unsigned Fixed Width Integer
  index, cmta_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cmta_number(buffer, index, packet, parent)

  -- Target Party Id
  index, target_party_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.target_party_id(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.auction_id(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Custom Group Id: 2 Byte Unsigned Fixed Width Integer
  index, custom_group_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id(buffer, index, packet, parent)

  -- Equity Party Id
  index, equity_party_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.equity_party_id(buffer, index, packet, parent)

  -- Frequent Trader Id
  index, frequent_trader_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Session Eligibility
  index, session_eligibility = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_eligibility(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.max_floor(buffer, index, packet, parent)

  -- Floor Destination
  index, floor_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_destination(buffer, index, packet, parent)

  -- Floor Routing Inst
  index, floor_routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_routing_inst(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  -- Leg Cnt: 1 Byte Unsigned Fixed Width Integer
  index, leg_cnt = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leg_cnt(buffer, index, packet, parent)

  -- Leg Position Effect: 1 Byte Ascii String Enum with 3 values
  for i = 1, leg_cnt do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leg_position_effect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Complex Order Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_order_short_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_order_short_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_order_short_message_fields(buffer, offset, packet, parent)
end

-- Size: Display Range
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_range = 4

-- Display: Display Range
cboe_c2_options_orderentry_boe3_v1_0_12_display.display_range = function(value)
  return "Display Range: "..value
end

-- Dissect: Display Range
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_range = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_range
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.display_range(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.display_range, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Complex Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.time_in_force

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.capacity

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.expire_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.target_party_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.attributed_quote

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.auction_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.drill_thru_protection

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.equity_party_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_optional_data

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.client_id_attr

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.frequent_trader_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_eligibility

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_range

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.combo_order

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.compression

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.equity_ex_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.equity_leg_short_sell

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_origin

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_router_subsidy

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.strategy_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.tied_hedge

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.held

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leg_cnt

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Complex Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Complex Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Ascii String Enum with 2 values
  index, exec_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_inst(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 4 values
  index, ord_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.time_in_force(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 8 values
  index, capacity = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.capacity(buffer, index, packet, parent)

  -- Routing Inst: 4 Byte Ascii String
  index, routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_inst(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.account(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.prevent_match(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.expire_time(buffer, index, packet, parent)

  -- Cmta Number: 4 Byte Unsigned Fixed Width Integer
  index, cmta_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cmta_number(buffer, index, packet, parent)

  -- Target Party Id
  index, target_party_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.target_party_id(buffer, index, packet, parent)

  -- Attributed Quote: 1 Byte Ascii String Enum with 4 values
  index, attributed_quote = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.attributed_quote(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.auction_id(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Drill Thru Protection: 8 Byte Signed Fixed Width Integer
  index, drill_thru_protection = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.drill_thru_protection(buffer, index, packet, parent)

  -- Custom Group Id: 2 Byte Unsigned Fixed Width Integer
  index, custom_group_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id(buffer, index, packet, parent)

  -- Equity Party Id
  index, equity_party_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.equity_party_id(buffer, index, packet, parent)

  -- Clearing Optional Data: 16 Byte Ascii String
  index, clearing_optional_data = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_optional_data(buffer, index, packet, parent)

  -- Client Id Attr: 4 Byte Ascii String
  index, client_id_attr = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.client_id_attr(buffer, index, packet, parent)

  -- Frequent Trader Id
  index, frequent_trader_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Session Eligibility
  index, session_eligibility = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_eligibility(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.max_floor(buffer, index, packet, parent)

  -- Display Range: 4 Byte Unsigned Fixed Width Integer
  index, display_range = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_range(buffer, index, packet, parent)

  -- Combo Order
  index, combo_order = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.combo_order(buffer, index, packet, parent)

  -- Compression
  index, compression = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.compression(buffer, index, packet, parent)

  -- Equity Ex Destination
  index, equity_ex_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.equity_ex_destination(buffer, index, packet, parent)

  -- Equity Leg Short Sell
  index, equity_leg_short_sell = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.equity_leg_short_sell(buffer, index, packet, parent)

  -- Floor Destination
  index, floor_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_destination(buffer, index, packet, parent)

  -- Floor Routing Inst
  index, floor_routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_routing_inst(buffer, index, packet, parent)

  -- Order Origin
  index, order_origin = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_origin(buffer, index, packet, parent)

  -- Order Router Subsidy
  index, order_router_subsidy = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_router_subsidy(buffer, index, packet, parent)

  -- Price Type
  index, price_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price_type(buffer, index, packet, parent)

  -- Strategy Id
  index, strategy_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.strategy_id(buffer, index, packet, parent)

  -- Tied Hedge
  index, tied_hedge = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.tied_hedge(buffer, index, packet, parent)

  -- Held
  index, held = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.held(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  -- Leg Cnt: 1 Byte Unsigned Fixed Width Integer
  index, leg_cnt = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leg_cnt(buffer, index, packet, parent)

  -- Leg Position Effect: 1 Byte Ascii String Enum with 3 values
  for i = 1, leg_cnt do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leg_position_effect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Complex Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_order_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_order_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_order_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Complex Instrument Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.leg_cnt

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 27

  return index
end

-- Display: New Complex Instrument Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_instrument_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Complex Instrument Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  -- Leg Cnt: 1 Byte Unsigned Fixed Width Integer
  index, leg_cnt = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.leg_cnt(buffer, index, packet, parent)

  -- Complex Leg: Struct of 6 fields
  for i = 1, leg_cnt do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.complex_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Complex Instrument Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_instrument_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.new_complex_instrument_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_order_short_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.time_in_force

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.min_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.capacity

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.open_close

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_eligibility

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.attributed_quote

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.rout_strategy

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ex_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.auction_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.frequent_trader_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  return index
end

-- Display: New Order Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.new_order_short_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_order_short_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Ascii String Enum with 2 values
  index, exec_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_inst(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 4 values
  index, ord_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.time_in_force(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.max_floor(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 8 values
  index, capacity = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.capacity(buffer, index, packet, parent)

  -- Routing Inst: 4 Byte Ascii String
  index, routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_inst(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.account(buffer, index, packet, parent)

  -- Display Indicator: 1 Byte Ascii String Enum with 4 values
  index, display_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_indicator(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.prevent_match(buffer, index, packet, parent)

  -- Open Close: 1 Byte Ascii String Enum with 3 values
  index, open_close = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.open_close(buffer, index, packet, parent)

  -- Cmta Number: 4 Byte Unsigned Fixed Width Integer
  index, cmta_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cmta_number(buffer, index, packet, parent)

  -- Session Eligibility
  index, session_eligibility = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_eligibility(buffer, index, packet, parent)

  -- Attributed Quote: 1 Byte Ascii String Enum with 4 values
  index, attributed_quote = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.attributed_quote(buffer, index, packet, parent)

  -- Rout Strategy: 6 Byte Ascii String
  index, rout_strategy = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.rout_strategy(buffer, index, packet, parent)

  -- Ex Destination: 1 Byte Ascii String Enum with 18 values
  index, ex_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ex_destination(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.auction_id(buffer, index, packet, parent)

  -- Custom Group Id: 2 Byte Unsigned Fixed Width Integer
  index, custom_group_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id(buffer, index, packet, parent)

  -- Frequent Trader Id
  index, frequent_trader_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Short Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_order_short_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_short_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_order_short_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.new_order_short_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_order_short_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_order_short_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_order_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cl_ord_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.side

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_firm

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.exec_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ord_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.time_in_force

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.min_qty

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.max_floor

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.symbol

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.capacity

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.account

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_indicator

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.prevent_match(buffer, offset + index)

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.expire_time

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.maturity_date

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.strike_price

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.put_or_call

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.open_close

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cmta_number

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.target_party_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_eligibility

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.attributed_quote

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.display_range

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.stop_px

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.rout_strategy

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.route_delivery_method

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.ex_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.auction_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.routing_firm_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.custom_group_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.clearing_optional_data

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.client_id_attr

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.frequent_trader_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.compression

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_destination

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.floor_routing_inst

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_origin

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_router_subsidy

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.price_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.held

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.scratch_pad

  return index
end

-- Display: New Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.new_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: 20 Byte Ascii String
  index, cl_ord_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cl_ord_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.side(buffer, index, packet, parent)

  -- Order Qty: 4 Byte Unsigned Fixed Width Integer
  index, order_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_qty(buffer, index, packet, parent)

  -- Clearing Firm: 4 Byte Ascii String
  index, clearing_firm = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_firm(buffer, index, packet, parent)

  -- Clearing Account: 4 Byte Ascii String
  index, clearing_account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_account(buffer, index, packet, parent)

  -- Price
  index, price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price(buffer, index, packet, parent)

  -- Exec Inst: 1 Byte Ascii String Enum with 2 values
  index, exec_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.exec_inst(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Ascii String Enum with 4 values
  index, ord_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ord_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Ascii String Enum with 7 values
  index, time_in_force = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.time_in_force(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_qty = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.min_qty(buffer, index, packet, parent)

  -- Max Floor: 4 Byte Unsigned Fixed Width Integer
  index, max_floor = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.max_floor(buffer, index, packet, parent)

  -- Symbol: 8 Byte Ascii String
  index, symbol = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.symbol(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 8 values
  index, capacity = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.capacity(buffer, index, packet, parent)

  -- Routing Inst: 4 Byte Ascii String
  index, routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_inst(buffer, index, packet, parent)

  -- Account: 16 Byte Ascii String
  index, account = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.account(buffer, index, packet, parent)

  -- Display Indicator: 1 Byte Ascii String Enum with 4 values
  index, display_indicator = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_indicator(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.prevent_match(buffer, index, packet, parent)

  -- Expire Time: 8 Byte Unsigned Fixed Width Integer
  index, expire_time = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.expire_time(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Unsigned Fixed Width Integer
  index, maturity_date = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.maturity_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index, strike_price = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.strike_price(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Ascii String Enum with 2 values
  index, put_or_call = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.put_or_call(buffer, index, packet, parent)

  -- Open Close: 1 Byte Ascii String Enum with 3 values
  index, open_close = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.open_close(buffer, index, packet, parent)

  -- Cmta Number: 4 Byte Unsigned Fixed Width Integer
  index, cmta_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cmta_number(buffer, index, packet, parent)

  -- Target Party Id
  index, target_party_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.target_party_id(buffer, index, packet, parent)

  -- Session Eligibility
  index, session_eligibility = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_eligibility(buffer, index, packet, parent)

  -- Attributed Quote: 1 Byte Ascii String Enum with 4 values
  index, attributed_quote = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.attributed_quote(buffer, index, packet, parent)

  -- Display Range: 4 Byte Unsigned Fixed Width Integer
  index, display_range = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.display_range(buffer, index, packet, parent)

  -- Stop Px: 8 Byte Signed Fixed Width Integer
  index, stop_px = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.stop_px(buffer, index, packet, parent)

  -- Rout Strategy: 6 Byte Ascii String
  index, rout_strategy = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.rout_strategy(buffer, index, packet, parent)

  -- Route Delivery Method: 3 Byte Ascii String Enum with 2 values
  index, route_delivery_method = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.route_delivery_method(buffer, index, packet, parent)

  -- Ex Destination: 1 Byte Ascii String Enum with 18 values
  index, ex_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.ex_destination(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.auction_id(buffer, index, packet, parent)

  -- Routing Firm Id: 4 Byte Ascii String
  index, routing_firm_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.routing_firm_id(buffer, index, packet, parent)

  -- Custom Group Id: 2 Byte Unsigned Fixed Width Integer
  index, custom_group_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.custom_group_id(buffer, index, packet, parent)

  -- Clearing Optional Data: 16 Byte Ascii String
  index, clearing_optional_data = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.clearing_optional_data(buffer, index, packet, parent)

  -- Client Id Attr: 4 Byte Ascii String
  index, client_id_attr = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.client_id_attr(buffer, index, packet, parent)

  -- Frequent Trader Id
  index, frequent_trader_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.frequent_trader_id(buffer, index, packet, parent)

  -- Compression
  index, compression = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.compression(buffer, index, packet, parent)

  -- Floor Destination
  index, floor_destination = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_destination(buffer, index, packet, parent)

  -- Floor Routing Inst
  index, floor_routing_inst = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.floor_routing_inst(buffer, index, packet, parent)

  -- Order Origin
  index, order_origin = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_origin(buffer, index, packet, parent)

  -- Order Router Subsidy
  index, order_router_subsidy = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_router_subsidy(buffer, index, packet, parent)

  -- Price Type
  index, price_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.price_type(buffer, index, packet, parent)

  -- Held
  index, held = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.held(buffer, index, packet, parent)

  -- Scratch Pad: 2 Byte Unsigned Fixed Width Integer
  index, scratch_pad = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.scratch_pad(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.new_order_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.new_order_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Logout Reason Text
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_reason_text = 60

-- Display: Logout Reason Text
cboe_c2_options_orderentry_boe3_v1_0_12_display.logout_reason_text = function(value)
  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.logout_reason_text = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_reason_text
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.logout_reason_text(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Size: Logout Reason
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_reason = 1

-- Display: Logout Reason
cboe_c2_options_orderentry_boe3_v1_0_12_display.logout_reason = function(value)
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
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.logout_reason = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.logout_reason(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logout Response Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_response_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_reason

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_reason_text

  return index
end

-- Display: Logout Response Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.logout_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.logout_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.logout_reason(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.logout_reason_text(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.logout_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_response_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.logout_response_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.logout_response_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.logout_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sequence_number = 4

-- Display: Sequence Number
cboe_c2_options_orderentry_boe3_v1_0_12_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Unit Number
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.unit_number = 1

-- Display: Unit Number
cboe_c2_options_orderentry_boe3_v1_0_12_display.unit_number = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unit_number = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.unit_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.unit_number(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Sequence
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.unit_sequence = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.unit_number

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sequence_number

  return index
end

-- Display: Unit Sequence
cboe_c2_options_orderentry_boe3_v1_0_12_display.unit_sequence = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unit_sequence_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unit_number(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unit_sequence = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_sequence then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.unit_sequence(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.unit_sequence(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.unit_sequence, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unit_sequence_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Units
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.number_of_units = 1

-- Display: Number Of Units
cboe_c2_options_orderentry_boe3_v1_0_12_display.number_of_units = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.number_of_units = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.number_of_units
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.number_of_units(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Size: Client Sequence
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.client_sequence = 4

-- Display: Client Sequence
cboe_c2_options_orderentry_boe3_v1_0_12_display.client_sequence = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.client_sequence = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.client_sequence
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.client_sequence(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Size: Login Response Text
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_text = 60

-- Display: Login Response Text
cboe_c2_options_orderentry_boe3_v1_0_12_display.login_response_text = function(value)
  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_response_text = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_text
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.login_response_text(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Size: Login Response Status
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_status = 1

-- Display: Login Response Status
cboe_c2_options_orderentry_boe3_v1_0_12_display.login_response_status = function(value)
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
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_response_status = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.login_response_status(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Response Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_status

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_text

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.client_sequence

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.number_of_units

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.login_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 8 values
  index, login_response_status = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_response_status(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_response_text(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.client_sequence(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.number_of_units(buffer, index, packet, parent)

  -- Unit Sequence: Struct of 2 fields
  for i = 1, number_of_units do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unit_sequence(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Login Response Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_response_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_response_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.login_response_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.login_response_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Replay Unspecified Unit
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.replay_unspecified_unit = 1

-- Display: Replay Unspecified Unit
cboe_c2_options_orderentry_boe3_v1_0_12_display.replay_unspecified_unit = function(value)
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
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.replay_unspecified_unit = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.replay_unspecified_unit
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.replay_unspecified_unit(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.replay_unspecified_unit, range, value, display)

  return offset + length, value
end

-- Size: Password
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.password = 10

-- Display: Password
cboe_c2_options_orderentry_boe3_v1_0_12_display.password = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.password = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.password
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.password(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.password, range, value, display)

  return offset + length, value
end

-- Size: Session Sub Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_sub_id = 4

-- Display: Session Sub Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.session_sub_id = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_sub_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_sub_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.session_sub_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Session Id
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_id = 4

-- Display: Session Id
cboe_c2_options_orderentry_boe3_v1_0_12_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_id = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.session_id(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.session_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Login Request Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_request_message = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.session_sub_id

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.password

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.replay_unspecified_unit

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.number_of_units

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.login_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_id(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.session_sub_id(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.password(buffer, index, packet, parent)

  -- Replay Unspecified Unit: 1 Byte Ascii String Enum with 3 values
  index, replay_unspecified_unit = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.replay_unspecified_unit(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.number_of_units(buffer, index, packet, parent)

  -- Unit Sequence: Struct of 2 fields
  for i = 1, number_of_units do
    index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.unit_sequence(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Login Request Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_request_message then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.login_request_message(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.login_request_message, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_request_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 1 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_request_message(buffer, offset)
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
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.login_response_message(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 502 then
    return 0
  end
  -- Size of Logout Response Message
  if message_type == 503 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.logout_response_message(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 504 then
    return 0
  end
  -- Size of New Order Message
  if message_type == 0x07D1 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_order_message(buffer, offset)
  end
  -- Size of New Order Short Message
  if message_type == 0x07D2 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_order_short_message(buffer, offset)
  end
  -- Size of New Complex Instrument Message
  if message_type == 0x07D5 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_message(buffer, offset)
  end
  -- Size of New Complex Order Message
  if message_type == 0x07D6 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_order_message(buffer, offset)
  end
  -- Size of New Complex Order Short Message
  if message_type == 0x07D7 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_order_short_message(buffer, offset)
  end
  -- Size of Cancel Order Message
  if message_type == 0x07DA then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_order_message(buffer, offset)
  end
  -- Size of Mass Cancel Order Message
  if message_type == 0x07DF then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_order_message(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == 0x07DB then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_order_message(buffer, offset)
  end
  -- Size of Quote Update Message
  if message_type == 0x07DC then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_message(buffer, offset)
  end
  -- Size of Quote Update Short Message
  if message_type == 0x07DD then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_short_message(buffer, offset)
  end
  -- Size of Purge Orders Message
  if message_type == 0x07E0 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_orders_message(buffer, offset)
  end
  -- Size of Reset Risk Message
  if message_type == 0x07DE then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reset_risk_message(buffer, offset)
  end
  -- Size of Order Acknowledgement Message
  if message_type == 0x09C5 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_acknowledgement_message(buffer, offset)
  end
  -- Size of Quote Update Acknowledgement Message
  if message_type == 0x09D5 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_acknowledgement_message(buffer, offset)
  end
  -- Size of Order Rejected Message
  if message_type == 0x09C7 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_rejected_message(buffer, offset)
  end
  -- Size of Quote Update Rejected Message
  if message_type == 0x09D6 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_update_rejected_message(buffer, offset)
  end
  -- Size of Order Modified Message
  if message_type == 0x09CB then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_modified_message(buffer, offset)
  end
  -- Size of Order Restated Message
  if message_type == 0x09CD then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_restated_message(buffer, offset)
  end
  -- Size of Quote Restated Message
  if message_type == 0x09D9 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_restated_message(buffer, offset)
  end
  -- Size of Modify Rejected Message
  if message_type == 0x09CC then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.modify_rejected_message(buffer, offset)
  end
  -- Size of Order Cancelled Message
  if message_type == 0x09D0 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_cancelled_message(buffer, offset)
  end
  -- Size of Quote Cancelled Message
  if message_type == 0x09D7 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_cancelled_message(buffer, offset)
  end
  -- Size of Cancel Rejected Message
  if message_type == 0x09D2 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.cancel_rejected_message(buffer, offset)
  end
  -- Size of Order Execution Message
  if message_type == 0x09D3 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.order_execution_message(buffer, offset)
  end
  -- Size of Quote Execution Message
  if message_type == 0x09D8 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.quote_execution_message(buffer, offset)
  end
  -- Size of Trade Cancel Correct Message
  if message_type == 0x09D4 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.trade_cancel_correct_message(buffer, offset)
  end
  -- Size of Purge Rejected Message
  if message_type == 0x09DE then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_rejected_message(buffer, offset)
  end
  -- Size of Reset Risk Acknowledgement Message
  if message_type == 0x09DA then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reset_risk_acknowledgement_message(buffer, offset)
  end
  -- Size of Mass Cancel Acknowledgment Message
  if message_type == 0x09DB then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_acknowledgment_message(buffer, offset)
  end
  -- Size of Mass Cancel Rejected Message
  if message_type == 0x09DC then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.mass_cancel_rejected_message(buffer, offset)
  end
  -- Size of Purge Acknowledgement Message
  if message_type == 0x09DD then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_acknowledgement_message(buffer, offset)
  end
  -- Size of Purge Notification Message
  if message_type == 0x09DF then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.purge_notification_message(buffer, offset)
  end
  -- Size of New Complex Instrument Accepted Message
  if message_type == 0x09C9 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_accepted_message(buffer, offset)
  end
  -- Size of New Complex Instrument Rejected Message
  if message_type == 0x09CA then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.new_complex_instrument_rejected_message(buffer, offset)
  end
  -- Size of Carried Restatement Message
  if message_type == 0x09CE then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.carried_restatement_message(buffer, offset)
  end
  -- Size of Done For Day Message
  if message_type == 0x09CF then
    return cboe_c2_options_orderentry_boe3_v1_0_12_size_of.done_for_day_message(buffer, offset)
  end

  return 0
end

-- Display: Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 1 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 2 then
  end
  -- Dissect Client Heartbeat Message
  if message_type == 3 then
  end
  -- Dissect Login Response Message
  if message_type == 501 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.login_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 502 then
  end
  -- Dissect Logout Response Message
  if message_type == 503 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.logout_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 504 then
  end
  -- Dissect New Order Message
  if message_type == 0x07D1 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_order_message(buffer, offset, packet, parent)
  end
  -- Dissect New Order Short Message
  if message_type == 0x07D2 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Message
  if message_type == 0x07D5 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_message(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Order Message
  if message_type == 0x07D6 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_order_message(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Order Short Message
  if message_type == 0x07D7 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_order_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if message_type == 0x07DA then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Message
  if message_type == 0x07DF then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 0x07DB then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Message
  if message_type == 0x07DC then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Short Message
  if message_type == 0x07DD then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_short_message(buffer, offset, packet, parent)
  end
  -- Dissect Purge Orders Message
  if message_type == 0x07E0 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_orders_message(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Message
  if message_type == 0x07DE then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reset_risk_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement Message
  if message_type == 0x09C5 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_acknowledgement_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Acknowledgement Message
  if message_type == 0x09D5 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_acknowledgement_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if message_type == 0x09C7 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Rejected Message
  if message_type == 0x09D6 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_update_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x09CB then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_modified_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if message_type == 0x09CD then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_restated_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Restated Message
  if message_type == 0x09D9 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_restated_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected Message
  if message_type == 0x09CC then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.modify_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if message_type == 0x09D0 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancelled Message
  if message_type == 0x09D7 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if message_type == 0x09D2 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.cancel_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 0x09D3 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution Message
  if message_type == 0x09D8 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.quote_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct Message
  if message_type == 0x09D4 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.trade_cancel_correct_message(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected Message
  if message_type == 0x09DE then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Acknowledgement Message
  if message_type == 0x09DA then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reset_risk_acknowledgement_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgment Message
  if message_type == 0x09DB then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_acknowledgment_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Rejected Message
  if message_type == 0x09DC then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.mass_cancel_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Purge Acknowledgement Message
  if message_type == 0x09DD then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_acknowledgement_message(buffer, offset, packet, parent)
  end
  -- Dissect Purge Notification Message
  if message_type == 0x09DF then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.purge_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Accepted Message
  if message_type == 0x09C9 then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_accepted_message(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Rejected Message
  if message_type == 0x09CA then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.new_complex_instrument_rejected_message(buffer, offset, packet, parent)
  end
  -- Dissect Carried Restatement Message
  if message_type == 0x09CE then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.carried_restatement_message(buffer, offset, packet, parent)
  end
  -- Dissect Done For Day Message
  if message_type == 0x09CF then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.done_for_day_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message = function(buffer, offset, packet, parent, message_type)
  if not show.message then
    return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.message(buffer, packet, parent)
  local element = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.message, range, display)

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Reserved Field
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reserved_field = 1

-- Display: Reserved Field
cboe_c2_options_orderentry_boe3_v1_0_12_display.reserved_field = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reserved_field = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reserved_field
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.reserved_field(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Size: Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.matching_unit = 1

-- Display: Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_display.matching_unit = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.matching_unit = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.matching_unit
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.matching_unit(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Size: Message Length
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_length = 2

-- Display: Message Length
cboe_c2_options_orderentry_boe3_v1_0_12_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_length = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.message_length(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Start Of Message
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.start_of_message = 2

-- Display: Start Of Message
cboe_c2_options_orderentry_boe3_v1_0_12_display.start_of_message = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.start_of_message = function(buffer, offset, packet, parent)
  local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.start_of_message
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.start_of_message(value, buffer, offset, packet, parent)

  parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.start_of_message

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_length

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_type

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.matching_unit

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.reserved_field

  index = index + cboe_c2_options_orderentry_boe3_v1_0_12_size_of.sequence_number

  return index
end

-- Display: Message Header
cboe_c2_options_orderentry_boe3_v1_0_12_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.start_of_message(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 43 values
  index, message_type = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_type(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.matching_unit(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.reserved_field(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = cboe_c2_options_orderentry_boe3_v1_0_12_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c2_options_orderentry_boe3_v1_0_12_display.message_header(buffer, packet, parent)
    parent = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12.fields.message_header, range, display)
  end

  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
cboe_c2_options_orderentry_boe3_v1_0_12_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 6 fields
  index, message_header = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 8, 2):le_uint()

  -- Message: Runtime Type with 43 branches
  index = cboe_c2_options_orderentry_boe3_v1_0_12_dissect.message(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function cboe_c2_options_orderentry_boe3_v1_0_12.init()
end

-- Dissector for Cboe C2 Options OrderEntry Boe3 1.0.12
function cboe_c2_options_orderentry_boe3_v1_0_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = cboe_c2_options_orderentry_boe3_v1_0_12.name

  -- Dissect protocol
  local protocol = parent:add(cboe_c2_options_orderentry_boe3_v1_0_12, buffer(), cboe_c2_options_orderentry_boe3_v1_0_12.description, "("..buffer:len().." Bytes)")
  return cboe_c2_options_orderentry_boe3_v1_0_12_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, cboe_c2_options_orderentry_boe3_v1_0_12)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.cboe_c2_options_orderentry_boe3_v1_0_12_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe C2 Options OrderEntry Boe3 1.0.12
local function cboe_c2_options_orderentry_boe3_v1_0_12_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.cboe_c2_options_orderentry_boe3_v1_0_12_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = cboe_c2_options_orderentry_boe3_v1_0_12
  cboe_c2_options_orderentry_boe3_v1_0_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C2 Options OrderEntry Boe3 1.0.12
cboe_c2_options_orderentry_boe3_v1_0_12:register_heuristic("tcp", cboe_c2_options_orderentry_boe3_v1_0_12_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 1.0.12
--   Date: Thursday, January 23, 2025
--   Specification: US_Options_BOE3_Specification.pdf
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
