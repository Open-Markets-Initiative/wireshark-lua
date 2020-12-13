-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 4.2.2 Protocol
local euronext_optiq_orderentrygateway_sbe_v4_2_2 = Proto("Euronext.Optiq.OrderEntryGateway.Sbe.v4.2.2.Lua", "Euronext Optiq OrderEntryGateway Sbe 4.2.2")

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

-- Euronext Optiq OrderEntryGateway Sbe 4.2.2 Fields
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_number = ProtoField.new("Account Number", "euronext.optiq.orderentrygateway.sbe.v4.2.2.accountnumber", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_number_cross = ProtoField.new("Account Number Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.accountnumbercross", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_type = ProtoField.new("Account Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.accounttype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_type_cross = ProtoField.new("Account Type Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.accounttypecross", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_message = ProtoField.new("Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_phase = ProtoField.new("Ack Phase", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ackphase", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_qualifiers = ProtoField.new("Ack Qualifiers", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ackqualifiers", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_type = ProtoField.new("Ack Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.acktype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.action_type = ProtoField.new("Action Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.actiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.afq_reason = ProtoField.new("Afq Reason", "euronext.optiq.orderentrygateway.sbe.v4.2.2.afqreason", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ask_for_quote_message = ProtoField.new("Ask For Quote Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.askforquotemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.orderentrygateway.sbe.v4.2.2.blocklength", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.book_in = ProtoField.new("Book In", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bookin", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.book_out_time = ProtoField.new("Book Out Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bookouttime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bypass_indicator = ProtoField.new("Bypass Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bypassindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cancel_replace_message = ProtoField.new("Cancel Replace Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.cancelreplacemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cancel_request_message = ProtoField.new("Cancel Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.cancelrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ccpid = ProtoField.new("Ccpid", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ccpid", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.centralisation_date = ProtoField.new("Centralisation Date", "euronext.optiq.orderentrygateway.sbe.v4.2.2.centralisationdate", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cl_msg_seq_num = ProtoField.new("Cl Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_firm_id = ProtoField.new("Clearing Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearingfirmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearinginstruction", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_identification_short_code_cross = ProtoField.new("Client Identification Short Code Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clientidentificationshortcodecross", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_identification_shortcode = ProtoField.new("Client Identification Shortcode", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clientidentificationshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_order_id = ProtoField.new("Client Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clientorderid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_breach_confirmation_message = ProtoField.new("Collar Breach Confirmation Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.collarbreachconfirmationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.contract_id = ProtoField.new("Contract Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.contractid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.2.2.contractsymbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.counterpart_firm_id = ProtoField.new("Counterpart Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.counterpartfirmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cross_order_message = ProtoField.new("Cross Order Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.crossordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dark_execution_instruction = ProtoField.new("Dark Execution Instruction", "euronext.optiq.orderentrygateway.sbe.v4.2.2.darkexecutioninstruction", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_cancel_and_refusal_message = ProtoField.new("Declaration Cancel And Refusal Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationcancelandrefusalmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_ack_message = ProtoField.new("Declaration Entry Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationentryackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_message = ProtoField.new("Declaration Entry Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationentrymessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_reject_message = ProtoField.new("Declaration Entry Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationentryrejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_id = ProtoField.new("Declaration Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_notice_message = ProtoField.new("Declaration Notice Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationnoticemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_status = ProtoField.new("Declaration Status", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationstatus", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.emm = ProtoField.new("Emm", "euronext.optiq.orderentrygateway.sbe.v4.2.2.emm", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.end_client = ProtoField.new("End Client", "euronext.optiq.orderentrygateway.sbe.v4.2.2.endclient", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.orderentrygateway.sbe.v4.2.2.endtimevwap", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.entering_counterparty = ProtoField.new("Entering Counterparty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.enteringcounterparty", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.error_code = ProtoField.new("Error Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.errorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.escb_membership = ProtoField.new("Escb Membership", "euronext.optiq.orderentrygateway.sbe.v4.2.2.escbmembership", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.exchange_id = ProtoField.new("Exchange Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.exchangeid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_id = ProtoField.new("Execution Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executionid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_instruction = ProtoField.new("Execution Instruction", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executioninstruction", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_phase = ProtoField.new("Execution Phase", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executionphase", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_within_firm_short_code = ProtoField.new("Execution Within Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executionwithinfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.family_id = ProtoField.new("Family Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.familyid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fill_message = ProtoField.new("Fill Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.fillmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.firm_id = ProtoField.new("Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.firmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.firm_id_publication = ProtoField.new("Firm Id Publication", "euronext.optiq.orderentrygateway.sbe.v4.2.2.firmidpublication", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.frame = ProtoField.new("Frame", "euronext.optiq.orderentrygateway.sbe.v4.2.2.frame", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text = ProtoField.new("Free Text", "euronext.optiq.orderentrygateway.sbe.v4.2.2.freetext", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text_cross = ProtoField.new("Free Text Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.freetextcross", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fund_price_input_ack_message = ProtoField.new("Fund Price Input Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.fundpriceinputackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fund_price_input_message = ProtoField.new("Fund Price Input Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.fundpriceinputmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.gross_trade_amount = ProtoField.new("Gross Trade Amount", "euronext.optiq.orderentrygateway.sbe.v4.2.2.grosstradeamount", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.guarantee_flag = ProtoField.new("Guarantee Flag", "euronext.optiq.orderentrygateway.sbe.v4.2.2.guaranteeflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.input_price_type = ProtoField.new("Input Price Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.inputpricetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.instrumentgroupcode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_synchronization_list_message = ProtoField.new("Instrument Synchronization List Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.instrumentsynchronizationlistmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.investment_decision_w_firm_short_code = ProtoField.new("Investment Decision W Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.investmentdecisionwfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.kill_message = ProtoField.new("Kill Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.killmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.kill_reason = ProtoField.new("Kill Reason", "euronext.optiq.orderentrygateway.sbe.v4.2.2.killreason", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_book_in_time = ProtoField.new("Last Book In Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lastbookintime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_cl_msg_seq_num = ProtoField.new("Last Cl Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lastclmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_msg_seq_num = ProtoField.new("Last Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lastmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_shares = ProtoField.new("Last Shares", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lastshares", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_traded_px = ProtoField.new("Last Traded Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lasttradedpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leaves_qty = ProtoField.new("Leaves Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leavesqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.liquidity_provider_command_message = ProtoField.new("Liquidity Provider Command Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.liquidityprovidercommandmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.lis_transaction_id = ProtoField.new("Lis Transaction Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.listransactionid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.log_out_reason_code = ProtoField.new("Log Out Reason Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.logoutreasoncode", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logical_access_id = ProtoField.new("Logical Access Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.logicalaccessid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logon_ack_message = ProtoField.new("Logon Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.logonackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logon_message = ProtoField.new("Logon Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.logonmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logon_reject_code = ProtoField.new("Logon Reject Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.logonrejectcode", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logon_reject_message = ProtoField.new("Logon Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.logonrejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logout_message = ProtoField.new("Logout Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.logoutmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.long_client_id = ProtoField.new("Long Client Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.longclientid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.lp_action_code = ProtoField.new("Lp Action Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lpactioncode", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.lp_role = ProtoField.new("Lp Role", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lprole", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mass_cancel_ack_message = ProtoField.new("Mass Cancel Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.masscancelackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.masscancelmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.maturity = ProtoField.new("Maturity", "euronext.optiq.orderentrygateway.sbe.v4.2.2.maturity", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.orderentrygateway.sbe.v4.2.2.messageheader", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.orderentrygateway.sbe.v4.2.2.messagepricenotation", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_cof_secondary_listing = ProtoField.new("Mi Cof Secondary Listing", "euronext.optiq.orderentrygateway.sbe.v4.2.2.micofsecondarylisting", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fid_indicators = ProtoField.new("Mi Fid Indicators", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mifidindicators", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.min_order_qty = ProtoField.new("Min Order Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.minorderqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.miscellaneous_fee_amount = ProtoField.new("Miscellaneous Fee Amount", "euronext.optiq.orderentrygateway.sbe.v4.2.2.miscellaneousfeeamount", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_protection_ack_message = ProtoField.new("Mm Protection Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmprotectionackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_protection_request_message = ProtoField.new("Mm Protection Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmprotectionrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_sign_in_ack_message = ProtoField.new("Mm Sign In Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmsigninackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_sign_in_message = ProtoField.new("Mm Sign In Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmsigninmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mmp_execution_type = ProtoField.new("Mmp Execution Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmpexecutiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.2.2.msgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.new_order_message = ProtoField.new("New Order Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.newordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.new_wholesale_order_message = ProtoField.new("New Wholesale Order Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.newwholesaleordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.non_executing_client_id = ProtoField.new("Non Executing Client Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.nonexecutingclientid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.number_of_l_ps = ProtoField.new("Number Of L Ps", "euronext.optiq.orderentrygateway.sbe.v4.2.2.numberoflps", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oe_partition_id = ProtoField.new("Oe Partition Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oepartitionid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegin_from_me = ProtoField.new("Oegin From Me", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oeginfromme", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegin_from_member = ProtoField.new("Oegin From Member", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oeginfrommember", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegout_time_to_me = ProtoField.new("Oegout Time To Me", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oegouttimetome", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegout_to_member = ProtoField.new("Oegout To Member", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oegouttomember", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.open_close = ProtoField.new("Open Close", "euronext.optiq.orderentrygateway.sbe.v4.2.2.openclose", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.open_order_request_message = ProtoField.new("Open Order Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.openorderrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.operation_type = ProtoField.new("Operation Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.operationtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.optiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_actor_type = ProtoField.new("Order Actor Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderactortype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_category = ProtoField.new("Order Category", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ordercategory", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_id = ProtoField.new("Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderpriority", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_qty = ProtoField.new("Order Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_side = ProtoField.new("Order Side", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderside", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_size_limit = ProtoField.new("Order Size Limit", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ordersizelimit", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ordertype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.orig_client_order_id = ProtoField.new("Orig Client Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.origclientorderid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ownership_request_ack_message = ProtoField.new("Ownership Request Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ownershiprequestackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ownership_request_message = ProtoField.new("Ownership Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ownershiprequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.packet = ProtoField.new("Packet", "euronext.optiq.orderentrygateway.sbe.v4.2.2.packet", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.parent_exec_id = ProtoField.new("Parent Exec Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.parentexecid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.parent_symbol_index = ProtoField.new("Parent Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.2.2.parentsymbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.payload = ProtoField.new("Payload", "euronext.optiq.orderentrygateway.sbe.v4.2.2.payload", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.potential_matching_px = ProtoField.new("Potential Matching Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.potentialmatchingpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.potential_matching_qty = ProtoField.new("Potential Matching Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.potentialmatchingqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.pre_matching_type = ProtoField.new("Pre Matching Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.prematchingtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.previous_day_indicator = ProtoField.new("Previous Day Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.previousdayindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.price = ProtoField.new("Price", "euronext.optiq.orderentrygateway.sbe.v4.2.2.price", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.price_input_message = ProtoField.new("Price Input Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.priceinputmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.principal_code = ProtoField.new("Principal Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.principalcode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.principal_code_cross = ProtoField.new("Principal Code Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.principalcodecross", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.queueing_indicator = ProtoField.new("Queueing Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.queueingindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_ack_message = ProtoField.new("Quote Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quoteackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_req_id = ProtoField.new("Quote Req Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quotereqid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_request_message = ProtoField.new("Quote Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quoterequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quotes_message = ProtoField.new("Quotes Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quotesmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.recipient_type = ProtoField.new("Recipient Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.recipienttype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reject_message = ProtoField.new("Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_client_message_sequence_number = ProtoField.new("Rejected Client Message Sequence Number", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rejectedclientmessagesequencenumber", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_message = ProtoField.new("Rejected Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rejectedmessage", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_message_id = ProtoField.new("Rejected Message Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rejectedmessageid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_for_execution_message = ProtoField.new("Request For Execution Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.requestforexecutionmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_for_implied_execution_message = ProtoField.new("Request For Implied Execution Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.requestforimpliedexecutionmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_type = ProtoField.new("Request Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.requesttype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.response_type = ProtoField.new("Response Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.responsetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.resynchronization_id = ProtoField.new("Resynchronization Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.resynchronizationid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfe_answer = ProtoField.new("Rfe Answer", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfeanswer", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_matching_status_message = ProtoField.new("Rfq Matching Status Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqmatchingstatusmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_notification_message = ProtoField.new("Rfq Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqnotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_update_type = ProtoField.new("Rfq Update Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqupdatetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfqlp_matching_status_message = ProtoField.new("Rfqlp Matching Status Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqlpmatchingstatusmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.schemaid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_definition_ack_message = ProtoField.new("Security Definition Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.securitydefinitionackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.securitydefinitionrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_req_id = ProtoField.new("Security Req Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.securityreqid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.sending_time = ProtoField.new("Sending Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.sendingtime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.settlement_flag = ProtoField.new("Settlement Flag", "euronext.optiq.orderentrygateway.sbe.v4.2.2.settlementflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.settlement_period = ProtoField.new("Settlement Period", "euronext.optiq.orderentrygateway.sbe.v4.2.2.settlementperiod", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.side = ProtoField.new("Side", "euronext.optiq.orderentrygateway.sbe.v4.2.2.side", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.software_provider = ProtoField.new("Software Provider", "euronext.optiq.orderentrygateway.sbe.v4.2.2.softwareprovider", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.orderentrygateway.sbe.v4.2.2.starttimevwap", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stpid = ProtoField.new("Stpid", "euronext.optiq.orderentrygateway.sbe.v4.2.2.stpid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_code = ProtoField.new("Strategy Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.strategycode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.2.2.symbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.synchronization_time_message = ProtoField.new("Synchronization Time Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.synchronizationtimemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.target_execution_within_firm_short_code = ProtoField.new("Target Execution Within Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.targetexecutionwithinfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.technical_origin = ProtoField.new("Technical Origin", "euronext.optiq.orderentrygateway.sbe.v4.2.2.technicalorigin", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.technical_reject_message = ProtoField.new("Technical Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.technicalrejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.templateid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.time_in_force = ProtoField.new("Time In Force", "euronext.optiq.orderentrygateway.sbe.v4.2.2.timeinforce", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "euronext.optiq.orderentrygateway.sbe.v4.2.2.totalaffectedorders", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_bust_notification_message = ProtoField.new("Trade Bust Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradebustnotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradequalifier", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_time = ProtoField.new("Trade Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradetime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trading_capacity = ProtoField.new("Trading Capacity", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradingcapacity", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trading_capacity_cross = ProtoField.new("Trading Capacity Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradingcapacitycross", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.transaction_price_type = ProtoField.new("Transaction Price Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.transactionpricetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.user_notification_message = ProtoField.new("User Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.usernotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.user_status = ProtoField.new("User Status", "euronext.optiq.orderentrygateway.sbe.v4.2.2.userstatus", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.version = ProtoField.new("Version", "euronext.optiq.orderentrygateway.sbe.v4.2.2.version", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.waiver_indicator = ProtoField.new("Waiver Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.waiverindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_order_ack_message = ProtoField.new("Wholesale Order Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleorderackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_side = ProtoField.new("Wholesale Side", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleside", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_trade_type = ProtoField.new("Wholesale Trade Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaletradetype", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 4.2.2 Element Dissection Options
show.ack_message = true
show.ask_for_quote_message = true
show.cancel_replace_message = true
show.cancel_request_message = true
show.collar_breach_confirmation_message = true
show.cross_order_message = true
show.declaration_cancel_and_refusal_message = true
show.declaration_entry_ack_message = true
show.declaration_entry_message = true
show.declaration_entry_reject_message = true
show.declaration_notice_message = true
show.fill_message = true
show.fund_price_input_ack_message = true
show.fund_price_input_message = true
show.instrument_synchronization_list_message = true
show.kill_message = true
show.liquidity_provider_command_message = true
show.logon_ack_message = true
show.logon_message = true
show.logon_reject_message = true
show.logout_message = true
show.mass_cancel_ack_message = true
show.mass_cancel_message = true
show.message_header = true
show.mm_protection_ack_message = true
show.mm_protection_request_message = true
show.mm_sign_in_ack_message = true
show.mm_sign_in_message = true
show.new_order_message = true
show.new_wholesale_order_message = true
show.open_order_request_message = true
show.ownership_request_ack_message = true
show.ownership_request_message = true
show.packet = true
show.price_input_message = true
show.quote_ack_message = true
show.quote_request_message = true
show.quotes_message = true
show.reject_message = true
show.request_for_execution_message = true
show.request_for_implied_execution_message = true
show.rfq_matching_status_message = true
show.rfq_notification_message = true
show.rfqlp_matching_status_message = true
show.security_definition_ack_message = true
show.security_definition_request_message = true
show.synchronization_time_message = true
show.technical_reject_message = true
show.trade_bust_notification_message = true
show.user_notification_message = true
show.wholesale_order_ack_message = true
show.payload = false

-- Register Euronext Optiq OrderEntryGateway Sbe 4.2.2 Show Options
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ack_message = Pref.bool("Show Ack Message", show.ack_message, "Parse and add Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ask_for_quote_message = Pref.bool("Show Ask For Quote Message", show.ask_for_quote_message, "Parse and add Ask For Quote Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cancel_replace_message = Pref.bool("Show Cancel Replace Message", show.cancel_replace_message, "Parse and add Cancel Replace Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cancel_request_message = Pref.bool("Show Cancel Request Message", show.cancel_request_message, "Parse and add Cancel Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_breach_confirmation_message = Pref.bool("Show Collar Breach Confirmation Message", show.collar_breach_confirmation_message, "Parse and add Collar Breach Confirmation Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cross_order_message = Pref.bool("Show Cross Order Message", show.cross_order_message, "Parse and add Cross Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_cancel_and_refusal_message = Pref.bool("Show Declaration Cancel And Refusal Message", show.declaration_cancel_and_refusal_message, "Parse and add Declaration Cancel And Refusal Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_ack_message = Pref.bool("Show Declaration Entry Ack Message", show.declaration_entry_ack_message, "Parse and add Declaration Entry Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_message = Pref.bool("Show Declaration Entry Message", show.declaration_entry_message, "Parse and add Declaration Entry Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_reject_message = Pref.bool("Show Declaration Entry Reject Message", show.declaration_entry_reject_message, "Parse and add Declaration Entry Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_notice_message = Pref.bool("Show Declaration Notice Message", show.declaration_notice_message, "Parse and add Declaration Notice Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fill_message = Pref.bool("Show Fill Message", show.fill_message, "Parse and add Fill Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fund_price_input_ack_message = Pref.bool("Show Fund Price Input Ack Message", show.fund_price_input_ack_message, "Parse and add Fund Price Input Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fund_price_input_message = Pref.bool("Show Fund Price Input Message", show.fund_price_input_message, "Parse and add Fund Price Input Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_list_message = Pref.bool("Show Instrument Synchronization List Message", show.instrument_synchronization_list_message, "Parse and add Instrument Synchronization List Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_kill_message = Pref.bool("Show Kill Message", show.kill_message, "Parse and add Kill Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_liquidity_provider_command_message = Pref.bool("Show Liquidity Provider Command Message", show.liquidity_provider_command_message, "Parse and add Liquidity Provider Command Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_ack_message = Pref.bool("Show Logon Ack Message", show.logon_ack_message, "Parse and add Logon Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_reject_message = Pref.bool("Show Logon Reject Message", show.logon_reject_message, "Parse and add Logon Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mass_cancel_ack_message = Pref.bool("Show Mass Cancel Ack Message", show.mass_cancel_ack_message, "Parse and add Mass Cancel Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mass_cancel_message = Pref.bool("Show Mass Cancel Message", show.mass_cancel_message, "Parse and add Mass Cancel Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_protection_ack_message = Pref.bool("Show Mm Protection Ack Message", show.mm_protection_ack_message, "Parse and add Mm Protection Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_protection_request_message = Pref.bool("Show Mm Protection Request Message", show.mm_protection_request_message, "Parse and add Mm Protection Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_sign_in_ack_message = Pref.bool("Show Mm Sign In Ack Message", show.mm_sign_in_ack_message, "Parse and add Mm Sign In Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_sign_in_message = Pref.bool("Show Mm Sign In Message", show.mm_sign_in_message, "Parse and add Mm Sign In Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_new_wholesale_order_message = Pref.bool("Show New Wholesale Order Message", show.new_wholesale_order_message, "Parse and add New Wholesale Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_order_request_message = Pref.bool("Show Open Order Request Message", show.open_order_request_message, "Parse and add Open Order Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ownership_request_ack_message = Pref.bool("Show Ownership Request Ack Message", show.ownership_request_ack_message, "Parse and add Ownership Request Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ownership_request_message = Pref.bool("Show Ownership Request Message", show.ownership_request_message, "Parse and add Ownership Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_price_input_message = Pref.bool("Show Price Input Message", show.price_input_message, "Parse and add Price Input Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_ack_message = Pref.bool("Show Quote Ack Message", show.quote_ack_message, "Parse and add Quote Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_request_message = Pref.bool("Show Quote Request Message", show.quote_request_message, "Parse and add Quote Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_message = Pref.bool("Show Quotes Message", show.quotes_message, "Parse and add Quotes Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_request_for_execution_message = Pref.bool("Show Request For Execution Message", show.request_for_execution_message, "Parse and add Request For Execution Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_request_for_implied_execution_message = Pref.bool("Show Request For Implied Execution Message", show.request_for_implied_execution_message, "Parse and add Request For Implied Execution Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfq_matching_status_message = Pref.bool("Show Rfq Matching Status Message", show.rfq_matching_status_message, "Parse and add Rfq Matching Status Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfq_notification_message = Pref.bool("Show Rfq Notification Message", show.rfq_notification_message, "Parse and add Rfq Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfqlp_matching_status_message = Pref.bool("Show Rfqlp Matching Status Message", show.rfqlp_matching_status_message, "Parse and add Rfqlp Matching Status Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_security_definition_ack_message = Pref.bool("Show Security Definition Ack Message", show.security_definition_ack_message, "Parse and add Security Definition Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_security_definition_request_message = Pref.bool("Show Security Definition Request Message", show.security_definition_request_message, "Parse and add Security Definition Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_synchronization_time_message = Pref.bool("Show Synchronization Time Message", show.synchronization_time_message, "Parse and add Synchronization Time Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_technical_reject_message = Pref.bool("Show Technical Reject Message", show.technical_reject_message, "Parse and add Technical Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trade_bust_notification_message = Pref.bool("Show Trade Bust Notification Message", show.trade_bust_notification_message, "Parse and add Trade Bust Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_user_notification_message = Pref.bool("Show User Notification Message", show.user_notification_message, "Parse and add User Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_order_ack_message = Pref.bool("Show Wholesale Order Ack Message", show.wholesale_order_ack_message, "Parse and add Wholesale Order Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ack_message then
    show.ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ack_message
    changed = true
  end
  if show.ask_for_quote_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ask_for_quote_message then
    show.ask_for_quote_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ask_for_quote_message
    changed = true
  end
  if show.cancel_replace_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cancel_replace_message then
    show.cancel_replace_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cancel_replace_message
    changed = true
  end
  if show.cancel_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cancel_request_message then
    show.cancel_request_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cancel_request_message
    changed = true
  end
  if show.collar_breach_confirmation_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_breach_confirmation_message then
    show.collar_breach_confirmation_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_breach_confirmation_message
    changed = true
  end
  if show.cross_order_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cross_order_message then
    show.cross_order_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cross_order_message
    changed = true
  end
  if show.declaration_cancel_and_refusal_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_cancel_and_refusal_message then
    show.declaration_cancel_and_refusal_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_cancel_and_refusal_message
    changed = true
  end
  if show.declaration_entry_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_ack_message then
    show.declaration_entry_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_ack_message
    changed = true
  end
  if show.declaration_entry_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_message then
    show.declaration_entry_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_message
    changed = true
  end
  if show.declaration_entry_reject_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_reject_message then
    show.declaration_entry_reject_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_reject_message
    changed = true
  end
  if show.declaration_notice_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_notice_message then
    show.declaration_notice_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_notice_message
    changed = true
  end
  if show.fill_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fill_message then
    show.fill_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fill_message
    changed = true
  end
  if show.fund_price_input_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fund_price_input_ack_message then
    show.fund_price_input_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fund_price_input_ack_message
    changed = true
  end
  if show.fund_price_input_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fund_price_input_message then
    show.fund_price_input_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fund_price_input_message
    changed = true
  end
  if show.instrument_synchronization_list_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_list_message then
    show.instrument_synchronization_list_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_list_message
    changed = true
  end
  if show.kill_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_kill_message then
    show.kill_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_kill_message
    changed = true
  end
  if show.liquidity_provider_command_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_liquidity_provider_command_message then
    show.liquidity_provider_command_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_liquidity_provider_command_message
    changed = true
  end
  if show.logon_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_ack_message then
    show.logon_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_ack_message
    changed = true
  end
  if show.logon_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_message then
    show.logon_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_message
    changed = true
  end
  if show.logon_reject_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_reject_message then
    show.logon_reject_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_reject_message
    changed = true
  end
  if show.logout_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logout_message then
    show.logout_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logout_message
    changed = true
  end
  if show.mass_cancel_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mass_cancel_ack_message then
    show.mass_cancel_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mass_cancel_ack_message
    changed = true
  end
  if show.mass_cancel_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mass_cancel_message then
    show.mass_cancel_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mass_cancel_message
    changed = true
  end
  if show.message_header ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message_header then
    show.message_header = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message_header
    changed = true
  end
  if show.mm_protection_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_protection_ack_message then
    show.mm_protection_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_protection_ack_message
    changed = true
  end
  if show.mm_protection_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_protection_request_message then
    show.mm_protection_request_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_protection_request_message
    changed = true
  end
  if show.mm_sign_in_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_sign_in_ack_message then
    show.mm_sign_in_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_sign_in_ack_message
    changed = true
  end
  if show.mm_sign_in_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_sign_in_message then
    show.mm_sign_in_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_sign_in_message
    changed = true
  end
  if show.new_order_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_new_order_message then
    show.new_order_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_new_order_message
    changed = true
  end
  if show.new_wholesale_order_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_new_wholesale_order_message then
    show.new_wholesale_order_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_new_wholesale_order_message
    changed = true
  end
  if show.open_order_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_order_request_message then
    show.open_order_request_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_order_request_message
    changed = true
  end
  if show.ownership_request_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ownership_request_ack_message then
    show.ownership_request_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ownership_request_ack_message
    changed = true
  end
  if show.ownership_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ownership_request_message then
    show.ownership_request_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ownership_request_message
    changed = true
  end
  if show.packet ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_packet then
    show.packet = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_packet
    changed = true
  end
  if show.price_input_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_price_input_message then
    show.price_input_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_price_input_message
    changed = true
  end
  if show.quote_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_ack_message then
    show.quote_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_ack_message
    changed = true
  end
  if show.quote_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_request_message then
    show.quote_request_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_request_message
    changed = true
  end
  if show.quotes_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_message then
    show.quotes_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_message
    changed = true
  end
  if show.reject_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_reject_message then
    show.reject_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_reject_message
    changed = true
  end
  if show.request_for_execution_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_request_for_execution_message then
    show.request_for_execution_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_request_for_execution_message
    changed = true
  end
  if show.request_for_implied_execution_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_request_for_implied_execution_message then
    show.request_for_implied_execution_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_request_for_implied_execution_message
    changed = true
  end
  if show.rfq_matching_status_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfq_matching_status_message then
    show.rfq_matching_status_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfq_matching_status_message
    changed = true
  end
  if show.rfq_notification_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfq_notification_message then
    show.rfq_notification_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfq_notification_message
    changed = true
  end
  if show.rfqlp_matching_status_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfqlp_matching_status_message then
    show.rfqlp_matching_status_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfqlp_matching_status_message
    changed = true
  end
  if show.security_definition_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_security_definition_ack_message then
    show.security_definition_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_security_definition_ack_message
    changed = true
  end
  if show.security_definition_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_security_definition_request_message then
    show.security_definition_request_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_security_definition_request_message
    changed = true
  end
  if show.synchronization_time_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_synchronization_time_message then
    show.synchronization_time_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_synchronization_time_message
    changed = true
  end
  if show.technical_reject_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_technical_reject_message then
    show.technical_reject_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_technical_reject_message
    changed = true
  end
  if show.trade_bust_notification_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trade_bust_notification_message then
    show.trade_bust_notification_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trade_bust_notification_message
    changed = true
  end
  if show.user_notification_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_user_notification_message then
    show.user_notification_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_user_notification_message
    changed = true
  end
  if show.wholesale_order_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_order_ack_message then
    show.wholesale_order_ack_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_order_ack_message
    changed = true
  end
  if show.payload ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_payload then
    show.payload = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq OrderEntryGateway Sbe 4.2.2
-----------------------------------------------------------------------

-- Size: Rejected Message Id
size_of.rejected_message_id = 2

-- Display: Rejected Message Id
display.rejected_message_id = function(value)
  return "Rejected Message Id: "..value
end

-- Dissect: Rejected Message Id
dissect.rejected_message_id = function(buffer, offset, packet, parent)
  local length = size_of.rejected_message_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rejected_message_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_message_id, range, value, display)

  return offset + length, value
end

-- Size: Rejected Message
size_of.rejected_message = 1

-- Display: Rejected Message
display.rejected_message = function(value)
  return "Rejected Message: "..value
end

-- Dissect: Rejected Message
dissect.rejected_message = function(buffer, offset, packet, parent)
  local length = size_of.rejected_message
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rejected_message(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_message, range, value, display)

  return offset + length, value
end

-- Size: Error Code
size_of.error_code = 2

-- Display: Error Code
display.error_code = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
dissect.error_code = function(buffer, offset, packet, parent)
  local length = size_of.error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.error_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.error_code, range, value, display)

  return offset + length, value
end

-- Size: Operation Type
size_of.operation_type = 1

-- Display: Operation Type
display.operation_type = function(value)
  return "Operation Type: "..value
end

-- Dissect: Operation Type
dissect.operation_type = function(buffer, offset, packet, parent)
  local length = size_of.operation_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.operation_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Size: Mi Cof Secondary Listing
size_of.mi_cof_secondary_listing = 4

-- Display: Mi Cof Secondary Listing
display.mi_cof_secondary_listing = function(value)
  return "Mi Cof Secondary Listing: "..value
end

-- Dissect: Mi Cof Secondary Listing
dissect.mi_cof_secondary_listing = function(buffer, offset, packet, parent)
  local length = size_of.mi_cof_secondary_listing
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mi_cof_secondary_listing(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_cof_secondary_listing, range, value, display)

  return offset + length, value
end

-- Size: Emm
size_of.emm = 1

-- Display: Emm
display.emm = function(value)
  return "Emm: "..value
end

-- Dissect: Emm
dissect.emm = function(buffer, offset, packet, parent)
  local length = size_of.emm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.emm(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.emm, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
size_of.symbol_index = 4

-- Display: Symbol Index
display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Client Order Id
size_of.client_order_id = 8

-- Display: Client Order Id
display.client_order_id = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
dissect.client_order_id = function(buffer, offset, packet, parent)
  local length = size_of.client_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.client_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Size: Firm Id
size_of.firm_id = 8

-- Display: Firm Id
display.firm_id = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
dissect.firm_id = function(buffer, offset, packet, parent)
  local length = size_of.firm_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.firm_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Size: Msg Seq Num
size_of.msg_seq_num = 4

-- Display: Msg Seq Num
display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Entry Reject Message
size_of.declaration_entry_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.mi_cof_secondary_listing

  index = index + size_of.operation_type

  index = index + size_of.error_code

  index = index + size_of.rejected_message

  index = index + size_of.rejected_message_id

  return index
end

-- Display: Declaration Entry Reject Message
display.declaration_entry_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Entry Reject Message
dissect.declaration_entry_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String
  index, mi_cof_secondary_listing = dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer
  index, operation_type = dissect.operation_type(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer
  index, rejected_message = dissect.rejected_message(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer
  index, rejected_message_id = dissect.rejected_message_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Reject Message
dissect.declaration_entry_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.declaration_entry_reject_message then
    local length = size_of.declaration_entry_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.declaration_entry_reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_reject_message, range, display)
  end

  return dissect.declaration_entry_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Bypass Indicator
size_of.bypass_indicator = 1

-- Display: Bypass Indicator
display.bypass_indicator = function(value)
  return "Bypass Indicator: "..value
end

-- Dissect: Bypass Indicator
dissect.bypass_indicator = function(buffer, offset, packet, parent)
  local length = size_of.bypass_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bypass_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bypass_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fund Price Input Ack Message
size_of.fund_price_input_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.price

  index = index + size_of.bypass_indicator

  return index
end

-- Display: Fund Price Input Ack Message
display.fund_price_input_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fund Price Input Ack Message
dissect.fund_price_input_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Bypass Indicator: 1 Byte Unsigned Fixed Width Integer
  index, bypass_indicator = dissect.bypass_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Fund Price Input Ack Message
dissect.fund_price_input_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fund_price_input_ack_message then
    local length = size_of.fund_price_input_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.fund_price_input_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fund_price_input_ack_message, range, display)
  end

  return dissect.fund_price_input_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Sending Time
size_of.sending_time = 8

-- Display: Sending Time
display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
dissect.sending_time = function(buffer, offset, packet, parent)
  local length = size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.sending_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Cl Msg Seq Num
size_of.cl_msg_seq_num = 4

-- Display: Cl Msg Seq Num
display.cl_msg_seq_num = function(value)
  return "Cl Msg Seq Num: "..value
end

-- Dissect: Cl Msg Seq Num
dissect.cl_msg_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.cl_msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.cl_msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cl_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fund Price Input Message
size_of.fund_price_input_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.price

  index = index + size_of.bypass_indicator

  return index
end

-- Display: Fund Price Input Message
display.fund_price_input_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fund Price Input Message
dissect.fund_price_input_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Bypass Indicator: 1 Byte Unsigned Fixed Width Integer
  index, bypass_indicator = dissect.bypass_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Fund Price Input Message
dissect.fund_price_input_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fund_price_input_message then
    local length = size_of.fund_price_input_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.fund_price_input_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fund_price_input_message, range, display)
  end

  return dissect.fund_price_input_message_fields(buffer, offset, packet, parent)
end

-- Size: Action Type
size_of.action_type = 1

-- Display: Action Type
display.action_type = function(value)
  return "Action Type: "..value
end

-- Dissect: Action Type
dissect.action_type = function(buffer, offset, packet, parent)
  local length = size_of.action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.action_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.action_type, range, value, display)

  return offset + length, value
end

-- Size: Declaration Id
size_of.declaration_id = 8

-- Display: Declaration Id
display.declaration_id = function(value)
  return "Declaration Id: "..value
end

-- Dissect: Declaration Id
dissect.declaration_id = function(buffer, offset, packet, parent)
  local length = size_of.declaration_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.declaration_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Cancel And Refusal Message
size_of.declaration_cancel_and_refusal_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.declaration_id

  index = index + size_of.action_type

  return index
end

-- Display: Declaration Cancel And Refusal Message
display.declaration_cancel_and_refusal_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Cancel And Refusal Message
dissect.declaration_cancel_and_refusal_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer
  index, declaration_id = dissect.declaration_id(buffer, index, packet, parent)

  -- Action Type: 1 Byte Unsigned Fixed Width Integer
  index, action_type = dissect.action_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Cancel And Refusal Message
dissect.declaration_cancel_and_refusal_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.declaration_cancel_and_refusal_message then
    local length = size_of.declaration_cancel_and_refusal_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.declaration_cancel_and_refusal_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_cancel_and_refusal_message, range, display)
  end

  return dissect.declaration_cancel_and_refusal_message_fields(buffer, offset, packet, parent)
end

-- Size: Ccpid
size_of.ccpid = 1

-- Display: Ccpid
display.ccpid = function(value)
  return "Ccpid: "..value
end

-- Dissect: Ccpid
dissect.ccpid = function(buffer, offset, packet, parent)
  local length = size_of.ccpid
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ccpid(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ccpid, range, value, display)

  return offset + length, value
end

-- Size: Miscellaneous Fee Amount
size_of.miscellaneous_fee_amount = 8

-- Display: Miscellaneous Fee Amount
display.miscellaneous_fee_amount = function(value)
  return "Miscellaneous Fee Amount: "..value
end

-- Dissect: Miscellaneous Fee Amount
dissect.miscellaneous_fee_amount = function(buffer, offset, packet, parent)
  local length = size_of.miscellaneous_fee_amount
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.miscellaneous_fee_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.miscellaneous_fee_amount, range, value, display)

  return offset + length, value
end

-- Size: Previous Day Indicator
size_of.previous_day_indicator = 1

-- Display: Previous Day Indicator
display.previous_day_indicator = function(value)
  return "Previous Day Indicator: "..value
end

-- Dissect: Previous Day Indicator
dissect.previous_day_indicator = function(buffer, offset, packet, parent)
  local length = size_of.previous_day_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.previous_day_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.previous_day_indicator, range, value, display)

  return offset + length, value
end

-- Size: Waiver Indicator
size_of.waiver_indicator = 1

-- Display: Waiver Indicator
display.waiver_indicator = function(value)
  return "Waiver Indicator: "..value
end

-- Dissect: Waiver Indicator
dissect.waiver_indicator = function(buffer, offset, packet, parent)
  local length = size_of.waiver_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.waiver_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.waiver_indicator, range, value, display)

  return offset + length, value
end

-- Size: Free Text Cross
size_of.free_text_cross = 18

-- Display: Free Text Cross
display.free_text_cross = function(value)
  return "Free Text Cross: "..value
end

-- Dissect: Free Text Cross
dissect.free_text_cross = function(buffer, offset, packet, parent)
  local length = size_of.free_text_cross
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.free_text_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text_cross, range, value, display)

  return offset + length, value
end

-- Size: Free Text
size_of.free_text = 18

-- Display: Free Text
display.free_text = function(value)
  return "Free Text: "..value
end

-- Dissect: Free Text
dissect.free_text = function(buffer, offset, packet, parent)
  local length = size_of.free_text
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.free_text(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text, range, value, display)

  return offset + length, value
end

-- Size: Account Number Cross
size_of.account_number_cross = 12

-- Display: Account Number Cross
display.account_number_cross = function(value)
  return "Account Number Cross: "..value
end

-- Dissect: Account Number Cross
dissect.account_number_cross = function(buffer, offset, packet, parent)
  local length = size_of.account_number_cross
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.account_number_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_number_cross, range, value, display)

  return offset + length, value
end

-- Size: Account Number
size_of.account_number = 12

-- Display: Account Number
display.account_number = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
dissect.account_number = function(buffer, offset, packet, parent)
  local length = size_of.account_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.account_number(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_number, range, value, display)

  return offset + length, value
end

-- Size: Gross Trade Amount
size_of.gross_trade_amount = 8

-- Display: Gross Trade Amount
display.gross_trade_amount = function(value)
  return "Gross Trade Amount: "..value
end

-- Dissect: Gross Trade Amount
dissect.gross_trade_amount = function(buffer, offset, packet, parent)
  local length = size_of.gross_trade_amount
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.gross_trade_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.gross_trade_amount, range, value, display)

  return offset + length, value
end

-- Size: End Time Vwap
size_of.end_time_vwap = 4

-- Display: End Time Vwap
display.end_time_vwap = function(value)
  return "End Time Vwap: "..value
end

-- Dissect: End Time Vwap
dissect.end_time_vwap = function(buffer, offset, packet, parent)
  local length = size_of.end_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.end_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.end_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Start Time Vwap
size_of.start_time_vwap = 4

-- Display: Start Time Vwap
display.start_time_vwap = function(value)
  return "Start Time Vwap: "..value
end

-- Dissect: Start Time Vwap
dissect.start_time_vwap = function(buffer, offset, packet, parent)
  local length = size_of.start_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.start_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.start_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Principal Code Cross
size_of.principal_code_cross = 8

-- Display: Principal Code Cross
display.principal_code_cross = function(value)
  return "Principal Code Cross: "..value
end

-- Dissect: Principal Code Cross
dissect.principal_code_cross = function(buffer, offset, packet, parent)
  local length = size_of.principal_code_cross
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.principal_code_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.principal_code_cross, range, value, display)

  return offset + length, value
end

-- Size: Principal Code
size_of.principal_code = 8

-- Display: Principal Code
display.principal_code = function(value)
  return "Principal Code: "..value
end

-- Dissect: Principal Code
dissect.principal_code = function(buffer, offset, packet, parent)
  local length = size_of.principal_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.principal_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.principal_code, range, value, display)

  return offset + length, value
end

-- Size: Transaction Price Type
size_of.transaction_price_type = 1

-- Display: Transaction Price Type
display.transaction_price_type = function(value)
  return "Transaction Price Type: "..value
end

-- Dissect: Transaction Price Type
dissect.transaction_price_type = function(buffer, offset, packet, parent)
  local length = size_of.transaction_price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.transaction_price_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.transaction_price_type, range, value, display)

  return offset + length, value
end

-- Size: Guarantee Flag
size_of.guarantee_flag = 1

-- Display: Guarantee Flag
display.guarantee_flag = function(value)
  return "Guarantee Flag: "..value
end

-- Dissect: Guarantee Flag
dissect.guarantee_flag = function(buffer, offset, packet, parent)
  local length = size_of.guarantee_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.guarantee_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.guarantee_flag, range, value, display)

  return offset + length, value
end

-- Size: Settlement Period
size_of.settlement_period = 1

-- Display: Settlement Period
display.settlement_period = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
dissect.settlement_period = function(buffer, offset, packet, parent)
  local length = size_of.settlement_period
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.settlement_period(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Size: Settlement Flag
size_of.settlement_flag = 1

-- Display: Settlement Flag
display.settlement_flag = function(value)
  return "Settlement Flag: "..value
end

-- Dissect: Settlement Flag
dissect.settlement_flag = function(buffer, offset, packet, parent)
  local length = size_of.settlement_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.settlement_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.settlement_flag, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity Cross
size_of.trading_capacity_cross = 1

-- Display: Trading Capacity Cross
display.trading_capacity_cross = function(value)
  return "Trading Capacity Cross: "..value
end

-- Dissect: Trading Capacity Cross
dissect.trading_capacity_cross = function(buffer, offset, packet, parent)
  local length = size_of.trading_capacity_cross
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_capacity_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trading_capacity_cross, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity
size_of.trading_capacity = 1

-- Display: Trading Capacity
display.trading_capacity = function(value)
  return "Trading Capacity: "..value
end

-- Dissect: Trading Capacity
dissect.trading_capacity = function(buffer, offset, packet, parent)
  local length = size_of.trading_capacity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trading_capacity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Size: Account Type Cross
size_of.account_type_cross = 1

-- Display: Account Type Cross
display.account_type_cross = function(value)
  return "Account Type Cross: "..value
end

-- Dissect: Account Type Cross
dissect.account_type_cross = function(buffer, offset, packet, parent)
  local length = size_of.account_type_cross
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.account_type_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_type_cross, range, value, display)

  return offset + length, value
end

-- Size: Account Type
size_of.account_type = 1

-- Display: Account Type
display.account_type = function(value)
  return "Account Type: "..value
end

-- Dissect: Account Type
dissect.account_type = function(buffer, offset, packet, parent)
  local length = size_of.account_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.account_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_type, range, value, display)

  return offset + length, value
end

-- Size: Clearing Firm Id
size_of.clearing_firm_id = 8

-- Display: Clearing Firm Id
display.clearing_firm_id = function(value)
  return "Clearing Firm Id: "..value
end

-- Dissect: Clearing Firm Id
dissect.clearing_firm_id = function(buffer, offset, packet, parent)
  local length = size_of.clearing_firm_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.clearing_firm_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_firm_id, range, value, display)

  return offset + length, value
end

-- Size: Centralisation Date
size_of.centralisation_date = 10

-- Display: Centralisation Date
display.centralisation_date = function(value)
  return "Centralisation Date: "..value
end

-- Dissect: Centralisation Date
dissect.centralisation_date = function(buffer, offset, packet, parent)
  local length = size_of.centralisation_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.centralisation_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.centralisation_date, range, value, display)

  return offset + length, value
end

-- Size: Trade Time
size_of.trade_time = 8

-- Display: Trade Time
display.trade_time = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
dissect.trade_time = function(buffer, offset, packet, parent)
  local length = size_of.trade_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trade_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Size: Pre Matching Type
size_of.pre_matching_type = 1

-- Display: Pre Matching Type
display.pre_matching_type = function(value)
  return "Pre Matching Type: "..value
end

-- Dissect: Pre Matching Type
dissect.pre_matching_type = function(buffer, offset, packet, parent)
  local length = size_of.pre_matching_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.pre_matching_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.pre_matching_type, range, value, display)

  return offset + length, value
end

-- Size: Quantity
size_of.quantity = 8

-- Display: Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local length = size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Entering Counterparty
size_of.entering_counterparty = 8

-- Display: Entering Counterparty
display.entering_counterparty = function(value)
  return "Entering Counterparty: "..value
end

-- Dissect: Entering Counterparty
dissect.entering_counterparty = function(buffer, offset, packet, parent)
  local length = size_of.entering_counterparty
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.entering_counterparty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.entering_counterparty, range, value, display)

  return offset + length, value
end

-- Size: Declaration Status
size_of.declaration_status = 1

-- Display: Declaration Status
display.declaration_status = function(value)
  return "Declaration Status: "..value
end

-- Dissect: Declaration Status
dissect.declaration_status = function(buffer, offset, packet, parent)
  local length = size_of.declaration_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.declaration_status(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Notice Message
size_of.declaration_notice_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.client_order_id

  index = index + size_of.declaration_id

  index = index + size_of.declaration_status

  index = index + size_of.operation_type

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.entering_counterparty

  index = index + size_of.side

  index = index + size_of.quantity

  index = index + size_of.price

  index = index + size_of.pre_matching_type

  index = index + size_of.trade_time

  index = index + size_of.mi_cof_secondary_listing

  index = index + size_of.centralisation_date

  index = index + size_of.clearing_firm_id

  index = index + size_of.account_type

  index = index + size_of.account_type_cross

  index = index + size_of.trading_capacity

  index = index + size_of.trading_capacity_cross

  index = index + size_of.settlement_flag

  index = index + size_of.settlement_period

  index = index + size_of.guarantee_flag

  index = index + size_of.transaction_price_type

  index = index + size_of.principal_code

  index = index + size_of.principal_code_cross

  index = index + size_of.start_time_vwap

  index = index + size_of.end_time_vwap

  index = index + size_of.gross_trade_amount

  index = index + size_of.account_number

  index = index + size_of.account_number_cross

  index = index + size_of.free_text

  index = index + size_of.free_text_cross

  index = index + size_of.waiver_indicator

  index = index + size_of.previous_day_indicator

  index = index + size_of.miscellaneous_fee_amount

  index = index + size_of.ccpid

  return index
end

-- Display: Declaration Notice Message
display.declaration_notice_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Notice Message
dissect.declaration_notice_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer
  index, declaration_id = dissect.declaration_id(buffer, index, packet, parent)

  -- Declaration Status: 1 Byte Unsigned Fixed Width Integer
  index, declaration_status = dissect.declaration_status(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer
  index, operation_type = dissect.operation_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Entering Counterparty: 8 Byte Ascii String
  index, entering_counterparty = dissect.entering_counterparty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Pre Matching Type: 1 Byte Unsigned Fixed Width Integer
  index, pre_matching_type = dissect.pre_matching_type(buffer, index, packet, parent)

  -- Trade Time: 8 Byte Unsigned Fixed Width Integer
  index, trade_time = dissect.trade_time(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String
  index, mi_cof_secondary_listing = dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Centralisation Date: 10 Byte Ascii String
  index, centralisation_date = dissect.centralisation_date(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer
  index, account_type_cross = dissect.account_type_cross(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trading Capacity Cross: 1 Byte Unsigned Fixed Width Integer
  index, trading_capacity_cross = dissect.trading_capacity_cross(buffer, index, packet, parent)

  -- Settlement Flag: 1 Byte Unsigned Fixed Width Integer
  index, settlement_flag = dissect.settlement_flag(buffer, index, packet, parent)

  -- Settlement Period: 1 Byte Unsigned Fixed Width Integer
  index, settlement_period = dissect.settlement_period(buffer, index, packet, parent)

  -- Guarantee Flag: 1 Byte Unsigned Fixed Width Integer
  index, guarantee_flag = dissect.guarantee_flag(buffer, index, packet, parent)

  -- Transaction Price Type: 1 Byte Unsigned Fixed Width Integer
  index, transaction_price_type = dissect.transaction_price_type(buffer, index, packet, parent)

  -- Principal Code: 8 Byte Ascii String
  index, principal_code = dissect.principal_code(buffer, index, packet, parent)

  -- Principal Code Cross: 8 Byte Ascii String
  index, principal_code_cross = dissect.principal_code_cross(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer
  index, start_time_vwap = dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer
  index, end_time_vwap = dissect.end_time_vwap(buffer, index, packet, parent)

  -- Gross Trade Amount: 8 Byte Signed Fixed Width Integer
  index, gross_trade_amount = dissect.gross_trade_amount(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Account Number Cross: 12 Byte Ascii String
  index, account_number_cross = dissect.account_number_cross(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Free Text Cross: 18 Byte Ascii String
  index, free_text_cross = dissect.free_text_cross(buffer, index, packet, parent)

  -- Waiver Indicator: 1 Byte Unsigned Fixed Width Integer
  index, waiver_indicator = dissect.waiver_indicator(buffer, index, packet, parent)

  -- Previous Day Indicator: 1 Byte Unsigned Fixed Width Integer
  index, previous_day_indicator = dissect.previous_day_indicator(buffer, index, packet, parent)

  -- Miscellaneous Fee Amount: 8 Byte Signed Fixed Width Integer
  index, miscellaneous_fee_amount = dissect.miscellaneous_fee_amount(buffer, index, packet, parent)

  -- Ccpid: 1 Byte Unsigned Fixed Width Integer
  index, ccpid = dissect.ccpid(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Notice Message
dissect.declaration_notice_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.declaration_notice_message then
    local length = size_of.declaration_notice_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.declaration_notice_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_notice_message, range, display)
  end

  return dissect.declaration_notice_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Declaration Entry Ack Message
size_of.declaration_entry_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.declaration_id

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.mi_cof_secondary_listing

  index = index + size_of.operation_type

  index = index + size_of.pre_matching_type

  index = index + size_of.waiver_indicator

  return index
end

-- Display: Declaration Entry Ack Message
display.declaration_entry_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Entry Ack Message
dissect.declaration_entry_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer
  index, declaration_id = dissect.declaration_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String
  index, mi_cof_secondary_listing = dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer
  index, operation_type = dissect.operation_type(buffer, index, packet, parent)

  -- Pre Matching Type: 1 Byte Unsigned Fixed Width Integer
  index, pre_matching_type = dissect.pre_matching_type(buffer, index, packet, parent)

  -- Waiver Indicator: 1 Byte Unsigned Fixed Width Integer
  index, waiver_indicator = dissect.waiver_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Ack Message
dissect.declaration_entry_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.declaration_entry_ack_message then
    local length = size_of.declaration_entry_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.declaration_entry_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_ack_message, range, display)
  end

  return dissect.declaration_entry_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Client Identification Short Code Cross
size_of.client_identification_short_code_cross = 4

-- Display: Client Identification Short Code Cross
display.client_identification_short_code_cross = function(value)
  return "Client Identification Short Code Cross: "..value
end

-- Dissect: Client Identification Short Code Cross
dissect.client_identification_short_code_cross = function(buffer, offset, packet, parent)
  local length = size_of.client_identification_short_code_cross
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.client_identification_short_code_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_identification_short_code_cross, range, value, display)

  return offset + length, value
end

-- Size: Investment Decision W Firm Short Code
size_of.investment_decision_w_firm_short_code = 4

-- Display: Investment Decision W Firm Short Code
display.investment_decision_w_firm_short_code = function(value)
  return "Investment Decision W Firm Short Code: "..value
end

-- Dissect: Investment Decision W Firm Short Code
dissect.investment_decision_w_firm_short_code = function(buffer, offset, packet, parent)
  local length = size_of.investment_decision_w_firm_short_code
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.investment_decision_w_firm_short_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.investment_decision_w_firm_short_code, range, value, display)

  return offset + length, value
end

-- Size: Mi Fid Indicators
size_of.mi_fid_indicators = 1

-- Display: Mi Fid Indicators
display.mi_fid_indicators = function(value)
  return "Mi Fid Indicators: "..value
end

-- Dissect: Mi Fid Indicators
dissect.mi_fid_indicators = function(buffer, offset, packet, parent)
  local length = size_of.mi_fid_indicators
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mi_fid_indicators(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fid_indicators, range, value, display)

  return offset + length, value
end

-- Size: Client Identification Shortcode
size_of.client_identification_shortcode = 4

-- Display: Client Identification Shortcode
display.client_identification_shortcode = function(value)
  return "Client Identification Shortcode: "..value
end

-- Dissect: Client Identification Shortcode
dissect.client_identification_shortcode = function(buffer, offset, packet, parent)
  local length = size_of.client_identification_shortcode
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.client_identification_shortcode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_identification_shortcode, range, value, display)

  return offset + length, value
end

-- Size: Execution Within Firm Short Code
size_of.execution_within_firm_short_code = 4

-- Display: Execution Within Firm Short Code
display.execution_within_firm_short_code = function(value)
  return "Execution Within Firm Short Code: "..value
end

-- Dissect: Execution Within Firm Short Code
dissect.execution_within_firm_short_code = function(buffer, offset, packet, parent)
  local length = size_of.execution_within_firm_short_code
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.execution_within_firm_short_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_within_firm_short_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Entry Message
size_of.declaration_entry_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.operation_type

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.entering_counterparty

  index = index + size_of.side

  index = index + size_of.quantity

  index = index + size_of.price

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.mi_cof_secondary_listing

  index = index + size_of.centralisation_date

  index = index + size_of.clearing_firm_id

  index = index + size_of.account_type

  index = index + size_of.account_type_cross

  index = index + size_of.trading_capacity

  index = index + size_of.trading_capacity_cross

  index = index + size_of.settlement_period

  index = index + size_of.settlement_flag

  index = index + size_of.guarantee_flag

  index = index + size_of.mi_fid_indicators

  index = index + size_of.transaction_price_type

  index = index + size_of.principal_code

  index = index + size_of.principal_code_cross

  index = index + size_of.start_time_vwap

  index = index + size_of.end_time_vwap

  index = index + size_of.gross_trade_amount

  index = index + size_of.account_number

  index = index + size_of.account_number_cross

  index = index + size_of.free_text

  index = index + size_of.free_text_cross

  index = index + size_of.investment_decision_w_firm_short_code

  index = index + size_of.client_identification_short_code_cross

  return index
end

-- Display: Declaration Entry Message
display.declaration_entry_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Entry Message
dissect.declaration_entry_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer
  index, operation_type = dissect.operation_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Entering Counterparty: 8 Byte Ascii String
  index, entering_counterparty = dissect.entering_counterparty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String
  index, mi_cof_secondary_listing = dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Centralisation Date: 10 Byte Ascii String
  index, centralisation_date = dissect.centralisation_date(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer
  index, account_type_cross = dissect.account_type_cross(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trading Capacity Cross: 1 Byte Unsigned Fixed Width Integer
  index, trading_capacity_cross = dissect.trading_capacity_cross(buffer, index, packet, parent)

  -- Settlement Period: 1 Byte Unsigned Fixed Width Integer
  index, settlement_period = dissect.settlement_period(buffer, index, packet, parent)

  -- Settlement Flag: 1 Byte Unsigned Fixed Width Integer
  index, settlement_flag = dissect.settlement_flag(buffer, index, packet, parent)

  -- Guarantee Flag: 1 Byte Unsigned Fixed Width Integer
  index, guarantee_flag = dissect.guarantee_flag(buffer, index, packet, parent)

  -- Mi Fid Indicators: 1 Byte Unsigned Fixed Width Integer
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Transaction Price Type: 1 Byte Unsigned Fixed Width Integer
  index, transaction_price_type = dissect.transaction_price_type(buffer, index, packet, parent)

  -- Principal Code: 8 Byte Ascii String
  index, principal_code = dissect.principal_code(buffer, index, packet, parent)

  -- Principal Code Cross: 8 Byte Ascii String
  index, principal_code_cross = dissect.principal_code_cross(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer
  index, start_time_vwap = dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer
  index, end_time_vwap = dissect.end_time_vwap(buffer, index, packet, parent)

  -- Gross Trade Amount: 8 Byte Signed Fixed Width Integer
  index, gross_trade_amount = dissect.gross_trade_amount(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Account Number Cross: 12 Byte Ascii String
  index, account_number_cross = dissect.account_number_cross(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Free Text Cross: 18 Byte Ascii String
  index, free_text_cross = dissect.free_text_cross(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, investment_decision_w_firm_short_code = dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Short Code Cross: 4 Byte Signed Fixed Width Integer
  index, client_identification_short_code_cross = dissect.client_identification_short_code_cross(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Message
dissect.declaration_entry_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.declaration_entry_message then
    local length = size_of.declaration_entry_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.declaration_entry_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_message, range, display)
  end

  return dissect.declaration_entry_message_fields(buffer, offset, packet, parent)
end

-- Size: Rejected Client Message Sequence Number
size_of.rejected_client_message_sequence_number = 4

-- Display: Rejected Client Message Sequence Number
display.rejected_client_message_sequence_number = function(value)
  return "Rejected Client Message Sequence Number: "..value
end

-- Dissect: Rejected Client Message Sequence Number
dissect.rejected_client_message_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.rejected_client_message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rejected_client_message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_client_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Oegout To Member
size_of.oegout_to_member = 8

-- Display: Oegout To Member
display.oegout_to_member = function(value)
  return "Oegout To Member: "..value
end

-- Dissect: Oegout To Member
dissect.oegout_to_member = function(buffer, offset, packet, parent)
  local length = size_of.oegout_to_member
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.oegout_to_member(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegout_to_member, range, value, display)

  return offset + length, value
end

-- Calculate size of: Technical Reject Message
size_of.technical_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.oegout_to_member

  index = index + size_of.rejected_client_message_sequence_number

  index = index + size_of.rejected_message

  index = index + size_of.error_code

  index = index + size_of.rejected_message_id

  return index
end

-- Display: Technical Reject Message
display.technical_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Technical Reject Message
dissect.technical_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Rejected Client Message Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, rejected_client_message_sequence_number = dissect.rejected_client_message_sequence_number(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer
  index, rejected_message = dissect.rejected_message(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer
  index, rejected_message_id = dissect.rejected_message_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Reject Message
dissect.technical_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.technical_reject_message then
    local length = size_of.technical_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.technical_reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.technical_reject_message, range, display)
  end

  return dissect.technical_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Log Out Reason Code
size_of.log_out_reason_code = 1

-- Display: Log Out Reason Code
display.log_out_reason_code = function(value)
  return "Log Out Reason Code: "..value
end

-- Dissect: Log Out Reason Code
dissect.log_out_reason_code = function(buffer, offset, packet, parent)
  local length = size_of.log_out_reason_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.log_out_reason_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.log_out_reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logout Message
size_of.logout_message = function(buffer, offset)
  local index = 0

  index = index + size_of.log_out_reason_code

  return index
end

-- Display: Logout Message
display.logout_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Message
dissect.logout_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Log Out Reason Code: 1 Byte Unsigned Fixed Width Integer
  index, log_out_reason_code = dissect.log_out_reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
dissect.logout_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_message then
    local length = size_of.logout_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logout_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logout_message, range, display)
  end

  return dissect.logout_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Msg Seq Num
size_of.last_msg_seq_num = 4

-- Display: Last Msg Seq Num
display.last_msg_seq_num = function(value)
  return "Last Msg Seq Num: "..value
end

-- Dissect: Last Msg Seq Num
dissect.last_msg_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.last_msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Last Cl Msg Seq Num
size_of.last_cl_msg_seq_num = 4

-- Display: Last Cl Msg Seq Num
display.last_cl_msg_seq_num = function(value)
  return "Last Cl Msg Seq Num: "..value
end

-- Dissect: Last Cl Msg Seq Num
dissect.last_cl_msg_seq_num = function(buffer, offset, packet, parent)
  local length = size_of.last_cl_msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.last_cl_msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_cl_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Logon Reject Code
size_of.logon_reject_code = 1

-- Display: Logon Reject Code
display.logon_reject_code = function(value)
  return "Logon Reject Code: "..value
end

-- Dissect: Logon Reject Code
dissect.logon_reject_code = function(buffer, offset, packet, parent)
  local length = size_of.logon_reject_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.logon_reject_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logon_reject_code, range, value, display)

  return offset + length, value
end

-- Size: Exchange Id
size_of.exchange_id = 8

-- Display: Exchange Id
display.exchange_id = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
dissect.exchange_id = function(buffer, offset, packet, parent)
  local length = size_of.exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.exchange_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Reject Message
size_of.logon_reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.logon_reject_code

  index = index + size_of.last_cl_msg_seq_num

  index = index + size_of.last_msg_seq_num

  return index
end

-- Display: Logon Reject Message
display.logon_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Reject Message
dissect.logon_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 8 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Logon Reject Code: 1 Byte Unsigned Fixed Width Integer
  index, logon_reject_code = dissect.logon_reject_code(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_cl_msg_seq_num = dissect.last_cl_msg_seq_num(buffer, index, packet, parent)

  -- Last Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num = dissect.last_msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Reject Message
dissect.logon_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_reject_message then
    local length = size_of.logon_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logon_reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logon_reject_message, range, display)
  end

  return dissect.logon_reject_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logon Ack Message
size_of.logon_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.last_cl_msg_seq_num

  return index
end

-- Display: Logon Ack Message
display.logon_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Ack Message
dissect.logon_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 8 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_cl_msg_seq_num = dissect.last_cl_msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Ack Message
dissect.logon_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_ack_message then
    local length = size_of.logon_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logon_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logon_ack_message, range, display)
  end

  return dissect.logon_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Queueing Indicator
size_of.queueing_indicator = 1

-- Display: Queueing Indicator
display.queueing_indicator = function(value)
  return "Queueing Indicator: "..value
end

-- Dissect: Queueing Indicator
dissect.queueing_indicator = function(buffer, offset, packet, parent)
  local length = size_of.queueing_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.queueing_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.queueing_indicator, range, value, display)

  return offset + length, value
end

-- Size: Software Provider
size_of.software_provider = 8

-- Display: Software Provider
display.software_provider = function(value)
  return "Software Provider: "..value
end

-- Dissect: Software Provider
dissect.software_provider = function(buffer, offset, packet, parent)
  local length = size_of.software_provider
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.software_provider(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.software_provider, range, value, display)

  return offset + length, value
end

-- Size: Oe Partition Id
size_of.oe_partition_id = 2

-- Display: Oe Partition Id
display.oe_partition_id = function(value)
  return "Oe Partition Id: "..value
end

-- Dissect: Oe Partition Id
dissect.oe_partition_id = function(buffer, offset, packet, parent)
  local length = size_of.oe_partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.oe_partition_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oe_partition_id, range, value, display)

  return offset + length, value
end

-- Size: Logical Access Id
size_of.logical_access_id = 4

-- Display: Logical Access Id
display.logical_access_id = function(value)
  return "Logical Access Id: "..value
end

-- Dissect: Logical Access Id
dissect.logical_access_id = function(buffer, offset, packet, parent)
  local length = size_of.logical_access_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.logical_access_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logical_access_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Message
size_of.logon_message = function(buffer, offset)
  local index = 0

  index = index + size_of.logical_access_id

  index = index + size_of.oe_partition_id

  index = index + size_of.last_msg_seq_num

  index = index + size_of.software_provider

  index = index + size_of.queueing_indicator

  return index
end

-- Display: Logon Message
display.logon_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Message
dissect.logon_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Last Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num = dissect.last_msg_seq_num(buffer, index, packet, parent)

  -- Software Provider: 8 Byte Ascii String
  index, software_provider = dissect.software_provider(buffer, index, packet, parent)

  -- Queueing Indicator: 1 Byte Unsigned Fixed Width Integer
  index, queueing_indicator = dissect.queueing_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
dissect.logon_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_message then
    local length = size_of.logon_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.logon_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.logon_message, range, display)
  end

  return dissect.logon_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Price Notation
size_of.message_price_notation = 1

-- Display: Message Price Notation
display.message_price_notation = function(value)
  return "Message Price Notation: "..value
end

-- Dissect: Message Price Notation
dissect.message_price_notation = function(buffer, offset, packet, parent)
  local length = size_of.message_price_notation
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_price_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.message_price_notation, range, value, display)

  return offset + length, value
end

-- Size: Order Actor Type
size_of.order_actor_type = 1

-- Display: Order Actor Type
display.order_actor_type = function(value)
  return "Order Actor Type: "..value
end

-- Dissect: Order Actor Type
dissect.order_actor_type = function(buffer, offset, packet, parent)
  local length = size_of.order_actor_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_actor_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_actor_type, range, value, display)

  return offset + length, value
end

-- Size: Non Executing Client Id
size_of.non_executing_client_id = 2

-- Display: Non Executing Client Id
display.non_executing_client_id = function(value)
  return "Non Executing Client Id: "..value
end

-- Dissect: Non Executing Client Id
dissect.non_executing_client_id = function(buffer, offset, packet, parent)
  local length = size_of.non_executing_client_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.non_executing_client_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.non_executing_client_id, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
size_of.order_qty = 8

-- Display: Order Qty
display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
dissect.order_qty = function(buffer, offset, packet, parent)
  local length = size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Order Px
size_of.order_px = 8

-- Display: Order Px
display.order_px = function(value)
  return "Order Px: "..value
end

-- Dissect: Order Px
dissect.order_px = function(buffer, offset, packet, parent)
  local length = size_of.order_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.order_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_px, range, value, display)

  return offset + length, value
end

-- Size: Order Type
size_of.order_type = 1

-- Display: Order Type
display.order_type = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
dissect.order_type = function(buffer, offset, packet, parent)
  local length = size_of.order_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Order Side
size_of.order_side = 1

-- Display: Order Side
display.order_side = function(value)
  return "Order Side: "..value
end

-- Dissect: Order Side
dissect.order_side = function(buffer, offset, packet, parent)
  local length = size_of.order_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Order Message
size_of.cross_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  index = index + size_of.order_type

  index = index + size_of.order_px

  index = index + size_of.order_qty

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.mi_fid_indicators

  index = index + size_of.non_executing_client_id

  index = index + size_of.order_actor_type

  index = index + size_of.message_price_notation

  return index
end

-- Display: Cross Order Message
display.cross_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Order Message
dissect.cross_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mi Fid Indicators: 1 Byte Unsigned Fixed Width Integer
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer
  index, non_executing_client_id = dissect.non_executing_client_id(buffer, index, packet, parent)

  -- Order Actor Type: 1 Byte Unsigned Fixed Width Integer
  index, order_actor_type = dissect.order_actor_type(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer
  index, message_price_notation = dissect.message_price_notation(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Order Message
dissect.cross_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_order_message then
    local length = size_of.cross_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cross_order_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cross_order_message, range, display)
  end

  return dissect.cross_order_message_fields(buffer, offset, packet, parent)
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

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request For Implied Execution Message
size_of.request_for_implied_execution_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_id

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.mi_fid_indicators

  return index
end

-- Display: Request For Implied Execution Message
display.request_for_implied_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Implied Execution Message
dissect.request_for_implied_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Mi Fid Indicators: 1 Byte Unsigned Fixed Width Integer
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Implied Execution Message
dissect.request_for_implied_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_implied_execution_message then
    local length = size_of.request_for_implied_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.request_for_implied_execution_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_for_implied_execution_message, range, display)
  end

  return dissect.request_for_implied_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Ack Qualifiers
size_of.ack_qualifiers = 1

-- Display: Ack Qualifiers
display.ack_qualifiers = function(value)
  return "Ack Qualifiers: "..value
end

-- Dissect: Ack Qualifiers
dissect.ack_qualifiers = function(buffer, offset, packet, parent)
  local length = size_of.ack_qualifiers
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ack_qualifiers(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_qualifiers, range, value, display)

  return offset + length, value
end

-- Size: Response Type
size_of.response_type = 1

-- Display: Response Type
display.response_type = function(value)
  return "Response Type: "..value
end

-- Dissect: Response Type
dissect.response_type = function(buffer, offset, packet, parent)
  local length = size_of.response_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.response_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.response_type, range, value, display)

  return offset + length, value
end

-- Size: Escb Membership
size_of.escb_membership = 1

-- Display: Escb Membership
display.escb_membership = function(value)
  return "Escb Membership: "..value
end

-- Dissect: Escb Membership
dissect.escb_membership = function(buffer, offset, packet, parent)
  local length = size_of.escb_membership
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.escb_membership(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.escb_membership, range, value, display)

  return offset + length, value
end

-- Size: Wholesale Side
size_of.wholesale_side = 1

-- Display: Wholesale Side
display.wholesale_side = function(value)
  return "Wholesale Side: "..value
end

-- Dissect: Wholesale Side
dissect.wholesale_side = function(buffer, offset, packet, parent)
  local length = size_of.wholesale_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.wholesale_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_side, range, value, display)

  return offset + length, value
end

-- Size: Strategy Code
size_of.strategy_code = 1

-- Display: Strategy Code
display.strategy_code = function(value)
  return "Strategy Code: "..value
end

-- Dissect: Strategy Code
dissect.strategy_code = function(buffer, offset, packet, parent)
  local length = size_of.strategy_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strategy_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Size: Lis Transaction Id
size_of.lis_transaction_id = 4

-- Display: Lis Transaction Id
display.lis_transaction_id = function(value)
  return "Lis Transaction Id: "..value
end

-- Dissect: Lis Transaction Id
dissect.lis_transaction_id = function(buffer, offset, packet, parent)
  local length = size_of.lis_transaction_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.lis_transaction_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.lis_transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Wholesale Trade Type
size_of.wholesale_trade_type = 1

-- Display: Wholesale Trade Type
display.wholesale_trade_type = function(value)
  return "Wholesale Trade Type: "..value
end

-- Dissect: Wholesale Trade Type
dissect.wholesale_trade_type = function(buffer, offset, packet, parent)
  local length = size_of.wholesale_trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.wholesale_trade_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_trade_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Symbol Index
size_of.contract_symbol_index = 4

-- Display: Contract Symbol Index
display.contract_symbol_index = function(value)
  return "Contract Symbol Index: "..value
end

-- Dissect: Contract Symbol Index
dissect.contract_symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.contract_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.contract_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.contract_symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Oegin From Me
size_of.oegin_from_me = 8

-- Display: Oegin From Me
display.oegin_from_me = function(value)
  return "Oegin From Me: "..value
end

-- Dissect: Oegin From Me
dissect.oegin_from_me = function(buffer, offset, packet, parent)
  local length = size_of.oegin_from_me
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.oegin_from_me(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegin_from_me, range, value, display)

  return offset + length, value
end

-- Size: Book Out Time
size_of.book_out_time = 8

-- Display: Book Out Time
display.book_out_time = function(value)
  return "Book Out Time: "..value
end

-- Dissect: Book Out Time
dissect.book_out_time = function(buffer, offset, packet, parent)
  local length = size_of.book_out_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.book_out_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.book_out_time, range, value, display)

  return offset + length, value
end

-- Size: Book In
size_of.book_in = 8

-- Display: Book In
display.book_in = function(value)
  return "Book In: "..value
end

-- Dissect: Book In
dissect.book_in = function(buffer, offset, packet, parent)
  local length = size_of.book_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.book_in(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.book_in, range, value, display)

  return offset + length, value
end

-- Size: Oegout Time To Me
size_of.oegout_time_to_me = 8

-- Display: Oegout Time To Me
display.oegout_time_to_me = function(value)
  return "Oegout Time To Me: "..value
end

-- Dissect: Oegout Time To Me
dissect.oegout_time_to_me = function(buffer, offset, packet, parent)
  local length = size_of.oegout_time_to_me
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.oegout_time_to_me(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegout_time_to_me, range, value, display)

  return offset + length, value
end

-- Size: Oegin From Member
size_of.oegin_from_member = 8

-- Display: Oegin From Member
display.oegin_from_member = function(value)
  return "Oegin From Member: "..value
end

-- Dissect: Oegin From Member
dissect.oegin_from_member = function(buffer, offset, packet, parent)
  local length = size_of.oegin_from_member
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.oegin_from_member(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegin_from_member, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wholesale Order Ack Message
size_of.wholesale_order_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.client_order_id

  index = index + size_of.contract_symbol_index

  index = index + size_of.wholesale_trade_type

  index = index + size_of.lis_transaction_id

  index = index + size_of.strategy_code

  index = index + size_of.price

  index = index + size_of.quantity

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.mi_fid_indicators

  index = index + size_of.wholesale_side

  index = index + size_of.escb_membership

  index = index + size_of.response_type

  index = index + size_of.error_code

  index = index + size_of.ack_qualifiers

  return index
end

-- Display: Wholesale Order Ack Message
display.wholesale_order_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Order Ack Message
dissect.wholesale_order_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Wholesale Trade Type: 1 Byte Unsigned Fixed Width Integer
  index, wholesale_trade_type = dissect.wholesale_trade_type(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, lis_transaction_id = dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mi Fid Indicators: 1 Byte Unsigned Fixed Width Integer
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Wholesale Side: 1 Byte Unsigned Fixed Width Integer
  index, wholesale_side = dissect.wholesale_side(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer
  index, escb_membership = dissect.escb_membership(buffer, index, packet, parent)

  -- Response Type: 1 Byte Unsigned Fixed Width Integer
  index, response_type = dissect.response_type(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = dissect.error_code(buffer, index, packet, parent)

  -- Ack Qualifiers: 1 Byte Unsigned Fixed Width Integer
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Order Ack Message
dissect.wholesale_order_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_order_ack_message then
    local length = size_of.wholesale_order_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_order_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_order_ack_message, range, display)
  end

  return dissect.wholesale_order_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Wholesale Order Message
size_of.new_wholesale_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.contract_symbol_index

  index = index + size_of.wholesale_trade_type

  index = index + size_of.lis_transaction_id

  index = index + size_of.strategy_code

  index = index + size_of.price

  index = index + size_of.quantity

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.mi_fid_indicators

  index = index + size_of.wholesale_side

  index = index + size_of.escb_membership

  index = index + size_of.message_price_notation

  return index
end

-- Display: New Wholesale Order Message
display.new_wholesale_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Wholesale Order Message
dissect.new_wholesale_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Wholesale Trade Type: 1 Byte Unsigned Fixed Width Integer
  index, wholesale_trade_type = dissect.wholesale_trade_type(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, lis_transaction_id = dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mi Fid Indicators: 1 Byte Unsigned Fixed Width Integer
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Wholesale Side: 1 Byte Unsigned Fixed Width Integer
  index, wholesale_side = dissect.wholesale_side(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer
  index, escb_membership = dissect.escb_membership(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer
  index, message_price_notation = dissect.message_price_notation(buffer, index, packet, parent)

  return index
end

-- Dissect: New Wholesale Order Message
dissect.new_wholesale_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_wholesale_order_message then
    local length = size_of.new_wholesale_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_wholesale_order_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.new_wholesale_order_message, range, display)
  end

  return dissect.new_wholesale_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Mmp Execution Type
size_of.mmp_execution_type = 1

-- Display: Mmp Execution Type
display.mmp_execution_type = function(value)
  return "Mmp Execution Type: "..value
end

-- Dissect: Mmp Execution Type
dissect.mmp_execution_type = function(buffer, offset, packet, parent)
  local length = size_of.mmp_execution_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.mmp_execution_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mmp_execution_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mm Protection Ack Message
size_of.mm_protection_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.client_order_id

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.mmp_execution_type

  return index
end

-- Display: Mm Protection Ack Message
display.mm_protection_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Protection Ack Message
dissect.mm_protection_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Mmp Execution Type: 1 Byte Unsigned Fixed Width Integer
  index, mmp_execution_type = dissect.mmp_execution_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Protection Ack Message
dissect.mm_protection_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_protection_ack_message then
    local length = size_of.mm_protection_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_protection_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_protection_ack_message, range, display)
  end

  return dissect.mm_protection_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Request Type
size_of.request_type = 1

-- Display: Request Type
display.request_type = function(value)
  return "Request Type: "..value
end

-- Dissect: Request Type
dissect.request_type = function(buffer, offset, packet, parent)
  local length = size_of.request_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.request_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mm Protection Request Message
size_of.mm_protection_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.request_type

  return index
end

-- Display: Mm Protection Request Message
display.mm_protection_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Protection Request Message
dissect.mm_protection_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Request Type: 1 Byte Unsigned Fixed Width Integer
  index, request_type = dissect.request_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Protection Request Message
dissect.mm_protection_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_protection_request_message then
    local length = size_of.mm_protection_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_protection_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_protection_request_message, range, display)
  end

  return dissect.mm_protection_request_message_fields(buffer, offset, packet, parent)
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
  local value = range:le_int64()
  local display = display.security_req_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Ack Message
size_of.security_definition_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.security_req_id

  index = index + size_of.symbol_index

  return index
end

-- Display: Security Definition Ack Message
display.security_definition_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Ack Message
dissect.security_definition_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Signed Fixed Width Integer
  index, security_req_id = dissect.security_req_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Ack Message
dissect.security_definition_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_definition_ack_message then
    local length = size_of.security_definition_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_definition_ack_message, range, display)
  end

  return dissect.security_definition_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Security Definition Request Message
size_of.security_definition_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.security_req_id

  index = index + size_of.contract_symbol_index

  index = index + size_of.strategy_code

  return index
end

-- Display: Security Definition Request Message
display.security_definition_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Request Message
dissect.security_definition_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Signed Fixed Width Integer
  index, security_req_id = dissect.security_req_id(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
dissect.security_definition_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_definition_request_message then
    local length = size_of.security_definition_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.security_definition_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_definition_request_message, range, display)
  end

  return dissect.security_definition_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Book In Time
size_of.last_book_in_time = 8

-- Display: Last Book In Time
display.last_book_in_time = function(value)
  return "Last Book In Time: "..value
end

-- Dissect: Last Book In Time
dissect.last_book_in_time = function(buffer, offset, packet, parent)
  local length = size_of.last_book_in_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_book_in_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_book_in_time, range, value, display)

  return offset + length, value
end

-- Size: Resynchronization Id
size_of.resynchronization_id = 2

-- Display: Resynchronization Id
display.resynchronization_id = function(value)
  return "Resynchronization Id: "..value
end

-- Dissect: Resynchronization Id
dissect.resynchronization_id = function(buffer, offset, packet, parent)
  local length = size_of.resynchronization_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.resynchronization_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.resynchronization_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Synchronization Time Message
size_of.synchronization_time_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.oegout_to_member

  index = index + size_of.resynchronization_id

  index = index + size_of.last_book_in_time

  return index
end

-- Display: Synchronization Time Message
display.synchronization_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Synchronization Time Message
dissect.synchronization_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Resynchronization Id: 2 Byte Unsigned Fixed Width Integer
  index, resynchronization_id = dissect.resynchronization_id(buffer, index, packet, parent)

  -- Last Book In Time: 8 Byte Unsigned Fixed Width Integer
  index, last_book_in_time = dissect.last_book_in_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Time Message
dissect.synchronization_time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.synchronization_time_message then
    local length = size_of.synchronization_time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.synchronization_time_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.synchronization_time_message, range, display)
  end

  return dissect.synchronization_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Synchronization List Message
size_of.instrument_synchronization_list_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.oegout_to_member

  index = index + size_of.resynchronization_id

  return index
end

-- Display: Instrument Synchronization List Message
display.instrument_synchronization_list_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Synchronization List Message
dissect.instrument_synchronization_list_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Resynchronization Id: 2 Byte Unsigned Fixed Width Integer
  index, resynchronization_id = dissect.resynchronization_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization List Message
dissect.instrument_synchronization_list_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_synchronization_list_message then
    local length = size_of.instrument_synchronization_list_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_synchronization_list_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_synchronization_list_message, range, display)
  end

  return dissect.instrument_synchronization_list_message_fields(buffer, offset, packet, parent)
end

-- Size: Long Client Id
size_of.long_client_id = 16

-- Display: Long Client Id
display.long_client_id = function(value)
  return "Long Client Id: "..value
end

-- Dissect: Long Client Id
dissect.long_client_id = function(buffer, offset, packet, parent)
  local length = size_of.long_client_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.long_client_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.long_client_id, range, value, display)

  return offset + length, value
end

-- Size: Clearing Instruction
size_of.clearing_instruction = 2

-- Display: Clearing Instruction
display.clearing_instruction = function(value)
  return "Clearing Instruction: "..value
end

-- Dissect: Clearing Instruction
dissect.clearing_instruction = function(buffer, offset, packet, parent)
  local length = size_of.clearing_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.clearing_instruction(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_instruction, range, value, display)

  return offset + length, value
end

-- Size: Open Close
size_of.open_close = 2

-- Display: Open Close
display.open_close = function(value)
  return "Open Close: "..value
end

-- Dissect: Open Close
dissect.open_close = function(buffer, offset, packet, parent)
  local length = size_of.open_close
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.open_close(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.open_close, range, value, display)

  return offset + length, value
end

-- Size: Technical Origin
size_of.technical_origin = 1

-- Display: Technical Origin
display.technical_origin = function(value)
  return "Technical Origin: "..value
end

-- Dissect: Technical Origin
dissect.technical_origin = function(buffer, offset, packet, parent)
  local length = size_of.technical_origin
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.technical_origin(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.technical_origin, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mm Sign In Ack Message
size_of.mm_sign_in_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.logical_access_id

  index = index + size_of.oe_partition_id

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.clearing_firm_id

  index = index + size_of.account_number

  index = index + size_of.technical_origin

  index = index + size_of.open_close

  index = index + size_of.clearing_instruction

  index = index + size_of.free_text

  index = index + size_of.long_client_id

  return index
end

-- Display: Mm Sign In Ack Message
display.mm_sign_in_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Sign In Ack Message
dissect.mm_sign_in_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer
  index, technical_origin = dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: 2 Byte Unsigned Fixed Width Integer
  index, open_close = dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String
  index, long_client_id = dissect.long_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Sign In Ack Message
dissect.mm_sign_in_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_sign_in_ack_message then
    local length = size_of.mm_sign_in_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_sign_in_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_sign_in_ack_message, range, display)
  end

  return dissect.mm_sign_in_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mm Sign In Message
size_of.mm_sign_in_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.logical_access_id

  index = index + size_of.oe_partition_id

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.clearing_firm_id

  index = index + size_of.account_number

  index = index + size_of.technical_origin

  index = index + size_of.open_close

  index = index + size_of.clearing_instruction

  index = index + size_of.free_text

  index = index + size_of.long_client_id

  return index
end

-- Display: Mm Sign In Message
display.mm_sign_in_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Sign In Message
dissect.mm_sign_in_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer
  index, technical_origin = dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: 2 Byte Unsigned Fixed Width Integer
  index, open_close = dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String
  index, long_client_id = dissect.long_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Sign In Message
dissect.mm_sign_in_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_sign_in_message then
    local length = size_of.mm_sign_in_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_sign_in_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_sign_in_message, range, display)
  end

  return dissect.mm_sign_in_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Size Limit
size_of.order_size_limit = 8

-- Display: Order Size Limit
display.order_size_limit = function(value)
  return "Order Size Limit: "..value
end

-- Dissect: Order Size Limit
dissect.order_size_limit = function(buffer, offset, packet, parent)
  local length = size_of.order_size_limit
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_size_limit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_size_limit, range, value, display)

  return offset + length, value
end

-- Size: User Status
size_of.user_status = 1

-- Display: User Status
display.user_status = function(value)
  return "User Status: "..value
end

-- Dissect: User Status
dissect.user_status = function(buffer, offset, packet, parent)
  local length = size_of.user_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.user_status(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.user_status, range, value, display)

  return offset + length, value
end

-- Size: Family Id
size_of.family_id = 8

-- Display: Family Id
display.family_id = function(value)
  return "Family Id: "..value
end

-- Dissect: Family Id
dissect.family_id = function(buffer, offset, packet, parent)
  local length = size_of.family_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.family_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.family_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: User Notification Message
size_of.user_notification_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.family_id

  index = index + size_of.symbol_index

  index = index + size_of.user_status

  index = index + size_of.logical_access_id

  index = index + size_of.order_size_limit

  return index
end

-- Display: User Notification Message
display.user_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Notification Message
dissect.user_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Family Id: 8 Byte Ascii String
  index, family_id = dissect.family_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer
  index, user_status = dissect.user_status(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Order Size Limit: 8 Byte Unsigned Fixed Width Integer
  index, order_size_limit = dissect.order_size_limit(buffer, index, packet, parent)

  return index
end

-- Dissect: User Notification Message
dissect.user_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.user_notification_message then
    local length = size_of.user_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.user_notification_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.user_notification_message, range, display)
  end

  return dissect.user_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Potential Matching Qty
size_of.potential_matching_qty = 8

-- Display: Potential Matching Qty
display.potential_matching_qty = function(value)
  return "Potential Matching Qty: "..value
end

-- Dissect: Potential Matching Qty
dissect.potential_matching_qty = function(buffer, offset, packet, parent)
  local length = size_of.potential_matching_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.potential_matching_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.potential_matching_qty, range, value, display)

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

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfqlp Matching Status Message
size_of.rfqlp_matching_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.quote_req_id

  index = index + size_of.potential_matching_qty

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  return index
end

-- Display: Rfqlp Matching Status Message
display.rfqlp_matching_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfqlp Matching Status Message
dissect.rfqlp_matching_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Potential Matching Qty: 8 Byte Unsigned Fixed Width Integer
  index, potential_matching_qty = dissect.potential_matching_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfqlp Matching Status Message
dissect.rfqlp_matching_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfqlp_matching_status_message then
    local length = size_of.rfqlp_matching_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfqlp_matching_status_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfqlp_matching_status_message, range, display)
  end

  return dissect.rfqlp_matching_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Recipient Type
size_of.recipient_type = 1

-- Display: Recipient Type
display.recipient_type = function(value)
  return "Recipient Type: "..value
end

-- Dissect: Recipient Type
dissect.recipient_type = function(buffer, offset, packet, parent)
  local length = size_of.recipient_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.recipient_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.recipient_type, range, value, display)

  return offset + length, value
end

-- Size: Number Of L Ps
size_of.number_of_l_ps = 1

-- Display: Number Of L Ps
display.number_of_l_ps = function(value)
  return "Number Of L Ps: "..value
end

-- Dissect: Number Of L Ps
dissect.number_of_l_ps = function(buffer, offset, packet, parent)
  local length = size_of.number_of_l_ps
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.number_of_l_ps(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.number_of_l_ps, range, value, display)

  return offset + length, value
end

-- Size: Potential Matching Px
size_of.potential_matching_px = 8

-- Display: Potential Matching Px
display.potential_matching_px = function(value)
  return "Potential Matching Px: "..value
end

-- Dissect: Potential Matching Px
dissect.potential_matching_px = function(buffer, offset, packet, parent)
  local length = size_of.potential_matching_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.potential_matching_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.potential_matching_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfq Matching Status Message
size_of.rfq_matching_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.quote_req_id

  index = index + size_of.potential_matching_px

  index = index + size_of.potential_matching_qty

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  index = index + size_of.number_of_l_ps

  index = index + size_of.recipient_type

  return index
end

-- Display: Rfq Matching Status Message
display.rfq_matching_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Matching Status Message
dissect.rfq_matching_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Potential Matching Px: 8 Byte Signed Fixed Width Integer
  index, potential_matching_px = dissect.potential_matching_px(buffer, index, packet, parent)

  -- Potential Matching Qty: 8 Byte Unsigned Fixed Width Integer
  index, potential_matching_qty = dissect.potential_matching_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Number Of L Ps: 1 Byte Unsigned Fixed Width Integer
  index, number_of_l_ps = dissect.number_of_l_ps(buffer, index, packet, parent)

  -- Recipient Type: 1 Byte Unsigned Fixed Width Integer
  index, recipient_type = dissect.recipient_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Matching Status Message
dissect.rfq_matching_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_matching_status_message then
    local length = size_of.rfq_matching_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfq_matching_status_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_matching_status_message, range, display)
  end

  return dissect.rfq_matching_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Min Order Qty
size_of.min_order_qty = 8

-- Display: Min Order Qty
display.min_order_qty = function(value)
  return "Min Order Qty: "..value
end

-- Dissect: Min Order Qty
dissect.min_order_qty = function(buffer, offset, packet, parent)
  local length = size_of.min_order_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.min_order_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.min_order_qty, range, value, display)

  return offset + length, value
end

-- Size: Dark Execution Instruction
size_of.dark_execution_instruction = 1

-- Display: Dark Execution Instruction
display.dark_execution_instruction = function(value)
  return "Dark Execution Instruction: "..value
end

-- Dissect: Dark Execution Instruction
dissect.dark_execution_instruction = function(buffer, offset, packet, parent)
  local length = size_of.dark_execution_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.dark_execution_instruction(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dark_execution_instruction, range, value, display)

  return offset + length, value
end

-- Size: End Client
size_of.end_client = 11

-- Display: End Client
display.end_client = function(value)
  return "End Client: "..value
end

-- Dissect: End Client
dissect.end_client = function(buffer, offset, packet, parent)
  local length = size_of.end_client
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.end_client(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.end_client, range, value, display)

  return offset + length, value
end

-- Size: Rfq Update Type
size_of.rfq_update_type = 1

-- Display: Rfq Update Type
display.rfq_update_type = function(value)
  return "Rfq Update Type: "..value
end

-- Dissect: Rfq Update Type
dissect.rfq_update_type = function(buffer, offset, packet, parent)
  local length = size_of.rfq_update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rfq_update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_update_type, range, value, display)

  return offset + length, value
end

-- Size: Counterpart Firm Id
size_of.counterpart_firm_id = 8

-- Display: Counterpart Firm Id
display.counterpart_firm_id = function(value)
  return "Counterpart Firm Id: "..value
end

-- Dissect: Counterpart Firm Id
dissect.counterpart_firm_id = function(buffer, offset, packet, parent)
  local length = size_of.counterpart_firm_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.counterpart_firm_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.counterpart_firm_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfq Notification Message
size_of.rfq_notification_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.quote_req_id

  index = index + size_of.order_qty

  index = index + size_of.counterpart_firm_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.rfq_update_type

  index = index + size_of.order_side

  index = index + size_of.end_client

  index = index + size_of.dark_execution_instruction

  index = index + size_of.min_order_qty

  return index
end

-- Display: Rfq Notification Message
display.rfq_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Notification Message
dissect.rfq_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Counterpart Firm Id: 8 Byte Ascii String
  index, counterpart_firm_id = dissect.counterpart_firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Rfq Update Type: 1 Byte Unsigned Fixed Width Integer
  index, rfq_update_type = dissect.rfq_update_type(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- End Client: 11 Byte Ascii String
  index, end_client = dissect.end_client(buffer, index, packet, parent)

  -- Dark Execution Instruction: 1 Byte Unsigned Fixed Width Integer
  index, dark_execution_instruction = dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_order_qty = dissect.min_order_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Notification Message
dissect.rfq_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_notification_message then
    local length = size_of.rfq_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.rfq_notification_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_notification_message, range, display)
  end

  return dissect.rfq_notification_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Request For Execution Message
size_of.request_for_execution_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  return index
end

-- Display: Request For Execution Message
display.request_for_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Execution Message
dissect.request_for_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Execution Message
dissect.request_for_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_execution_message then
    local length = size_of.request_for_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.request_for_execution_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_for_execution_message, range, display)
  end

  return dissect.request_for_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Afq Reason
size_of.afq_reason = 1

-- Display: Afq Reason
display.afq_reason = function(value)
  return "Afq Reason: "..value
end

-- Dissect: Afq Reason
dissect.afq_reason = function(buffer, offset, packet, parent)
  local length = size_of.afq_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.afq_reason(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.afq_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ask For Quote Message
size_of.ask_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.afq_reason

  return index
end

-- Display: Ask For Quote Message
display.ask_for_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ask For Quote Message
dissect.ask_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Afq Reason: 1 Byte Unsigned Fixed Width Integer
  index, afq_reason = dissect.afq_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask For Quote Message
dissect.ask_for_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ask_for_quote_message then
    local length = size_of.ask_for_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.ask_for_quote_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ask_for_quote_message, range, display)
  end

  return dissect.ask_for_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Lp Action Code
size_of.lp_action_code = 1

-- Display: Lp Action Code
display.lp_action_code = function(value)
  return "Lp Action Code: "..value
end

-- Dissect: Lp Action Code
dissect.lp_action_code = function(buffer, offset, packet, parent)
  local length = size_of.lp_action_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.lp_action_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.lp_action_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Liquidity Provider Command Message
size_of.liquidity_provider_command_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.lp_action_code

  return index
end

-- Display: Liquidity Provider Command Message
display.liquidity_provider_command_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Liquidity Provider Command Message
dissect.liquidity_provider_command_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Lp Action Code: 1 Byte Unsigned Fixed Width Integer
  index, lp_action_code = dissect.lp_action_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Provider Command Message
dissect.liquidity_provider_command_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.liquidity_provider_command_message then
    local length = size_of.liquidity_provider_command_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.liquidity_provider_command_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.liquidity_provider_command_message, range, display)
  end

  return dissect.liquidity_provider_command_message_fields(buffer, offset, packet, parent)
end

-- Size: Input Price Type
size_of.input_price_type = 1

-- Display: Input Price Type
display.input_price_type = function(value)
  return "Input Price Type: "..value
end

-- Dissect: Input Price Type
dissect.input_price_type = function(buffer, offset, packet, parent)
  local length = size_of.input_price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.input_price_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.input_price_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Price Input Message
size_of.price_input_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.input_price_type

  index = index + size_of.price

  return index
end

-- Display: Price Input Message
display.price_input_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Price Input Message
dissect.price_input_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Input Price Type: 1 Byte Unsigned Fixed Width Integer
  index, input_price_type = dissect.input_price_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Input Message
dissect.price_input_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.price_input_message then
    local length = size_of.price_input_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.price_input_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.price_input_message, range, display)
  end

  return dissect.price_input_message_fields(buffer, offset, packet, parent)
end

-- Size: Orig Client Order Id
size_of.orig_client_order_id = 8

-- Display: Orig Client Order Id
display.orig_client_order_id = function(value)
  return "Orig Client Order Id: "..value
end

-- Dissect: Orig Client Order Id
dissect.orig_client_order_id = function(buffer, offset, packet, parent)
  local length = size_of.orig_client_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.orig_client_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.orig_client_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Collar Breach Confirmation Message
size_of.collar_breach_confirmation_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_id

  index = index + size_of.orig_client_order_id

  return index
end

-- Display: Collar Breach Confirmation Message
display.collar_breach_confirmation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Collar Breach Confirmation Message
dissect.collar_breach_confirmation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Breach Confirmation Message
dissect.collar_breach_confirmation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.collar_breach_confirmation_message then
    local length = size_of.collar_breach_confirmation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.collar_breach_confirmation_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_breach_confirmation_message, range, display)
  end

  return dissect.collar_breach_confirmation_message_fields(buffer, offset, packet, parent)
end

-- Size: Parent Symbol Index
size_of.parent_symbol_index = 4

-- Display: Parent Symbol Index
display.parent_symbol_index = function(value)
  return "Parent Symbol Index: "..value
end

-- Dissect: Parent Symbol Index
dissect.parent_symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.parent_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.parent_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.parent_symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Parent Exec Id
size_of.parent_exec_id = 4

-- Display: Parent Exec Id
display.parent_exec_id = function(value)
  return "Parent Exec Id: "..value
end

-- Dissect: Parent Exec Id
dissect.parent_exec_id = function(buffer, offset, packet, parent)
  local length = size_of.parent_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.parent_exec_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.parent_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Last Shares
size_of.last_shares = 8

-- Display: Last Shares
display.last_shares = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
dissect.last_shares = function(buffer, offset, packet, parent)
  local length = size_of.last_shares
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.last_shares(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Size: Last Traded Px
size_of.last_traded_px = 8

-- Display: Last Traded Px
display.last_traded_px = function(value)
  return "Last Traded Px: "..value
end

-- Dissect: Last Traded Px
dissect.last_traded_px = function(buffer, offset, packet, parent)
  local length = size_of.last_traded_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.last_traded_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_traded_px, range, value, display)

  return offset + length, value
end

-- Size: Execution Id
size_of.execution_id = 4

-- Display: Execution Id
display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
dissect.execution_id = function(buffer, offset, packet, parent)
  local length = size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.execution_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Bust Notification Message
size_of.trade_bust_notification_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.execution_id

  index = index + size_of.last_traded_px

  index = index + size_of.last_shares

  index = index + size_of.lis_transaction_id

  index = index + size_of.parent_exec_id

  index = index + size_of.parent_symbol_index

  return index
end

-- Display: Trade Bust Notification Message
display.trade_bust_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Bust Notification Message
dissect.trade_bust_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Last Traded Px: 8 Byte Signed Fixed Width Integer
  index, last_traded_px = dissect.last_traded_px(buffer, index, packet, parent)

  -- Last Shares: 8 Byte Unsigned Fixed Width Integer
  index, last_shares = dissect.last_shares(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, lis_transaction_id = dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Parent Exec Id: 4 Byte Unsigned Fixed Width Integer
  index, parent_exec_id = dissect.parent_exec_id(buffer, index, packet, parent)

  -- Parent Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, parent_symbol_index = dissect.parent_symbol_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Notification Message
dissect.trade_bust_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_bust_notification_message then
    local length = size_of.trade_bust_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_bust_notification_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_bust_notification_message, range, display)
  end

  return dissect.trade_bust_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Category
size_of.order_category = 1

-- Display: Order Category
display.order_category = function(value)
  return "Order Category: "..value
end

-- Dissect: Order Category
dissect.order_category = function(buffer, offset, packet, parent)
  local length = size_of.order_category
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ownership Request Message
size_of.ownership_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.order_id

  index = index + size_of.orig_client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.logical_access_id

  index = index + size_of.oe_partition_id

  index = index + size_of.order_category

  return index
end

-- Display: Ownership Request Message
display.ownership_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ownership Request Message
dissect.ownership_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Ownership Request Message
dissect.ownership_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ownership_request_message then
    local length = size_of.ownership_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.ownership_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ownership_request_message, range, display)
  end

  return dissect.ownership_request_message_fields(buffer, offset, packet, parent)
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
  local value = range:le_int()
  local display = display.total_affected_orders(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ownership Request Ack Message
size_of.ownership_request_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.client_order_id

  index = index + size_of.order_id

  index = index + size_of.symbol_index

  index = index + size_of.logical_access_id

  index = index + size_of.oe_partition_id

  index = index + size_of.total_affected_orders

  index = index + size_of.order_category

  return index
end

-- Display: Ownership Request Ack Message
display.ownership_request_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ownership Request Ack Message
dissect.ownership_request_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Signed Fixed Width Integer
  index, total_affected_orders = dissect.total_affected_orders(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Ownership Request Ack Message
dissect.ownership_request_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ownership_request_ack_message then
    local length = size_of.ownership_request_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.ownership_request_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ownership_request_ack_message, range, display)
  end

  return dissect.ownership_request_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Open Order Request Message
size_of.open_order_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.order_id

  index = index + size_of.orig_client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_category

  return index
end

-- Display: Open Order Request Message
display.open_order_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Order Request Message
dissect.open_order_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Order Request Message
dissect.open_order_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_order_request_message then
    local length = size_of.open_order_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.open_order_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.open_order_request_message, range, display)
  end

  return dissect.open_order_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Target Execution Within Firm Short Code
size_of.target_execution_within_firm_short_code = 4

-- Display: Target Execution Within Firm Short Code
display.target_execution_within_firm_short_code = function(value)
  return "Target Execution Within Firm Short Code: "..value
end

-- Dissect: Target Execution Within Firm Short Code
dissect.target_execution_within_firm_short_code = function(buffer, offset, packet, parent)
  local length = size_of.target_execution_within_firm_short_code
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.target_execution_within_firm_short_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.target_execution_within_firm_short_code, range, value, display)

  return offset + length, value
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local length = size_of.option_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Maturity
size_of.maturity = 8

-- Display: Maturity
display.maturity = function(value)
  return "Maturity: "..value
end

-- Dissect: Maturity
dissect.maturity = function(buffer, offset, packet, parent)
  local length = size_of.maturity
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.maturity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.maturity, range, value, display)

  return offset + length, value
end

-- Size: Contract Id
size_of.contract_id = 4

-- Display: Contract Id
display.contract_id = function(value)
  return "Contract Id: "..value
end

-- Dissect: Contract Id
dissect.contract_id = function(buffer, offset, packet, parent)
  local length = size_of.contract_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.contract_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.contract_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Group Code
size_of.instrument_group_code = 2

-- Display: Instrument Group Code
display.instrument_group_code = function(value)
  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
dissect.instrument_group_code = function(buffer, offset, packet, parent)
  local length = size_of.instrument_group_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_group_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Ack Message
size_of.mass_cancel_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.client_order_id

  index = index + size_of.total_affected_orders

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.instrument_group_code

  index = index + size_of.order_side

  index = index + size_of.logical_access_id

  index = index + size_of.oe_partition_id

  index = index + size_of.contract_id

  index = index + size_of.maturity

  index = index + size_of.account_type

  index = index + size_of.option_type

  index = index + size_of.order_category

  index = index + size_of.ack_qualifiers

  index = index + size_of.target_execution_within_firm_short_code

  return index
end

-- Display: Mass Cancel Ack Message
display.mass_cancel_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Ack Message
dissect.mass_cancel_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Signed Fixed Width Integer
  index, total_affected_orders = dissect.total_affected_orders(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String
  index, instrument_group_code = dissect.instrument_group_code(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Contract Id: 4 Byte Unsigned Fixed Width Integer
  index, contract_id = dissect.contract_id(buffer, index, packet, parent)

  -- Maturity: 8 Byte Ascii String
  index, maturity = dissect.maturity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  -- Ack Qualifiers: 1 Byte Unsigned Fixed Width Integer
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Target Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, target_execution_within_firm_short_code = dissect.target_execution_within_firm_short_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Ack Message
dissect.mass_cancel_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_ack_message then
    local length = size_of.mass_cancel_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_cancel_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mass_cancel_ack_message, range, display)
  end

  return dissect.mass_cancel_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Message
size_of.mass_cancel_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.instrument_group_code

  index = index + size_of.order_side

  index = index + size_of.logical_access_id

  index = index + size_of.oe_partition_id

  index = index + size_of.contract_id

  index = index + size_of.maturity

  index = index + size_of.account_type

  index = index + size_of.option_type

  index = index + size_of.order_category

  index = index + size_of.target_execution_within_firm_short_code

  return index
end

-- Display: Mass Cancel Message
display.mass_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Message
dissect.mass_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String
  index, instrument_group_code = dissect.instrument_group_code(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Contract Id: 4 Byte Unsigned Fixed Width Integer
  index, contract_id = dissect.contract_id(buffer, index, packet, parent)

  -- Maturity: 8 Byte Ascii String
  index, maturity = dissect.maturity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  -- Target Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, target_execution_within_firm_short_code = dissect.target_execution_within_firm_short_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Message
dissect.mass_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mass_cancel_message then
    local length = size_of.mass_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mass_cancel_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mass_cancel_message, range, display)
  end

  return dissect.mass_cancel_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Request Message
size_of.cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.order_id

  index = index + size_of.orig_client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  index = index + size_of.order_type

  index = index + size_of.order_category

  return index
end

-- Display: Cancel Request Message
display.cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Request Message
dissect.cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Request Message
dissect.cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_request_message then
    local length = size_of.cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cancel_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cancel_request_message, range, display)
  end

  return dissect.cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Firm Id Publication
size_of.firm_id_publication = 1

-- Display: Firm Id Publication
display.firm_id_publication = function(value)
  return "Firm Id Publication: "..value
end

-- Dissect: Firm Id Publication
dissect.firm_id_publication = function(buffer, offset, packet, parent)
  local length = size_of.firm_id_publication
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.firm_id_publication(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.firm_id_publication, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Request Message
size_of.quote_request_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.order_qty

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  index = index + size_of.firm_id_publication

  index = index + size_of.end_client

  index = index + size_of.dark_execution_instruction

  index = index + size_of.min_order_qty

  return index
end

-- Display: Quote Request Message
display.quote_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request Message
dissect.quote_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Firm Id Publication: 1 Byte Unsigned Fixed Width Integer
  index, firm_id_publication = dissect.firm_id_publication(buffer, index, packet, parent)

  -- End Client: 11 Byte Ascii String
  index, end_client = dissect.end_client(buffer, index, packet, parent)

  -- Dark Execution Instruction: 1 Byte Unsigned Fixed Width Integer
  index, dark_execution_instruction = dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, min_order_qty = dissect.min_order_qty(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
dissect.quote_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_request_message then
    local length = size_of.quote_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_request_message, range, display)
  end

  return dissect.quote_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Lp Role
size_of.lp_role = 1

-- Display: Lp Role
display.lp_role = function(value)
  return "Lp Role: "..value
end

-- Dissect: Lp Role
dissect.lp_role = function(buffer, offset, packet, parent)
  local length = size_of.lp_role
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.lp_role(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.lp_role, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Ack Message
size_of.quote_ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.client_order_id

  index = index + size_of.account_type

  index = index + size_of.lp_role

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.ack_qualifiers

  return index
end

-- Display: Quote Ack Message
display.quote_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Ack Message
dissect.quote_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer
  index, lp_role = dissect.lp_role(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Ack Qualifiers: 1 Byte Unsigned Fixed Width Integer
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Message
dissect.quote_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_ack_message then
    local length = size_of.quote_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_ack_message, range, display)
  end

  return dissect.quote_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Instruction
size_of.execution_instruction = 1

-- Display: Execution Instruction
display.execution_instruction = function(value)
  return "Execution Instruction: "..value
end

-- Dissect: Execution Instruction
dissect.execution_instruction = function(buffer, offset, packet, parent)
  local length = size_of.execution_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.execution_instruction(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_instruction, range, value, display)

  return offset + length, value
end

-- Size: Rfe Answer
size_of.rfe_answer = 1

-- Display: Rfe Answer
display.rfe_answer = function(value)
  return "Rfe Answer: "..value
end

-- Dissect: Rfe Answer
dissect.rfe_answer = function(buffer, offset, packet, parent)
  local length = size_of.rfe_answer
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.rfe_answer(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfe_answer, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quotes Message
size_of.quotes_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.trading_capacity

  index = index + size_of.account_type

  index = index + size_of.lp_role

  index = index + size_of.mi_fid_indicators

  index = index + size_of.rfe_answer

  index = index + size_of.execution_instruction

  return index
end

-- Display: Quotes Message
display.quotes_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quotes Message
dissect.quotes_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer
  index, lp_role = dissect.lp_role(buffer, index, packet, parent)

  -- Mi Fid Indicators: 1 Byte Unsigned Fixed Width Integer
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Rfe Answer: 1 Byte Unsigned Fixed Width Integer
  index, rfe_answer = dissect.rfe_answer(buffer, index, packet, parent)

  -- Execution Instruction: 1 Byte Unsigned Fixed Width Integer
  index, execution_instruction = dissect.execution_instruction(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Message
dissect.quotes_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quotes_message then
    local length = size_of.quotes_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quotes_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quotes_message, range, display)
  end

  return dissect.quotes_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Reject Message
size_of.reject_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.client_order_id

  index = index + size_of.order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.rejected_message

  index = index + size_of.error_code

  index = index + size_of.rejected_message_id

  index = index + size_of.ack_qualifiers

  return index
end

-- Display: Reject Message
display.reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reject Message
dissect.reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer
  index, rejected_message = dissect.rejected_message(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer
  index, rejected_message_id = dissect.rejected_message_id(buffer, index, packet, parent)

  -- Ack Qualifiers: 1 Byte Unsigned Fixed Width Integer
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
dissect.reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.reject_message then
    local length = size_of.reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reject_message, range, display)
  end

  return dissect.reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Stpid
size_of.stpid = 2

-- Display: Stpid
display.stpid = function(value)
  return "Stpid: "..value
end

-- Dissect: Stpid
dissect.stpid = function(buffer, offset, packet, parent)
  local length = size_of.stpid
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.stpid(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stpid, range, value, display)

  return offset + length, value
end

-- Size: Time In Force
size_of.time_in_force = 1

-- Display: Time In Force
display.time_in_force = function(value)
  return "Time In Force: "..value
end

-- Dissect: Time In Force
dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Replace Message
size_of.cancel_replace_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.client_order_id

  index = index + size_of.order_id

  index = index + size_of.orig_client_order_id

  index = index + size_of.order_px

  index = index + size_of.order_qty

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  index = index + size_of.order_type

  index = index + size_of.time_in_force

  index = index + size_of.account_type

  index = index + size_of.lp_role

  index = index + size_of.execution_instruction

  index = index + size_of.dark_execution_instruction

  index = index + size_of.mi_fid_indicators

  index = index + size_of.stpid

  return index
end

-- Display: Cancel Replace Message
display.cancel_replace_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Replace Message
dissect.cancel_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer
  index, lp_role = dissect.lp_role(buffer, index, packet, parent)

  -- Execution Instruction: 1 Byte Unsigned Fixed Width Integer
  index, execution_instruction = dissect.execution_instruction(buffer, index, packet, parent)

  -- Dark Execution Instruction: 1 Byte Unsigned Fixed Width Integer
  index, dark_execution_instruction = dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Mi Fid Indicators: 1 Byte Unsigned Fixed Width Integer
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Stpid: 2 Byte Unsigned Fixed Width Integer
  index, stpid = dissect.stpid(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Replace Message
dissect.cancel_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancel_replace_message then
    local length = size_of.cancel_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.cancel_replace_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cancel_replace_message, range, display)
  end

  return dissect.cancel_replace_message_fields(buffer, offset, packet, parent)
end

-- Size: Kill Reason
size_of.kill_reason = 2

-- Display: Kill Reason
display.kill_reason = function(value)
  return "Kill Reason: "..value
end

-- Dissect: Kill Reason
dissect.kill_reason = function(buffer, offset, packet, parent)
  local length = size_of.kill_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.kill_reason(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.kill_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Kill Message
size_of.kill_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.client_order_id

  index = index + size_of.orig_client_order_id

  index = index + size_of.order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.kill_reason

  index = index + size_of.ack_qualifiers

  return index
end

-- Display: Kill Message
display.kill_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Kill Message
dissect.kill_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Kill Reason: 2 Byte Unsigned Fixed Width Integer
  index, kill_reason = dissect.kill_reason(buffer, index, packet, parent)

  -- Ack Qualifiers: 1 Byte Unsigned Fixed Width Integer
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  return index
end

-- Dissect: Kill Message
dissect.kill_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.kill_message then
    local length = size_of.kill_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.kill_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.kill_message, range, display)
  end

  return dissect.kill_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Phase
size_of.execution_phase = 1

-- Display: Execution Phase
display.execution_phase = function(value)
  return "Execution Phase: "..value
end

-- Dissect: Execution Phase
dissect.execution_phase = function(buffer, offset, packet, parent)
  local length = size_of.execution_phase
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.execution_phase(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_phase, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
size_of.leaves_qty = 8

-- Display: Leaves Qty
display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Trade Qualifier
size_of.trade_qualifier = 1

-- Display: Trade Qualifier
display.trade_qualifier = function(value)
  return "Trade Qualifier: "..value
end

-- Dissect: Trade Qualifier
dissect.trade_qualifier = function(buffer, offset, packet, parent)
  local length = size_of.trade_qualifier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_qualifier(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_qualifier, range, value, display)

  return offset + length, value
end

-- Size: Trade Type
size_of.trade_type = 1

-- Display: Trade Type
display.trade_type = function(value)
  return "Trade Type: "..value
end

-- Dissect: Trade Type
dissect.trade_type = function(buffer, offset, packet, parent)
  local length = size_of.trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fill Message
size_of.fill_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.trade_time

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  index = index + size_of.trade_type

  index = index + size_of.trade_qualifier

  index = index + size_of.order_id

  index = index + size_of.last_traded_px

  index = index + size_of.last_shares

  index = index + size_of.leaves_qty

  index = index + size_of.execution_id

  index = index + size_of.execution_phase

  index = index + size_of.lis_transaction_id

  index = index + size_of.escb_membership

  return index
end

-- Display: Fill Message
display.fill_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fill Message
dissect.fill_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Trade Time: 8 Byte Unsigned Fixed Width Integer
  index, trade_time = dissect.trade_time(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer
  index, trade_type = dissect.trade_type(buffer, index, packet, parent)

  -- Trade Qualifier: 1 Byte Unsigned Fixed Width Integer
  index, trade_qualifier = dissect.trade_qualifier(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Last Traded Px: 8 Byte Signed Fixed Width Integer
  index, last_traded_px = dissect.last_traded_px(buffer, index, packet, parent)

  -- Last Shares: 8 Byte Unsigned Fixed Width Integer
  index, last_shares = dissect.last_shares(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Execution Phase: 1 Byte Unsigned Fixed Width Integer
  index, execution_phase = dissect.execution_phase(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, lis_transaction_id = dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer
  index, escb_membership = dissect.escb_membership(buffer, index, packet, parent)

  return index
end

-- Dissect: Fill Message
dissect.fill_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fill_message then
    local length = size_of.fill_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.fill_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fill_message, range, display)
  end

  return dissect.fill_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Priority
size_of.order_priority = 8

-- Display: Order Priority
display.order_priority = function(value)
  return "Order Priority: "..value
end

-- Dissect: Order Priority
dissect.order_priority = function(buffer, offset, packet, parent)
  local length = size_of.order_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.order_priority(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_priority, range, value, display)

  return offset + length, value
end

-- Size: Ack Phase
size_of.ack_phase = 1

-- Display: Ack Phase
display.ack_phase = function(value)
  return "Ack Phase: "..value
end

-- Dissect: Ack Phase
dissect.ack_phase = function(buffer, offset, packet, parent)
  local length = size_of.ack_phase
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ack_phase(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_phase, range, value, display)

  return offset + length, value
end

-- Size: Ack Type
size_of.ack_type = 1

-- Display: Ack Type
display.ack_type = function(value)
  return "Ack Type: "..value
end

-- Dissect: Ack Type
dissect.ack_type = function(buffer, offset, packet, parent)
  local length = size_of.ack_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ack_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ack Message
size_of.ack_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.oegin_from_member

  index = index + size_of.oegout_time_to_me

  index = index + size_of.book_in

  index = index + size_of.book_out_time

  index = index + size_of.oegin_from_me

  index = index + size_of.oegout_to_member

  index = index + size_of.client_order_id

  index = index + size_of.orig_client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  index = index + size_of.ack_type

  index = index + size_of.ack_phase

  index = index + size_of.order_id

  index = index + size_of.order_priority

  index = index + size_of.order_px

  index = index + size_of.order_qty

  index = index + size_of.ack_qualifiers

  return index
end

-- Display: Ack Message
display.ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ack Message
dissect.ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer
  index, ack_type = dissect.ack_type(buffer, index, packet, parent)

  -- Ack Phase: 1 Byte Unsigned Fixed Width Integer
  index, ack_phase = dissect.ack_phase(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Priority: 8 Byte Unsigned Fixed Width Integer
  index, order_priority = dissect.order_priority(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ack Qualifiers: 1 Byte Unsigned Fixed Width Integer
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  return index
end

-- Dissect: Ack Message
dissect.ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ack_message then
    local length = size_of.ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_message, range, display)
  end

  return dissect.ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Message
size_of.new_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.cl_msg_seq_num

  index = index + size_of.firm_id

  index = index + size_of.sending_time

  index = index + size_of.client_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.order_side

  index = index + size_of.order_type

  index = index + size_of.time_in_force

  index = index + size_of.order_px

  index = index + size_of.order_qty

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.trading_capacity

  index = index + size_of.account_type

  index = index + size_of.lp_role

  index = index + size_of.execution_instruction

  index = index + size_of.dark_execution_instruction

  index = index + size_of.mi_fid_indicators

  index = index + size_of.stpid

  index = index + size_of.non_executing_client_id

  return index
end

-- Display: New Order Message
display.new_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Message
dissect.new_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer
  index, lp_role = dissect.lp_role(buffer, index, packet, parent)

  -- Execution Instruction: 1 Byte Unsigned Fixed Width Integer
  index, execution_instruction = dissect.execution_instruction(buffer, index, packet, parent)

  -- Dark Execution Instruction: 1 Byte Unsigned Fixed Width Integer
  index, dark_execution_instruction = dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Mi Fid Indicators: 1 Byte Unsigned Fixed Width Integer
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Stpid: 2 Byte Unsigned Fixed Width Integer
  index, stpid = dissect.stpid(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer
  index, non_executing_client_id = dissect.non_executing_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
dissect.new_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_order_message then
    local length = size_of.new_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_order_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.new_order_message, range, display)
  end

  return dissect.new_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, template_id)
  -- Size of New Order Message
  if template_id == 1 then
    return size_of.new_order_message(buffer, offset)
  end
  -- Size of Ack Message
  if template_id == 3 then
    return size_of.ack_message(buffer, offset)
  end
  -- Size of Fill Message
  if template_id == 4 then
    return size_of.fill_message(buffer, offset)
  end
  -- Size of Kill Message
  if template_id == 5 then
    return size_of.kill_message(buffer, offset)
  end
  -- Size of Cancel Replace Message
  if template_id == 6 then
    return size_of.cancel_replace_message(buffer, offset)
  end
  -- Size of Reject Message
  if template_id == 7 then
    return size_of.reject_message(buffer, offset)
  end
  -- Size of Quotes Message
  if template_id == 8 then
    return size_of.quotes_message(buffer, offset)
  end
  -- Size of Quote Ack Message
  if template_id == 9 then
    return size_of.quote_ack_message(buffer, offset)
  end
  -- Size of Quote Request Message
  if template_id == 10 then
    return size_of.quote_request_message(buffer, offset)
  end
  -- Size of Cancel Request Message
  if template_id == 12 then
    return size_of.cancel_request_message(buffer, offset)
  end
  -- Size of Mass Cancel Message
  if template_id == 13 then
    return size_of.mass_cancel_message(buffer, offset)
  end
  -- Size of Mass Cancel Ack Message
  if template_id == 14 then
    return size_of.mass_cancel_ack_message(buffer, offset)
  end
  -- Size of Open Order Request Message
  if template_id == 15 then
    return size_of.open_order_request_message(buffer, offset)
  end
  -- Size of Ownership Request Ack Message
  if template_id == 17 then
    return size_of.ownership_request_ack_message(buffer, offset)
  end
  -- Size of Ownership Request Message
  if template_id == 18 then
    return size_of.ownership_request_message(buffer, offset)
  end
  -- Size of Trade Bust Notification Message
  if template_id == 19 then
    return size_of.trade_bust_notification_message(buffer, offset)
  end
  -- Size of Collar Breach Confirmation Message
  if template_id == 20 then
    return size_of.collar_breach_confirmation_message(buffer, offset)
  end
  -- Size of Price Input Message
  if template_id == 28 then
    return size_of.price_input_message(buffer, offset)
  end
  -- Size of Liquidity Provider Command Message
  if template_id == 32 then
    return size_of.liquidity_provider_command_message(buffer, offset)
  end
  -- Size of Ask For Quote Message
  if template_id == 33 then
    return size_of.ask_for_quote_message(buffer, offset)
  end
  -- Size of Request For Execution Message
  if template_id == 34 then
    return size_of.request_for_execution_message(buffer, offset)
  end
  -- Size of Rfq Notification Message
  if template_id == 35 then
    return size_of.rfq_notification_message(buffer, offset)
  end
  -- Size of Rfq Matching Status Message
  if template_id == 36 then
    return size_of.rfq_matching_status_message(buffer, offset)
  end
  -- Size of Rfqlp Matching Status Message
  if template_id == 37 then
    return size_of.rfqlp_matching_status_message(buffer, offset)
  end
  -- Size of User Notification Message
  if template_id == 39 then
    return size_of.user_notification_message(buffer, offset)
  end
  -- Size of Mm Sign In Message
  if template_id == 47 then
    return size_of.mm_sign_in_message(buffer, offset)
  end
  -- Size of Mm Sign In Ack Message
  if template_id == 48 then
    return size_of.mm_sign_in_ack_message(buffer, offset)
  end
  -- Size of Instrument Synchronization List Message
  if template_id == 50 then
    return size_of.instrument_synchronization_list_message(buffer, offset)
  end
  -- Size of Synchronization Time Message
  if template_id == 51 then
    return size_of.synchronization_time_message(buffer, offset)
  end
  -- Size of Security Definition Request Message
  if template_id == 60 then
    return size_of.security_definition_request_message(buffer, offset)
  end
  -- Size of Security Definition Ack Message
  if template_id == 61 then
    return size_of.security_definition_ack_message(buffer, offset)
  end
  -- Size of Mm Protection Request Message
  if template_id == 62 then
    return size_of.mm_protection_request_message(buffer, offset)
  end
  -- Size of Mm Protection Ack Message
  if template_id == 63 then
    return size_of.mm_protection_ack_message(buffer, offset)
  end
  -- Size of New Wholesale Order Message
  if template_id == 64 then
    return size_of.new_wholesale_order_message(buffer, offset)
  end
  -- Size of Wholesale Order Ack Message
  if template_id == 65 then
    return size_of.wholesale_order_ack_message(buffer, offset)
  end
  -- Size of Request For Implied Execution Message
  if template_id == 66 then
    return size_of.request_for_implied_execution_message(buffer, offset)
  end
  -- Size of Cross Order Message
  if template_id == 67 then
    return size_of.cross_order_message(buffer, offset)
  end
  -- Size of Logon Message
  if template_id == 100 then
    return size_of.logon_message(buffer, offset)
  end
  -- Size of Logon Ack Message
  if template_id == 101 then
    return size_of.logon_ack_message(buffer, offset)
  end
  -- Size of Logon Reject Message
  if template_id == 102 then
    return size_of.logon_reject_message(buffer, offset)
  end
  -- Size of Logout Message
  if template_id == 103 then
    return size_of.logout_message(buffer, offset)
  end
  -- Size of Heartbeat Message
  if template_id == 106 then
    return 0
  end
  -- Size of Test Request Message
  if template_id == 107 then
    return 0
  end
  -- Size of Technical Reject Message
  if template_id == 108 then
    return size_of.technical_reject_message(buffer, offset)
  end
  -- Size of Declaration Entry Message
  if template_id == 40 then
    return size_of.declaration_entry_message(buffer, offset)
  end
  -- Size of Declaration Entry Ack Message
  if template_id == 41 then
    return size_of.declaration_entry_ack_message(buffer, offset)
  end
  -- Size of Declaration Notice Message
  if template_id == 42 then
    return size_of.declaration_notice_message(buffer, offset)
  end
  -- Size of Declaration Cancel And Refusal Message
  if template_id == 43 then
    return size_of.declaration_cancel_and_refusal_message(buffer, offset)
  end
  -- Size of Fund Price Input Message
  if template_id == 44 then
    return size_of.fund_price_input_message(buffer, offset)
  end
  -- Size of Fund Price Input Ack Message
  if template_id == 45 then
    return size_of.fund_price_input_ack_message(buffer, offset)
  end
  -- Size of Declaration Entry Reject Message
  if template_id == 46 then
    return size_of.declaration_entry_reject_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Message
  if template_id == 1 then
    return dissect.new_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Ack Message
  if template_id == 3 then
    return dissect.ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Fill Message
  if template_id == 4 then
    return dissect.fill_message(buffer, offset, packet, parent)
  end
  -- Dissect Kill Message
  if template_id == 5 then
    return dissect.kill_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Replace Message
  if template_id == 6 then
    return dissect.cancel_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if template_id == 7 then
    return dissect.reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Quotes Message
  if template_id == 8 then
    return dissect.quotes_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Ack Message
  if template_id == 9 then
    return dissect.quote_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if template_id == 10 then
    return dissect.quote_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Request Message
  if template_id == 12 then
    return dissect.cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Message
  if template_id == 13 then
    return dissect.mass_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Ack Message
  if template_id == 14 then
    return dissect.mass_cancel_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Order Request Message
  if template_id == 15 then
    return dissect.open_order_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Ownership Request Ack Message
  if template_id == 17 then
    return dissect.ownership_request_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Ownership Request Message
  if template_id == 18 then
    return dissect.ownership_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Notification Message
  if template_id == 19 then
    return dissect.trade_bust_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Collar Breach Confirmation Message
  if template_id == 20 then
    return dissect.collar_breach_confirmation_message(buffer, offset, packet, parent)
  end
  -- Dissect Price Input Message
  if template_id == 28 then
    return dissect.price_input_message(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Provider Command Message
  if template_id == 32 then
    return dissect.liquidity_provider_command_message(buffer, offset, packet, parent)
  end
  -- Dissect Ask For Quote Message
  if template_id == 33 then
    return dissect.ask_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Request For Execution Message
  if template_id == 34 then
    return dissect.request_for_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Notification Message
  if template_id == 35 then
    return dissect.rfq_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Matching Status Message
  if template_id == 36 then
    return dissect.rfq_matching_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Rfqlp Matching Status Message
  if template_id == 37 then
    return dissect.rfqlp_matching_status_message(buffer, offset, packet, parent)
  end
  -- Dissect User Notification Message
  if template_id == 39 then
    return dissect.user_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Mm Sign In Message
  if template_id == 47 then
    return dissect.mm_sign_in_message(buffer, offset, packet, parent)
  end
  -- Dissect Mm Sign In Ack Message
  if template_id == 48 then
    return dissect.mm_sign_in_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Synchronization List Message
  if template_id == 50 then
    return dissect.instrument_synchronization_list_message(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Time Message
  if template_id == 51 then
    return dissect.synchronization_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request Message
  if template_id == 60 then
    return dissect.security_definition_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Ack Message
  if template_id == 61 then
    return dissect.security_definition_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Mm Protection Request Message
  if template_id == 62 then
    return dissect.mm_protection_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Mm Protection Ack Message
  if template_id == 63 then
    return dissect.mm_protection_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect New Wholesale Order Message
  if template_id == 64 then
    return dissect.new_wholesale_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Wholesale Order Ack Message
  if template_id == 65 then
    return dissect.wholesale_order_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Request For Implied Execution Message
  if template_id == 66 then
    return dissect.request_for_implied_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Message
  if template_id == 67 then
    return dissect.cross_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if template_id == 100 then
    return dissect.logon_message(buffer, offset, packet, parent)
  end
  -- Dissect Logon Ack Message
  if template_id == 101 then
    return dissect.logon_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Logon Reject Message
  if template_id == 102 then
    return dissect.logon_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 103 then
    return dissect.logout_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 106 then
  end
  -- Dissect Test Request Message
  if template_id == 107 then
  end
  -- Dissect Technical Reject Message
  if template_id == 108 then
    return dissect.technical_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Message
  if template_id == 40 then
    return dissect.declaration_entry_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Ack Message
  if template_id == 41 then
    return dissect.declaration_entry_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Notice Message
  if template_id == 42 then
    return dissect.declaration_notice_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Cancel And Refusal Message
  if template_id == 43 then
    return dissect.declaration_cancel_and_refusal_message(buffer, offset, packet, parent)
  end
  -- Dissect Fund Price Input Message
  if template_id == 44 then
    return dissect.fund_price_input_message(buffer, offset, packet, parent)
  end
  -- Dissect Fund Price Input Ack Message
  if template_id == 45 then
    return dissect.fund_price_input_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Reject Message
  if template_id == 46 then
    return dissect.declaration_entry_reject_message(buffer, offset, packet, parent)
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
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.payload, range, display)

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

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.version, range, value, display)

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

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
size_of.template_id = 2

-- Display: Template Id
display.template_id = function(value)
  if value == 1 then
    return "Template Id: New Order Message (1)"
  end
  if value == 3 then
    return "Template Id: Ack Message (3)"
  end
  if value == 4 then
    return "Template Id: Fill Message (4)"
  end
  if value == 5 then
    return "Template Id: Kill Message (5)"
  end
  if value == 6 then
    return "Template Id: Cancel Replace Message (6)"
  end
  if value == 7 then
    return "Template Id: Reject Message (7)"
  end
  if value == 8 then
    return "Template Id: Quotes Message (8)"
  end
  if value == 9 then
    return "Template Id: Quote Ack Message (9)"
  end
  if value == 10 then
    return "Template Id: Quote Request Message (10)"
  end
  if value == 12 then
    return "Template Id: Cancel Request Message (12)"
  end
  if value == 13 then
    return "Template Id: Mass Cancel Message (13)"
  end
  if value == 14 then
    return "Template Id: Mass Cancel Ack Message (14)"
  end
  if value == 15 then
    return "Template Id: Open Order Request Message (15)"
  end
  if value == 17 then
    return "Template Id: Ownership Request Ack Message (17)"
  end
  if value == 18 then
    return "Template Id: Ownership Request Message (18)"
  end
  if value == 19 then
    return "Template Id: Trade Bust Notification Message (19)"
  end
  if value == 20 then
    return "Template Id: Collar Breach Confirmation Message (20)"
  end
  if value == 28 then
    return "Template Id: Price Input Message (28)"
  end
  if value == 32 then
    return "Template Id: Liquidity Provider Command Message (32)"
  end
  if value == 33 then
    return "Template Id: Ask For Quote Message (33)"
  end
  if value == 34 then
    return "Template Id: Request For Execution Message (34)"
  end
  if value == 35 then
    return "Template Id: Rfq Notification Message (35)"
  end
  if value == 36 then
    return "Template Id: Rfq Matching Status Message (36)"
  end
  if value == 37 then
    return "Template Id: Rfqlp Matching Status Message (37)"
  end
  if value == 39 then
    return "Template Id: User Notification Message (39)"
  end
  if value == 47 then
    return "Template Id: Mm Sign In Message (47)"
  end
  if value == 48 then
    return "Template Id: Mm Sign In Ack Message (48)"
  end
  if value == 50 then
    return "Template Id: Instrument Synchronization List Message (50)"
  end
  if value == 51 then
    return "Template Id: Synchronization Time Message (51)"
  end
  if value == 60 then
    return "Template Id: Security Definition Request Message (60)"
  end
  if value == 61 then
    return "Template Id: Security Definition Ack Message (61)"
  end
  if value == 62 then
    return "Template Id: Mm Protection Request Message (62)"
  end
  if value == 63 then
    return "Template Id: Mm Protection Ack Message (63)"
  end
  if value == 64 then
    return "Template Id: New Wholesale Order Message (64)"
  end
  if value == 65 then
    return "Template Id: Wholesale Order Ack Message (65)"
  end
  if value == 66 then
    return "Template Id: Request For Implied Execution Message (66)"
  end
  if value == 67 then
    return "Template Id: Cross Order Message (67)"
  end
  if value == 100 then
    return "Template Id: Logon Message (100)"
  end
  if value == 101 then
    return "Template Id: Logon Ack Message (101)"
  end
  if value == 102 then
    return "Template Id: Logon Reject Message (102)"
  end
  if value == 103 then
    return "Template Id: Logout Message (103)"
  end
  if value == 106 then
    return "Template Id: Heartbeat Message (106)"
  end
  if value == 107 then
    return "Template Id: Test Request Message (107)"
  end
  if value == 108 then
    return "Template Id: Technical Reject Message (108)"
  end
  if value == 40 then
    return "Template Id: Declaration Entry Message (40)"
  end
  if value == 41 then
    return "Template Id: Declaration Entry Ack Message (41)"
  end
  if value == 42 then
    return "Template Id: Declaration Notice Message (42)"
  end
  if value == 43 then
    return "Template Id: Declaration Cancel And Refusal Message (43)"
  end
  if value == 44 then
    return "Template Id: Fund Price Input Message (44)"
  end
  if value == 45 then
    return "Template Id: Fund Price Input Ack Message (45)"
  end
  if value == 46 then
    return "Template Id: Declaration Entry Reject Message (46)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
dissect.template_id = function(buffer, offset, packet, parent)
  local length = size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.template_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.template_id, range, value, display)

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

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.block_length, range, value, display)

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

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 51 values
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
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Frame
size_of.frame = 2

-- Display: Frame
display.frame = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
dissect.frame = function(buffer, offset, packet, parent)
  local length = size_of.frame
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.frame(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.frame, range, value, display)

  return offset + length, value
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = dissect.frame(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 51 branches
  index = dissect.payload(buffer, index, packet, parent, template_id)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function euronext_optiq_orderentrygateway_sbe_v4_2_2.init()
end

-- Dissector for Euronext Optiq OrderEntryGateway Sbe 4.2.2
function euronext_optiq_orderentrygateway_sbe_v4_2_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = euronext_optiq_orderentrygateway_sbe_v4_2_2.name

  -- Dissect protocol
  local protocol = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2, buffer(), euronext_optiq_orderentrygateway_sbe_v4_2_2.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, euronext_optiq_orderentrygateway_sbe_v4_2_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.euronext_optiq_orderentrygateway_sbe_v4_2_2_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  if 0 == buffer(6, 2):le_uint() then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  if 203 == buffer(8, 2):le_uint() then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq OrderEntryGateway Sbe 4.2.2
local function euronext_optiq_orderentrygateway_sbe_v4_2_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.euronext_optiq_orderentrygateway_sbe_v4_2_2_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = euronext_optiq_orderentrygateway_sbe_v4_2_2
  euronext_optiq_orderentrygateway_sbe_v4_2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq OrderEntryGateway Sbe 4.2.2
euronext_optiq_orderentrygateway_sbe_v4_2_2:register_heuristic("tcp", euronext_optiq_orderentrygateway_sbe_v4_2_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 4.2.2
--   Date: Friday, September 25, 2020
--   Specification: Euronext Markets - Optiq OEG Client Specifications - SBE Interface - v4.2.2.pdf
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
