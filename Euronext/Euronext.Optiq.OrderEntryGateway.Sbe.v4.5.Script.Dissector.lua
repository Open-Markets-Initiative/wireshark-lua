-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 4.5 Protocol
local euronext_optiq_orderentrygateway_sbe_v4_5 = Proto("Euronext.Optiq.OrderEntryGateway.Sbe.v4.5.Lua", "Euronext Optiq OrderEntryGateway Sbe 4.5")

-- Component Tables
local show = {}
local format = {}
local euronext_optiq_orderentrygateway_sbe_v4_5_display = {}
local euronext_optiq_orderentrygateway_sbe_v4_5_dissect = {}
local euronext_optiq_orderentrygateway_sbe_v4_5_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 4.5 Fields
euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_number = ProtoField.new("Account Number", "euronext.optiq.orderentrygateway.sbe.v4.5.accountnumber", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_number_cross = ProtoField.new("Account Number Cross", "euronext.optiq.orderentrygateway.sbe.v4.5.accountnumbercross", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_type = ProtoField.new("Account Type", "euronext.optiq.orderentrygateway.sbe.v4.5.accounttype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_type_cross = ProtoField.new("Account Type Cross", "euronext.optiq.orderentrygateway.sbe.v4.5.accounttypecross", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_type_optional = ProtoField.new("Account Type Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.accounttypeoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_message = ProtoField.new("Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.ackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_phase = ProtoField.new("Ack Phase", "euronext.optiq.orderentrygateway.sbe.v4.5.ackphase", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_qualifiers = ProtoField.new("Ack Qualifiers", "euronext.optiq.orderentrygateway.sbe.v4.5.ackqualifiers", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_qualifiers_optional = ProtoField.new("Ack Qualifiers Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.ackqualifiersoptional", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_type = ProtoField.new("Ack Type", "euronext.optiq.orderentrygateway.sbe.v4.5.acktype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.acknowledgement = ProtoField.new("Acknowledgement", "euronext.optiq.orderentrygateway.sbe.v4.5.acknowledgement", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.action_type = ProtoField.new("Action Type", "euronext.optiq.orderentrygateway.sbe.v4.5.actiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.additional_infos_group = ProtoField.new("Additional Infos Group", "euronext.optiq.orderentrygateway.sbe.v4.5.additionalinfosgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.additional_infos_groups = ProtoField.new("Additional Infos Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.additionalinfosgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.afq_reason = ProtoField.new("Afq Reason", "euronext.optiq.orderentrygateway.sbe.v4.5.afqreason", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.aggressive_order = ProtoField.new("Aggressive Order", "euronext.optiq.orderentrygateway.sbe.v4.5.aggressiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ask_for_quote_message = ProtoField.new("Ask For Quote Message", "euronext.optiq.orderentrygateway.sbe.v4.5.askforquotemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_error_code = ProtoField.new("Bid Error Code", "euronext.optiq.orderentrygateway.sbe.v4.5.biderrorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_order_id = ProtoField.new("Bid Order Id", "euronext.optiq.orderentrygateway.sbe.v4.5.bidorderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_px = ProtoField.new("Bid Px", "euronext.optiq.orderentrygateway.sbe.v4.5.bidpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_quantity = ProtoField.new("Bid Quantity", "euronext.optiq.orderentrygateway.sbe.v4.5.bidquantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_size = ProtoField.new("Bid Size", "euronext.optiq.orderentrygateway.sbe.v4.5.bidsize", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.orderentrygateway.sbe.v4.5.blocklength", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.block_length_short = ProtoField.new("Block Length Short", "euronext.optiq.orderentrygateway.sbe.v4.5.blocklengthshort", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.book_in = ProtoField.new("Book In", "euronext.optiq.orderentrygateway.sbe.v4.5.bookin", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.book_in_optional = ProtoField.new("Book In Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.bookinoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.book_out_time = ProtoField.new("Book Out Time", "euronext.optiq.orderentrygateway.sbe.v4.5.bookouttime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.book_out_time_optional = ProtoField.new("Book Out Time Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.bookouttimeoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.breach_action = ProtoField.new("Breach Action", "euronext.optiq.orderentrygateway.sbe.v4.5.breachaction", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.breach_status = ProtoField.new("Breach Status", "euronext.optiq.orderentrygateway.sbe.v4.5.breachstatus", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.breached_collar_price = ProtoField.new("Breached Collar Price", "euronext.optiq.orderentrygateway.sbe.v4.5.breachedcollarprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.buy_revision_flag = ProtoField.new("Buy Revision Flag", "euronext.optiq.orderentrygateway.sbe.v4.5.buyrevisionflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.buy_side = ProtoField.new("Buy Side", "euronext.optiq.orderentrygateway.sbe.v4.5.buyside", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.bypass_indicator = ProtoField.new("Bypass Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.bypassindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.cancel_replace_message = ProtoField.new("Cancel Replace Message", "euronext.optiq.orderentrygateway.sbe.v4.5.cancelreplacemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.cancel_request_message = ProtoField.new("Cancel Request Message", "euronext.optiq.orderentrygateway.sbe.v4.5.cancelrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ccpid = ProtoField.new("Ccpid", "euronext.optiq.orderentrygateway.sbe.v4.5.ccpid", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.centralisation_date = ProtoField.new("Centralisation Date", "euronext.optiq.orderentrygateway.sbe.v4.5.centralisationdate", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.cl_msg_seq_num = ProtoField.new("Cl Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.5.clmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_dataset_group = ProtoField.new("Clearing Dataset Group", "euronext.optiq.orderentrygateway.sbe.v4.5.clearingdatasetgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_dataset_groups = ProtoField.new("Clearing Dataset Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.clearingdatasetgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_fields_group = ProtoField.new("Clearing Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.5.clearingfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_fields_groups = ProtoField.new("Clearing Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.clearingfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_fields_x_group = ProtoField.new("Clearing Fields X Group", "euronext.optiq.orderentrygateway.sbe.v4.5.clearingfieldsxgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_fields_x_groups = ProtoField.new("Clearing Fields X Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.clearingfieldsxgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_firm_id = ProtoField.new("Clearing Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.5.clearingfirmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "euronext.optiq.orderentrygateway.sbe.v4.5.clearinginstruction", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_id = ProtoField.new("Client Id", "euronext.optiq.orderentrygateway.sbe.v4.5.clientid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_identification_short_code_cross = ProtoField.new("Client Identification Short Code Cross", "euronext.optiq.orderentrygateway.sbe.v4.5.clientidentificationshortcodecross", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_identification_shortcode = ProtoField.new("Client Identification Shortcode", "euronext.optiq.orderentrygateway.sbe.v4.5.clientidentificationshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_order_id = ProtoField.new("Client Order Id", "euronext.optiq.orderentrygateway.sbe.v4.5.clientorderid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_order_id_optional = ProtoField.new("Client Order Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.clientorderidoptional", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.collar_breach_confirmation_message = ProtoField.new("Collar Breach Confirmation Message", "euronext.optiq.orderentrygateway.sbe.v4.5.collarbreachconfirmationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.collar_fields_group = ProtoField.new("Collar Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.5.collarfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.collar_fields_groups = ProtoField.new("Collar Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.collarfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.collar_rej_type = ProtoField.new("Collar Rej Type", "euronext.optiq.orderentrygateway.sbe.v4.5.collarrejtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.commodity_derivative_indicator = ProtoField.new("Commodity Derivative Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.commodityderivativeindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.conditional_order = ProtoField.new("Conditional Order", "euronext.optiq.orderentrygateway.sbe.v4.5.conditionalorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.contract_id = ProtoField.new("Contract Id", "euronext.optiq.orderentrygateway.sbe.v4.5.contractid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.5.contractsymbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.counterpart_firm_id = ProtoField.new("Counterpart Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.5.counterpartfirmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.cross_order_message = ProtoField.new("Cross Order Message", "euronext.optiq.orderentrygateway.sbe.v4.5.crossordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.current_mmp_position = ProtoField.new("Current Mmp Position", "euronext.optiq.orderentrygateway.sbe.v4.5.currentmmpposition", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_execution_instruction = ProtoField.new("Dark Execution Instruction", "euronext.optiq.orderentrygateway.sbe.v4.5.darkexecutioninstruction", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_execution_instruction_optional = ProtoField.new("Dark Execution Instruction Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.darkexecutioninstructionoptional", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_indicator = ProtoField.new("Dark Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.darkindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.dea_indicator = ProtoField.new("Dea Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.deaindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_cancel_and_refusal_message = ProtoField.new("Declaration Cancel And Refusal Message", "euronext.optiq.orderentrygateway.sbe.v4.5.declarationcancelandrefusalmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_entry_ack_message = ProtoField.new("Declaration Entry Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.declarationentryackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_entry_message = ProtoField.new("Declaration Entry Message", "euronext.optiq.orderentrygateway.sbe.v4.5.declarationentrymessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_entry_reject_message = ProtoField.new("Declaration Entry Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.5.declarationentryrejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_id = ProtoField.new("Declaration Id", "euronext.optiq.orderentrygateway.sbe.v4.5.declarationid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_id_optional = ProtoField.new("Declaration Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.declarationidoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_notice_message = ProtoField.new("Declaration Notice Message", "euronext.optiq.orderentrygateway.sbe.v4.5.declarationnoticemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_status = ProtoField.new("Declaration Status", "euronext.optiq.orderentrygateway.sbe.v4.5.declarationstatus", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.deferral_indicator = ProtoField.new("Deferral Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.deferralindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.deferred_publication = ProtoField.new("Deferred Publication", "euronext.optiq.orderentrygateway.sbe.v4.5.deferredpublication", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.deferred_trade_indicator = ProtoField.new("Deferred Trade Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.deferredtradeindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.disabled_cancel_on_disconnect_indicator = ProtoField.new("Disabled Cancel On Disconnect Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.disabledcancelondisconnectindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.disclosed_qty = ProtoField.new("Disclosed Qty", "euronext.optiq.orderentrygateway.sbe.v4.5.disclosedqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.disclosed_quantity_randomization = ProtoField.new("Disclosed Quantity Randomization", "euronext.optiq.orderentrygateway.sbe.v4.5.disclosedquantityrandomization", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.displayed_order_interaction = ProtoField.new("Displayed Order Interaction", "euronext.optiq.orderentrygateway.sbe.v4.5.displayedorderinteraction", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.emm = ProtoField.new("Emm", "euronext.optiq.orderentrygateway.sbe.v4.5.emm", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.emm_optional = ProtoField.new("Emm Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.emmoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.end_client = ProtoField.new("End Client", "euronext.optiq.orderentrygateway.sbe.v4.5.endclient", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.orderentrygateway.sbe.v4.5.endtimevwap", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.entering_counterparty = ProtoField.new("Entering Counterparty", "euronext.optiq.orderentrygateway.sbe.v4.5.enteringcounterparty", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.error_code = ProtoField.new("Error Code", "euronext.optiq.orderentrygateway.sbe.v4.5.errorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.error_code_optional = ProtoField.new("Error Code Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.errorcodeoptional", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.escb_membership = ProtoField.new("Escb Membership", "euronext.optiq.orderentrygateway.sbe.v4.5.escbmembership", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.euronext_data_driven = ProtoField.new("Euronext Data Driven", "euronext.optiq.orderentrygateway.sbe.v4.5.euronextdatadriven", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.evaluated_price = ProtoField.new("Evaluated Price", "euronext.optiq.orderentrygateway.sbe.v4.5.evaluatedprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.exchange_id = ProtoField.new("Exchange Id", "euronext.optiq.orderentrygateway.sbe.v4.5.exchangeid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.exchange_ioi_id_optional = ProtoField.new("Exchange Ioi Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.exchangeioiidoptional", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.executed_upon_entry_flag = ProtoField.new("Executed Upon Entry Flag", "euronext.optiq.orderentrygateway.sbe.v4.5.executeduponentryflag", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_algo_indicator = ProtoField.new("Execution Algo Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.executionalgoindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_id = ProtoField.new("Execution Id", "euronext.optiq.orderentrygateway.sbe.v4.5.executionid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_id_optional = ProtoField.new("Execution Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.executionidoptional", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_instruction = ProtoField.new("Execution Instruction", "euronext.optiq.orderentrygateway.sbe.v4.5.executioninstruction", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_instruction_optional = ProtoField.new("Execution Instruction Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.executioninstructionoptional", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_phase = ProtoField.new("Execution Phase", "euronext.optiq.orderentrygateway.sbe.v4.5.executionphase", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_upon_entry_flag_enabled = ProtoField.new("Execution Upon Entry Flag Enabled", "euronext.optiq.orderentrygateway.sbe.v4.5.executionuponentryflagenabled", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_within_firm_short_code = ProtoField.new("Execution Within Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.5.executionwithinfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.family_id = ProtoField.new("Family Id", "euronext.optiq.orderentrygateway.sbe.v4.5.familyid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.field_actively_used = ProtoField.new("Field Actively Used", "euronext.optiq.orderentrygateway.sbe.v4.5.fieldactivelyused", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.fill_message = ProtoField.new("Fill Message", "euronext.optiq.orderentrygateway.sbe.v4.5.fillmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.final_execution_id = ProtoField.new("Final Execution Id", "euronext.optiq.orderentrygateway.sbe.v4.5.finalexecutionid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.final_symbol_index = ProtoField.new("Final Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.5.finalsymbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.firm_id = ProtoField.new("Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.5.firmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.firm_id_optional = ProtoField.new("Firm Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.firmidoptional", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.firm_id_publication = ProtoField.new("Firm Id Publication", "euronext.optiq.orderentrygateway.sbe.v4.5.firmidpublication", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.first_trade_price = ProtoField.new("First Trade Price", "euronext.optiq.orderentrygateway.sbe.v4.5.firsttradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.frame = ProtoField.new("Frame", "euronext.optiq.orderentrygateway.sbe.v4.5.frame", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.free_text = ProtoField.new("Free Text", "euronext.optiq.orderentrygateway.sbe.v4.5.freetext", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.free_text_cross = ProtoField.new("Free Text Cross", "euronext.optiq.orderentrygateway.sbe.v4.5.freetextcross", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.free_text_section_group = ProtoField.new("Free Text Section Group", "euronext.optiq.orderentrygateway.sbe.v4.5.freetextsectiongroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.free_text_section_groups = ProtoField.new("Free Text Section Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.freetextsectiongroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.frmaramplp = ProtoField.new("Frmaramplp", "euronext.optiq.orderentrygateway.sbe.v4.5.frmaramplp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.fund_price_input_ack_message = ProtoField.new("Fund Price Input Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.fundpriceinputackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.fund_price_input_message = ProtoField.new("Fund Price Input Message", "euronext.optiq.orderentrygateway.sbe.v4.5.fundpriceinputmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.gross_trade_amount = ProtoField.new("Gross Trade Amount", "euronext.optiq.orderentrygateway.sbe.v4.5.grosstradeamount", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "euronext.optiq.orderentrygateway.sbe.v4.5.groupsizeencoding", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.guarantee_flag = ProtoField.new("Guarantee Flag", "euronext.optiq.orderentrygateway.sbe.v4.5.guaranteeflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.guarantee_flag_optional = ProtoField.new("Guarantee Flag Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.guaranteeflagoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.holdings = ProtoField.new("Holdings", "euronext.optiq.orderentrygateway.sbe.v4.5.holdings", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ilqd = ProtoField.new("Ilqd", "euronext.optiq.orderentrygateway.sbe.v4.5.ilqd", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.input_price_type = ProtoField.new("Input Price Type", "euronext.optiq.orderentrygateway.sbe.v4.5.inputpricetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.orderentrygateway.sbe.v4.5.instrumentgroupcode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.instrument_synchronization_list_message = ProtoField.new("Instrument Synchronization List Message", "euronext.optiq.orderentrygateway.sbe.v4.5.instrumentsynchronizationlistmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.instrument_synchronization_section_group = ProtoField.new("Instrument Synchronization Section Group", "euronext.optiq.orderentrygateway.sbe.v4.5.instrumentsynchronizationsectiongroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.instrument_synchronization_section_groups = ProtoField.new("Instrument Synchronization Section Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.instrumentsynchronizationsectiongroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.interest_lists = ProtoField.new("Interest Lists", "euronext.optiq.orderentrygateway.sbe.v4.5.interestlists", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.internal_1 = ProtoField.new("Internal 1", "euronext.optiq.orderentrygateway.sbe.v4.5.internal1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.internal_2 = ProtoField.new("Internal 2", "euronext.optiq.orderentrygateway.sbe.v4.5.internal2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.investment_algo_indicator = ProtoField.new("Investment Algo Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.investmentalgoindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.investment_decision_w_firm_short_code = ProtoField.new("Investment Decision W Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.5.investmentdecisionwfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_id = ProtoField.new("Ioi Id", "euronext.optiq.orderentrygateway.sbe.v4.5.ioiid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_id_optional = ProtoField.new("Ioi Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.ioiidoptional", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_quality_indication = ProtoField.new("Ioi Quality Indication", "euronext.optiq.orderentrygateway.sbe.v4.5.ioiqualityindication", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_quantity = ProtoField.new("Ioi Quantity", "euronext.optiq.orderentrygateway.sbe.v4.5.ioiquantity", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_side = ProtoField.new("Ioi Side", "euronext.optiq.orderentrygateway.sbe.v4.5.ioiside", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_transaction_type = ProtoField.new("Ioi Transaction Type", "euronext.optiq.orderentrygateway.sbe.v4.5.ioitransactiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_type = ProtoField.new("Ioi Type", "euronext.optiq.orderentrygateway.sbe.v4.5.ioitype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.kill_message = ProtoField.new("Kill Message", "euronext.optiq.orderentrygateway.sbe.v4.5.killmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.kill_reason = ProtoField.new("Kill Reason", "euronext.optiq.orderentrygateway.sbe.v4.5.killreason", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_book_in_time = ProtoField.new("Last Book In Time", "euronext.optiq.orderentrygateway.sbe.v4.5.lastbookintime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_cl_msg_seq_num = ProtoField.new("Last Cl Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.5.lastclmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_msg_seq_num = ProtoField.new("Last Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.5.lastmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_msg_seq_num_optional = ProtoField.new("Last Msg Seq Num Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.lastmsgseqnumoptional", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_shares = ProtoField.new("Last Shares", "euronext.optiq.orderentrygateway.sbe.v4.5.lastshares", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_traded_px = ProtoField.new("Last Traded Px", "euronext.optiq.orderentrygateway.sbe.v4.5.lasttradedpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_traded_quantity = ProtoField.new("Last Traded Quantity", "euronext.optiq.orderentrygateway.sbe.v4.5.lasttradedquantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leaves_qty = ProtoField.new("Leaves Qty", "euronext.optiq.orderentrygateway.sbe.v4.5.leavesqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_1 = ProtoField.new("Leg 1", "euronext.optiq.orderentrygateway.sbe.v4.5.leg1", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_2 = ProtoField.new("Leg 2", "euronext.optiq.orderentrygateway.sbe.v4.5.leg2", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_3 = ProtoField.new("Leg 3", "euronext.optiq.orderentrygateway.sbe.v4.5.leg3", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_4 = ProtoField.new("Leg 4", "euronext.optiq.orderentrygateway.sbe.v4.5.leg4", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_5 = ProtoField.new("Leg 5", "euronext.optiq.orderentrygateway.sbe.v4.5.leg5", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_6 = ProtoField.new("Leg 6", "euronext.optiq.orderentrygateway.sbe.v4.5.leg6", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_7 = ProtoField.new("Leg 7", "euronext.optiq.orderentrygateway.sbe.v4.5.leg7", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_8 = ProtoField.new("Leg 8", "euronext.optiq.orderentrygateway.sbe.v4.5.leg8", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_9 = ProtoField.new("Leg 9", "euronext.optiq.orderentrygateway.sbe.v4.5.leg9", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_bid_order_id = ProtoField.new("Leg Bid Order Id", "euronext.optiq.orderentrygateway.sbe.v4.5.legbidorderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_error_code = ProtoField.new("Leg Error Code", "euronext.optiq.orderentrygateway.sbe.v4.5.legerrorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "euronext.optiq.orderentrygateway.sbe.v4.5.leginstrumentid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_last_px = ProtoField.new("Leg Last Px", "euronext.optiq.orderentrygateway.sbe.v4.5.leglastpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "euronext.optiq.orderentrygateway.sbe.v4.5.leglastqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_last_trading_date = ProtoField.new("Leg Last Trading Date", "euronext.optiq.orderentrygateway.sbe.v4.5.leglasttradingdate", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_offer_order_id = ProtoField.new("Leg Offer Order Id", "euronext.optiq.orderentrygateway.sbe.v4.5.legofferorderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_price = ProtoField.new("Leg Price", "euronext.optiq.orderentrygateway.sbe.v4.5.legprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_price_optional = ProtoField.new("Leg Price Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.legpriceoptional", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_put_or_call = ProtoField.new("Leg Put Or Call", "euronext.optiq.orderentrygateway.sbe.v4.5.legputorcall", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_ratio = ProtoField.new("Leg Ratio", "euronext.optiq.orderentrygateway.sbe.v4.5.legratio", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_ratio_optional = ProtoField.new("Leg Ratio Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.legratiooptional", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_security_type = ProtoField.new("Leg Security Type", "euronext.optiq.orderentrygateway.sbe.v4.5.legsecuritytype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_side = ProtoField.new("Leg Side", "euronext.optiq.orderentrygateway.sbe.v4.5.legside", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_side_optional = ProtoField.new("Leg Side Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.legsideoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_strike_price = ProtoField.new("Leg Strike Price", "euronext.optiq.orderentrygateway.sbe.v4.5.legstrikeprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_symbol_index = ProtoField.new("Leg Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.5.legsymbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.liquidity_provider_command_message = ProtoField.new("Liquidity Provider Command Message", "euronext.optiq.orderentrygateway.sbe.v4.5.liquidityprovidercommandmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.lis_transaction_id = ProtoField.new("Lis Transaction Id", "euronext.optiq.orderentrygateway.sbe.v4.5.listransactionid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.local_community_of_specialist_ams = ProtoField.new("Local Community Of Specialist Ams", "euronext.optiq.orderentrygateway.sbe.v4.5.localcommunityofspecialistams", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.local_community_of_specialist_bru = ProtoField.new("Local Community Of Specialist Bru", "euronext.optiq.orderentrygateway.sbe.v4.5.localcommunityofspecialistbru", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.local_community_of_specialist_lis = ProtoField.new("Local Community Of Specialist Lis", "euronext.optiq.orderentrygateway.sbe.v4.5.localcommunityofspecialistlis", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.local_community_of_specialist_par = ProtoField.new("Local Community Of Specialist Par", "euronext.optiq.orderentrygateway.sbe.v4.5.localcommunityofspecialistpar", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.log_out_reason_code = ProtoField.new("Log Out Reason Code", "euronext.optiq.orderentrygateway.sbe.v4.5.logoutreasoncode", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.logical_access_id = ProtoField.new("Logical Access Id", "euronext.optiq.orderentrygateway.sbe.v4.5.logicalaccessid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.logon_ack_message = ProtoField.new("Logon Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.logonackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.logon_message = ProtoField.new("Logon Message", "euronext.optiq.orderentrygateway.sbe.v4.5.logonmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.logon_reject_code = ProtoField.new("Logon Reject Code", "euronext.optiq.orderentrygateway.sbe.v4.5.logonrejectcode", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.logon_reject_message = ProtoField.new("Logon Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.5.logonrejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.logout_message = ProtoField.new("Logout Message", "euronext.optiq.orderentrygateway.sbe.v4.5.logoutmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.long_client_id = ProtoField.new("Long Client Id", "euronext.optiq.orderentrygateway.sbe.v4.5.longclientid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.lp_action_code = ProtoField.new("Lp Action Code", "euronext.optiq.orderentrygateway.sbe.v4.5.lpactioncode", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.lp_role = ProtoField.new("Lp Role", "euronext.optiq.orderentrygateway.sbe.v4.5.lprole", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.lp_role_optional = ProtoField.new("Lp Role Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.lproleoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.lrgs = ProtoField.new("Lrgs", "euronext.optiq.orderentrygateway.sbe.v4.5.lrgs", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mass_cancel_ack_message = ProtoField.new("Mass Cancel Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.masscancelackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "euronext.optiq.orderentrygateway.sbe.v4.5.masscancelmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.maturity = ProtoField.new("Maturity", "euronext.optiq.orderentrygateway.sbe.v4.5.maturity", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.message = ProtoField.new("Message", "euronext.optiq.orderentrygateway.sbe.v4.5.message", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.orderentrygateway.sbe.v4.5.messageheader", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.orderentrygateway.sbe.v4.5.messagepricenotation", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mi_cof_secondary_listing = ProtoField.new("Mi Cof Secondary Listing", "euronext.optiq.orderentrygateway.sbe.v4.5.micofsecondarylisting", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_fields_group = ProtoField.new("Mifid Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.5.mifidfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_fields_groups = ProtoField.new("Mifid Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.mifidfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_indicators = ProtoField.new("Mifid Indicators", "euronext.optiq.orderentrygateway.sbe.v4.5.mifidindicators", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_indicators_optional = ProtoField.new("Mifid Indicators Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.mifidindicatorsoptional", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_short_codes_group = ProtoField.new("Mifid Short Codes Group", "euronext.optiq.orderentrygateway.sbe.v4.5.mifidshortcodesgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_short_codes_groups = ProtoField.new("Mifid Short Codes Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.mifidshortcodesgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.min_order_qty = ProtoField.new("Min Order Qty", "euronext.optiq.orderentrygateway.sbe.v4.5.minorderqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.minimum_order_quantity = ProtoField.new("Minimum Order Quantity", "euronext.optiq.orderentrygateway.sbe.v4.5.minimumorderquantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.minimum_quantity_type = ProtoField.new("Minimum Quantity Type", "euronext.optiq.orderentrygateway.sbe.v4.5.minimumquantitytype", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.miscellaneous_fee_amount = ProtoField.new("Miscellaneous Fee Amount", "euronext.optiq.orderentrygateway.sbe.v4.5.miscellaneousfeeamount", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mm_protection_ack_message = ProtoField.new("Mm Protection Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.mmprotectionackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mm_protection_request_message = ProtoField.new("Mm Protection Request Message", "euronext.optiq.orderentrygateway.sbe.v4.5.mmprotectionrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mm_sign_in_ack_message = ProtoField.new("Mm Sign In Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.mmsigninackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mm_sign_in_message = ProtoField.new("Mm Sign In Message", "euronext.optiq.orderentrygateway.sbe.v4.5.mmsigninmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_execution_type = ProtoField.new("Mmp Execution Type", "euronext.optiq.orderentrygateway.sbe.v4.5.mmpexecutiontype", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_section_group = ProtoField.new("Mmp Section Group", "euronext.optiq.orderentrygateway.sbe.v4.5.mmpsectiongroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_section_groups = ProtoField.new("Mmp Section Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.mmpsectiongroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_section2_group = ProtoField.new("Mmp Section2 Group", "euronext.optiq.orderentrygateway.sbe.v4.5.mmpsection2group", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_section2_groups = ProtoField.new("Mmp Section2 Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.mmpsection2groups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.5.msgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.nav_trade_expressed_in_bps = ProtoField.new("Nav Trade Expressed In Bps", "euronext.optiq.orderentrygateway.sbe.v4.5.navtradeexpressedinbps", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.nav_trade_expressed_in_price_currency = ProtoField.new("Nav Trade Expressed In Price Currency", "euronext.optiq.orderentrygateway.sbe.v4.5.navtradeexpressedinpricecurrency", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.new_order_message = ProtoField.new("New Order Message", "euronext.optiq.orderentrygateway.sbe.v4.5.newordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.new_wholesale_order_message = ProtoField.new("New Wholesale Order Message", "euronext.optiq.orderentrygateway.sbe.v4.5.newwholesaleordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.nliq = ProtoField.new("Nliq", "euronext.optiq.orderentrygateway.sbe.v4.5.nliq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.non_executing_broker_short_code = ProtoField.new("Non Executing Broker Short Code", "euronext.optiq.orderentrygateway.sbe.v4.5.nonexecutingbrokershortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.non_executing_client_id = ProtoField.new("Non Executing Client Id", "euronext.optiq.orderentrygateway.sbe.v4.5.nonexecutingclientid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.not_used_group_1_groups = ProtoField.new("Not Used Group 1 Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.notusedgroup1groups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.not_used_group_2_groups = ProtoField.new("Not Used Group 2 Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.notusedgroup2groups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.notification = ProtoField.new("Notification", "euronext.optiq.orderentrygateway.sbe.v4.5.notification", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.num_in_group = ProtoField.new("Num In Group", "euronext.optiq.orderentrygateway.sbe.v4.5.numingroup", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.number_of_lps = ProtoField.new("Number Of Lps", "euronext.optiq.orderentrygateway.sbe.v4.5.numberoflps", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oe_partition_id = ProtoField.new("Oe Partition Id", "euronext.optiq.orderentrygateway.sbe.v4.5.oepartitionid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oe_partition_id_optional = ProtoField.new("Oe Partition Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.oepartitionidoptional", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_in_from_me = ProtoField.new("Oeg In From Me", "euronext.optiq.orderentrygateway.sbe.v4.5.oeginfromme", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_in_from_me_optional = ProtoField.new("Oeg In From Me Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.oeginfrommeoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_in_from_member = ProtoField.new("Oeg In From Member", "euronext.optiq.orderentrygateway.sbe.v4.5.oeginfrommember", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_out_time_to_me = ProtoField.new("Oeg Out Time To Me", "euronext.optiq.orderentrygateway.sbe.v4.5.oegouttimetome", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_out_to_member = ProtoField.new("Oeg Out To Member", "euronext.optiq.orderentrygateway.sbe.v4.5.oegouttomember", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_out_to_member_optional = ProtoField.new("Oeg Out To Member Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.oegouttomemberoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_error_code = ProtoField.new("Offer Error Code", "euronext.optiq.orderentrygateway.sbe.v4.5.offererrorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_order_id = ProtoField.new("Offer Order Id", "euronext.optiq.orderentrygateway.sbe.v4.5.offerorderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_px = ProtoField.new("Offer Px", "euronext.optiq.orderentrygateway.sbe.v4.5.offerpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_quantity = ProtoField.new("Offer Quantity", "euronext.optiq.orderentrygateway.sbe.v4.5.offerquantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_size = ProtoField.new("Offer Size", "euronext.optiq.orderentrygateway.sbe.v4.5.offersize", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.oilq = ProtoField.new("Oilq", "euronext.optiq.orderentrygateway.sbe.v4.5.oilq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.omf = ProtoField.new("Omf", "euronext.optiq.orderentrygateway.sbe.v4.5.omf", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.open_close = ProtoField.new("Open Close", "euronext.optiq.orderentrygateway.sbe.v4.5.openclose", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.open_order_request_message = ProtoField.new("Open Order Request Message", "euronext.optiq.orderentrygateway.sbe.v4.5.openorderrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.operation_type = ProtoField.new("Operation Type", "euronext.optiq.orderentrygateway.sbe.v4.5.operationtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.orderentrygateway.sbe.v4.5.optiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_derivatives_group = ProtoField.new("Optional Fields Derivatives Group", "euronext.optiq.orderentrygateway.sbe.v4.5.optionalfieldsderivativesgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_derivatives_groups = ProtoField.new("Optional Fields Derivatives Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.optionalfieldsderivativesgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_fill_group = ProtoField.new("Optional Fields Fill Group", "euronext.optiq.orderentrygateway.sbe.v4.5.optionalfieldsfillgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_fill_groups = ProtoField.new("Optional Fields Fill Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.optionalfieldsfillgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_group = ProtoField.new("Optional Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.5.optionalfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_groups = ProtoField.new("Optional Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.optionalfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_actor_type = ProtoField.new("Order Actor Type", "euronext.optiq.orderentrygateway.sbe.v4.5.orderactortype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_category = ProtoField.new("Order Category", "euronext.optiq.orderentrygateway.sbe.v4.5.ordercategory", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_expiration_date = ProtoField.new("Order Expiration Date", "euronext.optiq.orderentrygateway.sbe.v4.5.orderexpirationdate", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_expiration_time = ProtoField.new("Order Expiration Time", "euronext.optiq.orderentrygateway.sbe.v4.5.orderexpirationtime", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_id = ProtoField.new("Order Id", "euronext.optiq.orderentrygateway.sbe.v4.5.orderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_id_optional = ProtoField.new("Order Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.orderidoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_origin = ProtoField.new("Order Origin", "euronext.optiq.orderentrygateway.sbe.v4.5.orderorigin", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_price = ProtoField.new("Order Price", "euronext.optiq.orderentrygateway.sbe.v4.5.orderprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.orderentrygateway.sbe.v4.5.orderpriority", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.orderentrygateway.sbe.v4.5.orderpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_px_optional = ProtoField.new("Order Px Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.orderpxoptional", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_qty = ProtoField.new("Order Qty", "euronext.optiq.orderentrygateway.sbe.v4.5.orderqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.orderqtyoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_quantity = ProtoField.new("Order Quantity", "euronext.optiq.orderentrygateway.sbe.v4.5.orderquantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_size_limit = ProtoField.new("Order Size Limit", "euronext.optiq.orderentrygateway.sbe.v4.5.ordersizelimit", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.orderentrygateway.sbe.v4.5.ordertype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.orig_client_order_id = ProtoField.new("Orig Client Order Id", "euronext.optiq.orderentrygateway.sbe.v4.5.origclientorderid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.original_ioiid = ProtoField.new("Original Ioiid", "euronext.optiq.orderentrygateway.sbe.v4.5.originalioiid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.other_leg_last_px = ProtoField.new("Other Leg Last Px", "euronext.optiq.orderentrygateway.sbe.v4.5.otherleglastpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ownership_request_ack_message = ProtoField.new("Ownership Request Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.ownershiprequestackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.ownership_request_message = ProtoField.new("Ownership Request Message", "euronext.optiq.orderentrygateway.sbe.v4.5.ownershiprequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.package_id = ProtoField.new("Package Id", "euronext.optiq.orderentrygateway.sbe.v4.5.packageid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.packet = ProtoField.new("Packet", "euronext.optiq.orderentrygateway.sbe.v4.5.packet", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.parent_exec_id = ProtoField.new("Parent Exec Id", "euronext.optiq.orderentrygateway.sbe.v4.5.parentexecid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.parent_symbol_index = ProtoField.new("Parent Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.5.parentsymbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.passive_order = ProtoField.new("Passive Order", "euronext.optiq.orderentrygateway.sbe.v4.5.passiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.payload = ProtoField.new("Payload", "euronext.optiq.orderentrygateway.sbe.v4.5.payload", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.peg_offset = ProtoField.new("Peg Offset", "euronext.optiq.orderentrygateway.sbe.v4.5.pegoffset", ftypes.INT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.potential_matching_px = ProtoField.new("Potential Matching Px", "euronext.optiq.orderentrygateway.sbe.v4.5.potentialmatchingpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.potential_matching_qty = ProtoField.new("Potential Matching Qty", "euronext.optiq.orderentrygateway.sbe.v4.5.potentialmatchingqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.pre_matching_type = ProtoField.new("Pre Matching Type", "euronext.optiq.orderentrygateway.sbe.v4.5.prematchingtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.previous_day_indicator = ProtoField.new("Previous Day Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.previousdayindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.pric = ProtoField.new("Pric", "euronext.optiq.orderentrygateway.sbe.v4.5.pric", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.price = ProtoField.new("Price", "euronext.optiq.orderentrygateway.sbe.v4.5.price", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.price_input_message = ProtoField.new("Price Input Message", "euronext.optiq.orderentrygateway.sbe.v4.5.priceinputmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.price_optional = ProtoField.new("Price Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.priceoptional", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.principal_code = ProtoField.new("Principal Code", "euronext.optiq.orderentrygateway.sbe.v4.5.principalcode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.principal_code_cross = ProtoField.new("Principal Code Cross", "euronext.optiq.orderentrygateway.sbe.v4.5.principalcodecross", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.protection_threshold = ProtoField.new("Protection Threshold", "euronext.optiq.orderentrygateway.sbe.v4.5.protectionthreshold", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.protection_type = ProtoField.new("Protection Type", "euronext.optiq.orderentrygateway.sbe.v4.5.protectiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.protection_type_optional = ProtoField.new("Protection Type Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.protectiontypeoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.pull = ProtoField.new("Pull", "euronext.optiq.orderentrygateway.sbe.v4.5.pull", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quality_of_sell_side_counterparty = ProtoField.new("Quality Of Sell Side Counterparty", "euronext.optiq.orderentrygateway.sbe.v4.5.qualityofsellsidecounterparty", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.orderentrygateway.sbe.v4.5.quantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quantity_optional = ProtoField.new("Quantity Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.quantityoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.queue_indicator = ProtoField.new("Queue Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.queueindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.queueing_indicator = ProtoField.new("Queueing Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.queueingindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_ack_message = ProtoField.new("Quote Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.quoteackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_acks_group = ProtoField.new("Quote Acks Group", "euronext.optiq.orderentrygateway.sbe.v4.5.quoteacksgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_acks_groups = ProtoField.new("Quote Acks Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.quoteacksgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_req_id = ProtoField.new("Quote Req Id", "euronext.optiq.orderentrygateway.sbe.v4.5.quotereqid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_req_id_optional = ProtoField.new("Quote Req Id Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.quotereqidoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_request_message = ProtoField.new("Quote Request Message", "euronext.optiq.orderentrygateway.sbe.v4.5.quoterequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quotes_message = ProtoField.new("Quotes Message", "euronext.optiq.orderentrygateway.sbe.v4.5.quotesmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quotes_rep_group = ProtoField.new("Quotes Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.5.quotesrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.quotes_rep_groups = ProtoField.new("Quotes Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.quotesrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.recipient_type = ProtoField.new("Recipient Type", "euronext.optiq.orderentrygateway.sbe.v4.5.recipienttype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.reject_message = ProtoField.new("Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.5.rejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rejected_client_message_sequence_number = ProtoField.new("Rejected Client Message Sequence Number", "euronext.optiq.orderentrygateway.sbe.v4.5.rejectedclientmessagesequencenumber", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rejected_message = ProtoField.new("Rejected Message", "euronext.optiq.orderentrygateway.sbe.v4.5.rejectedmessage", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rejected_message_id = ProtoField.new("Rejected Message Id", "euronext.optiq.orderentrygateway.sbe.v4.5.rejectedmessageid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_for_execution_message = ProtoField.new("Request For Execution Message", "euronext.optiq.orderentrygateway.sbe.v4.5.requestforexecutionmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_for_implied_execution_message = ProtoField.new("Request For Implied Execution Message", "euronext.optiq.orderentrygateway.sbe.v4.5.requestforimpliedexecutionmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_type = ProtoField.new("Request Type", "euronext.optiq.orderentrygateway.sbe.v4.5.requesttype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_with_client_order_id = ProtoField.new("Request With Client Order Id", "euronext.optiq.orderentrygateway.sbe.v4.5.requestwithclientorderid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_1 = ProtoField.new("Reserved 1", "euronext.optiq.orderentrygateway.sbe.v4.5.reserved1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_2 = ProtoField.new("Reserved 2", "euronext.optiq.orderentrygateway.sbe.v4.5.reserved2", ftypes.UINT8, nil, base.DEC, 0xC0)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_3 = ProtoField.new("Reserved 3", "euronext.optiq.orderentrygateway.sbe.v4.5.reserved3", ftypes.UINT8, nil, base.DEC, 0xE0)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_5 = ProtoField.new("Reserved 5", "euronext.optiq.orderentrygateway.sbe.v4.5.reserved5", ftypes.UINT8, nil, base.DEC, 0xF8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_6 = ProtoField.new("Reserved 6", "euronext.optiq.orderentrygateway.sbe.v4.5.reserved6", ftypes.UINT16, nil, base.DEC, 0xFC00)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.response_type = ProtoField.new("Response Type", "euronext.optiq.orderentrygateway.sbe.v4.5.responsetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.resynchronization_id = ProtoField.new("Resynchronization Id", "euronext.optiq.orderentrygateway.sbe.v4.5.resynchronizationid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfe_answer = ProtoField.new("Rfe Answer", "euronext.optiq.orderentrygateway.sbe.v4.5.rfeanswer", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfpt = ProtoField.new("Rfpt", "euronext.optiq.orderentrygateway.sbe.v4.5.rfpt", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_answer = ProtoField.new("Rfq Answer", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqanswer", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_audit_message = ProtoField.new("Rfq Audit Message", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqauditmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_confirmation = ProtoField.new("Rfq Confirmation", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqconfirmation", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_counterparts_group = ProtoField.new("Rfq Counterparts Group", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqcounterpartsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_counterparts_groups = ProtoField.new("Rfq Counterparts Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqcounterpartsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_matching_status_message = ProtoField.new("Rfq Matching Status Message", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqmatchingstatusmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_notification_message = ProtoField.new("Rfq Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqnotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_update_type = ProtoField.new("Rfq Update Type", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqupdatetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfqlp_matching_status_message = ProtoField.new("Rfqlp Matching Status Message", "euronext.optiq.orderentrygateway.sbe.v4.5.rfqlpmatchingstatusmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.orderentrygateway.sbe.v4.5.schemaid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.security_definition_ack_message = ProtoField.new("Security Definition Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.securitydefinitionackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "euronext.optiq.orderentrygateway.sbe.v4.5.securitydefinitionrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.security_req_id = ProtoField.new("Security Req Id", "euronext.optiq.orderentrygateway.sbe.v4.5.securityreqid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.sell_revision_flag = ProtoField.new("Sell Revision Flag", "euronext.optiq.orderentrygateway.sbe.v4.5.sellrevisionflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.sell_side = ProtoField.new("Sell Side", "euronext.optiq.orderentrygateway.sbe.v4.5.sellside", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.sending_time = ProtoField.new("Sending Time", "euronext.optiq.orderentrygateway.sbe.v4.5.sendingtime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.sending_time_optional = ProtoField.new("Sending Time Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.sendingtimeoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.session_1 = ProtoField.new("Session 1", "euronext.optiq.orderentrygateway.sbe.v4.5.session1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.session_2 = ProtoField.new("Session 2", "euronext.optiq.orderentrygateway.sbe.v4.5.session2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.session_3 = ProtoField.new("Session 3", "euronext.optiq.orderentrygateway.sbe.v4.5.session3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.session_4 = ProtoField.new("Session 4", "euronext.optiq.orderentrygateway.sbe.v4.5.session4", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.settlement_flag = ProtoField.new("Settlement Flag", "euronext.optiq.orderentrygateway.sbe.v4.5.settlementflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.settlement_flag_optional = ProtoField.new("Settlement Flag Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.settlementflagoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.settlement_period = ProtoField.new("Settlement Period", "euronext.optiq.orderentrygateway.sbe.v4.5.settlementperiod", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.settlement_period_optional = ProtoField.new("Settlement Period Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.settlementperiodoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.side = ProtoField.new("Side", "euronext.optiq.orderentrygateway.sbe.v4.5.side", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.side_optional = ProtoField.new("Side Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.sideoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.size = ProtoField.new("Size", "euronext.optiq.orderentrygateway.sbe.v4.5.size", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.software_provider = ProtoField.new("Software Provider", "euronext.optiq.orderentrygateway.sbe.v4.5.softwareprovider", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.orderentrygateway.sbe.v4.5.starttimevwap", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.stop_px = ProtoField.new("Stop Px", "euronext.optiq.orderentrygateway.sbe.v4.5.stoppx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.stop_triggered_time_in_force = ProtoField.new("Stop Triggered Time In Force", "euronext.optiq.orderentrygateway.sbe.v4.5.stoptriggeredtimeinforce", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.stp_incoming_order = ProtoField.new("Stp Incoming Order", "euronext.optiq.orderentrygateway.sbe.v4.5.stpincomingorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.stp_resting_order = ProtoField.new("Stp Resting Order", "euronext.optiq.orderentrygateway.sbe.v4.5.stprestingorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.stpid = ProtoField.new("Stpid", "euronext.optiq.orderentrygateway.sbe.v4.5.stpid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_code = ProtoField.new("Strategy Code", "euronext.optiq.orderentrygateway.sbe.v4.5.strategycode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_code_optional = ProtoField.new("Strategy Code Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.strategycodeoptional", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_fields_group = ProtoField.new("Strategy Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.5.strategyfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_fields_groups = ProtoField.new("Strategy Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.strategyfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_legs_group = ProtoField.new("Strategy Legs Group", "euronext.optiq.orderentrygateway.sbe.v4.5.strategylegsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_legs_groups = ProtoField.new("Strategy Legs Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.strategylegsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.sweep_order_indicator = ProtoField.new("Sweep Order Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.sweeporderindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.5.symbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.symbol_index_optional = ProtoField.new("Symbol Index Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.symbolindexoptional", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.synchronization_time_message = ProtoField.new("Synchronization Time Message", "euronext.optiq.orderentrygateway.sbe.v4.5.synchronizationtimemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.target_counterparties = ProtoField.new("Target Counterparties", "euronext.optiq.orderentrygateway.sbe.v4.5.targetcounterparties", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.target_execution_within_firm_short_code = ProtoField.new("Target Execution Within Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.5.targetexecutionwithinfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.technical_origin = ProtoField.new("Technical Origin", "euronext.optiq.orderentrygateway.sbe.v4.5.technicalorigin", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.technical_reject_message = ProtoField.new("Technical Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.5.technicalrejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.orderentrygateway.sbe.v4.5.templateid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.time_in_force = ProtoField.new("Time In Force", "euronext.optiq.orderentrygateway.sbe.v4.5.timeinforce", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "euronext.optiq.orderentrygateway.sbe.v4.5.totalaffectedorders", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_bust_notification_message = ProtoField.new("Trade Bust Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.5.tradebustnotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_creation_by_market_operations = ProtoField.new("Trade Creation By Market Operations", "euronext.optiq.orderentrygateway.sbe.v4.5.tradecreationbymarketoperations", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.orderentrygateway.sbe.v4.5.tradequalifier", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_time = ProtoField.new("Trade Time", "euronext.optiq.orderentrygateway.sbe.v4.5.tradetime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_time_optional = ProtoField.new("Trade Time Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.tradetimeoptional", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.orderentrygateway.sbe.v4.5.tradetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trading_capacity = ProtoField.new("Trading Capacity", "euronext.optiq.orderentrygateway.sbe.v4.5.tradingcapacity", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trading_capacity_cross = ProtoField.new("Trading Capacity Cross", "euronext.optiq.orderentrygateway.sbe.v4.5.tradingcapacitycross", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trading_capacity_optional = ProtoField.new("Trading Capacity Optional", "euronext.optiq.orderentrygateway.sbe.v4.5.tradingcapacityoptional", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.trading_session = ProtoField.new("Trading Session", "euronext.optiq.orderentrygateway.sbe.v4.5.tradingsession", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.transaction_price_type = ProtoField.new("Transaction Price Type", "euronext.optiq.orderentrygateway.sbe.v4.5.transactionpricetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.uncrossing_trade = ProtoField.new("Uncrossing Trade", "euronext.optiq.orderentrygateway.sbe.v4.5.uncrossingtrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "euronext.optiq.orderentrygateway.sbe.v4.5.underlyinginstrumentid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.undisclosed_iceberg_type = ProtoField.new("Undisclosed Iceberg Type", "euronext.optiq.orderentrygateway.sbe.v4.5.undisclosedicebergtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.undisclosed_price = ProtoField.new("Undisclosed Price", "euronext.optiq.orderentrygateway.sbe.v4.5.undisclosedprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.use_of_cross_partition = ProtoField.new("Use Of Cross Partition", "euronext.optiq.orderentrygateway.sbe.v4.5.useofcrosspartition", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.user_notification_message = ProtoField.new("User Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.5.usernotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.user_status = ProtoField.new("User Status", "euronext.optiq.orderentrygateway.sbe.v4.5.userstatus", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.version = ProtoField.new("Version", "euronext.optiq.orderentrygateway.sbe.v4.5.version", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.waiver_indicator = ProtoField.new("Waiver Indicator", "euronext.optiq.orderentrygateway.sbe.v4.5.waiverindicator", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wave_for_liquidity_message = ProtoField.new("Wave For Liquidity Message", "euronext.optiq.orderentrygateway.sbe.v4.5.waveforliquiditymessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wave_for_liquidity_notification_message = ProtoField.new("Wave For Liquidity Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.5.waveforliquiditynotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_ack_clearing_rep_group = ProtoField.new("Wholesale Ack Clearing Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaleackclearingrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_ack_clearing_rep_groups = ProtoField.new("Wholesale Ack Clearing Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaleackclearingrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_ack_legs_rep_group = ProtoField.new("Wholesale Ack Legs Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaleacklegsrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_ack_legs_rep_groups = ProtoField.new("Wholesale Ack Legs Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaleacklegsrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_client_rep_group = ProtoField.new("Wholesale Client Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaleclientrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_client_rep_groups = ProtoField.new("Wholesale Client Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaleclientrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_legs_rep_group = ProtoField.new("Wholesale Legs Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesalelegsrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_legs_rep_groups = ProtoField.new("Wholesale Legs Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesalelegsrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_order_ack_message = ProtoField.new("Wholesale Order Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaleorderackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_side = ProtoField.new("Wholesale Side", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaleside", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_trade_type = ProtoField.new("Wholesale Trade Type", "euronext.optiq.orderentrygateway.sbe.v4.5.wholesaletradetype", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 4.5 Element Dissection Options
show.ack_message = true
show.ack_qualifiers = true
show.ack_qualifiers_optional = true
show.additional_infos_group = true
show.additional_infos_groups = true
show.ask_for_quote_message = true
show.cancel_replace_message = true
show.cancel_request_message = true
show.clearing_dataset_group = true
show.clearing_dataset_groups = true
show.clearing_fields_group = true
show.clearing_fields_groups = true
show.clearing_fields_x_group = true
show.clearing_fields_x_groups = true
show.collar_breach_confirmation_message = true
show.collar_fields_group = true
show.collar_fields_groups = true
show.cross_order_message = true
show.dark_execution_instruction = true
show.dark_execution_instruction_optional = true
show.declaration_cancel_and_refusal_message = true
show.declaration_entry_ack_message = true
show.declaration_entry_message = true
show.declaration_entry_reject_message = true
show.declaration_notice_message = true
show.execution_instruction = true
show.execution_instruction_optional = true
show.fill_message = true
show.free_text_section_group = true
show.free_text_section_groups = true
show.fund_price_input_ack_message = true
show.fund_price_input_message = true
show.group_size_encoding = true
show.instrument_synchronization_list_message = true
show.instrument_synchronization_section_group = true
show.instrument_synchronization_section_groups = true
show.kill_message = true
show.liquidity_provider_command_message = true
show.logon_ack_message = true
show.logon_message = true
show.logon_reject_message = true
show.logout_message = true
show.mass_cancel_ack_message = true
show.mass_cancel_message = true
show.message = true
show.message_header = true
show.mifid_fields_group = true
show.mifid_fields_groups = true
show.mifid_indicators = true
show.mifid_indicators_optional = true
show.mifid_short_codes_group = true
show.mifid_short_codes_groups = true
show.mm_protection_ack_message = true
show.mm_protection_request_message = true
show.mm_sign_in_ack_message = true
show.mm_sign_in_message = true
show.mmp_execution_type = true
show.mmp_section_group = true
show.mmp_section_groups = true
show.mmp_section2_group = true
show.mmp_section2_groups = true
show.new_order_message = true
show.new_wholesale_order_message = true
show.not_used_group_1_groups = true
show.not_used_group_2_groups = true
show.open_close = true
show.open_order_request_message = true
show.optional_fields_derivatives_group = true
show.optional_fields_derivatives_groups = true
show.optional_fields_fill_group = true
show.optional_fields_fill_groups = true
show.optional_fields_group = true
show.optional_fields_groups = true
show.ownership_request_ack_message = true
show.ownership_request_message = true
show.packet = true
show.price_input_message = true
show.quote_ack_message = true
show.quote_acks_group = true
show.quote_acks_groups = true
show.quote_request_message = true
show.quotes_message = true
show.quotes_rep_group = true
show.quotes_rep_groups = true
show.reject_message = true
show.request_for_execution_message = true
show.request_for_implied_execution_message = true
show.rfq_audit_message = true
show.rfq_counterparts_group = true
show.rfq_counterparts_groups = true
show.rfq_matching_status_message = true
show.rfq_notification_message = true
show.rfqlp_matching_status_message = true
show.security_definition_ack_message = true
show.security_definition_request_message = true
show.strategy_fields_group = true
show.strategy_fields_groups = true
show.strategy_legs_group = true
show.strategy_legs_groups = true
show.synchronization_time_message = true
show.target_counterparties = true
show.technical_reject_message = true
show.trade_bust_notification_message = true
show.trade_qualifier = true
show.trading_session = true
show.user_notification_message = true
show.waiver_indicator = true
show.wave_for_liquidity_message = true
show.wave_for_liquidity_notification_message = true
show.wholesale_ack_clearing_rep_group = true
show.wholesale_ack_clearing_rep_groups = true
show.wholesale_ack_legs_rep_group = true
show.wholesale_ack_legs_rep_groups = true
show.wholesale_client_rep_group = true
show.wholesale_client_rep_groups = true
show.wholesale_legs_rep_group = true
show.wholesale_legs_rep_groups = true
show.wholesale_order_ack_message = true
show.payload = false

-- Register Euronext Optiq OrderEntryGateway Sbe 4.5 Show Options
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_message = Pref.bool("Show Ack Message", show.ack_message, "Parse and add Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_qualifiers = Pref.bool("Show Ack Qualifiers", show.ack_qualifiers, "Parse and add Ack Qualifiers to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_qualifiers_optional = Pref.bool("Show Ack Qualifiers Optional", show.ack_qualifiers_optional, "Parse and add Ack Qualifiers Optional to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_additional_infos_group = Pref.bool("Show Additional Infos Group", show.additional_infos_group, "Parse and add Additional Infos Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_additional_infos_groups = Pref.bool("Show Additional Infos Groups", show.additional_infos_groups, "Parse and add Additional Infos Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ask_for_quote_message = Pref.bool("Show Ask For Quote Message", show.ask_for_quote_message, "Parse and add Ask For Quote Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cancel_replace_message = Pref.bool("Show Cancel Replace Message", show.cancel_replace_message, "Parse and add Cancel Replace Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cancel_request_message = Pref.bool("Show Cancel Request Message", show.cancel_request_message, "Parse and add Cancel Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_dataset_group = Pref.bool("Show Clearing Dataset Group", show.clearing_dataset_group, "Parse and add Clearing Dataset Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_dataset_groups = Pref.bool("Show Clearing Dataset Groups", show.clearing_dataset_groups, "Parse and add Clearing Dataset Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_group = Pref.bool("Show Clearing Fields Group", show.clearing_fields_group, "Parse and add Clearing Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_groups = Pref.bool("Show Clearing Fields Groups", show.clearing_fields_groups, "Parse and add Clearing Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_x_group = Pref.bool("Show Clearing Fields X Group", show.clearing_fields_x_group, "Parse and add Clearing Fields X Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_x_groups = Pref.bool("Show Clearing Fields X Groups", show.clearing_fields_x_groups, "Parse and add Clearing Fields X Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_breach_confirmation_message = Pref.bool("Show Collar Breach Confirmation Message", show.collar_breach_confirmation_message, "Parse and add Collar Breach Confirmation Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_fields_group = Pref.bool("Show Collar Fields Group", show.collar_fields_group, "Parse and add Collar Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_fields_groups = Pref.bool("Show Collar Fields Groups", show.collar_fields_groups, "Parse and add Collar Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cross_order_message = Pref.bool("Show Cross Order Message", show.cross_order_message, "Parse and add Cross Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_dark_execution_instruction = Pref.bool("Show Dark Execution Instruction", show.dark_execution_instruction, "Parse and add Dark Execution Instruction to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_dark_execution_instruction_optional = Pref.bool("Show Dark Execution Instruction Optional", show.dark_execution_instruction_optional, "Parse and add Dark Execution Instruction Optional to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_cancel_and_refusal_message = Pref.bool("Show Declaration Cancel And Refusal Message", show.declaration_cancel_and_refusal_message, "Parse and add Declaration Cancel And Refusal Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_ack_message = Pref.bool("Show Declaration Entry Ack Message", show.declaration_entry_ack_message, "Parse and add Declaration Entry Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_message = Pref.bool("Show Declaration Entry Message", show.declaration_entry_message, "Parse and add Declaration Entry Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_reject_message = Pref.bool("Show Declaration Entry Reject Message", show.declaration_entry_reject_message, "Parse and add Declaration Entry Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_notice_message = Pref.bool("Show Declaration Notice Message", show.declaration_notice_message, "Parse and add Declaration Notice Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_execution_instruction = Pref.bool("Show Execution Instruction", show.execution_instruction, "Parse and add Execution Instruction to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_execution_instruction_optional = Pref.bool("Show Execution Instruction Optional", show.execution_instruction_optional, "Parse and add Execution Instruction Optional to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fill_message = Pref.bool("Show Fill Message", show.fill_message, "Parse and add Fill Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_free_text_section_group = Pref.bool("Show Free Text Section Group", show.free_text_section_group, "Parse and add Free Text Section Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_free_text_section_groups = Pref.bool("Show Free Text Section Groups", show.free_text_section_groups, "Parse and add Free Text Section Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fund_price_input_ack_message = Pref.bool("Show Fund Price Input Ack Message", show.fund_price_input_ack_message, "Parse and add Fund Price Input Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fund_price_input_message = Pref.bool("Show Fund Price Input Message", show.fund_price_input_message, "Parse and add Fund Price Input Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_list_message = Pref.bool("Show Instrument Synchronization List Message", show.instrument_synchronization_list_message, "Parse and add Instrument Synchronization List Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_section_group = Pref.bool("Show Instrument Synchronization Section Group", show.instrument_synchronization_section_group, "Parse and add Instrument Synchronization Section Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_section_groups = Pref.bool("Show Instrument Synchronization Section Groups", show.instrument_synchronization_section_groups, "Parse and add Instrument Synchronization Section Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_kill_message = Pref.bool("Show Kill Message", show.kill_message, "Parse and add Kill Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_liquidity_provider_command_message = Pref.bool("Show Liquidity Provider Command Message", show.liquidity_provider_command_message, "Parse and add Liquidity Provider Command Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_ack_message = Pref.bool("Show Logon Ack Message", show.logon_ack_message, "Parse and add Logon Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_reject_message = Pref.bool("Show Logon Reject Message", show.logon_reject_message, "Parse and add Logon Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mass_cancel_ack_message = Pref.bool("Show Mass Cancel Ack Message", show.mass_cancel_ack_message, "Parse and add Mass Cancel Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mass_cancel_message = Pref.bool("Show Mass Cancel Message", show.mass_cancel_message, "Parse and add Mass Cancel Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_fields_group = Pref.bool("Show Mifid Fields Group", show.mifid_fields_group, "Parse and add Mifid Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_fields_groups = Pref.bool("Show Mifid Fields Groups", show.mifid_fields_groups, "Parse and add Mifid Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_indicators = Pref.bool("Show Mifid Indicators", show.mifid_indicators, "Parse and add Mifid Indicators to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_indicators_optional = Pref.bool("Show Mifid Indicators Optional", show.mifid_indicators_optional, "Parse and add Mifid Indicators Optional to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_short_codes_group = Pref.bool("Show Mifid Short Codes Group", show.mifid_short_codes_group, "Parse and add Mifid Short Codes Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_short_codes_groups = Pref.bool("Show Mifid Short Codes Groups", show.mifid_short_codes_groups, "Parse and add Mifid Short Codes Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_protection_ack_message = Pref.bool("Show Mm Protection Ack Message", show.mm_protection_ack_message, "Parse and add Mm Protection Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_protection_request_message = Pref.bool("Show Mm Protection Request Message", show.mm_protection_request_message, "Parse and add Mm Protection Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_sign_in_ack_message = Pref.bool("Show Mm Sign In Ack Message", show.mm_sign_in_ack_message, "Parse and add Mm Sign In Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_sign_in_message = Pref.bool("Show Mm Sign In Message", show.mm_sign_in_message, "Parse and add Mm Sign In Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_execution_type = Pref.bool("Show Mmp Execution Type", show.mmp_execution_type, "Parse and add Mmp Execution Type to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section_group = Pref.bool("Show Mmp Section Group", show.mmp_section_group, "Parse and add Mmp Section Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section_groups = Pref.bool("Show Mmp Section Groups", show.mmp_section_groups, "Parse and add Mmp Section Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section2_group = Pref.bool("Show Mmp Section2 Group", show.mmp_section2_group, "Parse and add Mmp Section2 Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section2_groups = Pref.bool("Show Mmp Section2 Groups", show.mmp_section2_groups, "Parse and add Mmp Section2 Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_new_wholesale_order_message = Pref.bool("Show New Wholesale Order Message", show.new_wholesale_order_message, "Parse and add New Wholesale Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_not_used_group_1_groups = Pref.bool("Show Not Used Group 1 Groups", show.not_used_group_1_groups, "Parse and add Not Used Group 1 Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_not_used_group_2_groups = Pref.bool("Show Not Used Group 2 Groups", show.not_used_group_2_groups, "Parse and add Not Used Group 2 Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_open_close = Pref.bool("Show Open Close", show.open_close, "Parse and add Open Close to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_open_order_request_message = Pref.bool("Show Open Order Request Message", show.open_order_request_message, "Parse and add Open Order Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_derivatives_group = Pref.bool("Show Optional Fields Derivatives Group", show.optional_fields_derivatives_group, "Parse and add Optional Fields Derivatives Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_derivatives_groups = Pref.bool("Show Optional Fields Derivatives Groups", show.optional_fields_derivatives_groups, "Parse and add Optional Fields Derivatives Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_fill_group = Pref.bool("Show Optional Fields Fill Group", show.optional_fields_fill_group, "Parse and add Optional Fields Fill Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_fill_groups = Pref.bool("Show Optional Fields Fill Groups", show.optional_fields_fill_groups, "Parse and add Optional Fields Fill Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_group = Pref.bool("Show Optional Fields Group", show.optional_fields_group, "Parse and add Optional Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_groups = Pref.bool("Show Optional Fields Groups", show.optional_fields_groups, "Parse and add Optional Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ownership_request_ack_message = Pref.bool("Show Ownership Request Ack Message", show.ownership_request_ack_message, "Parse and add Ownership Request Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ownership_request_message = Pref.bool("Show Ownership Request Message", show.ownership_request_message, "Parse and add Ownership Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_price_input_message = Pref.bool("Show Price Input Message", show.price_input_message, "Parse and add Price Input Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_ack_message = Pref.bool("Show Quote Ack Message", show.quote_ack_message, "Parse and add Quote Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_acks_group = Pref.bool("Show Quote Acks Group", show.quote_acks_group, "Parse and add Quote Acks Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_acks_groups = Pref.bool("Show Quote Acks Groups", show.quote_acks_groups, "Parse and add Quote Acks Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_request_message = Pref.bool("Show Quote Request Message", show.quote_request_message, "Parse and add Quote Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_message = Pref.bool("Show Quotes Message", show.quotes_message, "Parse and add Quotes Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_rep_group = Pref.bool("Show Quotes Rep Group", show.quotes_rep_group, "Parse and add Quotes Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_rep_groups = Pref.bool("Show Quotes Rep Groups", show.quotes_rep_groups, "Parse and add Quotes Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_request_for_execution_message = Pref.bool("Show Request For Execution Message", show.request_for_execution_message, "Parse and add Request For Execution Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_request_for_implied_execution_message = Pref.bool("Show Request For Implied Execution Message", show.request_for_implied_execution_message, "Parse and add Request For Implied Execution Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_audit_message = Pref.bool("Show Rfq Audit Message", show.rfq_audit_message, "Parse and add Rfq Audit Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_counterparts_group = Pref.bool("Show Rfq Counterparts Group", show.rfq_counterparts_group, "Parse and add Rfq Counterparts Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_counterparts_groups = Pref.bool("Show Rfq Counterparts Groups", show.rfq_counterparts_groups, "Parse and add Rfq Counterparts Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_matching_status_message = Pref.bool("Show Rfq Matching Status Message", show.rfq_matching_status_message, "Parse and add Rfq Matching Status Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_notification_message = Pref.bool("Show Rfq Notification Message", show.rfq_notification_message, "Parse and add Rfq Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfqlp_matching_status_message = Pref.bool("Show Rfqlp Matching Status Message", show.rfqlp_matching_status_message, "Parse and add Rfqlp Matching Status Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_security_definition_ack_message = Pref.bool("Show Security Definition Ack Message", show.security_definition_ack_message, "Parse and add Security Definition Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_security_definition_request_message = Pref.bool("Show Security Definition Request Message", show.security_definition_request_message, "Parse and add Security Definition Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_fields_group = Pref.bool("Show Strategy Fields Group", show.strategy_fields_group, "Parse and add Strategy Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_fields_groups = Pref.bool("Show Strategy Fields Groups", show.strategy_fields_groups, "Parse and add Strategy Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_legs_group = Pref.bool("Show Strategy Legs Group", show.strategy_legs_group, "Parse and add Strategy Legs Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_legs_groups = Pref.bool("Show Strategy Legs Groups", show.strategy_legs_groups, "Parse and add Strategy Legs Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_synchronization_time_message = Pref.bool("Show Synchronization Time Message", show.synchronization_time_message, "Parse and add Synchronization Time Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_target_counterparties = Pref.bool("Show Target Counterparties", show.target_counterparties, "Parse and add Target Counterparties to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_technical_reject_message = Pref.bool("Show Technical Reject Message", show.technical_reject_message, "Parse and add Technical Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trade_bust_notification_message = Pref.bool("Show Trade Bust Notification Message", show.trade_bust_notification_message, "Parse and add Trade Bust Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trade_qualifier = Pref.bool("Show Trade Qualifier", show.trade_qualifier, "Parse and add Trade Qualifier to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trading_session = Pref.bool("Show Trading Session", show.trading_session, "Parse and add Trading Session to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_user_notification_message = Pref.bool("Show User Notification Message", show.user_notification_message, "Parse and add User Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_waiver_indicator = Pref.bool("Show Waiver Indicator", show.waiver_indicator, "Parse and add Waiver Indicator to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wave_for_liquidity_message = Pref.bool("Show Wave For Liquidity Message", show.wave_for_liquidity_message, "Parse and add Wave For Liquidity Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wave_for_liquidity_notification_message = Pref.bool("Show Wave For Liquidity Notification Message", show.wave_for_liquidity_notification_message, "Parse and add Wave For Liquidity Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_clearing_rep_group = Pref.bool("Show Wholesale Ack Clearing Rep Group", show.wholesale_ack_clearing_rep_group, "Parse and add Wholesale Ack Clearing Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_clearing_rep_groups = Pref.bool("Show Wholesale Ack Clearing Rep Groups", show.wholesale_ack_clearing_rep_groups, "Parse and add Wholesale Ack Clearing Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_legs_rep_group = Pref.bool("Show Wholesale Ack Legs Rep Group", show.wholesale_ack_legs_rep_group, "Parse and add Wholesale Ack Legs Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_legs_rep_groups = Pref.bool("Show Wholesale Ack Legs Rep Groups", show.wholesale_ack_legs_rep_groups, "Parse and add Wholesale Ack Legs Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_client_rep_group = Pref.bool("Show Wholesale Client Rep Group", show.wholesale_client_rep_group, "Parse and add Wholesale Client Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_client_rep_groups = Pref.bool("Show Wholesale Client Rep Groups", show.wholesale_client_rep_groups, "Parse and add Wholesale Client Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_legs_rep_group = Pref.bool("Show Wholesale Legs Rep Group", show.wholesale_legs_rep_group, "Parse and add Wholesale Legs Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_legs_rep_groups = Pref.bool("Show Wholesale Legs Rep Groups", show.wholesale_legs_rep_groups, "Parse and add Wholesale Legs Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_order_ack_message = Pref.bool("Show Wholesale Order Ack Message", show.wholesale_order_ack_message, "Parse and add Wholesale Order Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function euronext_optiq_orderentrygateway_sbe_v4_5.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_message then
    show.ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_message
    changed = true
  end
  if show.ack_qualifiers ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_qualifiers then
    show.ack_qualifiers = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_qualifiers
    changed = true
  end
  if show.ack_qualifiers_optional ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_qualifiers_optional then
    show.ack_qualifiers_optional = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ack_qualifiers_optional
    changed = true
  end
  if show.additional_infos_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_additional_infos_group then
    show.additional_infos_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_additional_infos_group
    changed = true
  end
  if show.additional_infos_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_additional_infos_groups then
    show.additional_infos_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_additional_infos_groups
    changed = true
  end
  if show.ask_for_quote_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ask_for_quote_message then
    show.ask_for_quote_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ask_for_quote_message
    changed = true
  end
  if show.cancel_replace_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cancel_replace_message then
    show.cancel_replace_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cancel_replace_message
    changed = true
  end
  if show.cancel_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cancel_request_message then
    show.cancel_request_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cancel_request_message
    changed = true
  end
  if show.clearing_dataset_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_dataset_group then
    show.clearing_dataset_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_dataset_group
    changed = true
  end
  if show.clearing_dataset_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_dataset_groups then
    show.clearing_dataset_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_dataset_groups
    changed = true
  end
  if show.clearing_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_group then
    show.clearing_fields_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_group
    changed = true
  end
  if show.clearing_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_groups then
    show.clearing_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_groups
    changed = true
  end
  if show.clearing_fields_x_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_x_group then
    show.clearing_fields_x_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_x_group
    changed = true
  end
  if show.clearing_fields_x_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_x_groups then
    show.clearing_fields_x_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_clearing_fields_x_groups
    changed = true
  end
  if show.collar_breach_confirmation_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_breach_confirmation_message then
    show.collar_breach_confirmation_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_breach_confirmation_message
    changed = true
  end
  if show.collar_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_fields_group then
    show.collar_fields_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_fields_group
    changed = true
  end
  if show.collar_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_fields_groups then
    show.collar_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_collar_fields_groups
    changed = true
  end
  if show.cross_order_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cross_order_message then
    show.cross_order_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_cross_order_message
    changed = true
  end
  if show.dark_execution_instruction ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_dark_execution_instruction then
    show.dark_execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_dark_execution_instruction
    changed = true
  end
  if show.dark_execution_instruction_optional ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_dark_execution_instruction_optional then
    show.dark_execution_instruction_optional = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_dark_execution_instruction_optional
    changed = true
  end
  if show.declaration_cancel_and_refusal_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_cancel_and_refusal_message then
    show.declaration_cancel_and_refusal_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_cancel_and_refusal_message
    changed = true
  end
  if show.declaration_entry_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_ack_message then
    show.declaration_entry_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_ack_message
    changed = true
  end
  if show.declaration_entry_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_message then
    show.declaration_entry_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_message
    changed = true
  end
  if show.declaration_entry_reject_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_reject_message then
    show.declaration_entry_reject_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_entry_reject_message
    changed = true
  end
  if show.declaration_notice_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_notice_message then
    show.declaration_notice_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_declaration_notice_message
    changed = true
  end
  if show.execution_instruction ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_execution_instruction then
    show.execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_execution_instruction
    changed = true
  end
  if show.execution_instruction_optional ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_execution_instruction_optional then
    show.execution_instruction_optional = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_execution_instruction_optional
    changed = true
  end
  if show.fill_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fill_message then
    show.fill_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fill_message
    changed = true
  end
  if show.free_text_section_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_free_text_section_group then
    show.free_text_section_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_free_text_section_group
    changed = true
  end
  if show.free_text_section_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_free_text_section_groups then
    show.free_text_section_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_free_text_section_groups
    changed = true
  end
  if show.fund_price_input_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fund_price_input_ack_message then
    show.fund_price_input_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fund_price_input_ack_message
    changed = true
  end
  if show.fund_price_input_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fund_price_input_message then
    show.fund_price_input_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_fund_price_input_message
    changed = true
  end
  if show.group_size_encoding ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_group_size_encoding then
    show.group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_group_size_encoding
    changed = true
  end
  if show.instrument_synchronization_list_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_list_message then
    show.instrument_synchronization_list_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_list_message
    changed = true
  end
  if show.instrument_synchronization_section_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_section_group then
    show.instrument_synchronization_section_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_section_group
    changed = true
  end
  if show.instrument_synchronization_section_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_section_groups then
    show.instrument_synchronization_section_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_instrument_synchronization_section_groups
    changed = true
  end
  if show.kill_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_kill_message then
    show.kill_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_kill_message
    changed = true
  end
  if show.liquidity_provider_command_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_liquidity_provider_command_message then
    show.liquidity_provider_command_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_liquidity_provider_command_message
    changed = true
  end
  if show.logon_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_ack_message then
    show.logon_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_ack_message
    changed = true
  end
  if show.logon_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_message then
    show.logon_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_message
    changed = true
  end
  if show.logon_reject_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_reject_message then
    show.logon_reject_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logon_reject_message
    changed = true
  end
  if show.logout_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logout_message then
    show.logout_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_logout_message
    changed = true
  end
  if show.mass_cancel_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mass_cancel_ack_message then
    show.mass_cancel_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mass_cancel_ack_message
    changed = true
  end
  if show.mass_cancel_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mass_cancel_message then
    show.mass_cancel_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mass_cancel_message
    changed = true
  end
  if show.message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_message then
    show.message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_message
    changed = true
  end
  if show.message_header ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_message_header then
    show.message_header = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_message_header
    changed = true
  end
  if show.mifid_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_fields_group then
    show.mifid_fields_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_fields_group
    changed = true
  end
  if show.mifid_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_fields_groups then
    show.mifid_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_fields_groups
    changed = true
  end
  if show.mifid_indicators ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_indicators then
    show.mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_indicators
    changed = true
  end
  if show.mifid_indicators_optional ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_indicators_optional then
    show.mifid_indicators_optional = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_indicators_optional
    changed = true
  end
  if show.mifid_short_codes_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_short_codes_group then
    show.mifid_short_codes_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_short_codes_group
    changed = true
  end
  if show.mifid_short_codes_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_short_codes_groups then
    show.mifid_short_codes_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mifid_short_codes_groups
    changed = true
  end
  if show.mm_protection_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_protection_ack_message then
    show.mm_protection_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_protection_ack_message
    changed = true
  end
  if show.mm_protection_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_protection_request_message then
    show.mm_protection_request_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_protection_request_message
    changed = true
  end
  if show.mm_sign_in_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_sign_in_ack_message then
    show.mm_sign_in_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_sign_in_ack_message
    changed = true
  end
  if show.mm_sign_in_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_sign_in_message then
    show.mm_sign_in_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mm_sign_in_message
    changed = true
  end
  if show.mmp_execution_type ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_execution_type then
    show.mmp_execution_type = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_execution_type
    changed = true
  end
  if show.mmp_section_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section_group then
    show.mmp_section_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section_group
    changed = true
  end
  if show.mmp_section_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section_groups then
    show.mmp_section_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section_groups
    changed = true
  end
  if show.mmp_section2_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section2_group then
    show.mmp_section2_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section2_group
    changed = true
  end
  if show.mmp_section2_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section2_groups then
    show.mmp_section2_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_mmp_section2_groups
    changed = true
  end
  if show.new_order_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_new_order_message then
    show.new_order_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_new_order_message
    changed = true
  end
  if show.new_wholesale_order_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_new_wholesale_order_message then
    show.new_wholesale_order_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_new_wholesale_order_message
    changed = true
  end
  if show.not_used_group_1_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_not_used_group_1_groups then
    show.not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_not_used_group_1_groups
    changed = true
  end
  if show.not_used_group_2_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_not_used_group_2_groups then
    show.not_used_group_2_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_not_used_group_2_groups
    changed = true
  end
  if show.open_close ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_open_close then
    show.open_close = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_open_close
    changed = true
  end
  if show.open_order_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_open_order_request_message then
    show.open_order_request_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_open_order_request_message
    changed = true
  end
  if show.optional_fields_derivatives_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_derivatives_group then
    show.optional_fields_derivatives_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_derivatives_group
    changed = true
  end
  if show.optional_fields_derivatives_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_derivatives_groups then
    show.optional_fields_derivatives_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_derivatives_groups
    changed = true
  end
  if show.optional_fields_fill_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_fill_group then
    show.optional_fields_fill_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_fill_group
    changed = true
  end
  if show.optional_fields_fill_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_fill_groups then
    show.optional_fields_fill_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_fill_groups
    changed = true
  end
  if show.optional_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_group then
    show.optional_fields_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_group
    changed = true
  end
  if show.optional_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_groups then
    show.optional_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_optional_fields_groups
    changed = true
  end
  if show.ownership_request_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ownership_request_ack_message then
    show.ownership_request_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ownership_request_ack_message
    changed = true
  end
  if show.ownership_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ownership_request_message then
    show.ownership_request_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_ownership_request_message
    changed = true
  end
  if show.packet ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_packet then
    show.packet = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_packet
    changed = true
  end
  if show.price_input_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_price_input_message then
    show.price_input_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_price_input_message
    changed = true
  end
  if show.quote_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_ack_message then
    show.quote_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_ack_message
    changed = true
  end
  if show.quote_acks_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_acks_group then
    show.quote_acks_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_acks_group
    changed = true
  end
  if show.quote_acks_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_acks_groups then
    show.quote_acks_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_acks_groups
    changed = true
  end
  if show.quote_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_request_message then
    show.quote_request_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quote_request_message
    changed = true
  end
  if show.quotes_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_message then
    show.quotes_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_message
    changed = true
  end
  if show.quotes_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_rep_group then
    show.quotes_rep_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_rep_group
    changed = true
  end
  if show.quotes_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_rep_groups then
    show.quotes_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_quotes_rep_groups
    changed = true
  end
  if show.reject_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_reject_message then
    show.reject_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_reject_message
    changed = true
  end
  if show.request_for_execution_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_request_for_execution_message then
    show.request_for_execution_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_request_for_execution_message
    changed = true
  end
  if show.request_for_implied_execution_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_request_for_implied_execution_message then
    show.request_for_implied_execution_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_request_for_implied_execution_message
    changed = true
  end
  if show.rfq_audit_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_audit_message then
    show.rfq_audit_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_audit_message
    changed = true
  end
  if show.rfq_counterparts_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_counterparts_group then
    show.rfq_counterparts_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_counterparts_group
    changed = true
  end
  if show.rfq_counterparts_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_counterparts_groups then
    show.rfq_counterparts_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_counterparts_groups
    changed = true
  end
  if show.rfq_matching_status_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_matching_status_message then
    show.rfq_matching_status_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_matching_status_message
    changed = true
  end
  if show.rfq_notification_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_notification_message then
    show.rfq_notification_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfq_notification_message
    changed = true
  end
  if show.rfqlp_matching_status_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfqlp_matching_status_message then
    show.rfqlp_matching_status_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_rfqlp_matching_status_message
    changed = true
  end
  if show.security_definition_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_security_definition_ack_message then
    show.security_definition_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_security_definition_ack_message
    changed = true
  end
  if show.security_definition_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_security_definition_request_message then
    show.security_definition_request_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_security_definition_request_message
    changed = true
  end
  if show.strategy_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_fields_group then
    show.strategy_fields_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_fields_group
    changed = true
  end
  if show.strategy_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_fields_groups then
    show.strategy_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_fields_groups
    changed = true
  end
  if show.strategy_legs_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_legs_group then
    show.strategy_legs_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_legs_group
    changed = true
  end
  if show.strategy_legs_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_legs_groups then
    show.strategy_legs_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_strategy_legs_groups
    changed = true
  end
  if show.synchronization_time_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_synchronization_time_message then
    show.synchronization_time_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_synchronization_time_message
    changed = true
  end
  if show.target_counterparties ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_target_counterparties then
    show.target_counterparties = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_target_counterparties
    changed = true
  end
  if show.technical_reject_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_technical_reject_message then
    show.technical_reject_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_technical_reject_message
    changed = true
  end
  if show.trade_bust_notification_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trade_bust_notification_message then
    show.trade_bust_notification_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trade_bust_notification_message
    changed = true
  end
  if show.trade_qualifier ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trade_qualifier then
    show.trade_qualifier = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trade_qualifier
    changed = true
  end
  if show.trading_session ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trading_session then
    show.trading_session = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_trading_session
    changed = true
  end
  if show.user_notification_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_user_notification_message then
    show.user_notification_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_user_notification_message
    changed = true
  end
  if show.waiver_indicator ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_waiver_indicator then
    show.waiver_indicator = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_waiver_indicator
    changed = true
  end
  if show.wave_for_liquidity_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wave_for_liquidity_message then
    show.wave_for_liquidity_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wave_for_liquidity_message
    changed = true
  end
  if show.wave_for_liquidity_notification_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wave_for_liquidity_notification_message then
    show.wave_for_liquidity_notification_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wave_for_liquidity_notification_message
    changed = true
  end
  if show.wholesale_ack_clearing_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_clearing_rep_group then
    show.wholesale_ack_clearing_rep_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_clearing_rep_group
    changed = true
  end
  if show.wholesale_ack_clearing_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_clearing_rep_groups then
    show.wholesale_ack_clearing_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_clearing_rep_groups
    changed = true
  end
  if show.wholesale_ack_legs_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_legs_rep_group then
    show.wholesale_ack_legs_rep_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_legs_rep_group
    changed = true
  end
  if show.wholesale_ack_legs_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_legs_rep_groups then
    show.wholesale_ack_legs_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_ack_legs_rep_groups
    changed = true
  end
  if show.wholesale_client_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_client_rep_group then
    show.wholesale_client_rep_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_client_rep_group
    changed = true
  end
  if show.wholesale_client_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_client_rep_groups then
    show.wholesale_client_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_client_rep_groups
    changed = true
  end
  if show.wholesale_legs_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_legs_rep_group then
    show.wholesale_legs_rep_group = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_legs_rep_group
    changed = true
  end
  if show.wholesale_legs_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_legs_rep_groups then
    show.wholesale_legs_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_legs_rep_groups
    changed = true
  end
  if show.wholesale_order_ack_message ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_order_ack_message then
    show.wholesale_order_ack_message = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_wholesale_order_ack_message
    changed = true
  end
  if show.payload ~= euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_payload then
    show.payload = euronext_optiq_orderentrygateway_sbe_v4_5.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq OrderEntryGateway Sbe 4.5
-----------------------------------------------------------------------

-- Size: Num In Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.num_in_group = 1

-- Display: Num In Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.num_in_group = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.num_in_group = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.num_in_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.num_in_group(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length Short
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.block_length_short = 1

-- Display: Block Length Short
euronext_optiq_orderentrygateway_sbe_v4_5_display.block_length_short = function(value)
  return "Block Length Short: "..value
end

-- Dissect: Block Length Short
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.block_length_short = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.block_length_short
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.block_length_short(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.block_length_short, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.block_length_short

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.num_in_group

  return index
end

-- Display: Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v4_5_display.group_size_encoding = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length Short: 1 Byte Unsigned Fixed Width Integer
  index, block_length_short = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.block_length_short(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size_encoding then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.group_size_encoding(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.group_size_encoding, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Not Used Group 1 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local not_used_group_1_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + not_used_group_1_group_count * 0

  return index
end

-- Display: Not Used Group 1 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.not_used_group_1_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Used Group 1 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Not Used Group 1 Group
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Not Used Group 1 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.not_used_group_1_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.not_used_group_1_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.not_used_group_1_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups_fields(buffer, offset, packet, parent)
end

-- Size: Rejected Message Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message_id = 2

-- Display: Rejected Message Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.rejected_message_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Rejected Message Id: No Value"
  end

  return "Rejected Message Id: "..value
end

-- Dissect: Rejected Message Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_message_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rejected_message_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rejected_message_id, range, value, display)

  return offset + length, value
end

-- Size: Rejected Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message = 1

-- Display: Rejected Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.rejected_message = function(value)
  -- Check if field has value
  if value == 255 then
    return "Rejected Message: No Value"
  end

  return "Rejected Message: "..value
end

-- Dissect: Rejected Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_message = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rejected_message(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rejected_message, range, value, display)

  return offset + length, value
end

-- Size: Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code = 2

-- Display: Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.error_code = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.error_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.error_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.error_code, range, value, display)

  return offset + length, value
end

-- Size: Operation Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.operation_type = 1

-- Display: Operation Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.operation_type = function(value)
  if value == 1 then
    return "Operation Type: Declarationofatradeoutsidethebook (1)"
  end
  if value == 4 then
    return "Operation Type: Fundorderquantity (4)"
  end
  if value == 5 then
    return "Operation Type: Declarationofa Vwa Ptransaction (5)"
  end
  if value == 6 then
    return "Operation Type: Fundordercashamount (6)"
  end
  if value == 7 then
    return "Operation Type: Declarationofatradeona Secondarylistingplace (7)"
  end

  return "Operation Type: Unknown("..value..")"
end

-- Dissect: Operation Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.operation_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.operation_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.operation_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Size: Mi Cof Secondary Listing
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mi_cof_secondary_listing = 4

-- Display: Mi Cof Secondary Listing
euronext_optiq_orderentrygateway_sbe_v4_5_display.mi_cof_secondary_listing = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Cof Secondary Listing: No Value"
  end

  return "Mi Cof Secondary Listing: "..value
end

-- Dissect: Mi Cof Secondary Listing
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mi_cof_secondary_listing = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mi_cof_secondary_listing
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mi_cof_secondary_listing(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mi_cof_secondary_listing, range, value, display)

  return offset + length, value
end

-- Size: Emm Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm_optional = 1

-- Display: Emm Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.emm_optional = function(value)
  if value == 1 then
    return "Emm Optional: Cashand Derivative Central Order Book (1)"
  end
  if value == 2 then
    return "Emm Optional: Nav Trading Facility (2)"
  end
  if value == 4 then
    return "Emm Optional: Derivatives Wholesales (4)"
  end
  if value == 5 then
    return "Emm Optional: Cash On Exchange Offbook (5)"
  end
  if value == 6 then
    return "Emm Optional: Euronextoffexchangetradereports (6)"
  end
  if value == 7 then
    return "Emm Optional: Derivatives On Exchange Offbook (7)"
  end
  if value == 8 then
    return "Emm Optional: Etfmtfnav Central Order Book (8)"
  end
  if value == 9 then
    return "Emm Optional: Listednottraded (9)"
  end
  if value == 15 then
    return "Emm Optional: Delta Neutral Contingency Leg (15)"
  end
  if value == 99 then
    return "Emm Optional: Not Applicable (99)"
  end
  if value == 255 then
    return "Emm Optional: No Value"
  end

  return "Emm Optional: Unknown("..value..")"
end

-- Dissect: Emm Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.emm_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.emm_optional, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index = 4

-- Display: Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Client Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id = 8

-- Display: Client Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.client_order_id = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.client_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Size: Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id = 8

-- Display: Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.firm_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id: No Value"
  end

  return "Firm Id: "..value
end

-- Dissect: Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.firm_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Size: Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num = 4

-- Display: Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_display.msg_seq_num = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_reject_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mi_cof_secondary_listing

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.operation_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  return index
end

-- Display: Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_entry_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm_optional(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.operation_type(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_message(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_message_id(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.declaration_entry_reject_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_entry_reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_entry_reject_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Bypass Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bypass_indicator = 1

-- Display: Bypass Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_display.bypass_indicator = function(value)
  -- Check if field has value
  if value == 255 then
    return "Bypass Indicator: No Value"
  end

  return "Bypass Indicator: "..value
end

-- Dissect: Bypass Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bypass_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bypass_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.bypass_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.bypass_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price = 8

-- Display: Price
euronext_optiq_orderentrygateway_sbe_v4_5_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Emm
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm = 1

-- Display: Emm
euronext_optiq_orderentrygateway_sbe_v4_5_display.emm = function(value)
  if value == 1 then
    return "Emm: Cashand Derivative Central Order Book (1)"
  end
  if value == 2 then
    return "Emm: Nav Trading Facility (2)"
  end
  if value == 4 then
    return "Emm: Derivatives Wholesales (4)"
  end
  if value == 5 then
    return "Emm: Cash On Exchange Offbook (5)"
  end
  if value == 6 then
    return "Emm: Euronextoffexchangetradereports (6)"
  end
  if value == 7 then
    return "Emm: Derivatives On Exchange Offbook (7)"
  end
  if value == 8 then
    return "Emm: Etfmtfnav Central Order Book (8)"
  end
  if value == 9 then
    return "Emm: Listednottraded (9)"
  end
  if value == 15 then
    return "Emm: Delta Neutral Contingency Leg (15)"
  end
  if value == 99 then
    return "Emm: Not Applicable (99)"
  end

  return "Emm: Unknown("..value..")"
end

-- Dissect: Emm
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.emm(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.emm, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fund_price_input_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bypass_indicator

  return index
end

-- Display: Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.fund_price_input_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fund_price_input_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price(buffer, index, packet, parent)

  -- Bypass Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, bypass_indicator = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bypass_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fund_price_input_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fund_price_input_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fund_price_input_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.fund_price_input_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.fund_price_input_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fund_price_input_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Sending Time
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time = 8

-- Display: Sending Time
euronext_optiq_orderentrygateway_sbe_v4_5_display.sending_time = function(value)
  return "Sending Time: "..value
end

-- Dissect: Sending Time
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.sending_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Size: Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num = 4

-- Display: Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_display.cl_msg_seq_num = function(value)
  return "Cl Msg Seq Num: "..value
end

-- Dissect: Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.cl_msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.cl_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fund_price_input_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bypass_indicator

  return index
end

-- Display: Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.fund_price_input_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fund_price_input_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price(buffer, index, packet, parent)

  -- Bypass Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, bypass_indicator = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bypass_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fund_price_input_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fund_price_input_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fund_price_input_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.fund_price_input_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.fund_price_input_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fund_price_input_message_fields(buffer, offset, packet, parent)
end

-- Size: Action Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.action_type = 1

-- Display: Action Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.action_type = function(value)
  if value == 1 then
    return "Action Type: Declaration Cancellation Request (1)"
  end
  if value == 2 then
    return "Action Type: Declaration Refusal (2)"
  end
  if value == 3 then
    return "Action Type: Trade Cancellation Request (3)"
  end

  return "Action Type: Unknown("..value..")"
end

-- Dissect: Action Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.action_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.action_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.action_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.action_type, range, value, display)

  return offset + length, value
end

-- Size: Declaration Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_id = 8

-- Display: Declaration Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_id = function(value)
  return "Declaration Id: "..value
end

-- Dissect: Declaration Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_cancel_and_refusal_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.action_type

  return index
end

-- Display: Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_cancel_and_refusal_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_cancel_and_refusal_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer
  index, declaration_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_id(buffer, index, packet, parent)

  -- Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, action_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.action_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_cancel_and_refusal_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.declaration_cancel_and_refusal_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_cancel_and_refusal_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_cancel_and_refusal_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_cancel_and_refusal_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_cancel_and_refusal_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Not Used Group 2 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_2_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local not_used_group_2_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + not_used_group_2_group_count * 0

  return index
end

-- Display: Not Used Group 2 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.not_used_group_2_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Used Group 2 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Not Used Group 2 Group
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Not Used Group 2 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.not_used_group_2_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_2_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.not_used_group_2_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.not_used_group_2_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_groups_fields(buffer, offset, packet, parent)
end

-- Size: Ccpid
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ccpid = 1

-- Display: Ccpid
euronext_optiq_orderentrygateway_sbe_v4_5_display.ccpid = function(value)
  if value == 1 then
    return "Ccpid: Lch Sa (1)"
  end
  if value == 2 then
    return "Ccpid: Bilateral Settlement (2)"
  end
  if value == 3 then
    return "Ccpid: Lch Limited (3)"
  end
  if value == 5 then
    return "Ccpid: Sixx Clear (5)"
  end
  if value == 6 then
    return "Ccpid: Euro Ccp (6)"
  end
  if value == 255 then
    return "Ccpid: No Value"
  end

  return "Ccpid: Unknown("..value..")"
end

-- Dissect: Ccpid
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ccpid = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ccpid
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ccpid(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ccpid, range, value, display)

  return offset + length, value
end

-- Size: Miscellaneous Fee Amount
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.miscellaneous_fee_amount = 8

-- Display: Miscellaneous Fee Amount
euronext_optiq_orderentrygateway_sbe_v4_5_display.miscellaneous_fee_amount = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Miscellaneous Fee Amount: No Value"
  end

  return "Miscellaneous Fee Amount: "..value
end

-- Dissect: Miscellaneous Fee Amount
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.miscellaneous_fee_amount = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.miscellaneous_fee_amount
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.miscellaneous_fee_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.miscellaneous_fee_amount, range, value, display)

  return offset + length, value
end

-- Size: Previous Day Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.previous_day_indicator = 1

-- Display: Previous Day Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_display.previous_day_indicator = function(value)
  -- Check if field has value
  if value == 255 then
    return "Previous Day Indicator: No Value"
  end

  return "Previous Day Indicator: "..value
end

-- Dissect: Previous Day Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.previous_day_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.previous_day_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.previous_day_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.previous_day_indicator, range, value, display)

  return offset + length, value
end

-- Size: Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.waiver_indicator = 1

-- Display: Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_display.waiver_indicator = function(buffer, packet, parent)
  local display = ""

  -- Is Omf flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Omf|"
  end
  -- Is Ilqd flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Ilqd|"
  end
  -- Is Size flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Size|"
  end
  -- Is Pric flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Pric|"
  end
  -- Is Oilq flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Oilq|"
  end
  -- Is Nliq flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Nliq|"
  end
  -- Is Rfpt flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Rfpt|"
  end
  -- Is Lrgs flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Lrgs|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.waiver_indicator_bits = function(buffer, offset, packet, parent)

  -- Omf: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.omf, buffer(offset, 1))

  -- Ilqd: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ilqd, buffer(offset, 1))

  -- Size: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.size, buffer(offset, 1))

  -- Pric: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.pric, buffer(offset, 1))

  -- Oilq: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oilq, buffer(offset, 1))

  -- Nliq: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.nliq, buffer(offset, 1))

  -- Rfpt: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfpt, buffer(offset, 1))

  -- Lrgs: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.lrgs, buffer(offset, 1))
end

-- Dissect: Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.waiver_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.waiver_indicator(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.waiver_indicator, range, display)

  if show.waiver_indicator then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.waiver_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Free Text Cross
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_cross = 18

-- Display: Free Text Cross
euronext_optiq_orderentrygateway_sbe_v4_5_display.free_text_cross = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text Cross: No Value"
  end

  return "Free Text Cross: "..value
end

-- Dissect: Free Text Cross
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_cross = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_cross
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.free_text_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.free_text_cross, range, value, display)

  return offset + length, value
end

-- Size: Free Text
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text = 18

-- Display: Free Text
euronext_optiq_orderentrygateway_sbe_v4_5_display.free_text = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text: No Value"
  end

  return "Free Text: "..value
end

-- Dissect: Free Text
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.free_text(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.free_text, range, value, display)

  return offset + length, value
end

-- Size: Account Number Cross
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number_cross = 12

-- Display: Account Number Cross
euronext_optiq_orderentrygateway_sbe_v4_5_display.account_number_cross = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number Cross: No Value"
  end

  return "Account Number Cross: "..value
end

-- Dissect: Account Number Cross
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number_cross = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number_cross
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.account_number_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_number_cross, range, value, display)

  return offset + length, value
end

-- Size: Account Number
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number = 12

-- Display: Account Number
euronext_optiq_orderentrygateway_sbe_v4_5_display.account_number = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number: No Value"
  end

  return "Account Number: "..value
end

-- Dissect: Account Number
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.account_number(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_number, range, value, display)

  return offset + length, value
end

-- Size: Gross Trade Amount
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.gross_trade_amount = 8

-- Display: Gross Trade Amount
euronext_optiq_orderentrygateway_sbe_v4_5_display.gross_trade_amount = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Gross Trade Amount: No Value"
  end

  return "Gross Trade Amount: "..value
end

-- Dissect: Gross Trade Amount
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.gross_trade_amount = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.gross_trade_amount
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.gross_trade_amount(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.gross_trade_amount, range, value, display)

  return offset + length, value
end

-- Size: End Time Vwap
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.end_time_vwap = 4

-- Display: End Time Vwap
euronext_optiq_orderentrygateway_sbe_v4_5_display.end_time_vwap = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "End Time Vwap: No Value"
  end

  return "End Time Vwap: "..value
end

-- Dissect: End Time Vwap
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.end_time_vwap = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.end_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.end_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.end_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Start Time Vwap
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.start_time_vwap = 4

-- Display: Start Time Vwap
euronext_optiq_orderentrygateway_sbe_v4_5_display.start_time_vwap = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Start Time Vwap: No Value"
  end

  return "Start Time Vwap: "..value
end

-- Dissect: Start Time Vwap
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.start_time_vwap = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.start_time_vwap
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.start_time_vwap(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.start_time_vwap, range, value, display)

  return offset + length, value
end

-- Size: Principal Code Cross
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.principal_code_cross = 8

-- Display: Principal Code Cross
euronext_optiq_orderentrygateway_sbe_v4_5_display.principal_code_cross = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code Cross: No Value"
  end

  return "Principal Code Cross: "..value
end

-- Dissect: Principal Code Cross
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.principal_code_cross = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.principal_code_cross
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.principal_code_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.principal_code_cross, range, value, display)

  return offset + length, value
end

-- Size: Principal Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.principal_code = 8

-- Display: Principal Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.principal_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code: No Value"
  end

  return "Principal Code: "..value
end

-- Dissect: Principal Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.principal_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.principal_code
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.principal_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.principal_code, range, value, display)

  return offset + length, value
end

-- Size: Transaction Price Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.transaction_price_type = 1

-- Display: Transaction Price Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.transaction_price_type = function(value)
  if value == 1 then
    return "Transaction Price Type: Plain Vanilla Trade (1)"
  end
  if value == 2 then
    return "Transaction Price Type: Non Price Forming Trade (2)"
  end
  if value == 3 then
    return "Transaction Price Type: Trade Not Contributingto Price Discovery Process (3)"
  end
  if value == 4 then
    return "Transaction Price Type: Dark Trade (4)"
  end
  if value == 255 then
    return "Transaction Price Type: No Value"
  end

  return "Transaction Price Type: Unknown("..value..")"
end

-- Dissect: Transaction Price Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.transaction_price_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.transaction_price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.transaction_price_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.transaction_price_type, range, value, display)

  return offset + length, value
end

-- Size: Guarantee Flag Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.guarantee_flag_optional = 1

-- Display: Guarantee Flag Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.guarantee_flag_optional = function(value)
  if value == 1 then
    return "Guarantee Flag Optional: Clearedbutnot Guaranteed (1)"
  end
  if value == 2 then
    return "Guarantee Flag Optional: Clearedand Guaranteed (2)"
  end
  if value == 255 then
    return "Guarantee Flag Optional: No Value"
  end

  return "Guarantee Flag Optional: Unknown("..value..")"
end

-- Dissect: Guarantee Flag Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.guarantee_flag_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.guarantee_flag_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.guarantee_flag_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.guarantee_flag_optional, range, value, display)

  return offset + length, value
end

-- Size: Settlement Period Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_period_optional = 1

-- Display: Settlement Period Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.settlement_period_optional = function(value)
  -- Check if field has value
  if value == 255 then
    return "Settlement Period Optional: No Value"
  end

  return "Settlement Period Optional: "..value
end

-- Dissect: Settlement Period Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.settlement_period_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_period_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.settlement_period_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.settlement_period_optional, range, value, display)

  return offset + length, value
end

-- Size: Settlement Flag Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_flag_optional = 1

-- Display: Settlement Flag Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.settlement_flag_optional = function(value)
  -- Check if field has value
  if value == 255 then
    return "Settlement Flag Optional: No Value"
  end

  return "Settlement Flag Optional: "..value
end

-- Dissect: Settlement Flag Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.settlement_flag_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_flag_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.settlement_flag_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.settlement_flag_optional, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity Cross
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_cross = 1

-- Display: Trading Capacity Cross
euronext_optiq_orderentrygateway_sbe_v4_5_display.trading_capacity_cross = function(value)
  if value == 1 then
    return "Trading Capacity Cross: Dealingonownaccount (1)"
  end
  if value == 2 then
    return "Trading Capacity Cross: Matchedprincipal (2)"
  end
  if value == 3 then
    return "Trading Capacity Cross: Anyothercapacity (3)"
  end
  if value == 255 then
    return "Trading Capacity Cross: No Value"
  end

  return "Trading Capacity Cross: Unknown("..value..")"
end

-- Dissect: Trading Capacity Cross
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity_cross = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_cross
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trading_capacity_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trading_capacity_cross, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_optional = 1

-- Display: Trading Capacity Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.trading_capacity_optional = function(value)
  if value == 1 then
    return "Trading Capacity Optional: Dealingonownaccount (1)"
  end
  if value == 2 then
    return "Trading Capacity Optional: Matchedprincipal (2)"
  end
  if value == 3 then
    return "Trading Capacity Optional: Anyothercapacity (3)"
  end
  if value == 255 then
    return "Trading Capacity Optional: No Value"
  end

  return "Trading Capacity Optional: Unknown("..value..")"
end

-- Dissect: Trading Capacity Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trading_capacity_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trading_capacity_optional, range, value, display)

  return offset + length, value
end

-- Size: Account Type Cross
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_cross = 1

-- Display: Account Type Cross
euronext_optiq_orderentrygateway_sbe_v4_5_display.account_type_cross = function(value)
  if value == 1 then
    return "Account Type Cross: Client (1)"
  end
  if value == 2 then
    return "Account Type Cross: House (2)"
  end
  if value == 4 then
    return "Account Type Cross: Ro (4)"
  end
  if value == 6 then
    return "Account Type Cross: Liquidity Provider (6)"
  end
  if value == 7 then
    return "Account Type Cross: Related Party (7)"
  end
  if value == 8 then
    return "Account Type Cross: Structured Product Market Maker (8)"
  end
  if value == 14 then
    return "Account Type Cross: Omega Client (14)"
  end
  if value == 15 then
    return "Account Type Cross: Ceres Client (15)"
  end
  if value == 255 then
    return "Account Type Cross: No Value"
  end

  return "Account Type Cross: Unknown("..value..")"
end

-- Dissect: Account Type Cross
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_cross = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_cross
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.account_type_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_type_cross, range, value, display)

  return offset + length, value
end

-- Size: Account Type Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_optional = 1

-- Display: Account Type Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.account_type_optional = function(value)
  if value == 1 then
    return "Account Type Optional: Client (1)"
  end
  if value == 2 then
    return "Account Type Optional: House (2)"
  end
  if value == 4 then
    return "Account Type Optional: Ro (4)"
  end
  if value == 6 then
    return "Account Type Optional: Liquidity Provider (6)"
  end
  if value == 7 then
    return "Account Type Optional: Related Party (7)"
  end
  if value == 8 then
    return "Account Type Optional: Structured Product Market Maker (8)"
  end
  if value == 14 then
    return "Account Type Optional: Omega Client (14)"
  end
  if value == 15 then
    return "Account Type Optional: Ceres Client (15)"
  end
  if value == 255 then
    return "Account Type Optional: No Value"
  end

  return "Account Type Optional: Unknown("..value..")"
end

-- Dissect: Account Type Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.account_type_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_type_optional, range, value, display)

  return offset + length, value
end

-- Size: Clearing Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id = 8

-- Display: Clearing Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_firm_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Id: No Value"
  end

  return "Clearing Firm Id: "..value
end

-- Dissect: Clearing Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_firm_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_firm_id, range, value, display)

  return offset + length, value
end

-- Size: Centralisation Date
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.centralisation_date = 10

-- Display: Centralisation Date
euronext_optiq_orderentrygateway_sbe_v4_5_display.centralisation_date = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Centralisation Date: No Value"
  end

  return "Centralisation Date: "..value
end

-- Dissect: Centralisation Date
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.centralisation_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.centralisation_date
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.centralisation_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.centralisation_date, range, value, display)

  return offset + length, value
end

-- Size: Trade Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_time_optional = 8

-- Display: Trade Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_time_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trade Time Optional: No Value"
  end

  return "Trade Time Optional: "..value
end

-- Dissect: Trade Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_time_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_time_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_time_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_time_optional, range, value, display)

  return offset + length, value
end

-- Size: Pre Matching Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.pre_matching_type = 1

-- Display: Pre Matching Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.pre_matching_type = function(value)
  if value == 1 then
    return "Pre Matching Type: Notprematched (1)"
  end
  if value == 2 then
    return "Pre Matching Type: Prematchedforthenextfixing (2)"
  end
  if value == 3 then
    return "Pre Matching Type: Prematchedforthesecondnextfixing (3)"
  end
  if value == 4 then
    return "Pre Matching Type: Prematchedforthethirdnextfixing (4)"
  end
  if value == 5 then
    return "Pre Matching Type: Prematchedforthefourthnextfixing (5)"
  end
  if value == 6 then
    return "Pre Matching Type: Prematchedforthefifthnextfixing (6)"
  end
  if value == 255 then
    return "Pre Matching Type: No Value"
  end

  return "Pre Matching Type: Unknown("..value..")"
end

-- Dissect: Pre Matching Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.pre_matching_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.pre_matching_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.pre_matching_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.pre_matching_type, range, value, display)

  return offset + length, value
end

-- Size: Price Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_optional = 8

-- Display: Price Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.price_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Dissect: Price Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.price_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Size: Quantity Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quantity_optional = 8

-- Display: Quantity Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.quantity_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quantity Optional: No Value"
  end

  return "Quantity Optional: "..value
end

-- Dissect: Quantity Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quantity_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quantity_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quantity_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quantity_optional, range, value, display)

  return offset + length, value
end

-- Size: Side Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side_optional = 1

-- Display: Side Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.side_optional = function(value)
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
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.side_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Size: Entering Counterparty
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.entering_counterparty = 8

-- Display: Entering Counterparty
euronext_optiq_orderentrygateway_sbe_v4_5_display.entering_counterparty = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Entering Counterparty: No Value"
  end

  return "Entering Counterparty: "..value
end

-- Dissect: Entering Counterparty
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.entering_counterparty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.entering_counterparty
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.entering_counterparty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.entering_counterparty, range, value, display)

  return offset + length, value
end

-- Size: Declaration Status
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_status = 1

-- Display: Declaration Status
euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_status = function(value)
  if value == 1 then
    return "Declaration Status: New Waitingfor Counterparty Confirmation (1)"
  end
  if value == 2 then
    return "Declaration Status: Confirmedby Counterparty (2)"
  end
  if value == 3 then
    return "Declaration Status: Refusedby Counterparty (3)"
  end
  if value == 4 then
    return "Declaration Status: Pending Cancellation (4)"
  end
  if value == 5 then
    return "Declaration Status: Cancelled (5)"
  end
  if value == 6 then
    return "Declaration Status: Time Out (6)"
  end
  if value == 7 then
    return "Declaration Status: Filled (7)"
  end
  if value == 8 then
    return "Declaration Status: Restated (8)"
  end
  if value == 9 then
    return "Declaration Status: Expirationofapendingdeclaration (9)"
  end
  if value == 10 then
    return "Declaration Status: Eliminationofapendingdeclaration (10)"
  end
  if value == 11 then
    return "Declaration Status: Eliminationofaprematcheddeclarationfollowinga Ce (11)"
  end
  if value == 12 then
    return "Declaration Status: Eliminationofaprematcheddeclarationby Moc (12)"
  end
  if value == 13 then
    return "Declaration Status: Pre Matched (13)"
  end

  return "Declaration Status: Unknown("..value..")"
end

-- Dissect: Declaration Status
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_status = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_status(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_status, range, value, display)

  return offset + length, value
end

-- Size: Client Order Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional = 8

-- Display: Client Order Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.client_order_id_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Client Order Id Optional: No Value"
  end

  return "Client Order Id Optional: "..value
end

-- Dissect: Client Order Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.client_order_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_order_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_notice_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_status

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.operation_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.entering_counterparty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quantity_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.pre_matching_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mi_cof_secondary_listing

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.centralisation_date

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_flag_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_period_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.guarantee_flag_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.transaction_price_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.principal_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.principal_code_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.start_time_vwap

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.end_time_vwap

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.gross_trade_amount

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.waiver_indicator

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.previous_day_indicator

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.miscellaneous_fee_amount

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ccpid

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_2_groups(buffer, offset + index)

  return index
end

-- Display: Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_notice_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_notice_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id_optional(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer
  index, declaration_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_id(buffer, index, packet, parent)

  -- Declaration Status: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, declaration_status = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_status(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.operation_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Entering Counterparty: 8 Byte Ascii String Nullable
  index, entering_counterparty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.entering_counterparty(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side_optional(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quantity_optional(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_optional(buffer, index, packet, parent)

  -- Pre Matching Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, pre_matching_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.pre_matching_type(buffer, index, packet, parent)

  -- Trade Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_time_optional(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Centralisation Date: 10 Byte Ascii String Nullable
  index, centralisation_date = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.centralisation_date(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_optional(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_cross(buffer, index, packet, parent)

  -- Trading Capacity Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity_optional(buffer, index, packet, parent)

  -- Trading Capacity Cross: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity_cross(buffer, index, packet, parent)

  -- Settlement Flag Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_flag_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.settlement_flag_optional(buffer, index, packet, parent)

  -- Settlement Period Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_period_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.settlement_period_optional(buffer, index, packet, parent)

  -- Guarantee Flag Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, guarantee_flag_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.guarantee_flag_optional(buffer, index, packet, parent)

  -- Transaction Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, transaction_price_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.transaction_price_type(buffer, index, packet, parent)

  -- Principal Code: 8 Byte Ascii String Nullable
  index, principal_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.principal_code(buffer, index, packet, parent)

  -- Principal Code Cross: 8 Byte Ascii String Nullable
  index, principal_code_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.principal_code_cross(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.end_time_vwap(buffer, index, packet, parent)

  -- Gross Trade Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_trade_amount = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.gross_trade_amount(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number(buffer, index, packet, parent)

  -- Account Number Cross: 12 Byte Ascii String Nullable
  index, account_number_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number_cross(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text(buffer, index, packet, parent)

  -- Free Text Cross: 18 Byte Ascii String Nullable
  index, free_text_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_cross(buffer, index, packet, parent)

  -- Waiver Indicator: Struct of 8 fields
  index, waiver_indicator = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.waiver_indicator(buffer, index, packet, parent)

  -- Previous Day Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, previous_day_indicator = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.previous_day_indicator(buffer, index, packet, parent)

  -- Miscellaneous Fee Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, miscellaneous_fee_amount = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.miscellaneous_fee_amount(buffer, index, packet, parent)

  -- Ccpid: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, ccpid = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ccpid(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_notice_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.declaration_notice_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_notice_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_notice_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_notice_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_notice_message_fields(buffer, offset, packet, parent)
end

-- Size: Declaration Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_id_optional = 8

-- Display: Declaration Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Declaration Id Optional: No Value"
  end

  return "Declaration Id Optional: "..value
end

-- Dissect: Declaration Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mi_cof_secondary_listing

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.operation_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.pre_matching_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.waiver_indicator

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  return index
end

-- Display: Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_entry_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Declaration Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, declaration_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_id_optional(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.operation_type(buffer, index, packet, parent)

  -- Pre Matching Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, pre_matching_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.pre_matching_type(buffer, index, packet, parent)

  -- Waiver Indicator: Struct of 8 fields
  index, waiver_indicator = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.waiver_indicator(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.declaration_entry_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_entry_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_entry_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Client Identification Short Code Cross
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_short_code_cross = 4

-- Display: Client Identification Short Code Cross
euronext_optiq_orderentrygateway_sbe_v4_5_display.client_identification_short_code_cross = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Client Identification Short Code Cross: No Value"
  end

  return "Client Identification Short Code Cross: "..value
end

-- Dissect: Client Identification Short Code Cross
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_short_code_cross = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_short_code_cross
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.client_identification_short_code_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_identification_short_code_cross, range, value, display)

  return offset + length, value
end

-- Size: Investment Decision W Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.investment_decision_w_firm_short_code = 4

-- Display: Investment Decision W Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.investment_decision_w_firm_short_code = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Investment Decision W Firm Short Code: No Value"
  end

  return "Investment Decision W Firm Short Code: "..value
end

-- Dissect: Investment Decision W Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.investment_decision_w_firm_short_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.investment_decision_w_firm_short_code
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.investment_decision_w_firm_short_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.investment_decision_w_firm_short_code, range, value, display)

  return offset + length, value
end

-- Size: Mifid Indicators
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators = 1

-- Display: Mifid Indicators
euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_indicators = function(buffer, packet, parent)
  local display = ""

  -- Is Frmaramplp flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Frmaramplp|"
  end
  -- Is Deferral Indicator flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Deferral Indicator|"
  end
  -- Is Commodity Derivative Indicator flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Commodity Derivative Indicator|"
  end
  -- Is Execution Algo Indicator flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Execution Algo Indicator|"
  end
  -- Is Investment Algo Indicator flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Investment Algo Indicator|"
  end
  -- Is Dea Indicator flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Dea Indicator|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Mifid Indicators
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators_bits = function(buffer, offset, packet, parent)

  -- Reserved 2: 2 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_2, buffer(offset, 1))

  -- Frmaramplp: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.frmaramplp, buffer(offset, 1))

  -- Deferral Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.deferral_indicator, buffer(offset, 1))

  -- Commodity Derivative Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.commodity_derivative_indicator, buffer(offset, 1))

  -- Execution Algo Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_algo_indicator, buffer(offset, 1))

  -- Investment Algo Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.investment_algo_indicator, buffer(offset, 1))

  -- Dea Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.dea_indicator, buffer(offset, 1))
end

-- Dissect: Mifid Indicators
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_indicators(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_indicators, range, display)

  if show.mifid_indicators then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Guarantee Flag
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.guarantee_flag = 1

-- Display: Guarantee Flag
euronext_optiq_orderentrygateway_sbe_v4_5_display.guarantee_flag = function(value)
  if value == 1 then
    return "Guarantee Flag: Clearedbutnot Guaranteed (1)"
  end
  if value == 2 then
    return "Guarantee Flag: Clearedand Guaranteed (2)"
  end

  return "Guarantee Flag: Unknown("..value..")"
end

-- Dissect: Guarantee Flag
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.guarantee_flag = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.guarantee_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.guarantee_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.guarantee_flag, range, value, display)

  return offset + length, value
end

-- Size: Settlement Flag
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_flag = 1

-- Display: Settlement Flag
euronext_optiq_orderentrygateway_sbe_v4_5_display.settlement_flag = function(value)
  return "Settlement Flag: "..value
end

-- Dissect: Settlement Flag
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.settlement_flag = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.settlement_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.settlement_flag, range, value, display)

  return offset + length, value
end

-- Size: Settlement Period
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_period = 1

-- Display: Settlement Period
euronext_optiq_orderentrygateway_sbe_v4_5_display.settlement_period = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.settlement_period = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_period
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.settlement_period(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Size: Trading Capacity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity = 1

-- Display: Trading Capacity
euronext_optiq_orderentrygateway_sbe_v4_5_display.trading_capacity = function(value)
  if value == 1 then
    return "Trading Capacity: Dealingonownaccount (1)"
  end
  if value == 2 then
    return "Trading Capacity: Matchedprincipal (2)"
  end
  if value == 3 then
    return "Trading Capacity: Anyothercapacity (3)"
  end

  return "Trading Capacity: Unknown("..value..")"
end

-- Dissect: Trading Capacity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trading_capacity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Size: Account Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type = 1

-- Display: Account Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.account_type = function(value)
  if value == 1 then
    return "Account Type: Client (1)"
  end
  if value == 2 then
    return "Account Type: House (2)"
  end
  if value == 4 then
    return "Account Type: Ro (4)"
  end
  if value == 6 then
    return "Account Type: Liquidity Provider (6)"
  end
  if value == 7 then
    return "Account Type: Related Party (7)"
  end
  if value == 8 then
    return "Account Type: Structured Product Market Maker (8)"
  end
  if value == 14 then
    return "Account Type: Omega Client (14)"
  end
  if value == 15 then
    return "Account Type: Ceres Client (15)"
  end

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.account_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.account_type, range, value, display)

  return offset + length, value
end

-- Size: Client Identification Shortcode
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode = 4

-- Display: Client Identification Shortcode
euronext_optiq_orderentrygateway_sbe_v4_5_display.client_identification_shortcode = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Client Identification Shortcode: No Value"
  end

  return "Client Identification Shortcode: "..value
end

-- Dissect: Client Identification Shortcode
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.client_identification_shortcode(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_identification_shortcode, range, value, display)

  return offset + length, value
end

-- Size: Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code = 4

-- Display: Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_within_firm_short_code = function(value)
  return "Execution Within Firm Short Code: "..value
end

-- Dissect: Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_within_firm_short_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_within_firm_short_code, range, value, display)

  return offset + length, value
end

-- Size: Side
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side = 1

-- Display: Side
euronext_optiq_orderentrygateway_sbe_v4_5_display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.operation_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.entering_counterparty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quantity_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mi_cof_secondary_listing

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.centralisation_date

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_period

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.settlement_flag

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.guarantee_flag

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.transaction_price_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.principal_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.principal_code_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.start_time_vwap

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.end_time_vwap

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.gross_trade_amount

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.investment_decision_w_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_short_code_cross

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  return index
end

-- Display: Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_entry_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.operation_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Entering Counterparty: 8 Byte Ascii String Nullable
  index, entering_counterparty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.entering_counterparty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quantity_optional(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_optional(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Centralisation Date: 10 Byte Ascii String Nullable
  index, centralisation_date = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.centralisation_date(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_cross(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity(buffer, index, packet, parent)

  -- Trading Capacity Cross: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity_cross(buffer, index, packet, parent)

  -- Settlement Period: 1 Byte Unsigned Fixed Width Integer
  index, settlement_period = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.settlement_period(buffer, index, packet, parent)

  -- Settlement Flag: 1 Byte Unsigned Fixed Width Integer
  index, settlement_flag = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.settlement_flag(buffer, index, packet, parent)

  -- Guarantee Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, guarantee_flag = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.guarantee_flag(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators(buffer, index, packet, parent)

  -- Transaction Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, transaction_price_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.transaction_price_type(buffer, index, packet, parent)

  -- Principal Code: 8 Byte Ascii String Nullable
  index, principal_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.principal_code(buffer, index, packet, parent)

  -- Principal Code Cross: 8 Byte Ascii String Nullable
  index, principal_code_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.principal_code_cross(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.end_time_vwap(buffer, index, packet, parent)

  -- Gross Trade Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_trade_amount = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.gross_trade_amount(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number(buffer, index, packet, parent)

  -- Account Number Cross: 12 Byte Ascii String Nullable
  index, account_number_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number_cross(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text(buffer, index, packet, parent)

  -- Free Text Cross: 18 Byte Ascii String Nullable
  index, free_text_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_cross(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Short Code Cross: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_short_code_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_short_code_cross(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.declaration_entry_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.declaration_entry_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.declaration_entry_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_message_fields(buffer, offset, packet, parent)
end

-- Size: Rejected Client Message Sequence Number
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_client_message_sequence_number = 4

-- Display: Rejected Client Message Sequence Number
euronext_optiq_orderentrygateway_sbe_v4_5_display.rejected_client_message_sequence_number = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Rejected Client Message Sequence Number: No Value"
  end

  return "Rejected Client Message Sequence Number: "..value
end

-- Dissect: Rejected Client Message Sequence Number
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_client_message_sequence_number = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_client_message_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rejected_client_message_sequence_number(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rejected_client_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Oeg Out To Member Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional = 8

-- Display: Oeg Out To Member Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_out_to_member_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg Out To Member Optional: No Value"
  end

  return "Oeg Out To Member Optional: "..value
end

-- Dissect: Oeg Out To Member Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_out_to_member_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_out_to_member_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_reject_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_client_message_sequence_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message_id

  return index
end

-- Display: Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.technical_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Rejected Client Message Sequence Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_client_message_sequence_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_client_message_sequence_number(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_message(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_message_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.technical_reject_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.technical_reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.technical_reject_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_reject_message_fields(buffer, offset, packet, parent)
end

-- Size: Log Out Reason Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.log_out_reason_code = 1

-- Display: Log Out Reason Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.log_out_reason_code = function(value)
  if value == 0 then
    return "Log Out Reason Code: Regular Logout (0)"
  end
  if value == 1 then
    return "Log Out Reason Code: End Of Day (1)"
  end
  if value == 2 then
    return "Log Out Reason Code: Toomanyunknownmessages (2)"
  end
  if value == 3 then
    return "Log Out Reason Code: Excessive Numberof Messages (3)"
  end
  if value == 4 then
    return "Log Out Reason Code: Excessive Amountof Datain Bytes (4)"
  end
  if value == 5 then
    return "Log Out Reason Code: Excessive Numberof Messages Amountof Datain Bytes (5)"
  end

  return "Log Out Reason Code: Unknown("..value..")"
end

-- Dissect: Log Out Reason Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.log_out_reason_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.log_out_reason_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.log_out_reason_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.log_out_reason_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logout Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logout_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.log_out_reason_code

  return index
end

-- Display: Logout Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.logout_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logout Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logout_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Log Out Reason Code: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, log_out_reason_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.log_out_reason_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logout_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logout_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logout_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.logout_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.logout_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logout_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_msg_seq_num = 4

-- Display: Last Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_display.last_msg_seq_num = function(value)
  return "Last Msg Seq Num: "..value
end

-- Dissect: Last Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_msg_seq_num = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.last_msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Last Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_cl_msg_seq_num = 4

-- Display: Last Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_display.last_cl_msg_seq_num = function(value)
  return "Last Cl Msg Seq Num: "..value
end

-- Dissect: Last Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_cl_msg_seq_num = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_cl_msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.last_cl_msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_cl_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Logon Reject Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_reject_code = 1

-- Display: Logon Reject Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.logon_reject_code = function(value)
  if value == 1 then
    return "Logon Reject Code: Unknown Connection Identifier (1)"
  end
  if value == 2 then
    return "Logon Reject Code: Systemunavailable (2)"
  end
  if value == 3 then
    return "Logon Reject Code: Invalidsequencenumber (3)"
  end
  if value == 4 then
    return "Logon Reject Code: Clientsessionalreadyloggedon (4)"
  end
  if value == 5 then
    return "Logon Reject Code: Clientsessiondisabled (5)"
  end
  if value == 6 then
    return "Logon Reject Code: Invalid Queueing Indicator (6)"
  end
  if value == 7 then
    return "Logon Reject Code: Invalid Logonformat (7)"
  end

  return "Logon Reject Code: Unknown("..value..")"
end

-- Dissect: Logon Reject Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_reject_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_reject_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.logon_reject_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.logon_reject_code, range, value, display)

  return offset + length, value
end

-- Size: Exchange Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.exchange_id = 8

-- Display: Exchange Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.exchange_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Id: No Value"
  end

  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.exchange_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.exchange_id
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.exchange_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_reject_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.exchange_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_reject_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_msg_seq_num

  return index
end

-- Display: Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.logon_reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 8 Byte Ascii String
  index, exchange_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.exchange_id(buffer, index, packet, parent)

  -- Logon Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, logon_reject_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_reject_code(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_cl_msg_seq_num(buffer, index, packet, parent)

  -- Last Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_reject_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.logon_reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.logon_reject_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_reject_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.exchange_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_cl_msg_seq_num

  return index
end

-- Display: Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.logon_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 8 Byte Ascii String
  index, exchange_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.exchange_id(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_cl_msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.logon_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.logon_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Queueing Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.queueing_indicator = 1

-- Display: Queueing Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_display.queueing_indicator = function(value)
  return "Queueing Indicator: "..value
end

-- Dissect: Queueing Indicator
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.queueing_indicator = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.queueing_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.queueing_indicator(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.queueing_indicator, range, value, display)

  return offset + length, value
end

-- Size: Software Provider
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.software_provider = 8

-- Display: Software Provider
euronext_optiq_orderentrygateway_sbe_v4_5_display.software_provider = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Software Provider: No Value"
  end

  return "Software Provider: "..value
end

-- Dissect: Software Provider
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.software_provider = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.software_provider
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.software_provider(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.software_provider, range, value, display)

  return offset + length, value
end

-- Size: Last Msg Seq Num Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_msg_seq_num_optional = 4

-- Display: Last Msg Seq Num Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.last_msg_seq_num_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Msg Seq Num Optional: No Value"
  end

  return "Last Msg Seq Num Optional: "..value
end

-- Dissect: Last Msg Seq Num Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_msg_seq_num_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_msg_seq_num_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.last_msg_seq_num_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_msg_seq_num_optional, range, value, display)

  return offset + length, value
end

-- Size: Oe Partition Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id = 2

-- Display: Oe Partition Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.oe_partition_id = function(value)
  return "Oe Partition Id: "..value
end

-- Dissect: Oe Partition Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.oe_partition_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oe_partition_id, range, value, display)

  return offset + length, value
end

-- Size: Logical Access Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logical_access_id = 4

-- Display: Logical Access Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.logical_access_id = function(value)
  return "Logical Access Id: "..value
end

-- Dissect: Logical Access Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logical_access_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logical_access_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.logical_access_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.logical_access_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Logon Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logical_access_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_msg_seq_num_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.software_provider

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.queueing_indicator

  return index
end

-- Display: Logon Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.logon_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Logon Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id(buffer, index, packet, parent)

  -- Last Msg Seq Num Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_msg_seq_num_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_msg_seq_num_optional(buffer, index, packet, parent)

  -- Software Provider: 8 Byte Ascii String Nullable
  index, software_provider = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.software_provider(buffer, index, packet, parent)

  -- Queueing Indicator: 1 Byte Unsigned Fixed Width Integer
  index, queueing_indicator = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.queueing_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.logon_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.logon_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.logon_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_message_fields(buffer, offset, packet, parent)
end

-- Size: Error Code Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code_optional = 2

-- Display: Error Code Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.error_code_optional = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Error Code Optional: No Value"
  end

  return "Error Code Optional: "..value
end

-- Dissect: Error Code Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.error_code_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.error_code_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.error_code_optional, range, value, display)

  return offset + length, value
end

-- Size: Ioi Quality Indication
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_quality_indication = 1

-- Display: Ioi Quality Indication
euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_quality_indication = function(value)
  if value == 1 then
    return "Ioi Quality Indication: High (1)"
  end
  if value == 2 then
    return "Ioi Quality Indication: Low (2)"
  end
  if value == 3 then
    return "Ioi Quality Indication: Medium (3)"
  end
  if value == 255 then
    return "Ioi Quality Indication: No Value"
  end

  return "Ioi Quality Indication: Unknown("..value..")"
end

-- Dissect: Ioi Quality Indication
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_quality_indication = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_quality_indication
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_quality_indication(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_quality_indication, range, value, display)

  return offset + length, value
end

-- Size: Ioi Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_quantity = 1

-- Display: Ioi Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_quantity = function(value)
  if value == 1 then
    return "Ioi Quantity: Small (1)"
  end
  if value == 2 then
    return "Ioi Quantity: Medium (2)"
  end
  if value == 3 then
    return "Ioi Quantity: Large (3)"
  end
  if value == 4 then
    return "Ioi Quantity: Undisclosed Quantity (4)"
  end

  return "Ioi Quantity: Unknown("..value..")"
end

-- Dissect: Ioi Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_quantity, range, value, display)

  return offset + length, value
end

-- Size: Order Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_quantity = 8

-- Display: Order Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Quantity: No Value"
  end

  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Ioi Side
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_side = 1

-- Display: Ioi Side
euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_side = function(value)
  if value == 1 then
    return "Ioi Side: Buy (1)"
  end
  if value == 2 then
    return "Ioi Side: Sell (2)"
  end
  if value == 4 then
    return "Ioi Side: Undisclosed (4)"
  end

  return "Ioi Side: Unknown("..value..")"
end

-- Dissect: Ioi Side
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_side = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_side, range, value, display)

  return offset + length, value
end

-- Size: Original Ioiid
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.original_ioiid = 8

-- Display: Original Ioiid
euronext_optiq_orderentrygateway_sbe_v4_5_display.original_ioiid = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Original Ioiid: No Value"
  end

  return "Original Ioiid: "..value
end

-- Dissect: Original Ioiid
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.original_ioiid = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.original_ioiid
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.original_ioiid(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.original_ioiid, range, value, display)

  return offset + length, value
end

-- Size: Ioi Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_type = 1

-- Display: Ioi Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_type = function(value)
  if value == 1 then
    return "Ioi Type: Ack (1)"
  end
  if value == 2 then
    return "Ioi Type: Reject (2)"
  end
  if value == 3 then
    return "Ioi Type: New Ioi Notification (3)"
  end
  if value == 4 then
    return "Ioi Type: Ioi Reply Notification (4)"
  end
  if value == 5 then
    return "Ioi Type: Ioi Cancellation Notification (5)"
  end
  if value == 6 then
    return "Ioi Type: Ioi Replacement Notification (6)"
  end

  return "Ioi Type: Unknown("..value..")"
end

-- Dissect: Ioi Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_type, range, value, display)

  return offset + length, value
end

-- Size: Exchange Ioi Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.exchange_ioi_id_optional = 8

-- Display: Exchange Ioi Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.exchange_ioi_id_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Exchange Ioi Id Optional: No Value"
  end

  return "Exchange Ioi Id Optional: "..value
end

-- Dissect: Exchange Ioi Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.exchange_ioi_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.exchange_ioi_id_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.exchange_ioi_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.exchange_ioi_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Ioi Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_id_optional = 8

-- Display: Ioi Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_id_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Ioi Id Optional: No Value"
  end

  return "Ioi Id Optional: "..value
end

-- Dissect: Ioi Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_id_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Oeg In From Me Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional = 8

-- Display: Oeg In From Me Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_in_from_me_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg In From Me Optional: No Value"
  end

  return "Oeg In From Me Optional: "..value
end

-- Dissect: Oeg In From Me Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_in_from_me_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_in_from_me_optional, range, value, display)

  return offset + length, value
end

-- Size: Book Out Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional = 8

-- Display: Book Out Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.book_out_time_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book Out Time Optional: No Value"
  end

  return "Book Out Time Optional: "..value
end

-- Dissect: Book Out Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.book_out_time_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.book_out_time_optional, range, value, display)

  return offset + length, value
end

-- Size: Book In Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in_optional = 8

-- Display: Book In Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.book_in_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book In Optional: No Value"
  end

  return "Book In Optional: "..value
end

-- Dissect: Book In Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.book_in_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.book_in_optional, range, value, display)

  return offset + length, value
end

-- Size: Oeg Out Time To Me
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me = 8

-- Display: Oeg Out Time To Me
euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_out_time_to_me = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg Out Time To Me: No Value"
  end

  return "Oeg Out Time To Me: "..value
end

-- Dissect: Oeg Out Time To Me
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_out_time_to_me(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_out_time_to_me, range, value, display)

  return offset + length, value
end

-- Size: Oeg In From Member
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member = 8

-- Display: Oeg In From Member
euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_in_from_member = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg In From Member: No Value"
  end

  return "Oeg In From Member: "..value
end

-- Dissect: Oeg In From Member
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_in_from_member(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_in_from_member, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wave For Liquidity Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wave_for_liquidity_notification_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.exchange_ioi_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.original_ioiid

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_quantity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_quantity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_quality_indication

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code_optional

  return index
end

-- Display: Wave For Liquidity Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.wave_for_liquidity_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wave For Liquidity Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wave_for_liquidity_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in_optional(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Ioi Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, ioi_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_id_optional(buffer, index, packet, parent)

  -- Exchange Ioi Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, exchange_ioi_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.exchange_ioi_id_optional(buffer, index, packet, parent)

  -- Ioi Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, ioi_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_type(buffer, index, packet, parent)

  -- Original Ioiid: 8 Byte Signed Fixed Width Integer Nullable
  index, original_ioiid = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.original_ioiid(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm_optional(buffer, index, packet, parent)

  -- Ioi Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioi_side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_side(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_quantity(buffer, index, packet, parent)

  -- Ioi Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ioi_quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_quantity(buffer, index, packet, parent)

  -- Ioi Quality Indication: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ioi_quality_indication = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_quality_indication(buffer, index, packet, parent)

  -- Error Code Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, error_code_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.error_code_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Wave For Liquidity Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wave_for_liquidity_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wave_for_liquidity_notification_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wave_for_liquidity_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wave_for_liquidity_notification_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wave_for_liquidity_notification_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wave_for_liquidity_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Target Counterparties
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.target_counterparties = 2

-- Display: Target Counterparties
euronext_optiq_orderentrygateway_sbe_v4_5_display.target_counterparties = function(buffer, packet, parent)
  local display = ""

  -- Is Local Community Of Specialist Lis flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Local Community Of Specialist Lis|"
  end
  -- Is Local Community Of Specialist Bru flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Local Community Of Specialist Bru|"
  end
  -- Is Local Community Of Specialist Par flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Local Community Of Specialist Par|"
  end
  -- Is Local Community Of Specialist Ams flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Local Community Of Specialist Ams|"
  end
  -- Is Quality Of Sell Side Counterparty flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Quality Of Sell Side Counterparty|"
  end
  -- Is Sell Side flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Sell Side|"
  end
  -- Is Buy Side flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Buy Side|"
  end
  -- Is Holdings flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Holdings|"
  end
  -- Is Interest Lists flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Interest Lists|"
  end
  -- Is Euronext Data Driven flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Euronext Data Driven|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Target Counterparties
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.target_counterparties_bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_6, buffer(offset, 2))

  -- Local Community Of Specialist Lis: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.local_community_of_specialist_lis, buffer(offset, 2))

  -- Local Community Of Specialist Bru: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.local_community_of_specialist_bru, buffer(offset, 2))

  -- Local Community Of Specialist Par: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.local_community_of_specialist_par, buffer(offset, 2))

  -- Local Community Of Specialist Ams: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.local_community_of_specialist_ams, buffer(offset, 2))

  -- Quality Of Sell Side Counterparty: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quality_of_sell_side_counterparty, buffer(offset, 2))

  -- Sell Side: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.sell_side, buffer(offset, 2))

  -- Buy Side: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.buy_side, buffer(offset, 2))

  -- Holdings: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.holdings, buffer(offset, 2))

  -- Interest Lists: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.interest_lists, buffer(offset, 2))

  -- Euronext Data Driven: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.euronext_data_driven, buffer(offset, 2))
end

-- Dissect: Target Counterparties
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.target_counterparties = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.target_counterparties(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.target_counterparties, range, display)

  if show.target_counterparties then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.target_counterparties_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Ioi Transaction Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_transaction_type = 1

-- Display: Ioi Transaction Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_transaction_type = function(value)
  if value == 1 then
    return "Ioi Transaction Type: New (1)"
  end
  if value == 2 then
    return "Ioi Transaction Type: Cancel (2)"
  end
  if value == 3 then
    return "Ioi Transaction Type: Replace (3)"
  end

  return "Ioi Transaction Type: Unknown("..value..")"
end

-- Dissect: Ioi Transaction Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_transaction_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_transaction_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_transaction_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_transaction_type, range, value, display)

  return offset + length, value
end

-- Size: Ioi Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_id = 8

-- Display: Ioi Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_id = function(value)
  return "Ioi Id: "..value
end

-- Dissect: Ioi Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ioi_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ioi_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wave For Liquidity Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wave_for_liquidity_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_transaction_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.original_ioiid

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.target_counterparties

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_quantity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_quantity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_quality_indication

  return index
end

-- Display: Wave For Liquidity Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.wave_for_liquidity_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wave For Liquidity Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wave_for_liquidity_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Ioi Id: 8 Byte Signed Fixed Width Integer
  index, ioi_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_id(buffer, index, packet, parent)

  -- Ioi Transaction Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioi_transaction_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_transaction_type(buffer, index, packet, parent)

  -- Original Ioiid: 8 Byte Signed Fixed Width Integer Nullable
  index, original_ioiid = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.original_ioiid(buffer, index, packet, parent)

  -- Target Counterparties: Struct of 11 fields
  index, target_counterparties = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.target_counterparties(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Ioi Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioi_side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_side(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_quantity(buffer, index, packet, parent)

  -- Ioi Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ioi_quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_quantity(buffer, index, packet, parent)

  -- Ioi Quality Indication: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ioi_quality_indication = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_quality_indication(buffer, index, packet, parent)

  return index
end

-- Dissect: Wave For Liquidity Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wave_for_liquidity_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wave_for_liquidity_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wave_for_liquidity_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wave_for_liquidity_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wave_for_liquidity_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wave_for_liquidity_message_fields(buffer, offset, packet, parent)
end

-- Size: Minimum Order Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.minimum_order_quantity = 8

-- Display: Minimum Order Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_display.minimum_order_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Minimum Order Quantity: No Value"
  end

  return "Minimum Order Quantity: "..value
end

-- Dissect: Minimum Order Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.minimum_order_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.minimum_order_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.minimum_order_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.minimum_order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Dark Execution Instruction Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.dark_execution_instruction_optional = 1

-- Display: Dark Execution Instruction Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.dark_execution_instruction_optional = function(buffer, packet, parent)
  local display = ""

  -- Is Minimum Quantity Type flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Minimum Quantity Type|"
  end
  -- Is Sweep Order Indicator flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Sweep Order Indicator|"
  end
  -- Is Displayed Order Interaction flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Displayed Order Interaction|"
  end
  -- Is Deferred Trade Indicator flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Deferred Trade Indicator|"
  end
  -- Is Dark Indicator flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Dark Indicator|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Dark Execution Instruction Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction_optional_bits = function(buffer, offset, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_3, buffer(offset, 1))

  -- Minimum Quantity Type: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.minimum_quantity_type, buffer(offset, 1))

  -- Sweep Order Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.sweep_order_indicator, buffer(offset, 1))

  -- Displayed Order Interaction: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.displayed_order_interaction, buffer(offset, 1))

  -- Deferred Trade Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.deferred_trade_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Dark Execution Instruction Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction_optional = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.dark_execution_instruction_optional(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_execution_instruction_optional, range, display)

  if show.dark_execution_instruction_optional then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction_optional_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Last Traded Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_traded_quantity = 8

-- Display: Last Traded Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_display.last_traded_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Traded Quantity: No Value"
  end

  return "Last Traded Quantity: "..value
end

-- Dissect: Last Traded Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_traded_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_traded_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.last_traded_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_traded_quantity, range, value, display)

  return offset + length, value
end

-- Size: Order Price
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_price = 8

-- Display: Order Price
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Price: No Value"
  end

  return "Order Price: "..value
end

-- Dissect: Order Price
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_price, range, value, display)

  return offset + length, value
end

-- Size: Order Origin
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_origin = 1

-- Display: Order Origin
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_origin = function(value)
  if value == 1 then
    return "Order Origin: Cob (1)"
  end
  if value == 2 then
    return "Order Origin: Lp Answer (2)"
  end
  if value == 255 then
    return "Order Origin: No Value"
  end

  return "Order Origin: Unknown("..value..")"
end

-- Dissect: Order Origin
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_origin = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_origin
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_origin(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_origin, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfq Counterparts Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_counterparts_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_origin

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_traded_quantity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.dark_execution_instruction_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.minimum_order_quantity

  return index
end

-- Display: Rfq Counterparts Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_counterparts_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Counterparts Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_counterparts_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Origin: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_origin = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_origin(buffer, index, packet, parent)

  -- Order Price: 8 Byte Signed Fixed Width Integer Nullable
  index, order_price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_price(buffer, index, packet, parent)

  -- Last Traded Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_traded_quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_traded_quantity(buffer, index, packet, parent)

  -- Dark Execution Instruction Optional: Struct of 6 fields
  index, dark_execution_instruction_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction_optional(buffer, index, packet, parent)

  -- Minimum Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, minimum_order_quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.minimum_order_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Counterparts Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_counterparts_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_counterparts_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_counterparts_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_counterparts_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_counterparts_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_counterparts_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Rfq Counterparts Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_counterparts_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local rfq_counterparts_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + rfq_counterparts_group_count * 26

  return index
end

-- Display: Rfq Counterparts Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_counterparts_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Counterparts Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_counterparts_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Rfq Counterparts Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_counterparts_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Rfq Counterparts Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_counterparts_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.rfq_counterparts_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_counterparts_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_counterparts_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_counterparts_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_counterparts_groups_fields(buffer, offset, packet, parent)
end

-- Size: Quote Req Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id = 8

-- Display: Quote Req Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_req_id = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_req_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_req_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Size: Oeg Out To Member
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member = 8

-- Display: Oeg Out To Member
euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_out_to_member = function(value)
  return "Oeg Out To Member: "..value
end

-- Dissect: Oeg Out To Member
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_out_to_member(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_out_to_member, range, value, display)

  return offset + length, value
end

-- Size: Oeg In From Me
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me = 8

-- Display: Oeg In From Me
euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_in_from_me = function(value)
  return "Oeg In From Me: "..value
end

-- Dissect: Oeg In From Me
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.oeg_in_from_me(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oeg_in_from_me, range, value, display)

  return offset + length, value
end

-- Size: Book Out Time
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time = 8

-- Display: Book Out Time
euronext_optiq_orderentrygateway_sbe_v4_5_display.book_out_time = function(value)
  return "Book Out Time: "..value
end

-- Dissect: Book Out Time
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.book_out_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.book_out_time, range, value, display)

  return offset + length, value
end

-- Size: Book In
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in = 8

-- Display: Book In
euronext_optiq_orderentrygateway_sbe_v4_5_display.book_in = function(value)
  return "Book In: "..value
end

-- Dissect: Book In
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.book_in(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.book_in, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfq Audit Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_audit_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_counterparts_groups(buffer, offset + index)

  return index
end

-- Display: Rfq Audit Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_audit_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Audit Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_audit_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time(buffer, index, packet, parent)

  -- Oeg In From Me: 8 Byte Unsigned Fixed Width Integer
  index, oeg_in_from_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me(buffer, index, packet, parent)

  -- Oeg Out To Member: 8 Byte Unsigned Fixed Width Integer
  index, oeg_out_to_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_req_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Rfq Counterparts Groups: Struct of 2 fields
  index, rfq_counterparts_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_counterparts_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Audit Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_audit_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.rfq_audit_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_audit_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_audit_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_audit_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_audit_message_fields(buffer, offset, packet, parent)
end

-- Size: Execution Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_id_optional = 4

-- Display: Execution Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_id_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Execution Id Optional: No Value"
  end

  return "Execution Id Optional: "..value
end

-- Dissect: Execution Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Leg Side Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_side_optional = 1

-- Display: Leg Side Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_side_optional = function(value)
  if value == 1 then
    return "Leg Side Optional: Buy (1)"
  end
  if value == 2 then
    return "Leg Side Optional: Sell (2)"
  end
  if value == 255 then
    return "Leg Side Optional: No Value"
  end

  return "Leg Side Optional: Unknown("..value..")"
end

-- Dissect: Leg Side Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_side_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_side_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_side_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_side_optional, range, value, display)

  return offset + length, value
end

-- Size: Leg Instrument Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_instrument_id = 4

-- Display: Leg Instrument Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_instrument_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Instrument Id: No Value"
  end

  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_instrument_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_instrument_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_instrument_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Last Qty
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_qty = 8

-- Display: Leg Last Qty
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_last_qty = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_last_qty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_last_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Last Px
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_px = 8

-- Display: Leg Last Px
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_last_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Dissect: Leg Last Px
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_last_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_last_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_fields_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_instrument_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_id_optional

  return index
end

-- Display: Strategy Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_last_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_last_px(buffer, index, packet, parent)

  -- Leg Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_last_qty(buffer, index, packet, parent)

  -- Leg Instrument Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_instrument_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_instrument_id(buffer, index, packet, parent)

  -- Leg Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_side_optional(buffer, index, packet, parent)

  -- Execution Id Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, execution_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_id_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_fields_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_fields_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_fields_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local strategy_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_fields_group_count * 25

  return index
end

-- Display: Strategy Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Strategy Fields Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Clearing Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_instruction = 2

-- Display: Clearing Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_instruction = function(value)
  if value == 0 then
    return "Clearing Instruction: Processnormallyformerly Systematicposting (0)"
  end
  if value == 8 then
    return "Clearing Instruction: Manualmode (8)"
  end
  if value == 9 then
    return "Clearing Instruction: Automaticpostingmode (9)"
  end
  if value == 10 then
    return "Clearing Instruction: Automaticgiveupmode (10)"
  end
  if value == 4008 then
    return "Clearing Instruction: Automaticandaccountauthorization (4008)"
  end
  if value == 4009 then
    return "Clearing Instruction: Manualandaccountauthorization (4009)"
  end
  if value == 4010 then
    return "Clearing Instruction: Giveuptosinglefirm (4010)"
  end
  if value == 65535 then
    return "Clearing Instruction: No Value"
  end

  return "Clearing Instruction: Unknown("..value..")"
end

-- Dissect: Clearing Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_instruction = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_instruction
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_instruction(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_instruction, range, value, display)

  return offset + length, value
end

-- Size: Open Close
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_close = 2

-- Display: Open Close
euronext_optiq_orderentrygateway_sbe_v4_5_display.open_close = function(buffer, packet, parent)
  local display = ""

  -- Is Leg 9 flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Leg 9|"
  end
  -- Is Leg 8 flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Leg 8|"
  end
  -- Is Leg 7 flag set?
  if buffer:bitfield(8) > 0 then
    display = display.."Leg 7|"
  end
  -- Is Leg 6 flag set?
  if buffer:bitfield(9) > 0 then
    display = display.."Leg 6|"
  end
  -- Is Leg 5 flag set?
  if buffer:bitfield(10) > 0 then
    display = display.."Leg 5|"
  end
  -- Is Leg 4 flag set?
  if buffer:bitfield(11) > 0 then
    display = display.."Leg 4|"
  end
  -- Is Leg 3 flag set?
  if buffer:bitfield(12) > 0 then
    display = display.."Leg 3|"
  end
  -- Is Leg 2 flag set?
  if buffer:bitfield(13) > 0 then
    display = display.."Leg 2|"
  end
  -- Is Leg 1 flag set?
  if buffer:bitfield(14) > 0 then
    display = display.."Leg 1|"
  end
  -- Is Field Actively Used flag set?
  if buffer:bitfield(15) > 0 then
    display = display.."Field Actively Used|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Open Close
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close_bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_6, buffer(offset, 2))

  -- Leg 9: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_9, buffer(offset, 2))

  -- Leg 8: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_8, buffer(offset, 2))

  -- Leg 7: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_7, buffer(offset, 2))

  -- Leg 6: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_6, buffer(offset, 2))

  -- Leg 5: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_5, buffer(offset, 2))

  -- Leg 4: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_4, buffer(offset, 2))

  -- Leg 3: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_3, buffer(offset, 2))

  -- Leg 2: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_2, buffer(offset, 2))

  -- Leg 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_1, buffer(offset, 2))

  -- Field Actively Used: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.field_actively_used, buffer(offset, 2))
end

-- Dissect: Open Close
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.open_close(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.open_close, range, display)

  if show.open_close then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Technical Origin
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_origin = 1

-- Display: Technical Origin
euronext_optiq_orderentrygateway_sbe_v4_5_display.technical_origin = function(value)
  if value == 1 then
    return "Technical Origin: Indextradingarbitrage (1)"
  end
  if value == 2 then
    return "Technical Origin: Portfoliostrategy (2)"
  end
  if value == 3 then
    return "Technical Origin: Unwindorder (3)"
  end
  if value == 4 then
    return "Technical Origin: Otherordersdefault (4)"
  end
  if value == 5 then
    return "Technical Origin: Crossmargining (5)"
  end
  if value == 255 then
    return "Technical Origin: No Value"
  end

  return "Technical Origin: Unknown("..value..")"
end

-- Dissect: Technical Origin
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_origin = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_origin
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.technical_origin(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.technical_origin, range, value, display)

  return offset + length, value
end

-- Size: Long Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.long_client_id = 16

-- Display: Long Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.long_client_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Client Id: No Value"
  end

  return "Long Client Id: "..value
end

-- Dissect: Long Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.long_client_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.long_client_id
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.long_client_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.long_client_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Clearing Fields X Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_x_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.long_client_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_origin

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_close

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_optional

  return index
end

-- Display: Clearing Fields X Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_fields_x_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Fields X Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_x_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.long_client_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_instruction(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type(buffer, index, packet, parent)

  -- Trading Capacity Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Fields X Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_x_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.clearing_fields_x_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_x_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_fields_x_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_fields_x_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_x_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clearing Fields X Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_x_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local clearing_fields_x_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_fields_x_group_count * 43

  return index
end

-- Display: Clearing Fields X Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_fields_x_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Fields X Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_x_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Clearing Fields X Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_x_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Clearing Fields X Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_x_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_fields_x_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_x_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_fields_x_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_fields_x_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_x_groups_fields(buffer, offset, packet, parent)
end

-- Size: Non Executing Broker Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_broker_short_code = 4

-- Display: Non Executing Broker Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.non_executing_broker_short_code = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Non Executing Broker Short Code: No Value"
  end

  return "Non Executing Broker Short Code: "..value
end

-- Dissect: Non Executing Broker Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_broker_short_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_broker_short_code
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.non_executing_broker_short_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.non_executing_broker_short_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_short_codes_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.investment_decision_w_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_broker_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  return index
end

-- Display: Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_short_codes_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_broker_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mifid_short_codes_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_short_codes_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_short_codes_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_short_codes_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_short_codes_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local mifid_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mifid_short_codes_group_count * 12

  return index
end

-- Display: Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_short_codes_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mifid Short Codes Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mifid_short_codes_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_short_codes_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_short_codes_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_short_codes_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_section_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text

  return index
end

-- Display: Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.free_text_section_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text(buffer, index, packet, parent)

  return index
end

-- Dissect: Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.free_text_section_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_section_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.free_text_section_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.free_text_section_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Free Text Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_section_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local free_text_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + free_text_section_group_count * 18

  return index
end

-- Display: Free Text Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.free_text_section_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Free Text Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Free Text Section Group: Struct of 1 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Free Text Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.free_text_section_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_section_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.free_text_section_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.free_text_section_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_groups_fields(buffer, offset, packet, parent)
end

-- Size: Message Price Notation
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message_price_notation = 1

-- Display: Message Price Notation
euronext_optiq_orderentrygateway_sbe_v4_5_display.message_price_notation = function(value)
  if value == 1 then
    return "Message Price Notation: Price (1)"
  end
  if value == 2 then
    return "Message Price Notation: Spreadinbasispoints (2)"
  end
  if value == 3 then
    return "Message Price Notation: Spread (3)"
  end
  if value == 255 then
    return "Message Price Notation: No Value"
  end

  return "Message Price Notation: Unknown("..value..")"
end

-- Dissect: Message Price Notation
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_price_notation = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message_price_notation
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.message_price_notation(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.message_price_notation, range, value, display)

  return offset + length, value
end

-- Size: Order Actor Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_actor_type = 1

-- Display: Order Actor Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_actor_type = function(value)
  if value == 1 then
    return "Order Actor Type: Initiator (1)"
  end
  if value == 2 then
    return "Order Actor Type: Reactor (2)"
  end

  return "Order Actor Type: Unknown("..value..")"
end

-- Dissect: Order Actor Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_actor_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_actor_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_actor_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_actor_type, range, value, display)

  return offset + length, value
end

-- Size: Non Executing Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_client_id = 2

-- Display: Non Executing Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.non_executing_client_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Non Executing Client Id: No Value"
  end

  return "Non Executing Client Id: "..value
end

-- Dissect: Non Executing Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_client_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_client_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.non_executing_client_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.non_executing_client_id, range, value, display)

  return offset + length, value
end

-- Size: Order Qty
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty = 8

-- Display: Order Qty
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_qty = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_qty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Size: Order Px
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_px = 8

-- Display: Order Px
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_px = function(value)
  return "Order Px: "..value
end

-- Dissect: Order Px
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_px, range, value, display)

  return offset + length, value
end

-- Size: Order Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_type = 1

-- Display: Order Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_type = function(value)
  if value == 1 then
    return "Order Type: Market (1)"
  end
  if value == 2 then
    return "Order Type: Limit (2)"
  end
  if value == 3 then
    return "Order Type: Stopmarketor Stopmarketonquote (3)"
  end
  if value == 4 then
    return "Order Type: Stoplimitor Stoplimitonquote (4)"
  end
  if value == 5 then
    return "Order Type: Primary Peg (5)"
  end
  if value == 6 then
    return "Order Type: Markettolimit (6)"
  end
  if value == 7 then
    return "Order Type: Market Peg (7)"
  end
  if value == 8 then
    return "Order Type: Mid Point Peg (8)"
  end
  if value == 9 then
    return "Order Type: Average Price (9)"
  end
  if value == 10 then
    return "Order Type: Iceberg (10)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cross_order_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_client_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_actor_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message_price_notation

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_section_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_short_codes_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_x_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_fields_groups(buffer, offset + index)

  return index
end

-- Display: Cross Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.cross_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cross_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_type(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer
  index, order_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_qty(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_client_id(buffer, index, packet, parent)

  -- Order Actor Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_actor_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_actor_type(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_price_notation(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_groups(buffer, index, packet, parent)

  -- Mifid Short Codes Groups: Struct of 2 fields
  index, mifid_short_codes_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_groups(buffer, index, packet, parent)

  -- Clearing Fields X Groups: Struct of 2 fields
  index, clearing_fields_x_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_x_groups(buffer, index, packet, parent)

  -- Strategy Fields Groups: Struct of 2 fields
  index, strategy_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cross_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cross_order_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cross_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.cross_order_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.cross_order_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cross_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id = 8

-- Display: Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request For Implied Execution Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_for_implied_execution_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators

  return index
end

-- Display: Request For Implied Execution Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.request_for_implied_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Implied Execution Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_for_implied_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Implied Execution Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_for_implied_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_implied_execution_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_for_implied_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.request_for_implied_execution_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_for_implied_execution_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_for_implied_execution_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Ack Clearing Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_clearing_rep_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.investment_decision_w_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_broker_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_client_id

  return index
end

-- Display: Wholesale Ack Clearing Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_ack_clearing_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Ack Clearing Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_clearing_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_broker_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Ack Clearing Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_clearing_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_ack_clearing_rep_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_clearing_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_ack_clearing_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_ack_clearing_rep_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_clearing_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Ack Clearing Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_clearing_rep_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local wholesale_ack_clearing_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_ack_clearing_rep_group_count * 19

  return index
end

-- Display: Wholesale Ack Clearing Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_ack_clearing_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Ack Clearing Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_clearing_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Wholesale Ack Clearing Rep Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_clearing_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Wholesale Ack Clearing Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_clearing_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_ack_clearing_rep_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_clearing_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_ack_clearing_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_ack_clearing_rep_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_clearing_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Leg Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_error_code = 2

-- Display: Leg Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_error_code = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Leg Error Code: No Value"
  end

  return "Leg Error Code: "..value
end

-- Dissect: Leg Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_error_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_error_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_error_code, range, value, display)

  return offset + length, value
end

-- Size: Leg Offer Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_offer_order_id = 8

-- Display: Leg Offer Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_offer_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Offer Order Id: No Value"
  end

  return "Leg Offer Order Id: "..value
end

-- Dissect: Leg Offer Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_offer_order_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_offer_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_offer_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_offer_order_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Bid Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_bid_order_id = 8

-- Display: Leg Bid Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_bid_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Bid Order Id: No Value"
  end

  return "Leg Bid Order Id: "..value
end

-- Dissect: Leg Bid Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_bid_order_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_bid_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_bid_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_bid_order_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_symbol_index = 4

-- Display: Leg Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_symbol_index = function(value)
  return "Leg Symbol Index: "..value
end

-- Dissect: Leg Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_symbol_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wholesale Ack Legs Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_legs_rep_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_bid_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_offer_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_error_code

  return index
end

-- Display: Wholesale Ack Legs Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_ack_legs_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Ack Legs Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_legs_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Bid Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_bid_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_bid_order_id(buffer, index, packet, parent)

  -- Leg Offer Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_offer_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_offer_order_id(buffer, index, packet, parent)

  -- Leg Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_side_optional(buffer, index, packet, parent)

  -- Leg Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, leg_error_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_error_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Ack Legs Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_legs_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_ack_legs_rep_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_legs_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_ack_legs_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_ack_legs_rep_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_legs_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Ack Legs Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_legs_rep_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local wholesale_ack_legs_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_ack_legs_rep_group_count * 23

  return index
end

-- Display: Wholesale Ack Legs Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_ack_legs_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Ack Legs Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_legs_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Wholesale Ack Legs Rep Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_legs_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Wholesale Ack Legs Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_legs_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_ack_legs_rep_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_legs_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_ack_legs_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_ack_legs_rep_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_legs_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_qualifiers = 1

-- Display: Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_qualifiers = function(buffer, packet, parent)
  local display = ""

  -- Is Executed Upon Entry Flag flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Executed Upon Entry Flag|"
  end
  -- Is Execution Upon Entry Flag Enabled flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Execution Upon Entry Flag Enabled|"
  end
  -- Is Internal 2 flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Internal 2|"
  end
  -- Is Internal 1 flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Internal 1|"
  end
  -- Is Use Of Cross Partition flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Use Of Cross Partition|"
  end
  -- Is Request With Client Order Id flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Request With Client Order Id|"
  end
  -- Is Queue Indicator flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Queue Indicator|"
  end
  -- Is Dark Indicator flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Dark Indicator|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_bits = function(buffer, offset, packet, parent)

  -- Executed Upon Entry Flag: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.executed_upon_entry_flag, buffer(offset, 1))

  -- Execution Upon Entry Flag Enabled: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_upon_entry_flag_enabled, buffer(offset, 1))

  -- Internal 2: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.internal_2, buffer(offset, 1))

  -- Internal 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.internal_1, buffer(offset, 1))

  -- Use Of Cross Partition: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.use_of_cross_partition, buffer(offset, 1))

  -- Request With Client Order Id: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_with_client_order_id, buffer(offset, 1))

  -- Queue Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.queue_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_qualifiers(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_qualifiers, range, display)

  if show.ack_qualifiers then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Response Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.response_type = 1

-- Display: Response Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.response_type = function(value)
  if value == 0 then
    return "Response Type: Accept (0)"
  end
  if value == 1 then
    return "Response Type: Reject (1)"
  end

  return "Response Type: Unknown("..value..")"
end

-- Dissect: Response Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.response_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.response_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.response_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.response_type, range, value, display)

  return offset + length, value
end

-- Size: Escb Membership
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.escb_membership = 1

-- Display: Escb Membership
euronext_optiq_orderentrygateway_sbe_v4_5_display.escb_membership = function(value)
  -- Check if field has value
  if value == 255 then
    return "Escb Membership: No Value"
  end

  return "Escb Membership: "..value
end

-- Dissect: Escb Membership
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.escb_membership = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.escb_membership
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.escb_membership(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.escb_membership, range, value, display)

  return offset + length, value
end

-- Size: Wholesale Side
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_side = 1

-- Display: Wholesale Side
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_side = function(value)
  if value == 1 then
    return "Wholesale Side: Buy (1)"
  end
  if value == 2 then
    return "Wholesale Side: Sell (2)"
  end
  if value == 3 then
    return "Wholesale Side: Cross (3)"
  end

  return "Wholesale Side: Unknown("..value..")"
end

-- Dissect: Wholesale Side
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_side = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_side, range, value, display)

  return offset + length, value
end

-- Size: Strategy Code Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_code_optional = 1

-- Display: Strategy Code Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_code_optional = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Strategy Code Optional: No Value"
  end

  if value == "A" then
    return "Strategy Code Optional: Jelly Roll (A)"
  end
  if value == "B" then
    return "Strategy Code Optional: Butterfly (B)"
  end
  if value == "C" then
    return "Strategy Code Optional: Callor Put Cabinet (C)"
  end
  if value == "D" then
    return "Strategy Code Optional: Spread (D)"
  end
  if value == "E" then
    return "Strategy Code Optional: Calendar Spread (E)"
  end
  if value == "F" then
    return "Strategy Code Optional: Diagonal Calendar Spread (F)"
  end
  if value == "G" then
    return "Strategy Code Optional: Guts (G)"
  end
  if value == "H" then
    return "Strategy Code Optional: Twoby One Ratio Spread (H)"
  end
  if value == "I" then
    return "Strategy Code Optional: Iron Butterfly (I)"
  end
  if value == "J" then
    return "Strategy Code Optional: Combo (J)"
  end
  if value == "K" then
    return "Strategy Code Optional: Strangle (K)"
  end
  if value == "L" then
    return "Strategy Code Optional: Ladder (L)"
  end
  if value == "M" then
    return "Strategy Code Optional: Strip (M)"
  end
  if value == "N" then
    return "Strategy Code Optional: Straddle Calendar Spread (N)"
  end
  if value == "O" then
    return "Strategy Code Optional: Pack (O)"
  end
  if value == "P" then
    return "Strategy Code Optional: Diagonal Straddle Calendar Spread (P)"
  end
  if value == "Q" then
    return "Strategy Code Optional: Simple Inter Commodity Spread (Q)"
  end
  if value == "R" then
    return "Strategy Code Optional: Conversion Reversal (R)"
  end
  if value == "S" then
    return "Strategy Code Optional: Straddle (S)"
  end
  if value == "V" then
    return "Strategy Code Optional: Volatility Trade (V)"
  end
  if value == "W" then
    return "Strategy Code Optional: Condor (W)"
  end
  if value == "X" then
    return "Strategy Code Optional: Box (X)"
  end
  if value == "Y" then
    return "Strategy Code Optional: Bundle (Y)"
  end
  if value == "Z" then
    return "Strategy Code Optional: Reduced Tick Spread (Z)"
  end
  if value == "a" then
    return "Strategy Code Optional: Ladderversus Underlying (a)"
  end
  if value == "b" then
    return "Strategy Code Optional: Butterflyversus Underlying (b)"
  end
  if value == "c" then
    return "Strategy Code Optional: Call Spreadversus Putversus Underlying (c)"
  end
  if value == "d" then
    return "Strategy Code Optional: Callor Put Spreadversus Underlying (d)"
  end
  if value == "e" then
    return "Strategy Code Optional: Callor Put Calendar Spreadversus Underlying (e)"
  end
  if value == "f" then
    return "Strategy Code Optional: Call Put Diagonal Calendar Spreadversus Underlying (f)"
  end
  if value == "g" then
    return "Strategy Code Optional: Gutsversus Underlying (g)"
  end
  if value == "h" then
    return "Strategy Code Optional: Twoby One Callor Put Ratio Spreadversus Underlying (h)"
  end
  if value == "i" then
    return "Strategy Code Optional: Iron Butterflyversus Underlying (i)"
  end
  if value == "j" then
    return "Strategy Code Optional: Comboversus Underlying (j)"
  end
  if value == "k" then
    return "Strategy Code Optional: Strangleversus Underlying (k)"
  end
  if value == "m" then
    return "Strategy Code Optional: Exchangefor Physical (m)"
  end
  if value == "n" then
    return "Strategy Code Optional: Straddle Calendar Spreadversus Underlying (n)"
  end
  if value == "p" then
    return "Strategy Code Optional: Put Spreadversus Callversus Underlying (p)"
  end
  if value == "q" then
    return "Strategy Code Optional: Diagonal Straddle Calendar Spreadversus Underlying (q)"
  end
  if value == "r" then
    return "Strategy Code Optional: Synthetic (r)"
  end
  if value == "s" then
    return "Strategy Code Optional: Straddleversus Underlying (s)"
  end
  if value == "t" then
    return "Strategy Code Optional: Condorversus Underlying (t)"
  end
  if value == "u" then
    return "Strategy Code Optional: Buy Write (u)"
  end
  if value == "v" then
    return "Strategy Code Optional: Iron Condorversus Underlying (v)"
  end
  if value == "w" then
    return "Strategy Code Optional: Iron Condor (w)"
  end
  if value == "x" then
    return "Strategy Code Optional: Call Spreadversus Sella Put (x)"
  end
  if value == "y" then
    return "Strategy Code Optional: Put Spreadversus Sella Call (y)"
  end
  if value == "z" then
    return "Strategy Code Optional: Put Straddleversus Sella Callora Put (z)"
  end
  if value == 0 then
    return "Strategy Code Optional: No Value"
  end

  return "Strategy Code Optional: Unknown("..value..")"
end

-- Dissect: Strategy Code Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_code_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_code_optional
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_code_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_code_optional, range, value, display)

  return offset + length, value
end

-- Size: Lis Transaction Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lis_transaction_id = 4

-- Display: Lis Transaction Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.lis_transaction_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Lis Transaction Id: No Value"
  end

  return "Lis Transaction Id: "..value
end

-- Dissect: Lis Transaction Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lis_transaction_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lis_transaction_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.lis_transaction_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.lis_transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Wholesale Trade Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_trade_type = 1

-- Display: Wholesale Trade Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_trade_type = function(value)
  if value == 0 then
    return "Wholesale Trade Type: Largein Scale Trade Formerly Block Trade (0)"
  end
  if value == 1 then
    return "Wholesale Trade Type: Against Actual (1)"
  end
  if value == 2 then
    return "Wholesale Trade Type: Exchange For Swaps (2)"
  end

  return "Wholesale Trade Type: Unknown("..value..")"
end

-- Dissect: Wholesale Trade Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_trade_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_trade_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_trade_type, range, value, display)

  return offset + length, value
end

-- Size: Contract Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_symbol_index = 4

-- Display: Contract Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_display.contract_symbol_index = function(value)
  return "Contract Symbol Index: "..value
end

-- Dissect: Contract Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.contract_symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.contract_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.contract_symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Sending Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional = 8

-- Display: Sending Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.sending_time_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Sending Time Optional: No Value"
  end

  return "Sending Time Optional: "..value
end

-- Dissect: Sending Time Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.sending_time_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.sending_time_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wholesale Order Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_order_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_trade_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lis_transaction_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_code_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quantity_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.escb_membership

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.response_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_qualifiers

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_legs_rep_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_ack_clearing_rep_groups(buffer, offset + index)

  return index
end

-- Display: Wholesale Order Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_order_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Order Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_order_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in_optional(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id_optional(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Wholesale Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_trade_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_trade_type(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Strategy Code Optional: 1 Byte Ascii String Enum with 49 values
  index, strategy_code_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_code_optional(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_optional(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quantity_optional(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators(buffer, index, packet, parent)

  -- Wholesale Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_side(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.escb_membership(buffer, index, packet, parent)

  -- Response Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, response_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.response_type(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.error_code(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Wholesale Ack Legs Rep Groups: Struct of 2 fields
  index, wholesale_ack_legs_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_legs_rep_groups(buffer, index, packet, parent)

  -- Wholesale Ack Clearing Rep Groups: Struct of 2 fields
  index, wholesale_ack_clearing_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_ack_clearing_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Order Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_order_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_order_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_order_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_order_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_order_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_order_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Client Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_client_rep_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.long_client_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_origin

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_close

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_client_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.investment_decision_w_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_broker_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity_optional

  return index
end

-- Display: Wholesale Client Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_client_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Client Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_client_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.long_client_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_client_id(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_broker_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Trading Capacity Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Client Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_client_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_client_rep_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_client_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_client_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_client_rep_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_client_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Client Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_client_rep_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local wholesale_client_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_client_rep_group_count * 80

  return index
end

-- Display: Wholesale Client Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_client_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Client Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_client_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Wholesale Client Rep Group: Struct of 15 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_client_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Wholesale Client Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_client_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_client_rep_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_client_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_client_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_client_rep_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_client_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Leg Last Trading Date
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_trading_date = 8

-- Display: Leg Last Trading Date
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_last_trading_date = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Last Trading Date: No Value"
  end

  return "Leg Last Trading Date: "..value
end

-- Dissect: Leg Last Trading Date
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_last_trading_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_trading_date
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_last_trading_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_last_trading_date, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_security_type = 1

-- Display: Leg Security Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_security_type = function(value)
  if value == 0 then
    return "Leg Security Type: Future (0)"
  end
  if value == 1 then
    return "Leg Security Type: Option (1)"
  end
  if value == 2 then
    return "Leg Security Type: Cash (2)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_security_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_security_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Put Or Call
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_put_or_call = 1

-- Display: Leg Put Or Call
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_put_or_call = function(value)
  if value == 1 then
    return "Leg Put Or Call: Call (1)"
  end
  if value == 0 then
    return "Leg Put Or Call: Put (0)"
  end
  if value == 255 then
    return "Leg Put Or Call: No Value"
  end

  return "Leg Put Or Call: Unknown("..value..")"
end

-- Dissect: Leg Put Or Call
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_put_or_call = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_put_or_call(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_ratio_optional = 4

-- Display: Leg Ratio Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_ratio_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Ratio Optional: No Value"
  end

  return "Leg Ratio Optional: "..value
end

-- Dissect: Leg Ratio Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_ratio_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_ratio_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_ratio_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_ratio_optional, range, value, display)

  return offset + length, value
end

-- Size: Leg Strike Price
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_strike_price = 8

-- Display: Leg Strike Price
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_strike_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Strike Price: No Value"
  end

  return "Leg Strike Price: "..value
end

-- Dissect: Leg Strike Price
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_strike_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_strike_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_strike_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_strike_price, range, value, display)

  return offset + length, value
end

-- Size: Offer Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_quantity = 8

-- Display: Offer Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Quantity: No Value"
  end

  return "Offer Quantity: "..value
end

-- Dissect: Offer Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_quantity, range, value, display)

  return offset + length, value
end

-- Size: Bid Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_quantity = 8

-- Display: Bid Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Quantity: No Value"
  end

  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Leg Price
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_price = 8

-- Display: Leg Price
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_price = function(value)
  return "Leg Price: "..value
end

-- Dissect: Leg Price
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wholesale Legs Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_legs_rep_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_quantity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_quantity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_strike_price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_ratio_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_put_or_call

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_security_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_trading_date

  return index
end

-- Display: Wholesale Legs Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_legs_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Legs Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_legs_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer
  index, leg_price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_price(buffer, index, packet, parent)

  -- Bid Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_quantity(buffer, index, packet, parent)

  -- Offer Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_quantity(buffer, index, packet, parent)

  -- Leg Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_side_optional(buffer, index, packet, parent)

  -- Leg Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_strike_price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_strike_price(buffer, index, packet, parent)

  -- Leg Ratio Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_ratio_optional(buffer, index, packet, parent)

  -- Leg Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_put_or_call = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_put_or_call(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Last Trading Date: 8 Byte Ascii String Nullable
  index, leg_last_trading_date = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_last_trading_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Legs Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_legs_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_legs_rep_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_legs_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_legs_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_legs_rep_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_legs_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Legs Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_legs_rep_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local wholesale_legs_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_legs_rep_group_count * 51

  return index
end

-- Display: Wholesale Legs Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_legs_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Legs Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_legs_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Wholesale Legs Rep Group: Struct of 10 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_legs_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Wholesale Legs Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_legs_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_legs_rep_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_legs_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.wholesale_legs_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.wholesale_legs_rep_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_legs_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quantity = 8

-- Display: Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quantity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: New Wholesale Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.new_wholesale_order_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_trade_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lis_transaction_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_code_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quantity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.escb_membership

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message_price_notation

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_legs_rep_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_client_rep_groups(buffer, offset + index)

  return index
end

-- Display: New Wholesale Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.new_wholesale_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Wholesale Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.new_wholesale_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Wholesale Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_trade_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_trade_type(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Strategy Code Optional: 1 Byte Ascii String Enum with 49 values
  index, strategy_code_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_code_optional(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quantity(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators(buffer, index, packet, parent)

  -- Wholesale Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_side(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.escb_membership(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_price_notation(buffer, index, packet, parent)

  -- Wholesale Legs Rep Groups: Struct of 2 fields
  index, wholesale_legs_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_legs_rep_groups(buffer, index, packet, parent)

  -- Wholesale Client Rep Groups: Struct of 2 fields
  index, wholesale_client_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_client_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: New Wholesale Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.new_wholesale_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_wholesale_order_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.new_wholesale_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.new_wholesale_order_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.new_wholesale_order_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.new_wholesale_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Breach Status
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breach_status = 1

-- Display: Breach Status
euronext_optiq_orderentrygateway_sbe_v4_5_display.breach_status = function(value)
  -- Check if field has value
  if value == 255 then
    return "Breach Status: No Value"
  end

  return "Breach Status: "..value
end

-- Dissect: Breach Status
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.breach_status = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breach_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.breach_status(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.breach_status, range, value, display)

  return offset + length, value
end

-- Size: Current Mmp Position
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.current_mmp_position = 8

-- Display: Current Mmp Position
euronext_optiq_orderentrygateway_sbe_v4_5_display.current_mmp_position = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Current Mmp Position: No Value"
  end

  return "Current Mmp Position: "..value
end

-- Dissect: Current Mmp Position
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.current_mmp_position = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.current_mmp_position
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.current_mmp_position(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.current_mmp_position, range, value, display)

  return offset + length, value
end

-- Size: Breach Action
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breach_action = 1

-- Display: Breach Action
euronext_optiq_orderentrygateway_sbe_v4_5_display.breach_action = function(value)
  if value == 0 then
    return "Breach Action: Ignore (0)"
  end
  if value == 1 then
    return "Breach Action: Pull (1)"
  end
  if value == 255 then
    return "Breach Action: No Value"
  end

  return "Breach Action: Unknown("..value..")"
end

-- Dissect: Breach Action
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.breach_action = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breach_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.breach_action(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.breach_action, range, value, display)

  return offset + length, value
end

-- Size: Protection Threshold
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_threshold = 8

-- Display: Protection Threshold
euronext_optiq_orderentrygateway_sbe_v4_5_display.protection_threshold = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Protection Threshold: No Value"
  end

  return "Protection Threshold: "..value
end

-- Dissect: Protection Threshold
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.protection_threshold = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_threshold
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.protection_threshold(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.protection_threshold, range, value, display)

  return offset + length, value
end

-- Size: Protection Type Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_type_optional = 1

-- Display: Protection Type Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.protection_type_optional = function(value)
  if value == 1 then
    return "Protection Type Optional: Delta (1)"
  end
  if value == 2 then
    return "Protection Type Optional: Volume (2)"
  end
  if value == 255 then
    return "Protection Type Optional: No Value"
  end

  return "Protection Type Optional: Unknown("..value..")"
end

-- Dissect: Protection Type Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.protection_type_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_type_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.protection_type_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.protection_type_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mmp Section2 Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section2_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_type_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_threshold

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breach_action

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.current_mmp_position

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breach_status

  return index
end

-- Display: Mmp Section2 Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_section2_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mmp Section2 Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section2_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protection Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, protection_type_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.protection_type_optional(buffer, index, packet, parent)

  -- Protection Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, protection_threshold = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.protection_threshold(buffer, index, packet, parent)

  -- Breach Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, breach_action = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.breach_action(buffer, index, packet, parent)

  -- Current Mmp Position: 8 Byte Signed Fixed Width Integer Nullable
  index, current_mmp_position = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.current_mmp_position(buffer, index, packet, parent)

  -- Breach Status: 1 Byte Unsigned Fixed Width Integer Nullable
  index, breach_status = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.breach_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmp Section2 Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section2_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mmp_section2_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section2_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_section2_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_section2_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section2_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mmp Section2 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section2_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local mmp_section2_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mmp_section2_group_count * 19

  return index
end

-- Display: Mmp Section2 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_section2_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mmp Section2 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section2_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mmp Section2 Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section2_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mmp Section2 Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section2_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mmp_section2_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section2_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_section2_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_section2_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section2_groups_fields(buffer, offset, packet, parent)
end

-- Size: Mmp Execution Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_execution_type = 1

-- Display: Mmp Execution Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_execution_type = function(buffer, packet, parent)
  local display = ""

  -- Is Pull flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Pull|"
  end
  -- Is Acknowledgement flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Acknowledgement|"
  end
  -- Is Notification flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Notification|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Mmp Execution Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_execution_type_bits = function(buffer, offset, packet, parent)

  -- Reserved 5: 5 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_5, buffer(offset, 1))

  -- Pull: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.pull, buffer(offset, 1))

  -- Acknowledgement: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.acknowledgement, buffer(offset, 1))

  -- Notification: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.notification, buffer(offset, 1))
end

-- Dissect: Mmp Execution Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_execution_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_execution_type(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_execution_type, range, display)

  if show.mmp_execution_type then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_execution_type_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Mm Protection Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_protection_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_execution_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section2_groups(buffer, offset + index)

  return index
end

-- Display: Mm Protection Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.mm_protection_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Protection Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_protection_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in_optional(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id_optional(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Mmp Execution Type: Struct of 4 fields
  index, mmp_execution_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_execution_type(buffer, index, packet, parent)

  -- Mmp Section2 Groups: Struct of 2 fields
  index, mmp_section2_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section2_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Protection Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_protection_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mm_protection_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_protection_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mm_protection_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mm_protection_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_protection_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Protection Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_type = 1

-- Display: Protection Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.protection_type = function(value)
  if value == 1 then
    return "Protection Type: Delta (1)"
  end
  if value == 2 then
    return "Protection Type: Volume (2)"
  end

  return "Protection Type: Unknown("..value..")"
end

-- Dissect: Protection Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.protection_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.protection_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.protection_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mmp Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.protection_threshold

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breach_action

  return index
end

-- Display: Mmp Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_section_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mmp Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protection Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, protection_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.protection_type(buffer, index, packet, parent)

  -- Protection Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, protection_threshold = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.protection_threshold(buffer, index, packet, parent)

  -- Breach Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, breach_action = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.breach_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmp Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mmp_section_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_section_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_section_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mmp Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local mmp_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mmp_section_group_count * 10

  return index
end

-- Display: Mmp Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_section_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mmp Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mmp Section Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mmp Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mmp_section_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mmp_section_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mmp_section_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section_groups_fields(buffer, offset, packet, parent)
end

-- Size: Request Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_type = 1

-- Display: Request Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.request_type = function(value)
  if value == 1 then
    return "Request Type: Set (1)"
  end
  if value == 2 then
    return "Request Type: Get (2)"
  end
  if value == 3 then
    return "Request Type: Adjust (3)"
  end

  return "Request Type: Unknown("..value..")"
end

-- Dissect: Request Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.request_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mm Protection Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_protection_request_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mmp_section_groups(buffer, offset + index)

  return index
end

-- Display: Mm Protection Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.mm_protection_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Protection Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_protection_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, request_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_type(buffer, index, packet, parent)

  -- Mmp Section Groups: Struct of 2 fields
  index, mmp_section_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mmp_section_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Protection Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_protection_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mm_protection_request_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_protection_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mm_protection_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mm_protection_request_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_protection_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Security Req Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_req_id = 8

-- Display: Security Req Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.security_req_id = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_req_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_req_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.security_req_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_definition_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_req_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  return index
end

-- Display: Security Definition Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.security_definition_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_definition_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in_optional(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Signed Fixed Width Integer
  index, security_req_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_req_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_definition_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_definition_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_definition_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.security_definition_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.security_definition_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_definition_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Side
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_side = 1

-- Display: Leg Side
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Price Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_price_optional = 8

-- Display: Leg Price Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_price_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Price Optional: No Value"
  end

  return "Leg Price Optional: "..value
end

-- Dissect: Leg Price Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_price_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_price_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_price_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_price_optional, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_ratio = 4

-- Display: Leg Ratio
euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Legs Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_legs_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_ratio

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_security_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_put_or_call

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_price_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_strike_price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_last_trading_date

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leg_side

  return index
end

-- Display: Strategy Legs Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_legs_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Legs Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_legs_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_put_or_call = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_put_or_call(buffer, index, packet, parent)

  -- Leg Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_price_optional(buffer, index, packet, parent)

  -- Leg Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_strike_price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_strike_price(buffer, index, packet, parent)

  -- Leg Last Trading Date: 8 Byte Ascii String Nullable
  index, leg_last_trading_date = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_last_trading_date(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Legs Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_legs_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_legs_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_legs_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_legs_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_legs_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_legs_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Legs Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_legs_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local strategy_legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_legs_group_count * 35

  return index
end

-- Display: Strategy Legs Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_legs_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Legs Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_legs_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Strategy Legs Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_legs_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Legs Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_legs_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_legs_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_legs_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_legs_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_legs_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_legs_groups_fields(buffer, offset, packet, parent)
end

-- Size: Strategy Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_code = 1

-- Display: Strategy Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_code = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Strategy Code: No Value"
  end

  if value == "A" then
    return "Strategy Code: Jelly Roll (A)"
  end
  if value == "B" then
    return "Strategy Code: Butterfly (B)"
  end
  if value == "C" then
    return "Strategy Code: Callor Put Cabinet (C)"
  end
  if value == "D" then
    return "Strategy Code: Spread (D)"
  end
  if value == "E" then
    return "Strategy Code: Calendar Spread (E)"
  end
  if value == "F" then
    return "Strategy Code: Diagonal Calendar Spread (F)"
  end
  if value == "G" then
    return "Strategy Code: Guts (G)"
  end
  if value == "H" then
    return "Strategy Code: Twoby One Ratio Spread (H)"
  end
  if value == "I" then
    return "Strategy Code: Iron Butterfly (I)"
  end
  if value == "J" then
    return "Strategy Code: Combo (J)"
  end
  if value == "K" then
    return "Strategy Code: Strangle (K)"
  end
  if value == "L" then
    return "Strategy Code: Ladder (L)"
  end
  if value == "M" then
    return "Strategy Code: Strip (M)"
  end
  if value == "N" then
    return "Strategy Code: Straddle Calendar Spread (N)"
  end
  if value == "O" then
    return "Strategy Code: Pack (O)"
  end
  if value == "P" then
    return "Strategy Code: Diagonal Straddle Calendar Spread (P)"
  end
  if value == "Q" then
    return "Strategy Code: Simple Inter Commodity Spread (Q)"
  end
  if value == "R" then
    return "Strategy Code: Conversion Reversal (R)"
  end
  if value == "S" then
    return "Strategy Code: Straddle (S)"
  end
  if value == "V" then
    return "Strategy Code: Volatility Trade (V)"
  end
  if value == "W" then
    return "Strategy Code: Condor (W)"
  end
  if value == "X" then
    return "Strategy Code: Box (X)"
  end
  if value == "Y" then
    return "Strategy Code: Bundle (Y)"
  end
  if value == "Z" then
    return "Strategy Code: Reduced Tick Spread (Z)"
  end
  if value == "a" then
    return "Strategy Code: Ladderversus Underlying (a)"
  end
  if value == "b" then
    return "Strategy Code: Butterflyversus Underlying (b)"
  end
  if value == "c" then
    return "Strategy Code: Call Spreadversus Putversus Underlying (c)"
  end
  if value == "d" then
    return "Strategy Code: Callor Put Spreadversus Underlying (d)"
  end
  if value == "e" then
    return "Strategy Code: Callor Put Calendar Spreadversus Underlying (e)"
  end
  if value == "f" then
    return "Strategy Code: Call Put Diagonal Calendar Spreadversus Underlying (f)"
  end
  if value == "g" then
    return "Strategy Code: Gutsversus Underlying (g)"
  end
  if value == "h" then
    return "Strategy Code: Twoby One Callor Put Ratio Spreadversus Underlying (h)"
  end
  if value == "i" then
    return "Strategy Code: Iron Butterflyversus Underlying (i)"
  end
  if value == "j" then
    return "Strategy Code: Comboversus Underlying (j)"
  end
  if value == "k" then
    return "Strategy Code: Strangleversus Underlying (k)"
  end
  if value == "m" then
    return "Strategy Code: Exchangefor Physical (m)"
  end
  if value == "n" then
    return "Strategy Code: Straddle Calendar Spreadversus Underlying (n)"
  end
  if value == "p" then
    return "Strategy Code: Put Spreadversus Callversus Underlying (p)"
  end
  if value == "q" then
    return "Strategy Code: Diagonal Straddle Calendar Spreadversus Underlying (q)"
  end
  if value == "r" then
    return "Strategy Code: Synthetic (r)"
  end
  if value == "s" then
    return "Strategy Code: Straddleversus Underlying (s)"
  end
  if value == "t" then
    return "Strategy Code: Condorversus Underlying (t)"
  end
  if value == "u" then
    return "Strategy Code: Buy Write (u)"
  end
  if value == "v" then
    return "Strategy Code: Iron Condorversus Underlying (v)"
  end
  if value == "w" then
    return "Strategy Code: Iron Condor (w)"
  end
  if value == "x" then
    return "Strategy Code: Call Spreadversus Sella Put (x)"
  end
  if value == "y" then
    return "Strategy Code: Put Spreadversus Sella Call (y)"
  end
  if value == "z" then
    return "Strategy Code: Put Straddleversus Sella Callora Put (z)"
  end

  return "Strategy Code: Unknown("..value..")"
end

-- Dissect: Strategy Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.strategy_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Security Definition Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_definition_request_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_req_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_legs_groups(buffer, offset + index)

  return index
end

-- Display: Security Definition Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.security_definition_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Definition Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_definition_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Signed Fixed Width Integer
  index, security_req_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_req_id(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 48 values
  index, strategy_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_code(buffer, index, packet, parent)

  -- Strategy Legs Groups: Struct of 2 fields
  index, strategy_legs_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_legs_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_definition_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_definition_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.security_definition_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.security_definition_request_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_definition_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Last Book In Time
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_book_in_time = 8

-- Display: Last Book In Time
euronext_optiq_orderentrygateway_sbe_v4_5_display.last_book_in_time = function(value)
  return "Last Book In Time: "..value
end

-- Dissect: Last Book In Time
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_book_in_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_book_in_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.last_book_in_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_book_in_time, range, value, display)

  return offset + length, value
end

-- Size: Resynchronization Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.resynchronization_id = 2

-- Display: Resynchronization Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.resynchronization_id = function(value)
  return "Resynchronization Id: "..value
end

-- Dissect: Resynchronization Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.resynchronization_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.resynchronization_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.resynchronization_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.resynchronization_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.synchronization_time_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.resynchronization_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_book_in_time

  return index
end

-- Display: Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.synchronization_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.synchronization_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Resynchronization Id: 2 Byte Unsigned Fixed Width Integer
  index, resynchronization_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.resynchronization_id(buffer, index, packet, parent)

  -- Last Book In Time: 8 Byte Unsigned Fixed Width Integer
  index, last_book_in_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_book_in_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.synchronization_time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.synchronization_time_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.synchronization_time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.synchronization_time_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.synchronization_time_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.synchronization_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Synchronization Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_synchronization_section_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  return index
end

-- Display: Instrument Synchronization Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.instrument_synchronization_section_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Synchronization Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_section_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization Section Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_section_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_synchronization_section_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_synchronization_section_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.instrument_synchronization_section_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.instrument_synchronization_section_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_section_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Synchronization Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_synchronization_section_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local instrument_synchronization_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrument_synchronization_section_group_count * 5

  return index
end

-- Display: Instrument Synchronization Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.instrument_synchronization_section_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Synchronization Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_section_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Instrument Synchronization Section Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_section_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Instrument Synchronization Section Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_section_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_synchronization_section_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_synchronization_section_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.instrument_synchronization_section_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.instrument_synchronization_section_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_section_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_synchronization_list_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.resynchronization_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_synchronization_section_groups(buffer, offset + index)

  return index
end

-- Display: Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.instrument_synchronization_list_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_list_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Resynchronization Id: 2 Byte Unsigned Fixed Width Integer
  index, resynchronization_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.resynchronization_id(buffer, index, packet, parent)

  -- Instrument Synchronization Section Groups: Struct of 2 fields
  index, instrument_synchronization_section_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_section_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_list_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_synchronization_list_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_synchronization_list_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.instrument_synchronization_list_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.instrument_synchronization_list_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_list_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mm Sign In Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_sign_in_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logical_access_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_origin

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_close

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.long_client_id

  return index
end

-- Display: Mm Sign In Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.mm_sign_in_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Sign In Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_sign_in_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.long_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Sign In Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_sign_in_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_sign_in_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_sign_in_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mm_sign_in_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mm_sign_in_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_sign_in_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mm Sign In Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_sign_in_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logical_access_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_origin

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_close

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.long_client_id

  return index
end

-- Display: Mm Sign In Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.mm_sign_in_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm Sign In Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_sign_in_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.long_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Sign In Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_sign_in_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_sign_in_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_sign_in_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mm_sign_in_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mm_sign_in_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_sign_in_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Size Limit
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_size_limit = 8

-- Display: Order Size Limit
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_size_limit = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Size Limit: No Value"
  end

  return "Order Size Limit: "..value
end

-- Dissect: Order Size Limit
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_size_limit = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_size_limit
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_size_limit(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_size_limit, range, value, display)

  return offset + length, value
end

-- Size: Lp Role Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional = 4

-- Display: Lp Role Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.lp_role_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Lp Role Optional: No Value"
  end

  return "Lp Role Optional: "..value
end

-- Dissect: Lp Role Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.lp_role_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.lp_role_optional, range, value, display)

  return offset + length, value
end

-- Size: User Status
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.user_status = 1

-- Display: User Status
euronext_optiq_orderentrygateway_sbe_v4_5_display.user_status = function(value)
  if value == 1 then
    return "User Status: Trader Algo Suspended (1)"
  end
  if value == 2 then
    return "User Status: Trader Algo Suspension Cleared (2)"
  end
  if value == 3 then
    return "User Status: Trader Algo Killed (3)"
  end
  if value == 4 then
    return "User Status: Trader Algo Kill Cleared (4)"
  end
  if value == 5 then
    return "User Status: Firm Suspended (5)"
  end
  if value == 6 then
    return "User Status: Firm Suspension Cleared (6)"
  end
  if value == 7 then
    return "User Status: Firm Killed (7)"
  end
  if value == 8 then
    return "User Status: Firm Kill Cleared (8)"
  end
  if value == 9 then
    return "User Status: Dea Suspended (9)"
  end
  if value == 10 then
    return "User Status: Dea Suspension Cleared (10)"
  end
  if value == 11 then
    return "User Status: Dea Killed (11)"
  end
  if value == 12 then
    return "User Status: Dea Kill Cleared (12)"
  end
  if value == 13 then
    return "User Status: Trader Algo Suspendedby Risk Manager (13)"
  end
  if value == 14 then
    return "User Status: Trader Algo Unsuspendedby Risk Manager (14)"
  end
  if value == 15 then
    return "User Status: Firm Suspendedby Risk Manager (15)"
  end
  if value == 16 then
    return "User Status: Firm Unsuspendedby Risk Manager (16)"
  end
  if value == 17 then
    return "User Status: Dea Suspendedby Risk Manager (17)"
  end
  if value == 18 then
    return "User Status: Dea Unsuspendedby Risk Manager (18)"
  end
  if value == 19 then
    return "User Status: Logical Access Suspendedby Risk Manager (19)"
  end
  if value == 20 then
    return "User Status: Logical Access Unsuspendedby Risk Manager (20)"
  end
  if value == 21 then
    return "User Status: Trader Algo Blockedby Risk Manager (21)"
  end
  if value == 22 then
    return "User Status: Trader Algo Unblockedby Risk Manager (22)"
  end
  if value == 23 then
    return "User Status: Firm Blockedby Risk Manager (23)"
  end
  if value == 24 then
    return "User Status: Firm Unblockedby Risk Manager (24)"
  end
  if value == 25 then
    return "User Status: Dea Blockedby Risk Manager (25)"
  end
  if value == 26 then
    return "User Status: Dea Unblockedby Risk Manager (26)"
  end
  if value == 27 then
    return "User Status: Logical Access Blockedby Risk Manager (27)"
  end
  if value == 28 then
    return "User Status: Logical Access Unblockedby Risk Manager (28)"
  end
  if value == 29 then
    return "User Status: Order Size Limit Activatedby Risk Manager (29)"
  end
  if value == 30 then
    return "User Status: Order Size Limit Deactivatedby Risk Manager (30)"
  end

  return "User Status: Unknown("..value..")"
end

-- Dissect: User Status
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.user_status = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.user_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.user_status(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.user_status, range, value, display)

  return offset + length, value
end

-- Size: Symbol Index Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index_optional = 4

-- Display: Symbol Index Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.symbol_index_optional = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Symbol Index Optional: No Value"
  end

  return "Symbol Index Optional: "..value
end

-- Dissect: Symbol Index Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.symbol_index_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.symbol_index_optional, range, value, display)

  return offset + length, value
end

-- Size: Family Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.family_id = 8

-- Display: Family Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.family_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Family Id: No Value"
  end

  return "Family Id: "..value
end

-- Dissect: Family Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.family_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.family_id
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.family_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.family_id, range, value, display)

  return offset + length, value
end

-- Size: Execution Instruction Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_instruction_optional = 1

-- Display: Execution Instruction Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_instruction_optional = function(buffer, packet, parent)
  local display = ""

  -- Is Reserved 1 flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Reserved 1|"
  end
  -- Is Conditional Order flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Conditional Order|"
  end
  -- Is Rfq Confirmation flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Rfq Confirmation|"
  end
  -- Is Rfq Answer flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Rfq Answer|"
  end
  -- Is Disabled Cancel On Disconnect Indicator flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Disabled Cancel On Disconnect Indicator|"
  end
  -- Is Disclosed Quantity Randomization flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Disclosed Quantity Randomization|"
  end
  -- Is Stp Incoming Order flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Stp Incoming Order|"
  end
  -- Is Stp Resting Order flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Stp Resting Order|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Execution Instruction Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_optional_bits = function(buffer, offset, packet, parent)

  -- Reserved 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_1, buffer(offset, 1))

  -- Conditional Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.conditional_order, buffer(offset, 1))

  -- Rfq Confirmation: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_confirmation, buffer(offset, 1))

  -- Rfq Answer: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_answer, buffer(offset, 1))

  -- Disabled Cancel On Disconnect Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.disabled_cancel_on_disconnect_indicator, buffer(offset, 1))

  -- Disclosed Quantity Randomization: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.disclosed_quantity_randomization, buffer(offset, 1))

  -- Stp Incoming Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.stp_incoming_order, buffer(offset, 1))

  -- Stp Resting Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.stp_resting_order, buffer(offset, 1))
end

-- Dissect: Execution Instruction Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_optional = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_instruction_optional(range, packet, parent)
  local element = parent:add_le(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_instruction_optional, range, display)

  if show.execution_instruction_optional then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_optional_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: User Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.user_notification_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_instruction_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.family_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.user_status

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_size_limit

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  return index
end

-- Display: User Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.user_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: User Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.user_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Execution Instruction Optional: Struct of 8 fields
  index, execution_instruction_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_optional(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Family Id: 8 Byte Ascii String Nullable
  index, family_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.family_id(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index_optional(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 30 values
  index, user_status = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.user_status(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role_optional(buffer, index, packet, parent)

  -- Order Size Limit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_size_limit = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_size_limit(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: User Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.user_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.user_notification_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.user_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.user_notification_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.user_notification_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.user_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Potential Matching Qty
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.potential_matching_qty = 8

-- Display: Potential Matching Qty
euronext_optiq_orderentrygateway_sbe_v4_5_display.potential_matching_qty = function(value)
  return "Potential Matching Qty: "..value
end

-- Dissect: Potential Matching Qty
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.potential_matching_qty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.potential_matching_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.potential_matching_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.potential_matching_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfqlp Matching Status Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfqlp_matching_status_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.potential_matching_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  return index
end

-- Display: Rfqlp Matching Status Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.rfqlp_matching_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfqlp Matching Status Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfqlp_matching_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_req_id(buffer, index, packet, parent)

  -- Potential Matching Qty: 8 Byte Unsigned Fixed Width Integer
  index, potential_matching_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.potential_matching_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfqlp Matching Status Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfqlp_matching_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfqlp_matching_status_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfqlp_matching_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rfqlp_matching_status_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfqlp_matching_status_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfqlp_matching_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Recipient Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.recipient_type = 1

-- Display: Recipient Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.recipient_type = function(value)
  if value == 1 then
    return "Recipient Type: Rfq Issuer (1)"
  end
  if value == 2 then
    return "Recipient Type: Rf Qrecipient Lp (2)"
  end

  return "Recipient Type: Unknown("..value..")"
end

-- Dissect: Recipient Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.recipient_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.recipient_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.recipient_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.recipient_type, range, value, display)

  return offset + length, value
end

-- Size: Number Of Lps
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.number_of_lps = 1

-- Display: Number Of Lps
euronext_optiq_orderentrygateway_sbe_v4_5_display.number_of_lps = function(value)
  -- Check if field has value
  if value == 255 then
    return "Number Of Lps: No Value"
  end

  return "Number Of Lps: "..value
end

-- Dissect: Number Of Lps
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.number_of_lps = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.number_of_lps
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.number_of_lps(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.number_of_lps, range, value, display)

  return offset + length, value
end

-- Size: Potential Matching Px
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.potential_matching_px = 8

-- Display: Potential Matching Px
euronext_optiq_orderentrygateway_sbe_v4_5_display.potential_matching_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Potential Matching Px: No Value"
  end

  return "Potential Matching Px: "..value
end

-- Dissect: Potential Matching Px
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.potential_matching_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.potential_matching_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.potential_matching_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.potential_matching_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_matching_status_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.potential_matching_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.potential_matching_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.number_of_lps

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.recipient_type

  return index
end

-- Display: Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_matching_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_matching_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_req_id(buffer, index, packet, parent)

  -- Potential Matching Px: 8 Byte Signed Fixed Width Integer Nullable
  index, potential_matching_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.potential_matching_px(buffer, index, packet, parent)

  -- Potential Matching Qty: 8 Byte Unsigned Fixed Width Integer
  index, potential_matching_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.potential_matching_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Number Of Lps: 1 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_lps = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.number_of_lps(buffer, index, packet, parent)

  -- Recipient Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, recipient_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.recipient_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_matching_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_matching_status_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_matching_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_matching_status_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_matching_status_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_matching_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Min Order Qty
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.min_order_qty = 8

-- Display: Min Order Qty
euronext_optiq_orderentrygateway_sbe_v4_5_display.min_order_qty = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Min Order Qty: No Value"
  end

  return "Min Order Qty: "..value
end

-- Dissect: Min Order Qty
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.min_order_qty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.min_order_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.min_order_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.min_order_qty, range, value, display)

  return offset + length, value
end

-- Size: Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.dark_execution_instruction = 1

-- Display: Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_display.dark_execution_instruction = function(buffer, packet, parent)
  local display = ""

  -- Is Minimum Quantity Type flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Minimum Quantity Type|"
  end
  -- Is Sweep Order Indicator flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Sweep Order Indicator|"
  end
  -- Is Displayed Order Interaction flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Displayed Order Interaction|"
  end
  -- Is Deferred Trade Indicator flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Deferred Trade Indicator|"
  end
  -- Is Dark Indicator flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Dark Indicator|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction_bits = function(buffer, offset, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_3, buffer(offset, 1))

  -- Minimum Quantity Type: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.minimum_quantity_type, buffer(offset, 1))

  -- Sweep Order Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.sweep_order_indicator, buffer(offset, 1))

  -- Displayed Order Interaction: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.displayed_order_interaction, buffer(offset, 1))

  -- Deferred Trade Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.deferred_trade_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.dark_execution_instruction(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_execution_instruction, range, display)

  if show.dark_execution_instruction then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: End Client
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.end_client = 11

-- Display: End Client
euronext_optiq_orderentrygateway_sbe_v4_5_display.end_client = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "End Client: No Value"
  end

  return "End Client: "..value
end

-- Dissect: End Client
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.end_client = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.end_client
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.end_client(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.end_client, range, value, display)

  return offset + length, value
end

-- Size: Rfq Update Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_update_type = 1

-- Display: Rfq Update Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_update_type = function(value)
  if value == 1 then
    return "Rfq Update Type: New (1)"
  end
  if value == 2 then
    return "Rfq Update Type: Cancelledbythe Rf Qissuer (2)"
  end
  if value == 3 then
    return "Rfq Update Type: Expired (3)"
  end
  if value == 4 then
    return "Rfq Update Type: Partiallyor Fully Matched (4)"
  end

  return "Rfq Update Type: Unknown("..value..")"
end

-- Dissect: Rfq Update Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_update_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_update_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_update_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_update_type, range, value, display)

  return offset + length, value
end

-- Size: Counterpart Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.counterpart_firm_id = 8

-- Display: Counterpart Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.counterpart_firm_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Counterpart Firm Id: No Value"
  end

  return "Counterpart Firm Id: "..value
end

-- Dissect: Counterpart Firm Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.counterpart_firm_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.counterpart_firm_id
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.counterpart_firm_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.counterpart_firm_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_notification_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.counterpart_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_update_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.end_client

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.dark_execution_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.min_order_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_optional

  return index
end

-- Display: Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_req_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_qty(buffer, index, packet, parent)

  -- Counterpart Firm Id: 8 Byte Ascii String Nullable
  index, counterpart_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.counterpart_firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Rfq Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, rfq_update_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_update_type(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side_optional(buffer, index, packet, parent)

  -- End Client: 11 Byte Ascii String Nullable
  index, end_client = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.end_client(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, min_order_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.min_order_qty(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_notification_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rfq_notification_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_notification_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_notification_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_for_execution_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  return index
end

-- Display: Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.request_for_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_for_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_for_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_execution_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_for_execution_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.request_for_execution_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_for_execution_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_for_execution_message_fields(buffer, offset, packet, parent)
end

-- Size: Afq Reason
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.afq_reason = 1

-- Display: Afq Reason
euronext_optiq_orderentrygateway_sbe_v4_5_display.afq_reason = function(value)
  if value == 1 then
    return "Afq Reason: Quotecancelledbythe Liquidity Provider (1)"
  end
  if value == 2 then
    return "Afq Reason: Quotecancelledby Market Control (2)"
  end
  if value == 3 then
    return "Afq Reason: Noquote Mminutesbeforeanuncrossing (3)"
  end
  if value == 4 then
    return "Afq Reason: Noquote Ssecondsbeforeanuncrossing (4)"
  end
  if value == 5 then
    return "Afq Reason: Quotecompletelymatched (5)"
  end

  return "Afq Reason: Unknown("..value..")"
end

-- Dissect: Afq Reason
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.afq_reason = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.afq_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.afq_reason(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.afq_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ask_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.afq_reason

  return index
end

-- Display: Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.ask_for_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ask_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Afq Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, afq_reason = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.afq_reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ask_for_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ask_for_quote_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ask_for_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ask_for_quote_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ask_for_quote_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ask_for_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Lp Action Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_action_code = 1

-- Display: Lp Action Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.lp_action_code = function(value)
  if value == 1 then
    return "Lp Action Code: Knock In By Issuer Kibi (1)"
  end
  if value == 2 then
    return "Lp Action Code: Knock Out By Issuer Kobi (2)"
  end
  if value == 3 then
    return "Lp Action Code: Payment After Knock Out Pako (3)"
  end
  if value == 4 then
    return "Lp Action Code: Bid Only (4)"
  end
  if value == 5 then
    return "Lp Action Code: Offer Only (5)"
  end

  return "Lp Action Code: Unknown("..value..")"
end

-- Dissect: Lp Action Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_action_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_action_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.lp_action_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.lp_action_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.liquidity_provider_command_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_action_code

  return index
end

-- Display: Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.liquidity_provider_command_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.liquidity_provider_command_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Lp Action Code: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, lp_action_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_action_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.liquidity_provider_command_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.liquidity_provider_command_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.liquidity_provider_command_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.liquidity_provider_command_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.liquidity_provider_command_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.liquidity_provider_command_message_fields(buffer, offset, packet, parent)
end

-- Size: Input Price Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.input_price_type = 1

-- Display: Input Price Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.input_price_type = function(value)
  if value == 1 then
    return "Input Price Type: Valuation Price (1)"
  end
  if value == 2 then
    return "Input Price Type: Alternative Indicative Price Aip (2)"
  end

  return "Input Price Type: Unknown("..value..")"
end

-- Dissect: Input Price Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.input_price_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.input_price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.input_price_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.input_price_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Price Input Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_input_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.input_price_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_optional

  return index
end

-- Display: Price Input Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.price_input_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Price Input Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_input_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Input Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, input_price_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.input_price_type(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Input Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_input_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.price_input_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_input_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.price_input_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.price_input_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_input_message_fields(buffer, offset, packet, parent)
end

-- Size: Orig Client Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id = 8

-- Display: Orig Client Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.orig_client_order_id = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Orig Client Order Id: No Value"
  end

  return "Orig Client Order Id: "..value
end

-- Dissect: Orig Client Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.orig_client_order_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.orig_client_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.orig_client_order_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional = 8

-- Display: Order Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_breach_confirmation_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id

  return index
end

-- Display: Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.collar_breach_confirmation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_breach_confirmation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.orig_client_order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_breach_confirmation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.collar_breach_confirmation_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_breach_confirmation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.collar_breach_confirmation_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.collar_breach_confirmation_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_breach_confirmation_message_fields(buffer, offset, packet, parent)
end

-- Size: Parent Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.parent_symbol_index = 4

-- Display: Parent Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_display.parent_symbol_index = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Parent Symbol Index: No Value"
  end

  return "Parent Symbol Index: "..value
end

-- Dissect: Parent Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.parent_symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.parent_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.parent_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.parent_symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Parent Exec Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.parent_exec_id = 4

-- Display: Parent Exec Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.parent_exec_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Parent Exec Id: No Value"
  end

  return "Parent Exec Id: "..value
end

-- Dissect: Parent Exec Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.parent_exec_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.parent_exec_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.parent_exec_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.parent_exec_id, range, value, display)

  return offset + length, value
end

-- Size: Last Shares
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_shares = 8

-- Display: Last Shares
euronext_optiq_orderentrygateway_sbe_v4_5_display.last_shares = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_shares = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_shares
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.last_shares(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Size: Last Traded Px
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_traded_px = 8

-- Display: Last Traded Px
euronext_optiq_orderentrygateway_sbe_v4_5_display.last_traded_px = function(value)
  return "Last Traded Px: "..value
end

-- Dissect: Last Traded Px
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_traded_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_traded_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.last_traded_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.last_traded_px, range, value, display)

  return offset + length, value
end

-- Size: Execution Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_id = 4

-- Display: Execution Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_id = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_bust_notification_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_traded_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_shares

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lis_transaction_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.parent_exec_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.parent_symbol_index

  return index
end

-- Display: Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_bust_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_bust_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer
  index, execution_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_id(buffer, index, packet, parent)

  -- Last Traded Px: 8 Byte Signed Fixed Width Integer
  index, last_traded_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_traded_px(buffer, index, packet, parent)

  -- Last Shares: 8 Byte Unsigned Fixed Width Integer
  index, last_shares = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_shares(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Parent Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, parent_exec_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.parent_exec_id(buffer, index, packet, parent)

  -- Parent Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, parent_symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.parent_symbol_index(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_bust_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_bust_notification_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_bust_notification_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_bust_notification_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_bust_notification_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_bust_notification_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Category
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_category = 1

-- Display: Order Category
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_category = function(value)
  if value == 1 then
    return "Order Category: Lit Order (1)"
  end
  if value == 2 then
    return "Order Category: Lis Order (2)"
  end
  if value == 3 then
    return "Order Category: Quote Request (3)"
  end
  if value == 4 then
    return "Order Category: Rfqlp Answer (4)"
  end
  if value == 255 then
    return "Order Category: No Value"
  end

  return "Order Category: Unknown("..value..")"
end

-- Dissect: Order Category
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_category = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_category
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_category(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_category, range, value, display)

  return offset + length, value
end

-- Size: Oe Partition Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id_optional = 2

-- Display: Oe Partition Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.oe_partition_id_optional = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Oe Partition Id Optional: No Value"
  end

  return "Oe Partition Id Optional: "..value
end

-- Dissect: Oe Partition Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.oe_partition_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.oe_partition_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ownership_request_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_category

  return index
end

-- Display: Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.ownership_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ownership_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role_optional(buffer, index, packet, parent)

  -- Oe Partition Id Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id_optional(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ownership_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ownership_request_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ownership_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ownership_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ownership_request_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ownership_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Total Affected Orders
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.total_affected_orders = 4

-- Display: Total Affected Orders
euronext_optiq_orderentrygateway_sbe_v4_5_display.total_affected_orders = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.total_affected_orders = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.total_affected_orders
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.total_affected_orders(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ownership_request_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.total_affected_orders

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_category

  return index
end

-- Display: Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.ownership_request_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ownership_request_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role_optional(buffer, index, packet, parent)

  -- Oe Partition Id Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id_optional(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Signed Fixed Width Integer
  index, total_affected_orders = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.total_affected_orders(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ownership_request_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.ownership_request_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ownership_request_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ownership_request_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ownership_request_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ownership_request_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_order_request_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_category

  return index
end

-- Display: Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.open_order_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_order_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_order_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_order_request_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_order_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.open_order_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.open_order_request_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_order_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Mifid Indicators Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators_optional = 1

-- Display: Mifid Indicators Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_indicators_optional = function(buffer, packet, parent)
  local display = ""

  -- Is Frmaramplp flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Frmaramplp|"
  end
  -- Is Deferral Indicator flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Deferral Indicator|"
  end
  -- Is Commodity Derivative Indicator flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Commodity Derivative Indicator|"
  end
  -- Is Execution Algo Indicator flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Execution Algo Indicator|"
  end
  -- Is Investment Algo Indicator flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Investment Algo Indicator|"
  end
  -- Is Dea Indicator flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Dea Indicator|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Mifid Indicators Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators_optional_bits = function(buffer, offset, packet, parent)

  -- Reserved 2: 2 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_2, buffer(offset, 1))

  -- Frmaramplp: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.frmaramplp, buffer(offset, 1))

  -- Deferral Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.deferral_indicator, buffer(offset, 1))

  -- Commodity Derivative Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.commodity_derivative_indicator, buffer(offset, 1))

  -- Execution Algo Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_algo_indicator, buffer(offset, 1))

  -- Investment Algo Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.investment_algo_indicator, buffer(offset, 1))

  -- Dea Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.dea_indicator, buffer(offset, 1))
end

-- Dissect: Mifid Indicators Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators_optional = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_indicators_optional(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_indicators_optional, range, display)

  if show.mifid_indicators_optional then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators_optional_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Mifid Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_instruction_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators_optional

  return index
end

-- Display: Mifid Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mifid Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Execution Instruction Optional: Struct of 8 fields
  index, execution_instruction_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_optional(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Mifid Indicators Optional: Struct of 7 fields
  index, mifid_indicators_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mifid_fields_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_fields_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mifid Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local mifid_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mifid_fields_group_count * 6

  return index
end

-- Display: Mifid Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mifid Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mifid Fields Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mifid Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mifid_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mifid_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mifid_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Target Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.target_execution_within_firm_short_code = 4

-- Display: Target Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.target_execution_within_firm_short_code = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Target Execution Within Firm Short Code: No Value"
  end

  return "Target Execution Within Firm Short Code: "..value
end

-- Dissect: Target Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.target_execution_within_firm_short_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.target_execution_within_firm_short_code
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.target_execution_within_firm_short_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.target_execution_within_firm_short_code, range, value, display)

  return offset + length, value
end

-- Size: Ack Qualifiers Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_qualifiers_optional = 1

-- Display: Ack Qualifiers Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_qualifiers_optional = function(buffer, packet, parent)
  local display = ""

  -- Is Executed Upon Entry Flag flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Executed Upon Entry Flag|"
  end
  -- Is Execution Upon Entry Flag Enabled flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Execution Upon Entry Flag Enabled|"
  end
  -- Is Internal 2 flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Internal 2|"
  end
  -- Is Internal 1 flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Internal 1|"
  end
  -- Is Use Of Cross Partition flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Use Of Cross Partition|"
  end
  -- Is Request With Client Order Id flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Request With Client Order Id|"
  end
  -- Is Queue Indicator flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Queue Indicator|"
  end
  -- Is Dark Indicator flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Dark Indicator|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Ack Qualifiers Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_optional_bits = function(buffer, offset, packet, parent)

  -- Executed Upon Entry Flag: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.executed_upon_entry_flag, buffer(offset, 1))

  -- Execution Upon Entry Flag Enabled: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_upon_entry_flag_enabled, buffer(offset, 1))

  -- Internal 2: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.internal_2, buffer(offset, 1))

  -- Internal 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.internal_1, buffer(offset, 1))

  -- Use Of Cross Partition: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.use_of_cross_partition, buffer(offset, 1))

  -- Request With Client Order Id: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.request_with_client_order_id, buffer(offset, 1))

  -- Queue Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.queue_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Ack Qualifiers Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_optional = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_qualifiers_optional(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_qualifiers_optional, range, display)

  if show.ack_qualifiers_optional then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_optional_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Option Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.option_type = 1

-- Display: Option Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.option_type = function(value)
  if value == 1 then
    return "Option Type: Call (1)"
  end
  if value == 2 then
    return "Option Type: Put (2)"
  end
  if value == 255 then
    return "Option Type: No Value"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.option_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.option_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.option_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Maturity
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.maturity = 8

-- Display: Maturity
euronext_optiq_orderentrygateway_sbe_v4_5_display.maturity = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity: No Value"
  end

  return "Maturity: "..value
end

-- Dissect: Maturity
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.maturity = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.maturity
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.maturity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.maturity, range, value, display)

  return offset + length, value
end

-- Size: Contract Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_id = 4

-- Display: Contract Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.contract_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Contract Id: No Value"
  end

  return "Contract Id: "..value
end

-- Dissect: Contract Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.contract_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.contract_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.contract_id, range, value, display)

  return offset + length, value
end

-- Size: Instrument Group Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_group_code = 2

-- Display: Instrument Group Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.instrument_group_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Group Code: No Value"
  end

  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_group_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_group_code
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.instrument_group_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mass_cancel_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.total_affected_orders

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_group_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.maturity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.option_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_category

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_qualifiers_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.target_execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_groups(buffer, offset + index)

  return index
end

-- Display: Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.mass_cancel_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mass_cancel_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time(buffer, index, packet, parent)

  -- Oeg In From Me: 8 Byte Unsigned Fixed Width Integer
  index, oeg_in_from_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me(buffer, index, packet, parent)

  -- Oeg Out To Member: 8 Byte Unsigned Fixed Width Integer
  index, oeg_out_to_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Signed Fixed Width Integer
  index, total_affected_orders = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.total_affected_orders(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index_optional(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm_optional(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String Nullable
  index, instrument_group_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_group_code(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side_optional(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role_optional(buffer, index, packet, parent)

  -- Oe Partition Id Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id_optional(buffer, index, packet, parent)

  -- Contract Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, contract_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.contract_id(buffer, index, packet, parent)

  -- Maturity: 8 Byte Ascii String Nullable
  index, maturity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.maturity(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_optional(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, option_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.option_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_category(buffer, index, packet, parent)

  -- Ack Qualifiers Optional: Struct of 8 fields
  index, ack_qualifiers_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_optional(buffer, index, packet, parent)

  -- Target Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, target_execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.target_execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mass_cancel_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_cancel_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mass_cancel_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mass_cancel_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mass_cancel_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mass_cancel_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mass_cancel_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_group_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oe_partition_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.contract_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.maturity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.option_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_category

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.target_execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_2_groups(buffer, offset + index)

  return index
end

-- Display: Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.mass_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mass_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index_optional(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm_optional(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String Nullable
  index, instrument_group_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_group_code(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side_optional(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role_optional(buffer, index, packet, parent)

  -- Oe Partition Id Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oe_partition_id_optional(buffer, index, packet, parent)

  -- Contract Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, contract_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.contract_id(buffer, index, packet, parent)

  -- Maturity: 8 Byte Ascii String Nullable
  index, maturity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.maturity(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_optional(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, option_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.option_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_category(buffer, index, packet, parent)

  -- Target Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, target_execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.target_execution_within_firm_short_code(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mass_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_cancel_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mass_cancel_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.mass_cancel_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.mass_cancel_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mass_cancel_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cancel_request_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_category

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_2_groups(buffer, offset + index)

  return index
end

-- Display: Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.cancel_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cancel_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_category(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cancel_request_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cancel_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.cancel_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.cancel_request_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cancel_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Firm Id Publication
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id_publication = 1

-- Display: Firm Id Publication
euronext_optiq_orderentrygateway_sbe_v4_5_display.firm_id_publication = function(value)
  -- Check if field has value
  if value == 255 then
    return "Firm Id Publication: No Value"
  end

  return "Firm Id Publication: "..value
end

-- Dissect: Firm Id Publication
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id_publication = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id_publication
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.firm_id_publication(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.firm_id_publication, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_request_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id_publication

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.end_client

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.dark_execution_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.min_order_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_optional

  return index
end

-- Display: Quote Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side_optional(buffer, index, packet, parent)

  -- Firm Id Publication: 1 Byte Unsigned Fixed Width Integer Nullable
  index, firm_id_publication = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id_publication(buffer, index, packet, parent)

  -- End Client: 11 Byte Ascii String Nullable
  index, end_client = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.end_client(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, min_order_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.min_order_qty(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_optional(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_request_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_request_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_request_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_request_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_error_code = 2

-- Display: Offer Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_error_code = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Offer Error Code: No Value"
  end

  return "Offer Error Code: "..value
end

-- Dissect: Offer Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_error_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_error_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_error_code, range, value, display)

  return offset + length, value
end

-- Size: Bid Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_error_code = 2

-- Display: Bid Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_error_code = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Bid Error Code: No Value"
  end

  return "Bid Error Code: "..value
end

-- Dissect: Bid Error Code
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_error_code = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_error_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_error_code, range, value, display)

  return offset + length, value
end

-- Size: Sell Revision Flag
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sell_revision_flag = 1

-- Display: Sell Revision Flag
euronext_optiq_orderentrygateway_sbe_v4_5_display.sell_revision_flag = function(value)
  if value == 0 then
    return "Sell Revision Flag: New (0)"
  end
  if value == 1 then
    return "Sell Revision Flag: Replacement (1)"
  end
  if value == 2 then
    return "Sell Revision Flag: Cancellation (2)"
  end
  if value == 255 then
    return "Sell Revision Flag: No Value"
  end

  return "Sell Revision Flag: Unknown("..value..")"
end

-- Dissect: Sell Revision Flag
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sell_revision_flag = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sell_revision_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.sell_revision_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.sell_revision_flag, range, value, display)

  return offset + length, value
end

-- Size: Buy Revision Flag
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.buy_revision_flag = 1

-- Display: Buy Revision Flag
euronext_optiq_orderentrygateway_sbe_v4_5_display.buy_revision_flag = function(value)
  if value == 0 then
    return "Buy Revision Flag: New (0)"
  end
  if value == 1 then
    return "Buy Revision Flag: Replacement (1)"
  end
  if value == 2 then
    return "Buy Revision Flag: Cancellation (2)"
  end
  if value == 255 then
    return "Buy Revision Flag: No Value"
  end

  return "Buy Revision Flag: Unknown("..value..")"
end

-- Dissect: Buy Revision Flag
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.buy_revision_flag = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.buy_revision_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.buy_revision_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.buy_revision_flag, range, value, display)

  return offset + length, value
end

-- Size: Offer Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_order_id = 8

-- Display: Offer Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Order Id: No Value"
  end

  return "Offer Order Id: "..value
end

-- Dissect: Offer Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_order_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_order_id, range, value, display)

  return offset + length, value
end

-- Size: Bid Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_order_id = 8

-- Display: Bid Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Order Id: No Value"
  end

  return "Bid Order Id: "..value
end

-- Dissect: Bid Order Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_order_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_acks_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.buy_revision_flag

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sell_revision_flag

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_error_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_error_code

  return index
end

-- Display: Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_acks_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_acks_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_order_id(buffer, index, packet, parent)

  -- Offer Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Buy Revision Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, buy_revision_flag = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.buy_revision_flag(buffer, index, packet, parent)

  -- Sell Revision Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, sell_revision_flag = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sell_revision_flag(buffer, index, packet, parent)

  -- Bid Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, bid_error_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_error_code(buffer, index, packet, parent)

  -- Offer Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, offer_error_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_error_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_acks_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_acks_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_acks_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_acks_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_acks_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_acks_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_acks_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local quote_acks_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_acks_group_count * 27

  return index
end

-- Display: Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_acks_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_acks_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Quote Acks Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_acks_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_acks_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_acks_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_acks_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_acks_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_acks_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_acks_groups_fields(buffer, offset, packet, parent)
end

-- Size: Lp Role
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role = 1

-- Display: Lp Role
euronext_optiq_orderentrygateway_sbe_v4_5_display.lp_role = function(value)
  if value == 1 then
    return "Lp Role: Liquidity Provideror Market Maker (1)"
  end
  if value == 3 then
    return "Lp Role: Retail Liquidity Provider (3)"
  end
  if value == 12 then
    return "Lp Role: Rfq Liquidity Provider (12)"
  end

  return "Lp Role: Unknown("..value..")"
end

-- Dissect: Lp Role
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.lp_role(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.lp_role, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_instruction_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_qualifiers_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_acks_groups(buffer, offset + index)

  return index
end

-- Display: Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, lp_role = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role(buffer, index, packet, parent)

  -- Execution Instruction Optional: Struct of 8 fields
  index, execution_instruction_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_optional(buffer, index, packet, parent)

  -- Ack Qualifiers Optional: Struct of 8 fields
  index, ack_qualifiers_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_optional(buffer, index, packet, parent)

  -- Quote Acks Groups: Struct of 2 fields
  index, quote_acks_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_acks_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Px
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_px = 8

-- Display: Offer Px
euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Dissect: Offer Px
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Size: Offer Size
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_size = 8

-- Display: Offer Size
euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_size = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.offer_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Px
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_px = 8

-- Display: Bid Px
euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Dissect: Bid Px
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_size = 8

-- Display: Bid Size
euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quotes_rep_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_size

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.bid_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_size

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.offer_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  return index
end

-- Display: Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.quotes_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_size(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Signed Fixed Width Integer Nullable
  index, bid_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.bid_px(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_size(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Signed Fixed Width Integer Nullable
  index, offer_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.offer_px(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quotes_rep_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quotes_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quotes_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quotes_rep_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quotes_rep_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local quotes_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quotes_rep_group_count * 37

  return index
end

-- Display: Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.quotes_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Quotes Rep Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_rep_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quotes_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quotes_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quotes_rep_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_id = 8

-- Display: Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.client_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Id: No Value"
  end

  return "Client Id: "..value
end

-- Dissect: Client Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_id
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.client_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.client_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_dataset_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_origin

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_close

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text

  return index
end

-- Display: Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_dataset_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_dataset_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Client Id: 8 Byte Ascii String Nullable
  index, client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_dataset_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.clearing_dataset_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_dataset_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_dataset_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_dataset_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_dataset_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_dataset_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local clearing_dataset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_dataset_group_count * 51

  return index
end

-- Display: Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_dataset_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_dataset_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Clearing Dataset Group: Struct of 7 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_dataset_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_dataset_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_dataset_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_dataset_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_dataset_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_dataset_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_dataset_groups_fields(buffer, offset, packet, parent)
end

-- Size: Rfe Answer
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfe_answer = 1

-- Display: Rfe Answer
euronext_optiq_orderentrygateway_sbe_v4_5_display.rfe_answer = function(value)
  return "Rfe Answer: "..value
end

-- Dissect: Rfe Answer
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfe_answer = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfe_answer
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.rfe_answer(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfe_answer, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quotes Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quotes_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfe_answer

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_instruction_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_short_codes_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_dataset_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quotes_rep_groups(buffer, offset + index)

  return index
end

-- Display: Quotes Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.quotes_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quotes Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, lp_role = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators(buffer, index, packet, parent)

  -- Rfe Answer: 1 Byte Unsigned Fixed Width Integer
  index, rfe_answer = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfe_answer(buffer, index, packet, parent)

  -- Execution Instruction Optional: Struct of 8 fields
  index, execution_instruction_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_optional(buffer, index, packet, parent)

  -- Mifid Short Codes Groups: Struct of 2 fields
  index, mifid_short_codes_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_groups(buffer, index, packet, parent)

  -- Clearing Dataset Groups: Struct of 2 fields
  index, clearing_dataset_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_dataset_groups(buffer, index, packet, parent)

  -- Quotes Rep Groups: Struct of 2 fields
  index, quotes_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quotes_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quotes_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quotes_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_message_fields(buffer, offset, packet, parent)
end

-- Size: Breached Collar Price
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breached_collar_price = 8

-- Display: Breached Collar Price
euronext_optiq_orderentrygateway_sbe_v4_5_display.breached_collar_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Breached Collar Price: No Value"
  end

  return "Breached Collar Price: "..value
end

-- Dissect: Breached Collar Price
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.breached_collar_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breached_collar_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.breached_collar_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.breached_collar_price, range, value, display)

  return offset + length, value
end

-- Size: Collar Rej Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_rej_type = 1

-- Display: Collar Rej Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.collar_rej_type = function(value)
  if value == 1 then
    return "Collar Rej Type: Lowdynamiccollar (1)"
  end
  if value == 2 then
    return "Collar Rej Type: Highdynamiccollar (2)"
  end
  if value == 255 then
    return "Collar Rej Type: No Value"
  end

  return "Collar Rej Type: Unknown("..value..")"
end

-- Dissect: Collar Rej Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_rej_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_rej_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.collar_rej_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.collar_rej_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_fields_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_rej_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.breached_collar_price

  return index
end

-- Display: Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.collar_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Collar Rej Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, collar_rej_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_rej_type(buffer, index, packet, parent)

  -- Breached Collar Price: 8 Byte Signed Fixed Width Integer Nullable
  index, breached_collar_price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.breached_collar_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.collar_fields_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.collar_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.collar_fields_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_fields_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local collar_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + collar_fields_group_count * 9

  return index
end

-- Display: Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.collar_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Collar Fields Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.collar_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.collar_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.collar_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Firm Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id_optional = 8

-- Display: Firm Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.firm_id_optional = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id Optional: No Value"
  end

  return "Firm Id Optional: "..value
end

-- Dissect: Firm Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id_optional
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.firm_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.firm_id_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.reject_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.error_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rejected_message_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_qualifiers_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_fields_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_groups(buffer, offset + index)

  return index
end

-- Display: Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.reject_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.reject_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id Optional: 8 Byte Ascii String Nullable
  index, firm_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id_optional(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in_optional(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id_optional(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index_optional(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm_optional(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_message(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rejected_message_id(buffer, index, packet, parent)

  -- Ack Qualifiers Optional: Struct of 8 fields
  index, ack_qualifiers_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_optional(buffer, index, packet, parent)

  -- Collar Fields Groups: Struct of 2 fields
  index, collar_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_fields_groups(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.reject_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.reject_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reject_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.reject_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Additional Infos Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.additional_infos_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.long_client_id

  return index
end

-- Display: Additional Infos Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.additional_infos_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Additional Infos Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.long_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Additional Infos Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.additional_infos_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.additional_infos_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.additional_infos_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.additional_infos_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Additional Infos Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.additional_infos_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local additional_infos_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + additional_infos_group_count * 16

  return index
end

-- Display: Additional Infos Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.additional_infos_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Additional Infos Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Additional Infos Group: Struct of 1 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Additional Infos Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.additional_infos_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.additional_infos_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.additional_infos_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.additional_infos_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_number

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_origin

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_close

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_cross

  return index
end

-- Display: Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Client Id: 8 Byte Ascii String Nullable
  index, client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_instruction(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_cross(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.clearing_fields_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_fields_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local clearing_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_fields_group_count * 34

  return index
end

-- Display: Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Clearing Fields Group: Struct of 7 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.clearing_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.clearing_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Stop Triggered Time In Force
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stop_triggered_time_in_force = 1

-- Display: Stop Triggered Time In Force
euronext_optiq_orderentrygateway_sbe_v4_5_display.stop_triggered_time_in_force = function(value)
  if value == 0 then
    return "Stop Triggered Time In Force: Day (0)"
  end
  if value == 1 then
    return "Stop Triggered Time In Force: Good Till Cancel (1)"
  end
  if value == 6 then
    return "Stop Triggered Time In Force: Goodtill Date (6)"
  end
  if value == 255 then
    return "Stop Triggered Time In Force: No Value"
  end

  return "Stop Triggered Time In Force: Unknown("..value..")"
end

-- Dissect: Stop Triggered Time In Force
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.stop_triggered_time_in_force = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stop_triggered_time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.stop_triggered_time_in_force(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.stop_triggered_time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Undisclosed Iceberg Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.undisclosed_iceberg_type = 1

-- Display: Undisclosed Iceberg Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.undisclosed_iceberg_type = function(value)
  if value == 1 then
    return "Undisclosed Iceberg Type: Limit (1)"
  end
  if value == 2 then
    return "Undisclosed Iceberg Type: Peg Mid Point (2)"
  end
  if value == 3 then
    return "Undisclosed Iceberg Type: Peg Primary (3)"
  end
  if value == 4 then
    return "Undisclosed Iceberg Type: Peg Market (4)"
  end
  if value == 255 then
    return "Undisclosed Iceberg Type: No Value"
  end

  return "Undisclosed Iceberg Type: Unknown("..value..")"
end

-- Dissect: Undisclosed Iceberg Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.undisclosed_iceberg_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.undisclosed_iceberg_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.undisclosed_iceberg_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.undisclosed_iceberg_type, range, value, display)

  return offset + length, value
end

-- Size: Trading Session
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_session = 1

-- Display: Trading Session
euronext_optiq_orderentrygateway_sbe_v4_5_display.trading_session = function(buffer, packet, parent)
  local display = ""

  -- Is Session 4 flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Session 4|"
  end
  -- Is Session 3 flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Session 3|"
  end
  -- Is Session 2 flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Session 2|"
  end
  -- Is Session 1 flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Session 1|"
  end
  -- Is Reserved 1 flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Reserved 1|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trading Session
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_session_bits = function(buffer, offset, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_3, buffer(offset, 1))

  -- Session 4: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.session_4, buffer(offset, 1))

  -- Session 3: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.session_3, buffer(offset, 1))

  -- Session 2: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.session_2, buffer(offset, 1))

  -- Session 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.session_1, buffer(offset, 1))

  -- Reserved 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_1, buffer(offset, 1))
end

-- Dissect: Trading Session
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_session = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trading_session(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trading_session, range, display)

  if show.trading_session then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_session_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Peg Offset
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.peg_offset = 1

-- Display: Peg Offset
euronext_optiq_orderentrygateway_sbe_v4_5_display.peg_offset = function(value)
  -- Check if field has value
  if value == -128 then
    return "Peg Offset: No Value"
  end

  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.peg_offset = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.peg_offset
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.peg_offset(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Size: Order Expiration Date
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_expiration_date = 2

-- Display: Order Expiration Date
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_expiration_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Order Expiration Date: No Value"
  end

  return "Order Expiration Date: "..value
end

-- Dissect: Order Expiration Date
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_expiration_date = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_expiration_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_expiration_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Order Expiration Time
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_expiration_time = 4

-- Display: Order Expiration Time
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_expiration_time = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Expiration Time: No Value"
  end

  return "Order Expiration Time: "..value
end

-- Dissect: Order Expiration Time
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_expiration_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_expiration_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_expiration_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_expiration_time, range, value, display)

  return offset + length, value
end

-- Size: Quote Req Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id_optional = 8

-- Display: Quote Req Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_req_id_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Req Id Optional: No Value"
  end

  return "Quote Req Id Optional: "..value
end

-- Dissect: Quote Req Id Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_req_id_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.quote_req_id_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.quote_req_id_optional, range, value, display)

  return offset + length, value
end

-- Size: Disclosed Qty
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.disclosed_qty = 8

-- Display: Disclosed Qty
euronext_optiq_orderentrygateway_sbe_v4_5_display.disclosed_qty = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Disclosed Qty: No Value"
  end

  return "Disclosed Qty: "..value
end

-- Dissect: Disclosed Qty
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.disclosed_qty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.disclosed_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.disclosed_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.disclosed_qty, range, value, display)

  return offset + length, value
end

-- Size: Undisclosed Price
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.undisclosed_price = 8

-- Display: Undisclosed Price
euronext_optiq_orderentrygateway_sbe_v4_5_display.undisclosed_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Undisclosed Price: No Value"
  end

  return "Undisclosed Price: "..value
end

-- Dissect: Undisclosed Price
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.undisclosed_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.undisclosed_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.undisclosed_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.undisclosed_price, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stop_px = 8

-- Display: Stop Px
euronext_optiq_orderentrygateway_sbe_v4_5_display.stop_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Dissect: Stop Px
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.stop_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stop_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.stop_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stop_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.undisclosed_price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.disclosed_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.min_order_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_req_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_expiration_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_expiration_date

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.peg_offset

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_session

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.undisclosed_iceberg_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stop_triggered_time_in_force

  return index
end

-- Display: Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.stop_px(buffer, index, packet, parent)

  -- Undisclosed Price: 8 Byte Signed Fixed Width Integer Nullable
  index, undisclosed_price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.undisclosed_price(buffer, index, packet, parent)

  -- Disclosed Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, disclosed_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.disclosed_qty(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, min_order_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.min_order_qty(buffer, index, packet, parent)

  -- Quote Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_req_id_optional(buffer, index, packet, parent)

  -- Order Expiration Time: 4 Byte Unsigned Fixed Width Integer Nullable
  index, order_expiration_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_expiration_time(buffer, index, packet, parent)

  -- Order Expiration Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, order_expiration_date = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_expiration_date(buffer, index, packet, parent)

  -- Peg Offset: 1 Byte Signed Fixed Width Integer Nullable
  index, peg_offset = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.peg_offset(buffer, index, packet, parent)

  -- Trading Session: Struct of 6 fields
  index, trading_session = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_session(buffer, index, packet, parent)

  -- Undisclosed Iceberg Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, undisclosed_iceberg_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.undisclosed_iceberg_type(buffer, index, packet, parent)

  -- Stop Triggered Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, stop_triggered_time_in_force = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.stop_triggered_time_in_force(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.optional_fields_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local optional_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_group_count * 50

  return index
end

-- Display: Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Optional Fields Group: Struct of 11 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Stpid
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stpid = 2

-- Display: Stpid
euronext_optiq_orderentrygateway_sbe_v4_5_display.stpid = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stpid: No Value"
  end

  return "Stpid: "..value
end

-- Dissect: Stpid
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.stpid = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stpid
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.stpid(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.stpid, range, value, display)

  return offset + length, value
end

-- Size: Execution Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_instruction = 1

-- Display: Execution Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_instruction = function(buffer, packet, parent)
  local display = ""

  -- Is Reserved 1 flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Reserved 1|"
  end
  -- Is Conditional Order flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Conditional Order|"
  end
  -- Is Rfq Confirmation flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Rfq Confirmation|"
  end
  -- Is Rfq Answer flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Rfq Answer|"
  end
  -- Is Disabled Cancel On Disconnect Indicator flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Disabled Cancel On Disconnect Indicator|"
  end
  -- Is Disclosed Quantity Randomization flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Disclosed Quantity Randomization|"
  end
  -- Is Stp Incoming Order flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Stp Incoming Order|"
  end
  -- Is Stp Resting Order flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Stp Resting Order|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Execution Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_bits = function(buffer, offset, packet, parent)

  -- Reserved 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.reserved_1, buffer(offset, 1))

  -- Conditional Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.conditional_order, buffer(offset, 1))

  -- Rfq Confirmation: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_confirmation, buffer(offset, 1))

  -- Rfq Answer: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.rfq_answer, buffer(offset, 1))

  -- Disabled Cancel On Disconnect Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.disabled_cancel_on_disconnect_indicator, buffer(offset, 1))

  -- Disclosed Quantity Randomization: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.disclosed_quantity_randomization, buffer(offset, 1))

  -- Stp Incoming Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.stp_incoming_order, buffer(offset, 1))

  -- Stp Resting Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.stp_resting_order, buffer(offset, 1))
end

-- Dissect: Execution Instruction
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_instruction(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_instruction, range, display)

  if show.execution_instruction then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Time In Force
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.time_in_force = 1

-- Display: Time In Force
euronext_optiq_orderentrygateway_sbe_v4_5_display.time_in_force = function(value)
  if value == 0 then
    return "Time In Force: Day (0)"
  end
  if value == 1 then
    return "Time In Force: Good Till Cancel (1)"
  end
  if value == 2 then
    return "Time In Force: Validfor Uncrossing (2)"
  end
  if value == 3 then
    return "Time In Force: Immediateor Cancel (3)"
  end
  if value == 4 then
    return "Time In Force: Fillor Kill (4)"
  end
  if value == 5 then
    return "Time In Force: Goodtill Time (5)"
  end
  if value == 6 then
    return "Time In Force: Goodtill Date (6)"
  end
  if value == 7 then
    return "Time In Force: Validfor Closing Uncrossing (7)"
  end
  if value == 8 then
    return "Time In Force: Validfor Session (8)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.time_in_force = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.time_in_force(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Order Px Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_px_optional = 8

-- Display: Order Px Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_px_optional = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Px Optional: No Value"
  end

  return "Order Px Optional: "..value
end

-- Dissect: Order Px Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_px_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_px_optional
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_px_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_px_optional, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cancel_replace_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_identification_shortcode

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_px_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.time_in_force

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.dark_execution_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stpid

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_section_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_2_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.additional_infos_groups(buffer, offset + index)

  return index
end

-- Display: Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.cancel_replace_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cancel_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Order Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_px_optional(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, time_in_force = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.time_in_force(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type_optional(buffer, index, packet, parent)

  -- Lp Role Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role_optional(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 8 fields
  index, execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators(buffer, index, packet, parent)

  -- Stpid: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stpid = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.stpid(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_groups(buffer, index, packet, parent)

  -- Optional Fields Groups: Struct of 2 fields
  index, optional_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_groups(buffer, index, packet, parent)

  -- Clearing Fields Groups: Struct of 2 fields
  index, clearing_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_groups(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_groups(buffer, index, packet, parent)

  -- Additional Infos Groups: Struct of 2 fields
  index, additional_infos_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cancel_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cancel_replace_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cancel_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.cancel_replace_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.cancel_replace_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cancel_replace_message_fields(buffer, offset, packet, parent)
end

-- Size: Kill Reason
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.kill_reason = 2

-- Display: Kill Reason
euronext_optiq_orderentrygateway_sbe_v4_5_display.kill_reason = function(value)
  if value == 1 then
    return "Kill Reason: Order Cancelledby Client (1)"
  end
  if value == 2 then
    return "Kill Reason: Order Expired (2)"
  end
  if value == 3 then
    return "Kill Reason: Order Cancelledby Market Operations (3)"
  end
  if value == 4 then
    return "Kill Reason: Order Eliminateddueto Corporate Event (4)"
  end
  if value == 5 then
    return "Kill Reason: Doneforday (5)"
  end
  if value == 6 then
    return "Kill Reason: Cancelled Mt Linanempty Order Book (6)"
  end
  if value == 7 then
    return "Kill Reason: Cancelledby Stp (7)"
  end
  if value == 8 then
    return "Kill Reason: Remainingquantitykilled Ioc (8)"
  end
  if value == 9 then
    return "Kill Reason: Beginningof Pako Period (9)"
  end
  if value == 11 then
    return "Kill Reason: Order Cancelleddueto Cancel On Disconnect Mechanism (11)"
  end
  if value == 12 then
    return "Kill Reason: Rf Qexpired (12)"
  end
  if value == 13 then
    return "Kill Reason: Rf Qpartiallyorfullymatchedwithothercounterparts (13)"
  end
  if value == 14 then
    return "Kill Reason: Rf Qcancelledbytheissuer (14)"
  end
  if value == 15 then
    return "Kill Reason: Rfq Notmatchedduetoissuerordersfeatures (15)"
  end
  if value == 16 then
    return "Kill Reason: Quotecancelleddueto Knock Out (16)"
  end
  if value == 17 then
    return "Kill Reason: Ordercancelledduetoa Killcommand (17)"
  end
  if value == 19 then
    return "Kill Reason: Lp Ordercancelleddueto Rf Qexpiration (19)"
  end
  if value == 20 then
    return "Kill Reason: Lp Ordercancelleddueto Rf Qcancellation (20)"
  end
  if value == 21 then
    return "Kill Reason: Rfq Remainingquantitykilled (21)"
  end
  if value == 22 then
    return "Kill Reason: Lp Ordercancelleddueto Rf Qconfirmation (22)"
  end
  if value == 23 then
    return "Kill Reason: Ordercancelleddueto Market Maker Protection (23)"
  end
  if value == 24 then
    return "Kill Reason: Ordercancelledbyclearingriskmanager (24)"
  end
  if value == 25 then
    return "Kill Reason: Ordercancelledbymemberriskmanager (25)"
  end
  if value == 26 then
    return "Kill Reason: Ordercancelleddueto Trade Price Validation (26)"
  end
  if value == 30 then
    return "Kill Reason: Conditional Ordercancelleddueto Potential Matching (30)"
  end
  if value == 36 then
    return "Kill Reason: Order Cancelledduetoapotentialtradeoutside Fs Plimits (36)"
  end
  if value == 37 then
    return "Kill Reason: Remaining Rfc Quantity Cancelled (37)"
  end
  if value == 38 then
    return "Kill Reason: Order Cancelledduetoanincorrect Reactor Response (38)"
  end

  return "Kill Reason: Unknown("..value..")"
end

-- Dissect: Kill Reason
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.kill_reason = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.kill_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.kill_reason(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.kill_reason, range, value, display)

  return offset + length, value
end

-- Calculate size of: Kill Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.kill_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.kill_reason

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_qualifiers_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_groups(buffer, offset + index)

  return index
end

-- Display: Kill Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.kill_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Kill Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.kill_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id_optional(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Kill Reason: 2 Byte Unsigned Fixed Width Integer Enum with 28 values
  index, kill_reason = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.kill_reason(buffer, index, packet, parent)

  -- Ack Qualifiers Optional: Struct of 8 fields
  index, ack_qualifiers_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers_optional(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Kill Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.kill_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.kill_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.kill_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.kill_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.kill_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.kill_message_fields(buffer, offset, packet, parent)
end

-- Size: Final Execution Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.final_execution_id = 4

-- Display: Final Execution Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.final_execution_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Final Execution Id: No Value"
  end

  return "Final Execution Id: "..value
end

-- Dissect: Final Execution Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.final_execution_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.final_execution_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.final_execution_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.final_execution_id, range, value, display)

  return offset + length, value
end

-- Size: Final Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.final_symbol_index = 4

-- Display: Final Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_display.final_symbol_index = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Final Symbol Index: No Value"
  end

  return "Final Symbol Index: "..value
end

-- Dissect: Final Symbol Index
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.final_symbol_index = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.final_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.final_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.final_symbol_index, range, value, display)

  return offset + length, value
end

-- Size: Evaluated Price
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.evaluated_price = 8

-- Display: Evaluated Price
euronext_optiq_orderentrygateway_sbe_v4_5_display.evaluated_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Evaluated Price: No Value"
  end

  return "Evaluated Price: "..value
end

-- Dissect: Evaluated Price
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.evaluated_price = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.evaluated_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.evaluated_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.evaluated_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Optional Fields Derivatives Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_derivatives_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.evaluated_price

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message_price_notation

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.final_symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.final_execution_id

  return index
end

-- Display: Optional Fields Derivatives Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_derivatives_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Derivatives Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_derivatives_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Evaluated Price: 8 Byte Signed Fixed Width Integer Nullable
  index, evaluated_price = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.evaluated_price(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_price_notation(buffer, index, packet, parent)

  -- Final Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, final_symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.final_symbol_index(buffer, index, packet, parent)

  -- Final Execution Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, final_execution_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.final_execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Derivatives Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_derivatives_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.optional_fields_derivatives_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_derivatives_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_derivatives_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_derivatives_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_derivatives_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Optional Fields Derivatives Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_derivatives_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local optional_fields_derivatives_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_derivatives_group_count * 17

  return index
end

-- Display: Optional Fields Derivatives Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_derivatives_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Derivatives Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_derivatives_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Optional Fields Derivatives Group: Struct of 4 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_derivatives_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Optional Fields Derivatives Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_derivatives_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_derivatives_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_derivatives_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_derivatives_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_derivatives_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_derivatives_groups_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Instrument Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.underlying_instrument_id = 4

-- Display: Underlying Instrument Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.underlying_instrument_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Instrument Id: No Value"
  end

  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.underlying_instrument_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.underlying_instrument_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.underlying_instrument_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Package Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.package_id = 12

-- Display: Package Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.package_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Package Id: No Value"
  end

  return "Package Id: "..value
end

-- Dissect: Package Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.package_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.package_id
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

  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.package_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.package_id, range, value, display)

  return offset + length, value
end

-- Size: Other Leg Last Px
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.other_leg_last_px = 8

-- Display: Other Leg Last Px
euronext_optiq_orderentrygateway_sbe_v4_5_display.other_leg_last_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Other Leg Last Px: No Value"
  end

  return "Other Leg Last Px: "..value
end

-- Dissect: Other Leg Last Px
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.other_leg_last_px = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.other_leg_last_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.other_leg_last_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.other_leg_last_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Optional Fields Fill Group
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_fill_group = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.counterpart_firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.other_leg_last_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.package_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.underlying_instrument_id

  return index
end

-- Display: Optional Fields Fill Group
euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_fill_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Fill Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_fill_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Counterpart Firm Id: 8 Byte Ascii String Nullable
  index, counterpart_firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.counterpart_firm_id(buffer, index, packet, parent)

  -- Other Leg Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, other_leg_last_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.other_leg_last_px(buffer, index, packet, parent)

  -- Package Id: 12 Byte Ascii String Nullable
  index, package_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.package_id(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_instrument_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.underlying_instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Fill Group
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_fill_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.optional_fields_fill_group then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_fill_group(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_fill_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_fill_group, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_fill_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Optional Fields Fill Groups
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_fill_groups = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local optional_fields_fill_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_fill_group_count * 32

  return index
end

-- Display: Optional Fields Fill Groups
euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_fill_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Fill Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_fill_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Optional Fields Fill Group: Struct of 4 fields
  for i = 1, num_in_group do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_fill_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Optional Fields Fill Groups
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_fill_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_fill_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_fill_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.optional_fields_fill_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.optional_fields_fill_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_fill_groups_fields(buffer, offset, packet, parent)
end

-- Size: Execution Phase
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_phase = 1

-- Display: Execution Phase
euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_phase = function(value)
  if value == 1 then
    return "Execution Phase: Continuous Trading Phase (1)"
  end
  if value == 2 then
    return "Execution Phase: Uncrossing Phase (2)"
  end
  if value == 3 then
    return "Execution Phase: Trading At Last Phase (3)"
  end
  if value == 4 then
    return "Execution Phase: Continuous Uncrossing Phase (4)"
  end
  if value == 5 then
    return "Execution Phase: Ipo (5)"
  end

  return "Execution Phase: Unknown("..value..")"
end

-- Dissect: Execution Phase
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_phase = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_phase
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.execution_phase(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.execution_phase, range, value, display)

  return offset + length, value
end

-- Size: Leaves Qty
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leaves_qty = 8

-- Display: Leaves Qty
euronext_optiq_orderentrygateway_sbe_v4_5_display.leaves_qty = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leaves_qty = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leaves_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.leaves_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Size: Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_qualifier = 1

-- Display: Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_qualifier = function(buffer, packet, parent)
  local display = ""

  -- Is Deferred Publication flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Deferred Publication|"
  end
  -- Is Nav Trade Expressed In Price Currency flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Nav Trade Expressed In Price Currency|"
  end
  -- Is Nav Trade Expressed In Bps flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Nav Trade Expressed In Bps|"
  end
  -- Is Trade Creation By Market Operations flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Trade Creation By Market Operations|"
  end
  -- Is Aggressive Order flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Aggressive Order|"
  end
  -- Is Passive Order flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Passive Order|"
  end
  -- Is First Trade Price flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."First Trade Price|"
  end
  -- Is Uncrossing Trade flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Uncrossing Trade|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_qualifier_bits = function(buffer, offset, packet, parent)

  -- Deferred Publication: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.deferred_publication, buffer(offset, 1))

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.nav_trade_expressed_in_price_currency, buffer(offset, 1))

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.nav_trade_expressed_in_bps, buffer(offset, 1))

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_creation_by_market_operations, buffer(offset, 1))

  -- Aggressive Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.aggressive_order, buffer(offset, 1))

  -- Passive Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.passive_order, buffer(offset, 1))

  -- First Trade Price: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.first_trade_price, buffer(offset, 1))

  -- Uncrossing Trade: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.uncrossing_trade, buffer(offset, 1))
end

-- Dissect: Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_qualifier = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_qualifier(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_qualifier, range, display)

  if show.trade_qualifier then
    euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_qualifier_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Trade Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_type = 1

-- Display: Trade Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_type = function(value)
  if value == 1 then
    return "Trade Type: Conventional Trade (1)"
  end
  if value == 2 then
    return "Trade Type: Largein Scale Li S Trade (2)"
  end
  if value == 3 then
    return "Trade Type: Basis Trade (3)"
  end
  if value == 4 then
    return "Trade Type: Largein Scale Li S Package Trade (4)"
  end
  if value == 5 then
    return "Trade Type: Guaranteed Cross Trade (5)"
  end
  if value == 6 then
    return "Trade Type: Against Actual Trade (6)"
  end
  if value == 7 then
    return "Trade Type: Asset Allocation Trade (7)"
  end
  if value == 9 then
    return "Trade Type: Exchangefor Swap Trade (9)"
  end
  if value == 10 then
    return "Trade Type: Exchangefor Physical Trade Cash Leg (10)"
  end
  if value == 11 then
    return "Trade Type: Strategy Leg Conventional Trade (11)"
  end
  if value == 12 then
    return "Trade Type: Strategy Leg Largein Scale Li S Trade (12)"
  end
  if value == 13 then
    return "Trade Type: Strategy Leg Basis Trade (13)"
  end
  if value == 14 then
    return "Trade Type: Strategy Leg Guaranteed Cross Trade (14)"
  end
  if value == 15 then
    return "Trade Type: Strategy Leg Against Actual Trade (15)"
  end
  if value == 16 then
    return "Trade Type: Strategy Leg Asset Allocation Trade (16)"
  end
  if value == 18 then
    return "Trade Type: Strategy Leg Exchange For Swap Trade (18)"
  end
  if value == 19 then
    return "Trade Type: Strategy Leg Exchange For Physical Trade (19)"
  end
  if value == 20 then
    return "Trade Type: Bo B Trade (20)"
  end
  if value == 22 then
    return "Trade Type: Atom X Trade (22)"
  end
  if value == 24 then
    return "Trade Type: Trade Cancellation (24)"
  end
  if value == 25 then
    return "Trade Type: Outof Market Trade (25)"
  end
  if value == 26 then
    return "Trade Type: Delta Neutral Trade Underlying Cash Leg (26)"
  end
  if value == 27 then
    return "Trade Type: Market Vwap Operation Trade (27)"
  end
  if value == 28 then
    return "Trade Type: Euronext Fund Service Trade (28)"
  end
  if value == 29 then
    return "Trade Type: Secondary Listing Trade (29)"
  end
  if value == 30 then
    return "Trade Type: Requestfor Cross Trade (30)"
  end
  if value == 31 then
    return "Trade Type: Requestforcrossstrategy Leg Trade (31)"
  end
  if value == 32 then
    return "Trade Type: Trade Publication (32)"
  end
  if value == 33 then
    return "Trade Type: Dark Trade (33)"
  end
  if value == 34 then
    return "Trade Type: Delta Neutral Trade Underlying Future Leg (34)"
  end
  if value == 36 then
    return "Trade Type: Total Traded Volume (36)"
  end
  if value == 37 then
    return "Trade Type: Etfmtfnav Tradepriceinbp (37)"
  end
  if value == 38 then
    return "Trade Type: Etfmtfnav Dark Tradepriceinbp (38)"
  end
  if value == 39 then
    return "Trade Type: Guaranteed Cross Negotiateddeal Nliq (39)"
  end
  if value == 40 then
    return "Trade Type: Guaranteed Cross Negotiateddeal Oilq (40)"
  end
  if value == 41 then
    return "Trade Type: Largein Scale Trade (41)"
  end
  if value == 42 then
    return "Trade Type: Largein Scale Tradeinbasispoints (42)"
  end
  if value == 43 then
    return "Trade Type: Largein Scale Package Tradeinbasispoints (43)"
  end
  if value == 44 then
    return "Trade Type: Strategy Leg Largein Scale Tradeinbasispoints (44)"
  end
  if value == 46 then
    return "Trade Type: Non Standard Settlement (46)"
  end
  if value == 47 then
    return "Trade Type: Repurchase Agreement Repo (47)"
  end
  if value == 48 then
    return "Trade Type: Exchange Granted Trade (48)"
  end
  if value == 49 then
    return "Trade Type: Other (49)"
  end
  if value == 50 then
    return "Trade Type: Odd Lot (50)"
  end
  if value == 100 then
    return "Trade Type: Conventional Trade Provisionalprice (100)"
  end
  if value == 101 then
    return "Trade Type: Largein Scale Li S Trade Provisionalprice (101)"
  end
  if value == 102 then
    return "Trade Type: Largein Scale Li S Package Trade Provisionalprice (102)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Time
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_time = 8

-- Display: Trade Time
euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_time = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_time = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.trade_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Fill Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fill_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_qualifier

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_traded_px

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.last_shares

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.leaves_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_phase

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lis_transaction_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.escb_membership

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_fill_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.strategy_fields_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_derivatives_groups(buffer, offset + index)

  return index
end

-- Display: Fill Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.fill_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fill Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fill_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Trade Time: 8 Byte Unsigned Fixed Width Integer
  index, trade_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_time(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id_optional(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 47 values
  index, trade_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_type(buffer, index, packet, parent)

  -- Trade Qualifier: Struct of 8 fields
  index, trade_qualifier = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_qualifier(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id(buffer, index, packet, parent)

  -- Last Traded Px: 8 Byte Signed Fixed Width Integer
  index, last_traded_px = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_traded_px(buffer, index, packet, parent)

  -- Last Shares: 8 Byte Unsigned Fixed Width Integer
  index, last_shares = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.last_shares(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.leaves_qty(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer
  index, execution_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_id(buffer, index, packet, parent)

  -- Execution Phase: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, execution_phase = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_phase(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.escb_membership(buffer, index, packet, parent)

  -- Optional Fields Fill Groups: Struct of 2 fields
  index, optional_fields_fill_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_fill_groups(buffer, index, packet, parent)

  -- Strategy Fields Groups: Struct of 2 fields
  index, strategy_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.strategy_fields_groups(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_groups(buffer, index, packet, parent)

  -- Optional Fields Derivatives Groups: Struct of 2 fields
  index, optional_fields_derivatives_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_derivatives_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Fill Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fill_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.fill_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fill_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.fill_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.fill_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fill_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Qty Optional
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty_optional = 8

-- Display: Order Qty Optional
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_qty_optional = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Qty Optional: No Value"
  end

  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_qty_optional = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty_optional
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_qty_optional(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- Size: Order Priority
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_priority = 8

-- Display: Order Priority
euronext_optiq_orderentrygateway_sbe_v4_5_display.order_priority = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Priority: No Value"
  end

  return "Order Priority: "..value
end

-- Dissect: Order Priority
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_priority = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.order_priority(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.order_priority, range, value, display)

  return offset + length, value
end

-- Size: Ack Phase
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_phase = 1

-- Display: Ack Phase
euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_phase = function(value)
  if value == 1 then
    return "Ack Phase: Continuous Trading Phase (1)"
  end
  if value == 2 then
    return "Ack Phase: Call Phase (2)"
  end
  if value == 3 then
    return "Ack Phase: Halt Phase (3)"
  end
  if value == 4 then
    return "Ack Phase: Closed Phase (4)"
  end
  if value == 5 then
    return "Ack Phase: Trading At Last Phase (5)"
  end
  if value == 6 then
    return "Ack Phase: Reserved (6)"
  end
  if value == 7 then
    return "Ack Phase: Suspended (7)"
  end
  if value == 8 then
    return "Ack Phase: Random Uncrossing Phase (8)"
  end
  if value == 255 then
    return "Ack Phase: No Value"
  end

  return "Ack Phase: Unknown("..value..")"
end

-- Dissect: Ack Phase
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_phase = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_phase
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_phase(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_phase, range, value, display)

  return offset + length, value
end

-- Size: Ack Type
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_type = 1

-- Display: Ack Type
euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_type = function(value)
  if value == 0 then
    return "Ack Type: New Order Ack (0)"
  end
  if value == 1 then
    return "Ack Type: Replace Ack (1)"
  end
  if value == 2 then
    return "Ack Type: Order Creation By Market Operations (2)"
  end
  if value == 3 then
    return "Ack Type: Stop Triggered Ack (3)"
  end
  if value == 4 then
    return "Ack Type: Collar Confirmation Ack (4)"
  end
  if value == 5 then
    return "Ack Type: Refilled Iceberg Ack (5)"
  end
  if value == 6 then
    return "Ack Type: Mtl Second Ack (6)"
  end
  if value == 7 then
    return "Ack Type: Knock In By Issuer Kibi Ack (7)"
  end
  if value == 8 then
    return "Ack Type: Knock Out By Issuer Kobi Ack (8)"
  end
  if value == 9 then
    return "Ack Type: Payment After Knock Out Pako Ack (9)"
  end
  if value == 10 then
    return "Ack Type: Price Input Ack (10)"
  end
  if value == 11 then
    return "Ack Type: Rfq Ack (11)"
  end
  if value == 12 then
    return "Ack Type: Bid Only Ack (12)"
  end
  if value == 13 then
    return "Ack Type: Offer Only Ack (13)"
  end
  if value == 14 then
    return "Ack Type: Iceberg Transformedto Limit (14)"
  end
  if value == 15 then
    return "Ack Type: Ownership Request Ack (15)"
  end
  if value == 16 then
    return "Ack Type: Vfuvfc Triggered Ack (16)"
  end
  if value == 17 then
    return "Ack Type: Open Order Request Ack (17)"
  end
  if value == 21 then
    return "Ack Type: Rfie Ack (21)"
  end
  if value == 22 then
    return "Ack Type: Cross Order Ack (22)"
  end

  return "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_type = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_member

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_time_to_me

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_in

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.book_out_time_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_in_from_me_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.oeg_out_to_member_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.orig_client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_phase

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_priority

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_px_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_qualifiers

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_fields_groups(buffer, offset + index)

  return index
end

-- Display: Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time_optional(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_member(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.book_out_time_optional(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_in_from_me_optional(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.oeg_out_to_member_optional(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id_optional(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side_optional(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 20 values
  index, ack_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_type(buffer, index, packet, parent)

  -- Ack Phase: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, ack_phase = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_phase(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_id_optional(buffer, index, packet, parent)

  -- Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_priority = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_priority(buffer, index, packet, parent)

  -- Order Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_px_optional(buffer, index, packet, parent)

  -- Order Qty Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_qty_optional(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Ack Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: New Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.new_order_message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cl_msg_seq_num

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.firm_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.sending_time

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.client_order_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.symbol_index

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.emm

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.side

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.time_in_force

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_px_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.order_qty

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_within_firm_short_code

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trading_capacity

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.account_type

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.lp_role_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.execution_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.dark_execution_instruction

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_indicators

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.stpid

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.non_executing_client_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ioi_id_optional

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.free_text_section_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mifid_short_codes_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.optional_fields_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.clearing_fields_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.not_used_group_2_groups(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.additional_infos_groups(buffer, offset + index)

  return index
end

-- Display: New Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.new_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.new_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cl_msg_seq_num(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.emm(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, time_in_force = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.time_in_force(buffer, index, packet, parent)

  -- Order Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_px_optional(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.order_qty(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trading_capacity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.account_type(buffer, index, packet, parent)

  -- Lp Role Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.lp_role_optional(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 8 fields
  index, execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.execution_instruction(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_indicators(buffer, index, packet, parent)

  -- Stpid: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stpid = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.stpid(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.non_executing_client_id(buffer, index, packet, parent)

  -- Ioi Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, ioi_id_optional = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ioi_id_optional(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.free_text_section_groups(buffer, index, packet, parent)

  -- Mifid Short Codes Groups: Struct of 2 fields
  index, mifid_short_codes_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mifid_short_codes_groups(buffer, index, packet, parent)

  -- Optional Fields Groups: Struct of 2 fields
  index, optional_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.optional_fields_groups(buffer, index, packet, parent)

  -- Clearing Fields Groups: Struct of 2 fields
  index, clearing_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.clearing_fields_groups(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.not_used_group_2_groups(buffer, index, packet, parent)

  -- Additional Infos Groups: Struct of 2 fields
  index, additional_infos_groups = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.additional_infos_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.new_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.new_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.new_order_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.new_order_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.new_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.payload = function(buffer, offset, template_id)
  -- Size of New Order Message
  if template_id == 1 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.new_order_message(buffer, offset)
  end
  -- Size of Ack Message
  if template_id == 3 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ack_message(buffer, offset)
  end
  -- Size of Fill Message
  if template_id == 4 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fill_message(buffer, offset)
  end
  -- Size of Kill Message
  if template_id == 5 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.kill_message(buffer, offset)
  end
  -- Size of Cancel Replace Message
  if template_id == 6 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cancel_replace_message(buffer, offset)
  end
  -- Size of Reject Message
  if template_id == 7 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.reject_message(buffer, offset)
  end
  -- Size of Quotes Message
  if template_id == 8 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quotes_message(buffer, offset)
  end
  -- Size of Quote Ack Message
  if template_id == 9 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_ack_message(buffer, offset)
  end
  -- Size of Quote Request Message
  if template_id == 10 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.quote_request_message(buffer, offset)
  end
  -- Size of Cancel Request Message
  if template_id == 12 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cancel_request_message(buffer, offset)
  end
  -- Size of Mass Cancel Message
  if template_id == 13 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mass_cancel_message(buffer, offset)
  end
  -- Size of Mass Cancel Ack Message
  if template_id == 14 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mass_cancel_ack_message(buffer, offset)
  end
  -- Size of Open Order Request Message
  if template_id == 15 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.open_order_request_message(buffer, offset)
  end
  -- Size of Ownership Request Ack Message
  if template_id == 17 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ownership_request_ack_message(buffer, offset)
  end
  -- Size of Ownership Request Message
  if template_id == 18 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ownership_request_message(buffer, offset)
  end
  -- Size of Trade Bust Notification Message
  if template_id == 19 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.trade_bust_notification_message(buffer, offset)
  end
  -- Size of Collar Breach Confirmation Message
  if template_id == 20 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.collar_breach_confirmation_message(buffer, offset)
  end
  -- Size of Price Input Message
  if template_id == 28 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.price_input_message(buffer, offset)
  end
  -- Size of Liquidity Provider Command Message
  if template_id == 32 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.liquidity_provider_command_message(buffer, offset)
  end
  -- Size of Ask For Quote Message
  if template_id == 33 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.ask_for_quote_message(buffer, offset)
  end
  -- Size of Request For Execution Message
  if template_id == 34 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_for_execution_message(buffer, offset)
  end
  -- Size of Rfq Notification Message
  if template_id == 35 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_notification_message(buffer, offset)
  end
  -- Size of Rfq Matching Status Message
  if template_id == 36 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_matching_status_message(buffer, offset)
  end
  -- Size of Rfqlp Matching Status Message
  if template_id == 37 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfqlp_matching_status_message(buffer, offset)
  end
  -- Size of User Notification Message
  if template_id == 39 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.user_notification_message(buffer, offset)
  end
  -- Size of Mm Sign In Message
  if template_id == 47 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_sign_in_message(buffer, offset)
  end
  -- Size of Mm Sign In Ack Message
  if template_id == 48 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_sign_in_ack_message(buffer, offset)
  end
  -- Size of Instrument Synchronization List Message
  if template_id == 50 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.instrument_synchronization_list_message(buffer, offset)
  end
  -- Size of Synchronization Time Message
  if template_id == 51 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.synchronization_time_message(buffer, offset)
  end
  -- Size of Security Definition Request Message
  if template_id == 60 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_definition_request_message(buffer, offset)
  end
  -- Size of Security Definition Ack Message
  if template_id == 61 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.security_definition_ack_message(buffer, offset)
  end
  -- Size of Mm Protection Request Message
  if template_id == 62 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_protection_request_message(buffer, offset)
  end
  -- Size of Mm Protection Ack Message
  if template_id == 63 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.mm_protection_ack_message(buffer, offset)
  end
  -- Size of New Wholesale Order Message
  if template_id == 64 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.new_wholesale_order_message(buffer, offset)
  end
  -- Size of Wholesale Order Ack Message
  if template_id == 65 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wholesale_order_ack_message(buffer, offset)
  end
  -- Size of Request For Implied Execution Message
  if template_id == 66 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.request_for_implied_execution_message(buffer, offset)
  end
  -- Size of Cross Order Message
  if template_id == 67 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.cross_order_message(buffer, offset)
  end
  -- Size of Rfq Audit Message
  if template_id == 72 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.rfq_audit_message(buffer, offset)
  end
  -- Size of Wave For Liquidity Message
  if template_id == 73 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wave_for_liquidity_message(buffer, offset)
  end
  -- Size of Wave For Liquidity Notification Message
  if template_id == 74 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.wave_for_liquidity_notification_message(buffer, offset)
  end
  -- Size of Logon Message
  if template_id == 100 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_message(buffer, offset)
  end
  -- Size of Logon Ack Message
  if template_id == 101 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_ack_message(buffer, offset)
  end
  -- Size of Logon Reject Message
  if template_id == 102 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logon_reject_message(buffer, offset)
  end
  -- Size of Logout Message
  if template_id == 103 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.logout_message(buffer, offset)
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
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.technical_reject_message(buffer, offset)
  end
  -- Size of Declaration Entry Message
  if template_id == 40 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_message(buffer, offset)
  end
  -- Size of Declaration Entry Ack Message
  if template_id == 41 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_ack_message(buffer, offset)
  end
  -- Size of Declaration Notice Message
  if template_id == 42 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_notice_message(buffer, offset)
  end
  -- Size of Declaration Cancel And Refusal Message
  if template_id == 43 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_cancel_and_refusal_message(buffer, offset)
  end
  -- Size of Fund Price Input Message
  if template_id == 44 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fund_price_input_message(buffer, offset)
  end
  -- Size of Fund Price Input Ack Message
  if template_id == 45 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.fund_price_input_ack_message(buffer, offset)
  end
  -- Size of Declaration Entry Reject Message
  if template_id == 46 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_size_of.declaration_entry_reject_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
euronext_optiq_orderentrygateway_sbe_v4_5_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Message
  if template_id == 1 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.new_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Ack Message
  if template_id == 3 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Fill Message
  if template_id == 4 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fill_message(buffer, offset, packet, parent)
  end
  -- Dissect Kill Message
  if template_id == 5 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.kill_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Replace Message
  if template_id == 6 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cancel_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if template_id == 7 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Quotes Message
  if template_id == 8 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quotes_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Ack Message
  if template_id == 9 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if template_id == 10 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.quote_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Request Message
  if template_id == 12 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cancel_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Message
  if template_id == 13 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mass_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Ack Message
  if template_id == 14 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mass_cancel_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Order Request Message
  if template_id == 15 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.open_order_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Ownership Request Ack Message
  if template_id == 17 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ownership_request_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Ownership Request Message
  if template_id == 18 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ownership_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Notification Message
  if template_id == 19 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.trade_bust_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Collar Breach Confirmation Message
  if template_id == 20 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.collar_breach_confirmation_message(buffer, offset, packet, parent)
  end
  -- Dissect Price Input Message
  if template_id == 28 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.price_input_message(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Provider Command Message
  if template_id == 32 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.liquidity_provider_command_message(buffer, offset, packet, parent)
  end
  -- Dissect Ask For Quote Message
  if template_id == 33 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.ask_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Request For Execution Message
  if template_id == 34 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_for_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Notification Message
  if template_id == 35 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Matching Status Message
  if template_id == 36 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_matching_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Rfqlp Matching Status Message
  if template_id == 37 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfqlp_matching_status_message(buffer, offset, packet, parent)
  end
  -- Dissect User Notification Message
  if template_id == 39 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.user_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Mm Sign In Message
  if template_id == 47 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_sign_in_message(buffer, offset, packet, parent)
  end
  -- Dissect Mm Sign In Ack Message
  if template_id == 48 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_sign_in_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Synchronization List Message
  if template_id == 50 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.instrument_synchronization_list_message(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Time Message
  if template_id == 51 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.synchronization_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request Message
  if template_id == 60 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_definition_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Ack Message
  if template_id == 61 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.security_definition_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Mm Protection Request Message
  if template_id == 62 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_protection_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Mm Protection Ack Message
  if template_id == 63 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.mm_protection_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect New Wholesale Order Message
  if template_id == 64 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.new_wholesale_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Wholesale Order Ack Message
  if template_id == 65 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wholesale_order_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Request For Implied Execution Message
  if template_id == 66 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.request_for_implied_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Message
  if template_id == 67 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.cross_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Audit Message
  if template_id == 72 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.rfq_audit_message(buffer, offset, packet, parent)
  end
  -- Dissect Wave For Liquidity Message
  if template_id == 73 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wave_for_liquidity_message(buffer, offset, packet, parent)
  end
  -- Dissect Wave For Liquidity Notification Message
  if template_id == 74 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.wave_for_liquidity_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if template_id == 100 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_message(buffer, offset, packet, parent)
  end
  -- Dissect Logon Ack Message
  if template_id == 101 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Logon Reject Message
  if template_id == 102 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logon_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 103 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.logout_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 106 then
  end
  -- Dissect Test Request Message
  if template_id == 107 then
  end
  -- Dissect Technical Reject Message
  if template_id == 108 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.technical_reject_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Message
  if template_id == 40 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Ack Message
  if template_id == 41 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Notice Message
  if template_id == 42 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_notice_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Cancel And Refusal Message
  if template_id == 43 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_cancel_and_refusal_message(buffer, offset, packet, parent)
  end
  -- Dissect Fund Price Input Message
  if template_id == 44 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fund_price_input_message(buffer, offset, packet, parent)
  end
  -- Dissect Fund Price Input Ack Message
  if template_id == 45 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.fund_price_input_ack_message(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Reject Message
  if template_id == 46 then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.declaration_entry_reject_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.payload(buffer, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.payload, range, display)

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Version
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.version = 2

-- Display: Version
euronext_optiq_orderentrygateway_sbe_v4_5_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.version = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.version
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.version(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.version, range, value, display)

  return offset + length, value
end

-- Size: Schema Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.schema_id = 2

-- Display: Schema Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.schema_id = function(value)
  return "Schema Id: "..value
end

-- Dissect: Schema Id
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.schema_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.schema_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.schema_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Size: Template Id
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.template_id = 2

-- Display: Template Id
euronext_optiq_orderentrygateway_sbe_v4_5_display.template_id = function(value)
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
  if value == 72 then
    return "Template Id: Rfq Audit Message (72)"
  end
  if value == 73 then
    return "Template Id: Wave For Liquidity Message (73)"
  end
  if value == 74 then
    return "Template Id: Wave For Liquidity Notification Message (74)"
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
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.template_id = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.template_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Block Length
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.block_length = 2

-- Display: Block Length
euronext_optiq_orderentrygateway_sbe_v4_5_display.block_length = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.block_length = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.block_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.block_length(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.block_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.block_length

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.template_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.schema_id

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.version

  return index
end

-- Display: Message Header
euronext_optiq_orderentrygateway_sbe_v4_5_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.block_length(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 54 values
  index, template_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.template_id(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.schema_id(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.version(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.message_header(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.message_header, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Frame
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.frame = 2

-- Display: Frame
euronext_optiq_orderentrygateway_sbe_v4_5_display.frame = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.frame = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.frame
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.frame(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.frame

  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + euronext_optiq_orderentrygateway_sbe_v4_5_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
euronext_optiq_orderentrygateway_sbe_v4_5_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.frame(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 54 branches
  index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = euronext_optiq_orderentrygateway_sbe_v4_5_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v4_5_display.message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5.fields.message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
euronext_optiq_orderentrygateway_sbe_v4_5_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index = euronext_optiq_orderentrygateway_sbe_v4_5_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function euronext_optiq_orderentrygateway_sbe_v4_5.init()
end

-- Dissector for Euronext Optiq OrderEntryGateway Sbe 4.5
function euronext_optiq_orderentrygateway_sbe_v4_5.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = euronext_optiq_orderentrygateway_sbe_v4_5.name

  -- Dissect protocol
  local protocol = parent:add(euronext_optiq_orderentrygateway_sbe_v4_5, buffer(), euronext_optiq_orderentrygateway_sbe_v4_5.description, "("..buffer:len().." Bytes)")
  return euronext_optiq_orderentrygateway_sbe_v4_5_dissect.packet(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, euronext_optiq_orderentrygateway_sbe_v4_5)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.euronext_optiq_orderentrygateway_sbe_v4_5_packet_size = function(buffer)

  return true
end

-- Verify Schema Id Field
verify.schema_id = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 305 then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq OrderEntryGateway Sbe 4.5
local function euronext_optiq_orderentrygateway_sbe_v4_5_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.euronext_optiq_orderentrygateway_sbe_v4_5_packet_size(buffer) then return false end

  -- Verify Schema Id
  if not verify.schema_id(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = euronext_optiq_orderentrygateway_sbe_v4_5
  euronext_optiq_orderentrygateway_sbe_v4_5.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq OrderEntryGateway Sbe 4.5
euronext_optiq_orderentrygateway_sbe_v4_5:register_heuristic("tcp", euronext_optiq_orderentrygateway_sbe_v4_5_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 4.5
--   Date: Thursday, January 14, 2021
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
