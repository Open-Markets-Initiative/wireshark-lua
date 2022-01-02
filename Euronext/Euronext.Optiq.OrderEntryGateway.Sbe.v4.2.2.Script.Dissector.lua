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
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_qualifiers = ProtoField.new("Ack Qualifiers", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ackqualifiers", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_type = ProtoField.new("Ack Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.acktype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.acknowledgement = ProtoField.new("Acknowledgement", "euronext.optiq.orderentrygateway.sbe.v4.2.2.acknowledgement", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.action_type = ProtoField.new("Action Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.actiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.additional_infos_group = ProtoField.new("Additional Infos Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.additionalinfosgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.additional_infos_groups = ProtoField.new("Additional Infos Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.additionalinfosgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.afq_reason = ProtoField.new("Afq Reason", "euronext.optiq.orderentrygateway.sbe.v4.2.2.afqreason", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.aggressive_order = ProtoField.new("Aggressive Order", "euronext.optiq.orderentrygateway.sbe.v4.2.2.aggressiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ask_for_quote_message = ProtoField.new("Ask For Quote Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.askforquotemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_error_code = ProtoField.new("Bid Error Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.biderrorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_order_id = ProtoField.new("Bid Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bidorderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_px = ProtoField.new("Bid Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bidpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_quantity = ProtoField.new("Bid Quantity", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bidquantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_size = ProtoField.new("Bid Size", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bidsize", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.block_length_uint_16 = ProtoField.new("Block Length uint 16", "euronext.optiq.orderentrygateway.sbe.v4.2.2.blocklengthuint16", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.block_length_uint_8 = ProtoField.new("Block Length uint 8", "euronext.optiq.orderentrygateway.sbe.v4.2.2.blocklengthuint8", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.book_in = ProtoField.new("Book In", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bookin", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.book_out_time = ProtoField.new("Book Out Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bookouttime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.breach_action = ProtoField.new("Breach Action", "euronext.optiq.orderentrygateway.sbe.v4.2.2.breachaction", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.breach_status = ProtoField.new("Breach Status", "euronext.optiq.orderentrygateway.sbe.v4.2.2.breachstatus", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.breached_collar_price = ProtoField.new("Breached Collar Price", "euronext.optiq.orderentrygateway.sbe.v4.2.2.breachedcollarprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.buy_revision_flag = ProtoField.new("Buy Revision Flag", "euronext.optiq.orderentrygateway.sbe.v4.2.2.buyrevisionflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bypass_indicator = ProtoField.new("Bypass Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.bypassindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cancel_replace_message = ProtoField.new("Cancel Replace Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.cancelreplacemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cancel_request_message = ProtoField.new("Cancel Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.cancelrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ccpid = ProtoField.new("Ccpid", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ccpid", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.centralisation_date = ProtoField.new("Centralisation Date", "euronext.optiq.orderentrygateway.sbe.v4.2.2.centralisationdate", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cl_msg_seq_num = ProtoField.new("Cl Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_dataset_group = ProtoField.new("Clearing Dataset Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearingdatasetgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_dataset_groups = ProtoField.new("Clearing Dataset Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearingdatasetgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_fields_group = ProtoField.new("Clearing Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearingfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_fields_groups = ProtoField.new("Clearing Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearingfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_fields_x_group = ProtoField.new("Clearing Fields X Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearingfieldsxgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_fields_x_groups = ProtoField.new("Clearing Fields X Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearingfieldsxgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_firm_id = ProtoField.new("Clearing Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearingfirmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clearinginstruction", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_id = ProtoField.new("Client Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clientid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_identification_short_code_cross = ProtoField.new("Client Identification Short Code Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clientidentificationshortcodecross", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_identification_shortcode = ProtoField.new("Client Identification Shortcode", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clientidentificationshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_order_id = ProtoField.new("Client Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.clientorderid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_breach_confirmation_message = ProtoField.new("Collar Breach Confirmation Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.collarbreachconfirmationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_fields_group = ProtoField.new("Collar Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.collarfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_fields_groups = ProtoField.new("Collar Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.collarfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_rej_type = ProtoField.new("Collar Rej Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.collarrejtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.commodity_derivative_indicator = ProtoField.new("Commodity Derivative Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.commodityderivativeindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.conditional_order = ProtoField.new("Conditional Order", "euronext.optiq.orderentrygateway.sbe.v4.2.2.conditionalorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.contract_id = ProtoField.new("Contract Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.contractid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.2.2.contractsymbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.counterpart_firm_id = ProtoField.new("Counterpart Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.counterpartfirmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.cross_order_message = ProtoField.new("Cross Order Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.crossordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.current_mmp_position = ProtoField.new("Current Mmp Position", "euronext.optiq.orderentrygateway.sbe.v4.2.2.currentmmpposition", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dark_execution_instruction = ProtoField.new("Dark Execution Instruction", "euronext.optiq.orderentrygateway.sbe.v4.2.2.darkexecutioninstruction", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dark_indicator = ProtoField.new("Dark Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.darkindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dea_indicator = ProtoField.new("Dea Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.deaindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_cancel_and_refusal_message = ProtoField.new("Declaration Cancel And Refusal Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationcancelandrefusalmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_ack_message = ProtoField.new("Declaration Entry Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationentryackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_message = ProtoField.new("Declaration Entry Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationentrymessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_entry_reject_message = ProtoField.new("Declaration Entry Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationentryrejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_id = ProtoField.new("Declaration Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_notice_message = ProtoField.new("Declaration Notice Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationnoticemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.declaration_status = ProtoField.new("Declaration Status", "euronext.optiq.orderentrygateway.sbe.v4.2.2.declarationstatus", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.deferral_indicator = ProtoField.new("Deferral Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.deferralindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.deferred_publication = ProtoField.new("Deferred Publication", "euronext.optiq.orderentrygateway.sbe.v4.2.2.deferredpublication", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.deferred_trade_indicator = ProtoField.new("Deferred Trade Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.deferredtradeindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.disabled_cancel_on_disconnect_indicator = ProtoField.new("Disabled Cancel On Disconnect Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.disabledcancelondisconnectindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.disclosed_qty = ProtoField.new("Disclosed Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.disclosedqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.disclosed_quantity_randomization = ProtoField.new("Disclosed Quantity Randomization", "euronext.optiq.orderentrygateway.sbe.v4.2.2.disclosedquantityrandomization", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.displayed_order_interaction = ProtoField.new("Displayed Order Interaction", "euronext.optiq.orderentrygateway.sbe.v4.2.2.displayedorderinteraction", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.emm = ProtoField.new("Emm", "euronext.optiq.orderentrygateway.sbe.v4.2.2.emm", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.end_client = ProtoField.new("End Client", "euronext.optiq.orderentrygateway.sbe.v4.2.2.endclient", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.orderentrygateway.sbe.v4.2.2.endtimevwap", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.entering_counterparty = ProtoField.new("Entering Counterparty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.enteringcounterparty", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.error_code = ProtoField.new("Error Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.errorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.escb_membership = ProtoField.new("Escb Membership", "euronext.optiq.orderentrygateway.sbe.v4.2.2.escbmembership", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.evaluated_price = ProtoField.new("Evaluated Price", "euronext.optiq.orderentrygateway.sbe.v4.2.2.evaluatedprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.exchange_id = ProtoField.new("Exchange Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.exchangeid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.executed_upon_entry_flag = ProtoField.new("Executed Upon Entry Flag", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executeduponentryflag", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_algo_indicator = ProtoField.new("Execution Algo Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executionalgoindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_id = ProtoField.new("Execution Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executionid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_instruction = ProtoField.new("Execution Instruction", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executioninstruction", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_phase = ProtoField.new("Execution Phase", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executionphase", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_upon_entry_flag_enabled = ProtoField.new("Execution Upon Entry Flag Enabled", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executionuponentryflagenabled", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_within_firm_short_code = ProtoField.new("Execution Within Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.executionwithinfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.family_id = ProtoField.new("Family Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.familyid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.field_actively_used = ProtoField.new("Field Actively Used", "euronext.optiq.orderentrygateway.sbe.v4.2.2.fieldactivelyused", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0001")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fill_message = ProtoField.new("Fill Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.fillmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.firm_id = ProtoField.new("Firm Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.firmid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.firm_id_publication = ProtoField.new("Firm Id Publication", "euronext.optiq.orderentrygateway.sbe.v4.2.2.firmidpublication", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.first_trade_price = ProtoField.new("First Trade Price", "euronext.optiq.orderentrygateway.sbe.v4.2.2.firsttradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.frame = ProtoField.new("Frame", "euronext.optiq.orderentrygateway.sbe.v4.2.2.frame", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text = ProtoField.new("Free Text", "euronext.optiq.orderentrygateway.sbe.v4.2.2.freetext", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text_cross = ProtoField.new("Free Text Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.freetextcross", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text_section_group = ProtoField.new("Free Text Section Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.freetextsectiongroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text_section_groups = ProtoField.new("Free Text Section Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.freetextsectiongroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.frmaramplp = ProtoField.new("Frmaramplp", "euronext.optiq.orderentrygateway.sbe.v4.2.2.frmaramplp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fund_price_input_ack_message = ProtoField.new("Fund Price Input Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.fundpriceinputackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.fund_price_input_message = ProtoField.new("Fund Price Input Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.fundpriceinputmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.gross_trade_amount = ProtoField.new("Gross Trade Amount", "euronext.optiq.orderentrygateway.sbe.v4.2.2.grosstradeamount", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "euronext.optiq.orderentrygateway.sbe.v4.2.2.groupsizeencoding", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.guarantee_flag = ProtoField.new("Guarantee Flag", "euronext.optiq.orderentrygateway.sbe.v4.2.2.guaranteeflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ilqd = ProtoField.new("Ilqd", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ilqd", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.input_price_type = ProtoField.new("Input Price Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.inputpricetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.instrumentgroupcode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_synchronization_list_message = ProtoField.new("Instrument Synchronization List Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.instrumentsynchronizationlistmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_synchronization_section_group = ProtoField.new("Instrument Synchronization Section Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.instrumentsynchronizationsectiongroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_synchronization_section_groups = ProtoField.new("Instrument Synchronization Section Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.instrumentsynchronizationsectiongroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.internal_1 = ProtoField.new("Internal 1", "euronext.optiq.orderentrygateway.sbe.v4.2.2.internal1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.internal_2 = ProtoField.new("Internal 2", "euronext.optiq.orderentrygateway.sbe.v4.2.2.internal2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.investment_algo_indicator = ProtoField.new("Investment Algo Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.investmentalgoindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.investment_decision_w_firm_short_code = ProtoField.new("Investment Decision W Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.investmentdecisionwfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.kill_message = ProtoField.new("Kill Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.killmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.kill_reason = ProtoField.new("Kill Reason", "euronext.optiq.orderentrygateway.sbe.v4.2.2.killreason", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_book_in_time = ProtoField.new("Last Book In Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lastbookintime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_cl_msg_seq_num = ProtoField.new("Last Cl Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lastclmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_msg_seq_num = ProtoField.new("Last Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lastmsgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_shares = ProtoField.new("Last Shares", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lastshares", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.last_traded_px = ProtoField.new("Last Traded Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lasttradedpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leaves_qty = ProtoField.new("Leaves Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leavesqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_1 = ProtoField.new("Leg 1", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg1", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0002")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_2 = ProtoField.new("Leg 2", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg2", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0004")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_3 = ProtoField.new("Leg 3", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg3", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0008")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_4 = ProtoField.new("Leg 4", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg4", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0010")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_5 = ProtoField.new("Leg 5", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg5", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0020")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_6 = ProtoField.new("Leg 6", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg6", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0040")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_7 = ProtoField.new("Leg 7", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg7", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0080")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_8 = ProtoField.new("Leg 8", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg8", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0100")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_9 = ProtoField.new("Leg 9", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leg9", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, "0x0200")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_bid_order_id = ProtoField.new("Leg Bid Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legbidorderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_error_code = ProtoField.new("Leg Error Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legerrorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leginstrumentid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_last_px = ProtoField.new("Leg Last Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leglastpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leglastqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_last_trading_date = ProtoField.new("Leg Last Trading Date", "euronext.optiq.orderentrygateway.sbe.v4.2.2.leglasttradingdate", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_offer_order_id = ProtoField.new("Leg Offer Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legofferorderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_price = ProtoField.new("Leg Price", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_put_or_call = ProtoField.new("Leg Put Or Call", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legputorcall", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_ratio = ProtoField.new("Leg Ratio", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legratio", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_security_type = ProtoField.new("Leg Security Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legsecuritytype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_side = ProtoField.new("Leg Side", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legside", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_strike_price = ProtoField.new("Leg Strike Price", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legstrikeprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_symbol_index = ProtoField.new("Leg Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.2.2.legsymbolindex", ftypes.UINT32)
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
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.lrgs = ProtoField.new("Lrgs", "euronext.optiq.orderentrygateway.sbe.v4.2.2.lrgs", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mass_cancel_ack_message = ProtoField.new("Mass Cancel Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.masscancelackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.masscancelmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.maturity = ProtoField.new("Maturity", "euronext.optiq.orderentrygateway.sbe.v4.2.2.maturity", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.message = ProtoField.new("Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.message", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.orderentrygateway.sbe.v4.2.2.messageheader", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.orderentrygateway.sbe.v4.2.2.messagepricenotation", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_cof_secondary_listing = ProtoField.new("Mi Cof Secondary Listing", "euronext.optiq.orderentrygateway.sbe.v4.2.2.micofsecondarylisting", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fi_d_fields_group = ProtoField.new("Mi Fi D Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mifidfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fi_d_fields_groups = ProtoField.new("Mi Fi D Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mifidfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fi_d_shortcodes_group = ProtoField.new("Mi Fi D Shortcodes Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mifidshortcodesgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fi_d_shortcodes_groups = ProtoField.new("Mi Fi D Shortcodes Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mifidshortcodesgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fid_indicators = ProtoField.new("Mi Fid Indicators", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mifidindicators", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.min_order_qty = ProtoField.new("Min Order Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.minorderqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.minimum_quantity_type = ProtoField.new("Minimum Quantity Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.minimumquantitytype", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.miscellaneous_fee_amount = ProtoField.new("Miscellaneous Fee Amount", "euronext.optiq.orderentrygateway.sbe.v4.2.2.miscellaneousfeeamount", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_p_section_2_group = ProtoField.new("Mm P Section 2 Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmpsection2group", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_p_section_2_groups = ProtoField.new("Mm P Section 2 Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmpsection2groups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_p_section_group = ProtoField.new("Mm P Section Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmpsectiongroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_p_section_groups = ProtoField.new("Mm P Section Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmpsectiongroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_protection_ack_message = ProtoField.new("Mm Protection Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmprotectionackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_protection_request_message = ProtoField.new("Mm Protection Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmprotectionrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_sign_in_ack_message = ProtoField.new("Mm Sign In Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmsigninackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_sign_in_message = ProtoField.new("Mm Sign In Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmsigninmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mmp_execution_type = ProtoField.new("Mmp Execution Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.mmpexecutiontype", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v4.2.2.msgseqnum", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.nav_trade_expressed_in_bps = ProtoField.new("Nav Trade Expressed In Bps", "euronext.optiq.orderentrygateway.sbe.v4.2.2.navtradeexpressedinbps", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.nav_trade_expressed_in_price_currency = ProtoField.new("Nav Trade Expressed In Price Currency", "euronext.optiq.orderentrygateway.sbe.v4.2.2.navtradeexpressedinpricecurrency", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.new_order_message = ProtoField.new("New Order Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.newordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.new_wholesale_order_message = ProtoField.new("New Wholesale Order Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.newwholesaleordermessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.nliq = ProtoField.new("Nliq", "euronext.optiq.orderentrygateway.sbe.v4.2.2.nliq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.non_executing_broker_short_code = ProtoField.new("Non Executing Broker Short Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.nonexecutingbrokershortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.non_executing_client_id = ProtoField.new("Non Executing Client Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.nonexecutingclientid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.not_used_group_1_groups = ProtoField.new("Not Used Group 1 Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.notusedgroup1groups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.not_used_group_2_groups = ProtoField.new("Not Used Group 2 Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.notusedgroup2groups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.notification = ProtoField.new("Notification", "euronext.optiq.orderentrygateway.sbe.v4.2.2.notification", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.num_in_group = ProtoField.new("Num In Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.numingroup", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.number_of_l_ps = ProtoField.new("Number Of L Ps", "euronext.optiq.orderentrygateway.sbe.v4.2.2.numberoflps", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oe_partition_id = ProtoField.new("Oe Partition Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oepartitionid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegin_from_me = ProtoField.new("Oegin From Me", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oeginfromme", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegin_from_member = ProtoField.new("Oegin From Member", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oeginfrommember", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegout_time_to_me = ProtoField.new("Oegout Time To Me", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oegouttimetome", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oegout_to_member = ProtoField.new("Oegout To Member", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oegouttomember", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_error_code = ProtoField.new("Offer Error Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.offererrorcode", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_order_id = ProtoField.new("Offer Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.offerorderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_px = ProtoField.new("Offer Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.offerpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_quantity = ProtoField.new("Offer Quantity", "euronext.optiq.orderentrygateway.sbe.v4.2.2.offerquantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_size = ProtoField.new("Offer Size", "euronext.optiq.orderentrygateway.sbe.v4.2.2.offersize", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oilq = ProtoField.new("Oilq", "euronext.optiq.orderentrygateway.sbe.v4.2.2.oilq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.omf = ProtoField.new("Omf", "euronext.optiq.orderentrygateway.sbe.v4.2.2.omf", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.open_close = ProtoField.new("Open Close", "euronext.optiq.orderentrygateway.sbe.v4.2.2.openclose", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.open_order_request_message = ProtoField.new("Open Order Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.openorderrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.operation_type = ProtoField.new("Operation Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.operationtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.optiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_derivatives_group = ProtoField.new("Optional Fields Derivatives Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.optionalfieldsderivativesgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_derivatives_groups = ProtoField.new("Optional Fields Derivatives Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.optionalfieldsderivativesgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_fill_group = ProtoField.new("Optional Fields Fill Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.optionalfieldsfillgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_fill_groups = ProtoField.new("Optional Fields Fill Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.optionalfieldsfillgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_group = ProtoField.new("Optional Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.optionalfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_groups = ProtoField.new("Optional Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.optionalfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_actor_type = ProtoField.new("Order Actor Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderactortype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_category = ProtoField.new("Order Category", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ordercategory", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_expiration_date = ProtoField.new("Order Expiration Date", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderexpirationdate", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_expiration_time = ProtoField.new("Order Expiration Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderexpirationtime", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_id = ProtoField.new("Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderpriority", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_qty = ProtoField.new("Order Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_side = ProtoField.new("Order Side", "euronext.optiq.orderentrygateway.sbe.v4.2.2.orderside", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_size_limit = ProtoField.new("Order Size Limit", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ordersizelimit", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ordertype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.orig_client_order_id = ProtoField.new("Orig Client Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.origclientorderid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.other_leg_last_px = ProtoField.new("Other Leg Last Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.otherleglastpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ownership_request_ack_message = ProtoField.new("Ownership Request Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ownershiprequestackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ownership_request_message = ProtoField.new("Ownership Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.ownershiprequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.package_id = ProtoField.new("Package Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.packageid", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.packet = ProtoField.new("Packet", "euronext.optiq.orderentrygateway.sbe.v4.2.2.packet", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.parent_exec_id = ProtoField.new("Parent Exec Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.parentexecid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.parent_symbol_index = ProtoField.new("Parent Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.2.2.parentsymbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.passive_order = ProtoField.new("Passive Order", "euronext.optiq.orderentrygateway.sbe.v4.2.2.passiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.payload = ProtoField.new("Payload", "euronext.optiq.orderentrygateway.sbe.v4.2.2.payload", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.peg_offset = ProtoField.new("Peg Offset", "euronext.optiq.orderentrygateway.sbe.v4.2.2.pegoffset", ftypes.INT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.potential_matching_px = ProtoField.new("Potential Matching Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.potentialmatchingpx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.potential_matching_qty = ProtoField.new("Potential Matching Qty", "euronext.optiq.orderentrygateway.sbe.v4.2.2.potentialmatchingqty", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.pre_matching_type = ProtoField.new("Pre Matching Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.prematchingtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.previous_day_indicator = ProtoField.new("Previous Day Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.previousdayindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.pric = ProtoField.new("Pric", "euronext.optiq.orderentrygateway.sbe.v4.2.2.pric", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.price = ProtoField.new("Price", "euronext.optiq.orderentrygateway.sbe.v4.2.2.price", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.price_input_message = ProtoField.new("Price Input Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.priceinputmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.principal_code = ProtoField.new("Principal Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.principalcode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.principal_code_cross = ProtoField.new("Principal Code Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.principalcodecross", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.protection_threshold = ProtoField.new("Protection Threshold", "euronext.optiq.orderentrygateway.sbe.v4.2.2.protectionthreshold", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.protection_type = ProtoField.new("Protection Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.protectiontype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.pull = ProtoField.new("Pull", "euronext.optiq.orderentrygateway.sbe.v4.2.2.pull", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quantity", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.queue_indicator = ProtoField.new("Queue Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.queueindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.queueing_indicator = ProtoField.new("Queueing Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.queueingindicator", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_ack_message = ProtoField.new("Quote Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quoteackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_acks_group = ProtoField.new("Quote Acks Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quoteacksgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_acks_groups = ProtoField.new("Quote Acks Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quoteacksgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_req_id = ProtoField.new("Quote Req Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quotereqid", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_request_message = ProtoField.new("Quote Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quoterequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quotes_message = ProtoField.new("Quotes Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quotesmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quotes_rep_group = ProtoField.new("Quotes Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quotesrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quotes_rep_groups = ProtoField.new("Quotes Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.quotesrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.recipient_type = ProtoField.new("Recipient Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.recipienttype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reject_message = ProtoField.new("Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_client_message_sequence_number = ProtoField.new("Rejected Client Message Sequence Number", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rejectedclientmessagesequencenumber", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_message = ProtoField.new("Rejected Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rejectedmessage", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rejected_message_id = ProtoField.new("Rejected Message Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rejectedmessageid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_for_execution_message = ProtoField.new("Request For Execution Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.requestforexecutionmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_for_implied_execution_message = ProtoField.new("Request For Implied Execution Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.requestforimpliedexecutionmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_type = ProtoField.new("Request Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.requesttype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_with_client_order_id = ProtoField.new("Request With Client Order Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.requestwithclientorderid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_1 = ProtoField.new("Reserved 1", "euronext.optiq.orderentrygateway.sbe.v4.2.2.reserved1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_2 = ProtoField.new("Reserved 2", "euronext.optiq.orderentrygateway.sbe.v4.2.2.reserved2", ftypes.UINT8, nil, base.DEC, "0xC0")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_3 = ProtoField.new("Reserved 3", "euronext.optiq.orderentrygateway.sbe.v4.2.2.reserved3", ftypes.UINT8, nil, base.DEC, "0xE0")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_4 = ProtoField.new("Reserved 4", "euronext.optiq.orderentrygateway.sbe.v4.2.2.reserved4", ftypes.UINT8, nil, base.DEC, "0xF0")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_5 = ProtoField.new("Reserved 5", "euronext.optiq.orderentrygateway.sbe.v4.2.2.reserved5", ftypes.UINT8, nil, base.DEC, "0xF8")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_6 = ProtoField.new("Reserved 6", "euronext.optiq.orderentrygateway.sbe.v4.2.2.reserved6", ftypes.UINT16, nil, base.DEC, "0xFC00")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.response_type = ProtoField.new("Response Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.responsetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.resynchronization_id = ProtoField.new("Resynchronization Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.resynchronizationid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfe_answer = ProtoField.new("Rfe Answer", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfeanswer", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfpt = ProtoField.new("Rfpt", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfpt", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_answer = ProtoField.new("Rfq Answer", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqanswer", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_confirmation = ProtoField.new("Rfq Confirmation", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqconfirmation", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_matching_status_message = ProtoField.new("Rfq Matching Status Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqmatchingstatusmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_notification_message = ProtoField.new("Rfq Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqnotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_update_type = ProtoField.new("Rfq Update Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqupdatetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfqlp_matching_status_message = ProtoField.new("Rfqlp Matching Status Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.rfqlpmatchingstatusmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.schemaid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_definition_ack_message = ProtoField.new("Security Definition Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.securitydefinitionackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.securitydefinitionrequestmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.security_req_id = ProtoField.new("Security Req Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.securityreqid", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.sell_revision_flag = ProtoField.new("Sell Revision Flag", "euronext.optiq.orderentrygateway.sbe.v4.2.2.sellrevisionflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.sending_time = ProtoField.new("Sending Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.sendingtime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.session_1 = ProtoField.new("Session 1", "euronext.optiq.orderentrygateway.sbe.v4.2.2.session1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.session_2 = ProtoField.new("Session 2", "euronext.optiq.orderentrygateway.sbe.v4.2.2.session2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.session_3 = ProtoField.new("Session 3", "euronext.optiq.orderentrygateway.sbe.v4.2.2.session3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.settlement_flag = ProtoField.new("Settlement Flag", "euronext.optiq.orderentrygateway.sbe.v4.2.2.settlementflag", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.settlement_period = ProtoField.new("Settlement Period", "euronext.optiq.orderentrygateway.sbe.v4.2.2.settlementperiod", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.side = ProtoField.new("Side", "euronext.optiq.orderentrygateway.sbe.v4.2.2.side", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.size = ProtoField.new("Size", "euronext.optiq.orderentrygateway.sbe.v4.2.2.size", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x20")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.software_provider = ProtoField.new("Software Provider", "euronext.optiq.orderentrygateway.sbe.v4.2.2.softwareprovider", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.orderentrygateway.sbe.v4.2.2.starttimevwap", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stop_px = ProtoField.new("Stop Px", "euronext.optiq.orderentrygateway.sbe.v4.2.2.stoppx", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stop_triggered_time_in_force = ProtoField.new("Stop Triggered Time In Force", "euronext.optiq.orderentrygateway.sbe.v4.2.2.stoptriggeredtimeinforce", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stp_incoming_order = ProtoField.new("Stp Incoming Order", "euronext.optiq.orderentrygateway.sbe.v4.2.2.stpincomingorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stp_resting_order = ProtoField.new("Stp Resting Order", "euronext.optiq.orderentrygateway.sbe.v4.2.2.stprestingorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stpid = ProtoField.new("Stpid", "euronext.optiq.orderentrygateway.sbe.v4.2.2.stpid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_code = ProtoField.new("Strategy Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.strategycode", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_fields_group = ProtoField.new("Strategy Fields Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.strategyfieldsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_fields_groups = ProtoField.new("Strategy Fields Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.strategyfieldsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_legs_group = ProtoField.new("Strategy Legs Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.strategylegsgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_legs_groups = ProtoField.new("Strategy Legs Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.strategylegsgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.sweep_order_indicator = ProtoField.new("Sweep Order Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.sweeporderindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.orderentrygateway.sbe.v4.2.2.symbolindex", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.synchronization_time_message = ProtoField.new("Synchronization Time Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.synchronizationtimemessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.target_execution_within_firm_short_code = ProtoField.new("Target Execution Within Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v4.2.2.targetexecutionwithinfirmshortcode", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.technical_origin = ProtoField.new("Technical Origin", "euronext.optiq.orderentrygateway.sbe.v4.2.2.technicalorigin", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.technical_reject_message = ProtoField.new("Technical Reject Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.technicalrejectmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.templateid", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.time_in_force = ProtoField.new("Time In Force", "euronext.optiq.orderentrygateway.sbe.v4.2.2.timeinforce", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "euronext.optiq.orderentrygateway.sbe.v4.2.2.totalaffectedorders", ftypes.INT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_bust_notification_message = ProtoField.new("Trade Bust Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradebustnotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_creation_by_market_operations = ProtoField.new("Trade Creation By Market Operations", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradecreationbymarketoperations", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x10")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradequalifier", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_time = ProtoField.new("Trade Time", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradetime", ftypes.UINT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trading_capacity = ProtoField.new("Trading Capacity", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradingcapacity", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trading_capacity_cross = ProtoField.new("Trading Capacity Cross", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradingcapacitycross", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trading_session = ProtoField.new("Trading Session", "euronext.optiq.orderentrygateway.sbe.v4.2.2.tradingsession", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.transaction_price_type = ProtoField.new("Transaction Price Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.transactionpricetype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.uncrossing_trade = ProtoField.new("Uncrossing Trade", "euronext.optiq.orderentrygateway.sbe.v4.2.2.uncrossingtrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "euronext.optiq.orderentrygateway.sbe.v4.2.2.underlyinginstrumentid", ftypes.UINT32)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.undisclosed_iceberg_type = ProtoField.new("Undisclosed Iceberg Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.undisclosedicebergtype", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.undisclosed_price = ProtoField.new("Undisclosed Price", "euronext.optiq.orderentrygateway.sbe.v4.2.2.undisclosedprice", ftypes.INT64)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.use_of_cross_partition = ProtoField.new("Use Of Cross Partition", "euronext.optiq.orderentrygateway.sbe.v4.2.2.useofcrosspartition", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.user_notification_message = ProtoField.new("User Notification Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.usernotificationmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.user_status = ProtoField.new("User Status", "euronext.optiq.orderentrygateway.sbe.v4.2.2.userstatus", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.version = ProtoField.new("Version", "euronext.optiq.orderentrygateway.sbe.v4.2.2.version", ftypes.UINT16)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.waiver_indicator = ProtoField.new("Waiver Indicator", "euronext.optiq.orderentrygateway.sbe.v4.2.2.waiverindicator", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_ack_clearing_rep_group = ProtoField.new("Wholesale Ack Clearing Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleackclearingrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_ack_clearing_rep_groups = ProtoField.new("Wholesale Ack Clearing Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleackclearingrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_ack_legs_rep_group = ProtoField.new("Wholesale Ack Legs Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleacklegsrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_ack_legs_rep_groups = ProtoField.new("Wholesale Ack Legs Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleacklegsrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_client_rep_group = ProtoField.new("Wholesale Client Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleclientrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_client_rep_groups = ProtoField.new("Wholesale Client Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleclientrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_legs_rep_group = ProtoField.new("Wholesale Legs Rep Group", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesalelegsrepgroup", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_legs_rep_groups = ProtoField.new("Wholesale Legs Rep Groups", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesalelegsrepgroups", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_order_ack_message = ProtoField.new("Wholesale Order Ack Message", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleorderackmessage", ftypes.STRING)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_side = ProtoField.new("Wholesale Side", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaleside", ftypes.UINT8)
euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_trade_type = ProtoField.new("Wholesale Trade Type", "euronext.optiq.orderentrygateway.sbe.v4.2.2.wholesaletradetype", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 4.2.2 Element Dissection Options
show.ack_message = true
show.ack_qualifiers = true
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
show.declaration_cancel_and_refusal_message = true
show.declaration_entry_ack_message = true
show.declaration_entry_message = true
show.declaration_entry_reject_message = true
show.declaration_notice_message = true
show.execution_instruction = true
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
show.mi_fi_d_fields_group = true
show.mi_fi_d_fields_groups = true
show.mi_fi_d_shortcodes_group = true
show.mi_fi_d_shortcodes_groups = true
show.mi_fid_indicators = true
show.mm_p_section_2_group = true
show.mm_p_section_2_groups = true
show.mm_p_section_group = true
show.mm_p_section_groups = true
show.mm_protection_ack_message = true
show.mm_protection_request_message = true
show.mm_sign_in_ack_message = true
show.mm_sign_in_message = true
show.mmp_execution_type = true
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
show.technical_reject_message = true
show.trade_bust_notification_message = true
show.trade_qualifier = true
show.trading_session = true
show.user_notification_message = true
show.waiver_indicator = true
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

-- Register Euronext Optiq OrderEntryGateway Sbe 4.2.2 Show Options
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ack_message = Pref.bool("Show Ack Message", show.ack_message, "Parse and add Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ack_qualifiers = Pref.bool("Show Ack Qualifiers", show.ack_qualifiers, "Parse and add Ack Qualifiers to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_additional_infos_group = Pref.bool("Show Additional Infos Group", show.additional_infos_group, "Parse and add Additional Infos Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_additional_infos_groups = Pref.bool("Show Additional Infos Groups", show.additional_infos_groups, "Parse and add Additional Infos Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ask_for_quote_message = Pref.bool("Show Ask For Quote Message", show.ask_for_quote_message, "Parse and add Ask For Quote Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cancel_replace_message = Pref.bool("Show Cancel Replace Message", show.cancel_replace_message, "Parse and add Cancel Replace Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cancel_request_message = Pref.bool("Show Cancel Request Message", show.cancel_request_message, "Parse and add Cancel Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_dataset_group = Pref.bool("Show Clearing Dataset Group", show.clearing_dataset_group, "Parse and add Clearing Dataset Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_dataset_groups = Pref.bool("Show Clearing Dataset Groups", show.clearing_dataset_groups, "Parse and add Clearing Dataset Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_group = Pref.bool("Show Clearing Fields Group", show.clearing_fields_group, "Parse and add Clearing Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_groups = Pref.bool("Show Clearing Fields Groups", show.clearing_fields_groups, "Parse and add Clearing Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_x_group = Pref.bool("Show Clearing Fields X Group", show.clearing_fields_x_group, "Parse and add Clearing Fields X Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_x_groups = Pref.bool("Show Clearing Fields X Groups", show.clearing_fields_x_groups, "Parse and add Clearing Fields X Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_breach_confirmation_message = Pref.bool("Show Collar Breach Confirmation Message", show.collar_breach_confirmation_message, "Parse and add Collar Breach Confirmation Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_fields_group = Pref.bool("Show Collar Fields Group", show.collar_fields_group, "Parse and add Collar Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_fields_groups = Pref.bool("Show Collar Fields Groups", show.collar_fields_groups, "Parse and add Collar Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cross_order_message = Pref.bool("Show Cross Order Message", show.cross_order_message, "Parse and add Cross Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_dark_execution_instruction = Pref.bool("Show Dark Execution Instruction", show.dark_execution_instruction, "Parse and add Dark Execution Instruction to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_cancel_and_refusal_message = Pref.bool("Show Declaration Cancel And Refusal Message", show.declaration_cancel_and_refusal_message, "Parse and add Declaration Cancel And Refusal Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_ack_message = Pref.bool("Show Declaration Entry Ack Message", show.declaration_entry_ack_message, "Parse and add Declaration Entry Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_message = Pref.bool("Show Declaration Entry Message", show.declaration_entry_message, "Parse and add Declaration Entry Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_entry_reject_message = Pref.bool("Show Declaration Entry Reject Message", show.declaration_entry_reject_message, "Parse and add Declaration Entry Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_declaration_notice_message = Pref.bool("Show Declaration Notice Message", show.declaration_notice_message, "Parse and add Declaration Notice Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_execution_instruction = Pref.bool("Show Execution Instruction", show.execution_instruction, "Parse and add Execution Instruction to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fill_message = Pref.bool("Show Fill Message", show.fill_message, "Parse and add Fill Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_free_text_section_group = Pref.bool("Show Free Text Section Group", show.free_text_section_group, "Parse and add Free Text Section Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_free_text_section_groups = Pref.bool("Show Free Text Section Groups", show.free_text_section_groups, "Parse and add Free Text Section Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fund_price_input_ack_message = Pref.bool("Show Fund Price Input Ack Message", show.fund_price_input_ack_message, "Parse and add Fund Price Input Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fund_price_input_message = Pref.bool("Show Fund Price Input Message", show.fund_price_input_message, "Parse and add Fund Price Input Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_list_message = Pref.bool("Show Instrument Synchronization List Message", show.instrument_synchronization_list_message, "Parse and add Instrument Synchronization List Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_section_group = Pref.bool("Show Instrument Synchronization Section Group", show.instrument_synchronization_section_group, "Parse and add Instrument Synchronization Section Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_section_groups = Pref.bool("Show Instrument Synchronization Section Groups", show.instrument_synchronization_section_groups, "Parse and add Instrument Synchronization Section Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_kill_message = Pref.bool("Show Kill Message", show.kill_message, "Parse and add Kill Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_liquidity_provider_command_message = Pref.bool("Show Liquidity Provider Command Message", show.liquidity_provider_command_message, "Parse and add Liquidity Provider Command Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_ack_message = Pref.bool("Show Logon Ack Message", show.logon_ack_message, "Parse and add Logon Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logon_reject_message = Pref.bool("Show Logon Reject Message", show.logon_reject_message, "Parse and add Logon Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mass_cancel_ack_message = Pref.bool("Show Mass Cancel Ack Message", show.mass_cancel_ack_message, "Parse and add Mass Cancel Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mass_cancel_message = Pref.bool("Show Mass Cancel Message", show.mass_cancel_message, "Parse and add Mass Cancel Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_fields_group = Pref.bool("Show Mi Fi D Fields Group", show.mi_fi_d_fields_group, "Parse and add Mi Fi D Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_fields_groups = Pref.bool("Show Mi Fi D Fields Groups", show.mi_fi_d_fields_groups, "Parse and add Mi Fi D Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_shortcodes_group = Pref.bool("Show Mi Fi D Shortcodes Group", show.mi_fi_d_shortcodes_group, "Parse and add Mi Fi D Shortcodes Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_shortcodes_groups = Pref.bool("Show Mi Fi D Shortcodes Groups", show.mi_fi_d_shortcodes_groups, "Parse and add Mi Fi D Shortcodes Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fid_indicators = Pref.bool("Show Mi Fid Indicators", show.mi_fid_indicators, "Parse and add Mi Fid Indicators to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_2_group = Pref.bool("Show Mm P Section 2 Group", show.mm_p_section_2_group, "Parse and add Mm P Section 2 Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_2_groups = Pref.bool("Show Mm P Section 2 Groups", show.mm_p_section_2_groups, "Parse and add Mm P Section 2 Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_group = Pref.bool("Show Mm P Section Group", show.mm_p_section_group, "Parse and add Mm P Section Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_groups = Pref.bool("Show Mm P Section Groups", show.mm_p_section_groups, "Parse and add Mm P Section Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_protection_ack_message = Pref.bool("Show Mm Protection Ack Message", show.mm_protection_ack_message, "Parse and add Mm Protection Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_protection_request_message = Pref.bool("Show Mm Protection Request Message", show.mm_protection_request_message, "Parse and add Mm Protection Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_sign_in_ack_message = Pref.bool("Show Mm Sign In Ack Message", show.mm_sign_in_ack_message, "Parse and add Mm Sign In Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_sign_in_message = Pref.bool("Show Mm Sign In Message", show.mm_sign_in_message, "Parse and add Mm Sign In Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mmp_execution_type = Pref.bool("Show Mmp Execution Type", show.mmp_execution_type, "Parse and add Mmp Execution Type to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_new_wholesale_order_message = Pref.bool("Show New Wholesale Order Message", show.new_wholesale_order_message, "Parse and add New Wholesale Order Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_not_used_group_1_groups = Pref.bool("Show Not Used Group 1 Groups", show.not_used_group_1_groups, "Parse and add Not Used Group 1 Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_not_used_group_2_groups = Pref.bool("Show Not Used Group 2 Groups", show.not_used_group_2_groups, "Parse and add Not Used Group 2 Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_close = Pref.bool("Show Open Close", show.open_close, "Parse and add Open Close to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_order_request_message = Pref.bool("Show Open Order Request Message", show.open_order_request_message, "Parse and add Open Order Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_derivatives_group = Pref.bool("Show Optional Fields Derivatives Group", show.optional_fields_derivatives_group, "Parse and add Optional Fields Derivatives Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_derivatives_groups = Pref.bool("Show Optional Fields Derivatives Groups", show.optional_fields_derivatives_groups, "Parse and add Optional Fields Derivatives Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_fill_group = Pref.bool("Show Optional Fields Fill Group", show.optional_fields_fill_group, "Parse and add Optional Fields Fill Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_fill_groups = Pref.bool("Show Optional Fields Fill Groups", show.optional_fields_fill_groups, "Parse and add Optional Fields Fill Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_group = Pref.bool("Show Optional Fields Group", show.optional_fields_group, "Parse and add Optional Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_groups = Pref.bool("Show Optional Fields Groups", show.optional_fields_groups, "Parse and add Optional Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ownership_request_ack_message = Pref.bool("Show Ownership Request Ack Message", show.ownership_request_ack_message, "Parse and add Ownership Request Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ownership_request_message = Pref.bool("Show Ownership Request Message", show.ownership_request_message, "Parse and add Ownership Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_price_input_message = Pref.bool("Show Price Input Message", show.price_input_message, "Parse and add Price Input Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_ack_message = Pref.bool("Show Quote Ack Message", show.quote_ack_message, "Parse and add Quote Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_acks_group = Pref.bool("Show Quote Acks Group", show.quote_acks_group, "Parse and add Quote Acks Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_acks_groups = Pref.bool("Show Quote Acks Groups", show.quote_acks_groups, "Parse and add Quote Acks Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_request_message = Pref.bool("Show Quote Request Message", show.quote_request_message, "Parse and add Quote Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_message = Pref.bool("Show Quotes Message", show.quotes_message, "Parse and add Quotes Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_rep_group = Pref.bool("Show Quotes Rep Group", show.quotes_rep_group, "Parse and add Quotes Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_rep_groups = Pref.bool("Show Quotes Rep Groups", show.quotes_rep_groups, "Parse and add Quotes Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_request_for_execution_message = Pref.bool("Show Request For Execution Message", show.request_for_execution_message, "Parse and add Request For Execution Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_request_for_implied_execution_message = Pref.bool("Show Request For Implied Execution Message", show.request_for_implied_execution_message, "Parse and add Request For Implied Execution Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfq_matching_status_message = Pref.bool("Show Rfq Matching Status Message", show.rfq_matching_status_message, "Parse and add Rfq Matching Status Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfq_notification_message = Pref.bool("Show Rfq Notification Message", show.rfq_notification_message, "Parse and add Rfq Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_rfqlp_matching_status_message = Pref.bool("Show Rfqlp Matching Status Message", show.rfqlp_matching_status_message, "Parse and add Rfqlp Matching Status Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_security_definition_ack_message = Pref.bool("Show Security Definition Ack Message", show.security_definition_ack_message, "Parse and add Security Definition Ack Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_security_definition_request_message = Pref.bool("Show Security Definition Request Message", show.security_definition_request_message, "Parse and add Security Definition Request Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_fields_group = Pref.bool("Show Strategy Fields Group", show.strategy_fields_group, "Parse and add Strategy Fields Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_fields_groups = Pref.bool("Show Strategy Fields Groups", show.strategy_fields_groups, "Parse and add Strategy Fields Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_legs_group = Pref.bool("Show Strategy Legs Group", show.strategy_legs_group, "Parse and add Strategy Legs Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_legs_groups = Pref.bool("Show Strategy Legs Groups", show.strategy_legs_groups, "Parse and add Strategy Legs Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_synchronization_time_message = Pref.bool("Show Synchronization Time Message", show.synchronization_time_message, "Parse and add Synchronization Time Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_technical_reject_message = Pref.bool("Show Technical Reject Message", show.technical_reject_message, "Parse and add Technical Reject Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trade_bust_notification_message = Pref.bool("Show Trade Bust Notification Message", show.trade_bust_notification_message, "Parse and add Trade Bust Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trade_qualifier = Pref.bool("Show Trade Qualifier", show.trade_qualifier, "Parse and add Trade Qualifier to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trading_session = Pref.bool("Show Trading Session", show.trading_session, "Parse and add Trading Session to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_user_notification_message = Pref.bool("Show User Notification Message", show.user_notification_message, "Parse and add User Notification Message to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_waiver_indicator = Pref.bool("Show Waiver Indicator", show.waiver_indicator, "Parse and add Waiver Indicator to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_clearing_rep_group = Pref.bool("Show Wholesale Ack Clearing Rep Group", show.wholesale_ack_clearing_rep_group, "Parse and add Wholesale Ack Clearing Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_clearing_rep_groups = Pref.bool("Show Wholesale Ack Clearing Rep Groups", show.wholesale_ack_clearing_rep_groups, "Parse and add Wholesale Ack Clearing Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_legs_rep_group = Pref.bool("Show Wholesale Ack Legs Rep Group", show.wholesale_ack_legs_rep_group, "Parse and add Wholesale Ack Legs Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_legs_rep_groups = Pref.bool("Show Wholesale Ack Legs Rep Groups", show.wholesale_ack_legs_rep_groups, "Parse and add Wholesale Ack Legs Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_client_rep_group = Pref.bool("Show Wholesale Client Rep Group", show.wholesale_client_rep_group, "Parse and add Wholesale Client Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_client_rep_groups = Pref.bool("Show Wholesale Client Rep Groups", show.wholesale_client_rep_groups, "Parse and add Wholesale Client Rep Groups to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_legs_rep_group = Pref.bool("Show Wholesale Legs Rep Group", show.wholesale_legs_rep_group, "Parse and add Wholesale Legs Rep Group to protocol tree")
euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_legs_rep_groups = Pref.bool("Show Wholesale Legs Rep Groups", show.wholesale_legs_rep_groups, "Parse and add Wholesale Legs Rep Groups to protocol tree")
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
  if show.ack_qualifiers ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ack_qualifiers then
    show.ack_qualifiers = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_ack_qualifiers
    changed = true
  end
  if show.additional_infos_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_additional_infos_group then
    show.additional_infos_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_additional_infos_group
    changed = true
  end
  if show.additional_infos_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_additional_infos_groups then
    show.additional_infos_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_additional_infos_groups
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
  if show.clearing_dataset_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_dataset_group then
    show.clearing_dataset_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_dataset_group
    changed = true
  end
  if show.clearing_dataset_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_dataset_groups then
    show.clearing_dataset_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_dataset_groups
    changed = true
  end
  if show.clearing_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_group then
    show.clearing_fields_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_group
    changed = true
  end
  if show.clearing_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_groups then
    show.clearing_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_groups
    changed = true
  end
  if show.clearing_fields_x_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_x_group then
    show.clearing_fields_x_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_x_group
    changed = true
  end
  if show.clearing_fields_x_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_x_groups then
    show.clearing_fields_x_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_clearing_fields_x_groups
    changed = true
  end
  if show.collar_breach_confirmation_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_breach_confirmation_message then
    show.collar_breach_confirmation_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_breach_confirmation_message
    changed = true
  end
  if show.collar_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_fields_group then
    show.collar_fields_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_fields_group
    changed = true
  end
  if show.collar_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_fields_groups then
    show.collar_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_collar_fields_groups
    changed = true
  end
  if show.cross_order_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cross_order_message then
    show.cross_order_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_cross_order_message
    changed = true
  end
  if show.dark_execution_instruction ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_dark_execution_instruction then
    show.dark_execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_dark_execution_instruction
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
  if show.execution_instruction ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_execution_instruction then
    show.execution_instruction = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_execution_instruction
    changed = true
  end
  if show.fill_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fill_message then
    show.fill_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_fill_message
    changed = true
  end
  if show.free_text_section_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_free_text_section_group then
    show.free_text_section_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_free_text_section_group
    changed = true
  end
  if show.free_text_section_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_free_text_section_groups then
    show.free_text_section_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_free_text_section_groups
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
  if show.group_size_encoding ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_group_size_encoding then
    show.group_size_encoding = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_group_size_encoding
    changed = true
  end
  if show.instrument_synchronization_list_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_list_message then
    show.instrument_synchronization_list_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_list_message
    changed = true
  end
  if show.instrument_synchronization_section_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_section_group then
    show.instrument_synchronization_section_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_section_group
    changed = true
  end
  if show.instrument_synchronization_section_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_section_groups then
    show.instrument_synchronization_section_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_instrument_synchronization_section_groups
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
  if show.message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message then
    show.message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message
    changed = true
  end
  if show.message_header ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message_header then
    show.message_header = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_message_header
    changed = true
  end
  if show.mi_fi_d_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_fields_group then
    show.mi_fi_d_fields_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_fields_group
    changed = true
  end
  if show.mi_fi_d_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_fields_groups then
    show.mi_fi_d_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_fields_groups
    changed = true
  end
  if show.mi_fi_d_shortcodes_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_shortcodes_group then
    show.mi_fi_d_shortcodes_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_shortcodes_group
    changed = true
  end
  if show.mi_fi_d_shortcodes_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_shortcodes_groups then
    show.mi_fi_d_shortcodes_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fi_d_shortcodes_groups
    changed = true
  end
  if show.mi_fid_indicators ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fid_indicators then
    show.mi_fid_indicators = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mi_fid_indicators
    changed = true
  end
  if show.mm_p_section_2_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_2_group then
    show.mm_p_section_2_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_2_group
    changed = true
  end
  if show.mm_p_section_2_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_2_groups then
    show.mm_p_section_2_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_2_groups
    changed = true
  end
  if show.mm_p_section_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_group then
    show.mm_p_section_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_group
    changed = true
  end
  if show.mm_p_section_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_groups then
    show.mm_p_section_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mm_p_section_groups
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
  if show.mmp_execution_type ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mmp_execution_type then
    show.mmp_execution_type = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_mmp_execution_type
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
  if show.not_used_group_1_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_not_used_group_1_groups then
    show.not_used_group_1_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_not_used_group_1_groups
    changed = true
  end
  if show.not_used_group_2_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_not_used_group_2_groups then
    show.not_used_group_2_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_not_used_group_2_groups
    changed = true
  end
  if show.open_close ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_close then
    show.open_close = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_close
    changed = true
  end
  if show.open_order_request_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_order_request_message then
    show.open_order_request_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_open_order_request_message
    changed = true
  end
  if show.optional_fields_derivatives_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_derivatives_group then
    show.optional_fields_derivatives_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_derivatives_group
    changed = true
  end
  if show.optional_fields_derivatives_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_derivatives_groups then
    show.optional_fields_derivatives_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_derivatives_groups
    changed = true
  end
  if show.optional_fields_fill_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_fill_group then
    show.optional_fields_fill_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_fill_group
    changed = true
  end
  if show.optional_fields_fill_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_fill_groups then
    show.optional_fields_fill_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_fill_groups
    changed = true
  end
  if show.optional_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_group then
    show.optional_fields_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_group
    changed = true
  end
  if show.optional_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_groups then
    show.optional_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_optional_fields_groups
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
  if show.quote_acks_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_acks_group then
    show.quote_acks_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_acks_group
    changed = true
  end
  if show.quote_acks_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_acks_groups then
    show.quote_acks_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quote_acks_groups
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
  if show.quotes_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_rep_group then
    show.quotes_rep_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_rep_group
    changed = true
  end
  if show.quotes_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_rep_groups then
    show.quotes_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_quotes_rep_groups
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
  if show.strategy_fields_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_fields_group then
    show.strategy_fields_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_fields_group
    changed = true
  end
  if show.strategy_fields_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_fields_groups then
    show.strategy_fields_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_fields_groups
    changed = true
  end
  if show.strategy_legs_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_legs_group then
    show.strategy_legs_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_legs_group
    changed = true
  end
  if show.strategy_legs_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_legs_groups then
    show.strategy_legs_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_strategy_legs_groups
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
  if show.trade_qualifier ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trade_qualifier then
    show.trade_qualifier = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trade_qualifier
    changed = true
  end
  if show.trading_session ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trading_session then
    show.trading_session = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_trading_session
    changed = true
  end
  if show.user_notification_message ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_user_notification_message then
    show.user_notification_message = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_user_notification_message
    changed = true
  end
  if show.waiver_indicator ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_waiver_indicator then
    show.waiver_indicator = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_waiver_indicator
    changed = true
  end
  if show.wholesale_ack_clearing_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_clearing_rep_group then
    show.wholesale_ack_clearing_rep_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_clearing_rep_group
    changed = true
  end
  if show.wholesale_ack_clearing_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_clearing_rep_groups then
    show.wholesale_ack_clearing_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_clearing_rep_groups
    changed = true
  end
  if show.wholesale_ack_legs_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_legs_rep_group then
    show.wholesale_ack_legs_rep_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_legs_rep_group
    changed = true
  end
  if show.wholesale_ack_legs_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_legs_rep_groups then
    show.wholesale_ack_legs_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_ack_legs_rep_groups
    changed = true
  end
  if show.wholesale_client_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_client_rep_group then
    show.wholesale_client_rep_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_client_rep_group
    changed = true
  end
  if show.wholesale_client_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_client_rep_groups then
    show.wholesale_client_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_client_rep_groups
    changed = true
  end
  if show.wholesale_legs_rep_group ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_legs_rep_group then
    show.wholesale_legs_rep_group = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_legs_rep_group
    changed = true
  end
  if show.wholesale_legs_rep_groups ~= euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_legs_rep_groups then
    show.wholesale_legs_rep_groups = euronext_optiq_orderentrygateway_sbe_v4_2_2.prefs.show_wholesale_legs_rep_groups
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

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Size: Block Length uint 8
size_of.block_length_uint_8 = 1

-- Display: Block Length uint 8
display.block_length_uint_8 = function(value)
  return "Block Length uint 8: "..value
end

-- Dissect: Block Length uint 8
dissect.block_length_uint_8 = function(buffer, offset, packet, parent)
  local length = size_of.block_length_uint_8
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length_uint_8(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.block_length_uint_8, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Size Encoding
size_of.group_size_encoding = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length_uint_8

  index = index + size_of.num_in_group

  return index
end

-- Display: Group Size Encoding
display.group_size_encoding = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Size Encoding
dissect.group_size_encoding_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: 1 Byte Unsigned Fixed Width Integer
  index, block_length_uint_8 = dissect.block_length_uint_8(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = dissect.num_in_group(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
dissect.group_size_encoding = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_size_encoding then
    local length = size_of.group_size_encoding(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_size_encoding(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.group_size_encoding, range, display)
  end

  return dissect.group_size_encoding_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Not Used Group 1 Groups
size_of.not_used_group_1_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local not_used_group_1_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + not_used_group_1_group_count * 0

  return index
end

-- Display: Not Used Group 1 Groups
display.not_used_group_1_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Used Group 1 Groups
dissect.not_used_group_1_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Not Used Group 1 Group
  for i = 1, num_in_group do
    index = dissect.not_used_group_1_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Not Used Group 1 Groups
dissect.not_used_group_1_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.not_used_group_1_groups then
    local length = size_of.not_used_group_1_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.not_used_group_1_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.not_used_group_1_groups, range, display)
  end

  return dissect.not_used_group_1_groups_fields(buffer, offset, packet, parent)
end

-- Size: Rejected Message Id
size_of.rejected_message_id = 2

-- Display: Rejected Message Id
display.rejected_message_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Rejected Message Id: No Value"
  end

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
  -- Check if field has value
  if value == 255 then
    return "Rejected Message: No Value"
  end

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
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Cof Secondary Listing: No Value"
  end

  return "Mi Cof Secondary Listing: "..value
end

-- Dissect: Mi Cof Secondary Listing
dissect.mi_cof_secondary_listing = function(buffer, offset, packet, parent)
  local length = size_of.mi_cof_secondary_listing
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

  local display = display.mi_cof_secondary_listing(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_cof_secondary_listing, range, value, display)

  return offset + length, value
end

-- Size: Emm
size_of.emm = 1

-- Display: Emm
display.emm = function(value)
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
  if value == 255 then
    return "Emm: No Value"
  end

  return "Emm: Unknown("..value..")"
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
  -- Check if field has value
  if value == 4294967295 then
    return "Symbol Index: No Value"
  end

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
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Client Order Id: No Value"
  end

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
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id: No Value"
  end

  return "Firm Id: "..value
end

-- Dissect: Firm Id
dissect.firm_id = function(buffer, offset, packet, parent)
  local length = size_of.firm_id
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

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = dissect.operation_type(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = dissect.rejected_message(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message_id = dissect.rejected_message_id(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Reject Message
dissect.declaration_entry_reject_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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
  -- Check if field has value
  if value == 255 then
    return "Bypass Indicator: No Value"
  end

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
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Bypass Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Sending Time: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Bypass Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Declaration Id: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, declaration_id = dissect.declaration_id(buffer, index, packet, parent)

  -- Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
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

-- Calculate size of: Not Used Group 2 Groups
size_of.not_used_group_2_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local not_used_group_2_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + not_used_group_2_group_count * 0

  return index
end

-- Display: Not Used Group 2 Groups
display.not_used_group_2_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Not Used Group 2 Groups
dissect.not_used_group_2_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Not Used Group 2 Group
  for i = 1, num_in_group do
    index = dissect.not_used_group_2_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Not Used Group 2 Groups
dissect.not_used_group_2_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.not_used_group_2_groups then
    local length = size_of.not_used_group_2_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.not_used_group_2_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.not_used_group_2_groups, range, display)
  end

  return dissect.not_used_group_2_groups_fields(buffer, offset, packet, parent)
end

-- Size: Ccpid
size_of.ccpid = 1

-- Display: Ccpid
display.ccpid = function(value)
  if value == 1 then
    return "Ccpid: Lchsa (1)"
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
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Miscellaneous Fee Amount: No Value"
  end

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
  -- Check if field has value
  if value == 255 then
    return "Previous Day Indicator: No Value"
  end

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
display.waiver_indicator = function(buffer, packet, parent)
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
dissect.waiver_indicator_bits = function(buffer, offset, packet, parent)

  -- Omf: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.omf, buffer(offset, 1))

  -- Ilqd: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ilqd, buffer(offset, 1))

  -- Size: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.size, buffer(offset, 1))

  -- Pric: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.pric, buffer(offset, 1))

  -- Oilq: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.oilq, buffer(offset, 1))

  -- Nliq: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.nliq, buffer(offset, 1))

  -- Rfpt: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfpt, buffer(offset, 1))

  -- Lrgs: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.lrgs, buffer(offset, 1))
end

-- Dissect: Waiver Indicator
dissect.waiver_indicator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.waiver_indicator(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.waiver_indicator, range, display)

  if show.waiver_indicator then
    dissect.waiver_indicator_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Free Text Cross
size_of.free_text_cross = 18

-- Display: Free Text Cross
display.free_text_cross = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text Cross: No Value"
  end

  return "Free Text Cross: "..value
end

-- Dissect: Free Text Cross
dissect.free_text_cross = function(buffer, offset, packet, parent)
  local length = size_of.free_text_cross
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

  local display = display.free_text_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text_cross, range, value, display)

  return offset + length, value
end

-- Size: Free Text
size_of.free_text = 18

-- Display: Free Text
display.free_text = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text: No Value"
  end

  return "Free Text: "..value
end

-- Dissect: Free Text
dissect.free_text = function(buffer, offset, packet, parent)
  local length = size_of.free_text
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

  local display = display.free_text(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text, range, value, display)

  return offset + length, value
end

-- Size: Account Number Cross
size_of.account_number_cross = 12

-- Display: Account Number Cross
display.account_number_cross = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number Cross: No Value"
  end

  return "Account Number Cross: "..value
end

-- Dissect: Account Number Cross
dissect.account_number_cross = function(buffer, offset, packet, parent)
  local length = size_of.account_number_cross
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

  local display = display.account_number_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_number_cross, range, value, display)

  return offset + length, value
end

-- Size: Account Number
size_of.account_number = 12

-- Display: Account Number
display.account_number = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number: No Value"
  end

  return "Account Number: "..value
end

-- Dissect: Account Number
dissect.account_number = function(buffer, offset, packet, parent)
  local length = size_of.account_number
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

  local display = display.account_number(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.account_number, range, value, display)

  return offset + length, value
end

-- Size: Gross Trade Amount
size_of.gross_trade_amount = 8

-- Display: Gross Trade Amount
display.gross_trade_amount = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Gross Trade Amount: No Value"
  end

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
  -- Check if field has value
  if value == 4294967295 then
    return "End Time Vwap: No Value"
  end

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
  -- Check if field has value
  if value == 4294967295 then
    return "Start Time Vwap: No Value"
  end

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
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code Cross: No Value"
  end

  return "Principal Code Cross: "..value
end

-- Dissect: Principal Code Cross
dissect.principal_code_cross = function(buffer, offset, packet, parent)
  local length = size_of.principal_code_cross
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

  local display = display.principal_code_cross(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.principal_code_cross, range, value, display)

  return offset + length, value
end

-- Size: Principal Code
size_of.principal_code = 8

-- Display: Principal Code
display.principal_code = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code: No Value"
  end

  return "Principal Code: "..value
end

-- Dissect: Principal Code
dissect.principal_code = function(buffer, offset, packet, parent)
  local length = size_of.principal_code
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

  local display = display.principal_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.principal_code, range, value, display)

  return offset + length, value
end

-- Size: Transaction Price Type
size_of.transaction_price_type = 1

-- Display: Transaction Price Type
display.transaction_price_type = function(value)
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
  if value == 1 then
    return "Guarantee Flag: Clearedbutnot Guaranteed (1)"
  end
  if value == 2 then
    return "Guarantee Flag: Clearedand Guaranteed (2)"
  end
  if value == 255 then
    return "Guarantee Flag: No Value"
  end

  return "Guarantee Flag: Unknown("..value..")"
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
  -- Check if field has value
  if value == 255 then
    return "Settlement Period: No Value"
  end

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
  -- Check if field has value
  if value == 255 then
    return "Settlement Flag: No Value"
  end

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
  if value == 1 then
    return "Trading Capacity: Dealingonownaccount (1)"
  end
  if value == 2 then
    return "Trading Capacity: Matchedprincipal (2)"
  end
  if value == 3 then
    return "Trading Capacity: Anyothercapacity (3)"
  end
  if value == 255 then
    return "Trading Capacity: No Value"
  end

  return "Trading Capacity: Unknown("..value..")"
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
  if value == 255 then
    return "Account Type: No Value"
  end

  return "Account Type: Unknown("..value..")"
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
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Id: No Value"
  end

  return "Clearing Firm Id: "..value
end

-- Dissect: Clearing Firm Id
dissect.clearing_firm_id = function(buffer, offset, packet, parent)
  local length = size_of.clearing_firm_id
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

  local display = display.clearing_firm_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_firm_id, range, value, display)

  return offset + length, value
end

-- Size: Centralisation Date
size_of.centralisation_date = 10

-- Display: Centralisation Date
display.centralisation_date = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Centralisation Date: No Value"
  end

  return "Centralisation Date: "..value
end

-- Dissect: Centralisation Date
dissect.centralisation_date = function(buffer, offset, packet, parent)
  local length = size_of.centralisation_date
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

  local display = display.centralisation_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.centralisation_date, range, value, display)

  return offset + length, value
end

-- Size: Trade Time
size_of.trade_time = 8

-- Display: Trade Time
display.trade_time = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trade Time: No Value"
  end

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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quantity: No Value"
  end

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
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 3 then
    return "Side: Cross (3)"
  end
  if value == 255 then
    return "Side: No Value"
  end

  return "Side: Unknown("..value..")"
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
  -- Check if field has value
  if value == nil or value == '' then
    return "Entering Counterparty: No Value"
  end

  return "Entering Counterparty: "..value
end

-- Dissect: Entering Counterparty
dissect.entering_counterparty = function(buffer, offset, packet, parent)
  local length = size_of.entering_counterparty
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

  local display = display.entering_counterparty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.entering_counterparty, range, value, display)

  return offset + length, value
end

-- Size: Declaration Status
size_of.declaration_status = 1

-- Display: Declaration Status
display.declaration_status = function(value)
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

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + size_of.not_used_group_2_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, declaration_id = dissect.declaration_id(buffer, index, packet, parent)

  -- Declaration Status: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, declaration_status = dissect.declaration_status(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = dissect.operation_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Entering Counterparty: 8 Byte Ascii String Nullable
  index, entering_counterparty = dissect.entering_counterparty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Pre Matching Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, pre_matching_type = dissect.pre_matching_type(buffer, index, packet, parent)

  -- Trade Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time = dissect.trade_time(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Centralisation Date: 10 Byte Ascii String Nullable
  index, centralisation_date = dissect.centralisation_date(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = dissect.account_type_cross(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trading Capacity Cross: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_cross = dissect.trading_capacity_cross(buffer, index, packet, parent)

  -- Settlement Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_flag = dissect.settlement_flag(buffer, index, packet, parent)

  -- Settlement Period: 1 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_period = dissect.settlement_period(buffer, index, packet, parent)

  -- Guarantee Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, guarantee_flag = dissect.guarantee_flag(buffer, index, packet, parent)

  -- Transaction Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, transaction_price_type = dissect.transaction_price_type(buffer, index, packet, parent)

  -- Principal Code: 8 Byte Ascii String Nullable
  index, principal_code = dissect.principal_code(buffer, index, packet, parent)

  -- Principal Code Cross: 8 Byte Ascii String Nullable
  index, principal_code_cross = dissect.principal_code_cross(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = dissect.end_time_vwap(buffer, index, packet, parent)

  -- Gross Trade Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_trade_amount = dissect.gross_trade_amount(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Account Number Cross: 12 Byte Ascii String Nullable
  index, account_number_cross = dissect.account_number_cross(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Free Text Cross: 18 Byte Ascii String Nullable
  index, free_text_cross = dissect.free_text_cross(buffer, index, packet, parent)

  -- Waiver Indicator: Struct of 8 fields
  index, waiver_indicator = dissect.waiver_indicator(buffer, index, packet, parent)

  -- Previous Day Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, previous_day_indicator = dissect.previous_day_indicator(buffer, index, packet, parent)

  -- Miscellaneous Fee Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, miscellaneous_fee_amount = dissect.miscellaneous_fee_amount(buffer, index, packet, parent)

  -- Ccpid: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ccpid = dissect.ccpid(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = dissect.not_used_group_2_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Notice Message
dissect.declaration_notice_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, declaration_id = dissect.declaration_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = dissect.operation_type(buffer, index, packet, parent)

  -- Pre Matching Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, pre_matching_type = dissect.pre_matching_type(buffer, index, packet, parent)

  -- Waiver Indicator: Struct of 8 fields
  index, waiver_indicator = dissect.waiver_indicator(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Ack Message
dissect.declaration_entry_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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
  -- Check if field has value
  if value == -2147483648 then
    return "Client Identification Short Code Cross: No Value"
  end

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
  -- Check if field has value
  if value == -2147483648 then
    return "Investment Decision W Firm Short Code: No Value"
  end

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
display.mi_fid_indicators = function(buffer, packet, parent)
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

-- Dissect Bit Fields: Mi Fid Indicators
dissect.mi_fid_indicators_bits = function(buffer, offset, packet, parent)

  -- Reserved 2: 2 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_2, buffer(offset, 1))

  -- Frmaramplp: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.frmaramplp, buffer(offset, 1))

  -- Deferral Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.deferral_indicator, buffer(offset, 1))

  -- Commodity Derivative Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.commodity_derivative_indicator, buffer(offset, 1))

  -- Execution Algo Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_algo_indicator, buffer(offset, 1))

  -- Investment Algo Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.investment_algo_indicator, buffer(offset, 1))

  -- Dea Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dea_indicator, buffer(offset, 1))
end

-- Dissect: Mi Fid Indicators
dissect.mi_fid_indicators = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.mi_fid_indicators(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fid_indicators, range, display)

  if show.mi_fid_indicators then
    dissect.mi_fid_indicators_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Client Identification Shortcode
size_of.client_identification_shortcode = 4

-- Display: Client Identification Shortcode
display.client_identification_shortcode = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Client Identification Shortcode: No Value"
  end

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
  -- Check if field has value
  if value == -2147483648 then
    return "Execution Within Firm Short Code: No Value"
  end

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

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = dissect.operation_type(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Entering Counterparty: 8 Byte Ascii String Nullable
  index, entering_counterparty = dissect.entering_counterparty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = dissect.mi_cof_secondary_listing(buffer, index, packet, parent)

  -- Centralisation Date: 10 Byte Ascii String Nullable
  index, centralisation_date = dissect.centralisation_date(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = dissect.account_type_cross(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Trading Capacity Cross: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_cross = dissect.trading_capacity_cross(buffer, index, packet, parent)

  -- Settlement Period: 1 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_period = dissect.settlement_period(buffer, index, packet, parent)

  -- Settlement Flag: 1 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_flag = dissect.settlement_flag(buffer, index, packet, parent)

  -- Guarantee Flag: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, guarantee_flag = dissect.guarantee_flag(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Transaction Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, transaction_price_type = dissect.transaction_price_type(buffer, index, packet, parent)

  -- Principal Code: 8 Byte Ascii String Nullable
  index, principal_code = dissect.principal_code(buffer, index, packet, parent)

  -- Principal Code Cross: 8 Byte Ascii String Nullable
  index, principal_code_cross = dissect.principal_code_cross(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = dissect.start_time_vwap(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = dissect.end_time_vwap(buffer, index, packet, parent)

  -- Gross Trade Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_trade_amount = dissect.gross_trade_amount(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Account Number Cross: 12 Byte Ascii String Nullable
  index, account_number_cross = dissect.account_number_cross(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Free Text Cross: 18 Byte Ascii String Nullable
  index, free_text_cross = dissect.free_text_cross(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Short Code Cross: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_short_code_cross = dissect.client_identification_short_code_cross(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Message
dissect.declaration_entry_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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
  -- Check if field has value
  if value == 4294967295 then
    return "Rejected Client Message Sequence Number: No Value"
  end

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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oegout To Member: No Value"
  end

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

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Rejected Client Message Sequence Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_client_message_sequence_number = dissect.rejected_client_message_sequence_number(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = dissect.rejected_message(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
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

  -- Log Out Reason Code: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
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
  -- Check if field has value
  if value == 4294967295 then
    return "Last Msg Seq Num: No Value"
  end

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
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Id: No Value"
  end

  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
dissect.exchange_id = function(buffer, offset, packet, parent)
  local length = size_of.exchange_id
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

  -- Logon Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, logon_reject_code = dissect.logon_reject_code(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_cl_msg_seq_num = dissect.last_cl_msg_seq_num(buffer, index, packet, parent)

  -- Last Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
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
  -- Check if field has value
  if value == nil or value == '' then
    return "Software Provider: No Value"
  end

  return "Software Provider: "..value
end

-- Dissect: Software Provider
dissect.software_provider = function(buffer, offset, packet, parent)
  local length = size_of.software_provider
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

  local display = display.software_provider(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.software_provider, range, value, display)

  return offset + length, value
end

-- Size: Oe Partition Id
size_of.oe_partition_id = 2

-- Display: Oe Partition Id
display.oe_partition_id = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Oe Partition Id: No Value"
  end

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
  -- Check if field has value
  if value == 4294967295 then
    return "Logical Access Id: No Value"
  end

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

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Last Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_msg_seq_num = dissect.last_msg_seq_num(buffer, index, packet, parent)

  -- Software Provider: 8 Byte Ascii String Nullable
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

-- Size: Execution Id
size_of.execution_id = 4

-- Display: Execution Id
display.execution_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Execution Id: No Value"
  end

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
  if value == 255 then
    return "Leg Side: No Value"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Instrument Id
size_of.leg_instrument_id = 4

-- Display: Leg Instrument Id
display.leg_instrument_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Instrument Id: No Value"
  end

  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
dissect.leg_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_instrument_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_instrument_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Last Qty
size_of.leg_last_qty = 8

-- Display: Leg Last Qty
display.leg_last_qty = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
dissect.leg_last_qty = function(buffer, offset, packet, parent)
  local length = size_of.leg_last_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leg_last_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Last Px
size_of.leg_last_px = 8

-- Display: Leg Last Px
display.leg_last_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Dissect: Leg Last Px
dissect.leg_last_px = function(buffer, offset, packet, parent)
  local length = size_of.leg_last_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_last_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Fields Group
size_of.strategy_fields_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_last_px

  index = index + size_of.leg_last_qty

  index = index + size_of.leg_instrument_id

  index = index + size_of.leg_side

  index = index + size_of.execution_id

  return index
end

-- Display: Strategy Fields Group
display.strategy_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Fields Group
dissect.strategy_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_last_px = dissect.leg_last_px(buffer, index, packet, parent)

  -- Leg Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_qty = dissect.leg_last_qty(buffer, index, packet, parent)

  -- Leg Instrument Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_instrument_id = dissect.leg_instrument_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Fields Group
dissect.strategy_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_fields_group then
    local length = size_of.strategy_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_fields_group, range, display)
  end

  return dissect.strategy_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Fields Groups
size_of.strategy_fields_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local strategy_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_fields_group_count * 25

  return index
end

-- Display: Strategy Fields Groups
display.strategy_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Fields Groups
dissect.strategy_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Strategy Fields Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.strategy_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Fields Groups
dissect.strategy_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_fields_groups then
    local length = size_of.strategy_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_fields_groups, range, display)
  end

  return dissect.strategy_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Clearing Instruction
size_of.clearing_instruction = 2

-- Display: Clearing Instruction
display.clearing_instruction = function(value)
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
display.open_close = function(buffer, packet, parent)
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
dissect.open_close_bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_6, buffer(offset, 2))

  -- Leg 9: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_9, buffer(offset, 2))

  -- Leg 8: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_8, buffer(offset, 2))

  -- Leg 7: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_7, buffer(offset, 2))

  -- Leg 6: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_6, buffer(offset, 2))

  -- Leg 5: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_5, buffer(offset, 2))

  -- Leg 4: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_4, buffer(offset, 2))

  -- Leg 3: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_3, buffer(offset, 2))

  -- Leg 2: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_2, buffer(offset, 2))

  -- Leg 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_1, buffer(offset, 2))

  -- Field Actively Used: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.field_actively_used, buffer(offset, 2))
end

-- Dissect: Open Close
dissect.open_close = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = display.open_close(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.open_close, range, display)

  if show.open_close then
    dissect.open_close_bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Size: Technical Origin
size_of.technical_origin = 1

-- Display: Technical Origin
display.technical_origin = function(value)
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
dissect.technical_origin = function(buffer, offset, packet, parent)
  local length = size_of.technical_origin
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.technical_origin(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.technical_origin, range, value, display)

  return offset + length, value
end

-- Size: Long Client Id
size_of.long_client_id = 16

-- Display: Long Client Id
display.long_client_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Client Id: No Value"
  end

  return "Long Client Id: "..value
end

-- Dissect: Long Client Id
dissect.long_client_id = function(buffer, offset, packet, parent)
  local length = size_of.long_client_id
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

  local display = display.long_client_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.long_client_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Clearing Fields X Group
size_of.clearing_fields_x_group = function(buffer, offset)
  local index = 0

  index = index + size_of.clearing_firm_id

  index = index + size_of.long_client_id

  index = index + size_of.account_number

  index = index + size_of.technical_origin

  index = index + size_of.open_close

  index = index + size_of.clearing_instruction

  index = index + size_of.account_type

  index = index + size_of.trading_capacity

  return index
end

-- Display: Clearing Fields X Group
display.clearing_fields_x_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Fields X Group
dissect.clearing_fields_x_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = dissect.long_client_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Fields X Group
dissect.clearing_fields_x_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.clearing_fields_x_group then
    local length = size_of.clearing_fields_x_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.clearing_fields_x_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_fields_x_group, range, display)
  end

  return dissect.clearing_fields_x_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clearing Fields X Groups
size_of.clearing_fields_x_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local clearing_fields_x_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_fields_x_group_count * 43

  return index
end

-- Display: Clearing Fields X Groups
display.clearing_fields_x_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Fields X Groups
dissect.clearing_fields_x_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Clearing Fields X Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.clearing_fields_x_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Clearing Fields X Groups
dissect.clearing_fields_x_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_fields_x_groups then
    local length = size_of.clearing_fields_x_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.clearing_fields_x_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_fields_x_groups, range, display)
  end

  return dissect.clearing_fields_x_groups_fields(buffer, offset, packet, parent)
end

-- Size: Non Executing Broker Short Code
size_of.non_executing_broker_short_code = 4

-- Display: Non Executing Broker Short Code
display.non_executing_broker_short_code = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Non Executing Broker Short Code: No Value"
  end

  return "Non Executing Broker Short Code: "..value
end

-- Dissect: Non Executing Broker Short Code
dissect.non_executing_broker_short_code = function(buffer, offset, packet, parent)
  local length = size_of.non_executing_broker_short_code
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.non_executing_broker_short_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.non_executing_broker_short_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mi Fi D Shortcodes Group
size_of.mi_fi_d_shortcodes_group = function(buffer, offset)
  local index = 0

  index = index + size_of.investment_decision_w_firm_short_code

  index = index + size_of.non_executing_broker_short_code

  index = index + size_of.client_identification_shortcode

  return index
end

-- Display: Mi Fi D Shortcodes Group
display.mi_fi_d_shortcodes_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mi Fi D Shortcodes Group
dissect.mi_fi_d_shortcodes_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = dissect.non_executing_broker_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  return index
end

-- Dissect: Mi Fi D Shortcodes Group
dissect.mi_fi_d_shortcodes_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mi_fi_d_shortcodes_group then
    local length = size_of.mi_fi_d_shortcodes_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mi_fi_d_shortcodes_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fi_d_shortcodes_group, range, display)
  end

  return dissect.mi_fi_d_shortcodes_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mi Fi D Shortcodes Groups
size_of.mi_fi_d_shortcodes_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local mi_fi_d_shortcodes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mi_fi_d_shortcodes_group_count * 12

  return index
end

-- Display: Mi Fi D Shortcodes Groups
display.mi_fi_d_shortcodes_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mi Fi D Shortcodes Groups
dissect.mi_fi_d_shortcodes_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mi Fi D Shortcodes Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.mi_fi_d_shortcodes_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mi Fi D Shortcodes Groups
dissect.mi_fi_d_shortcodes_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mi_fi_d_shortcodes_groups then
    local length = size_of.mi_fi_d_shortcodes_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mi_fi_d_shortcodes_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fi_d_shortcodes_groups, range, display)
  end

  return dissect.mi_fi_d_shortcodes_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Free Text Section Group
size_of.free_text_section_group = function(buffer, offset)
  local index = 0

  index = index + size_of.free_text

  return index
end

-- Display: Free Text Section Group
display.free_text_section_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Free Text Section Group
dissect.free_text_section_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  return index
end

-- Dissect: Free Text Section Group
dissect.free_text_section_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.free_text_section_group then
    local length = size_of.free_text_section_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.free_text_section_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text_section_group, range, display)
  end

  return dissect.free_text_section_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Free Text Section Groups
size_of.free_text_section_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local free_text_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + free_text_section_group_count * 18

  return index
end

-- Display: Free Text Section Groups
display.free_text_section_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Free Text Section Groups
dissect.free_text_section_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Free Text Section Group: Struct of 1 fields
  for i = 1, num_in_group do
    index = dissect.free_text_section_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Free Text Section Groups
dissect.free_text_section_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.free_text_section_groups then
    local length = size_of.free_text_section_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.free_text_section_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.free_text_section_groups, range, display)
  end

  return dissect.free_text_section_groups_fields(buffer, offset, packet, parent)
end

-- Size: Message Price Notation
size_of.message_price_notation = 1

-- Display: Message Price Notation
display.message_price_notation = function(value)
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
  if value == 1 then
    return "Order Actor Type: Initiator (1)"
  end
  if value == 2 then
    return "Order Actor Type: Reactor (2)"
  end

  return "Order Actor Type: Unknown("..value..")"
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
  -- Check if field has value
  if value == 65535 then
    return "Non Executing Client Id: No Value"
  end

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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Qty: No Value"
  end

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
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Px: No Value"
  end

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
  if value == 1 then
    return "Order Side: Buy (1)"
  end
  if value == 2 then
    return "Order Side: Sell (2)"
  end
  if value == 3 then
    return "Order Side: Cross (3)"
  end
  if value == 255 then
    return "Order Side: No Value"
  end

  return "Order Side: Unknown("..value..")"
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

  index = index + size_of.free_text_section_groups(buffer, offset + index)

  index = index + size_of.mi_fi_d_shortcodes_groups(buffer, offset + index)

  index = index + size_of.clearing_fields_x_groups(buffer, offset + index)

  index = index + size_of.strategy_fields_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = dissect.non_executing_client_id(buffer, index, packet, parent)

  -- Order Actor Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_actor_type = dissect.order_actor_type(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = dissect.message_price_notation(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = dissect.free_text_section_groups(buffer, index, packet, parent)

  -- Mi Fi D Shortcodes Groups: Struct of 2 fields
  index, mi_fi_d_shortcodes_groups = dissect.mi_fi_d_shortcodes_groups(buffer, index, packet, parent)

  -- Clearing Fields X Groups: Struct of 2 fields
  index, clearing_fields_x_groups = dissect.clearing_fields_x_groups(buffer, index, packet, parent)

  -- Strategy Fields Groups: Struct of 2 fields
  index, strategy_fields_groups = dissect.strategy_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Order Message
dissect.cross_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
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

-- Calculate size of: Wholesale Ack Clearing Rep Group
size_of.wholesale_ack_clearing_rep_group = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol_index

  index = index + size_of.side

  index = index + size_of.investment_decision_w_firm_short_code

  index = index + size_of.non_executing_broker_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.non_executing_client_id

  return index
end

-- Display: Wholesale Ack Clearing Rep Group
display.wholesale_ack_clearing_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Ack Clearing Rep Group
dissect.wholesale_ack_clearing_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = dissect.non_executing_broker_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = dissect.non_executing_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Ack Clearing Rep Group
dissect.wholesale_ack_clearing_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_ack_clearing_rep_group then
    local length = size_of.wholesale_ack_clearing_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_ack_clearing_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_ack_clearing_rep_group, range, display)
  end

  return dissect.wholesale_ack_clearing_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Ack Clearing Rep Groups
size_of.wholesale_ack_clearing_rep_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local wholesale_ack_clearing_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_ack_clearing_rep_group_count * 19

  return index
end

-- Display: Wholesale Ack Clearing Rep Groups
display.wholesale_ack_clearing_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Ack Clearing Rep Groups
dissect.wholesale_ack_clearing_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Wholesale Ack Clearing Rep Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.wholesale_ack_clearing_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Wholesale Ack Clearing Rep Groups
dissect.wholesale_ack_clearing_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_ack_clearing_rep_groups then
    local length = size_of.wholesale_ack_clearing_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_ack_clearing_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_ack_clearing_rep_groups, range, display)
  end

  return dissect.wholesale_ack_clearing_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Leg Error Code
size_of.leg_error_code = 2

-- Display: Leg Error Code
display.leg_error_code = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Leg Error Code: No Value"
  end

  return "Leg Error Code: "..value
end

-- Dissect: Leg Error Code
dissect.leg_error_code = function(buffer, offset, packet, parent)
  local length = size_of.leg_error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_error_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_error_code, range, value, display)

  return offset + length, value
end

-- Size: Leg Offer Order Id
size_of.leg_offer_order_id = 8

-- Display: Leg Offer Order Id
display.leg_offer_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Offer Order Id: No Value"
  end

  return "Leg Offer Order Id: "..value
end

-- Dissect: Leg Offer Order Id
dissect.leg_offer_order_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_offer_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leg_offer_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_offer_order_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Bid Order Id
size_of.leg_bid_order_id = 8

-- Display: Leg Bid Order Id
display.leg_bid_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Bid Order Id: No Value"
  end

  return "Leg Bid Order Id: "..value
end

-- Dissect: Leg Bid Order Id
dissect.leg_bid_order_id = function(buffer, offset, packet, parent)
  local length = size_of.leg_bid_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.leg_bid_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_bid_order_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol Index
size_of.leg_symbol_index = 4

-- Display: Leg Symbol Index
display.leg_symbol_index = function(value)
  return "Leg Symbol Index: "..value
end

-- Dissect: Leg Symbol Index
dissect.leg_symbol_index = function(buffer, offset, packet, parent)
  local length = size_of.leg_symbol_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_symbol_index(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_symbol_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wholesale Ack Legs Rep Group
size_of.wholesale_ack_legs_rep_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_symbol_index

  index = index + size_of.leg_bid_order_id

  index = index + size_of.leg_offer_order_id

  index = index + size_of.leg_side

  index = index + size_of.leg_error_code

  return index
end

-- Display: Wholesale Ack Legs Rep Group
display.wholesale_ack_legs_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Ack Legs Rep Group
dissect.wholesale_ack_legs_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Bid Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_bid_order_id = dissect.leg_bid_order_id(buffer, index, packet, parent)

  -- Leg Offer Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_offer_order_id = dissect.leg_offer_order_id(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, leg_error_code = dissect.leg_error_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Ack Legs Rep Group
dissect.wholesale_ack_legs_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_ack_legs_rep_group then
    local length = size_of.wholesale_ack_legs_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_ack_legs_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_ack_legs_rep_group, range, display)
  end

  return dissect.wholesale_ack_legs_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Ack Legs Rep Groups
size_of.wholesale_ack_legs_rep_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local wholesale_ack_legs_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_ack_legs_rep_group_count * 23

  return index
end

-- Display: Wholesale Ack Legs Rep Groups
display.wholesale_ack_legs_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Ack Legs Rep Groups
dissect.wholesale_ack_legs_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Wholesale Ack Legs Rep Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.wholesale_ack_legs_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Wholesale Ack Legs Rep Groups
dissect.wholesale_ack_legs_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_ack_legs_rep_groups then
    local length = size_of.wholesale_ack_legs_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_ack_legs_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_ack_legs_rep_groups, range, display)
  end

  return dissect.wholesale_ack_legs_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Ack Qualifiers
size_of.ack_qualifiers = 1

-- Display: Ack Qualifiers
display.ack_qualifiers = function(buffer, packet, parent)
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
dissect.ack_qualifiers_bits = function(buffer, offset, packet, parent)

  -- Executed Upon Entry Flag: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.executed_upon_entry_flag, buffer(offset, 1))

  -- Execution Upon Entry Flag Enabled: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_upon_entry_flag_enabled, buffer(offset, 1))

  -- Internal 2: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.internal_2, buffer(offset, 1))

  -- Internal 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.internal_1, buffer(offset, 1))

  -- Use Of Cross Partition: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.use_of_cross_partition, buffer(offset, 1))

  -- Request With Client Order Id: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.request_with_client_order_id, buffer(offset, 1))

  -- Queue Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.queue_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Ack Qualifiers
dissect.ack_qualifiers = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.ack_qualifiers(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.ack_qualifiers, range, display)

  if show.ack_qualifiers then
    dissect.ack_qualifiers_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Response Type
size_of.response_type = 1

-- Display: Response Type
display.response_type = function(value)
  if value == 0 then
    return "Response Type: Accept (0)"
  end
  if value == 1 then
    return "Response Type: Reject (1)"
  end

  return "Response Type: Unknown("..value..")"
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
  -- Check if field has value
  if value == 255 then
    return "Escb Membership: No Value"
  end

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
  if value == 0 then
    return "Strategy Code: No Value"
  end

  return "Strategy Code: Unknown("..value..")"
end

-- Dissect: Strategy Code
dissect.strategy_code = function(buffer, offset, packet, parent)
  local length = size_of.strategy_code
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value == 0 then
    value = ''
  else
    value = range:string()
  end

  local display = display.strategy_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Size: Lis Transaction Id
size_of.lis_transaction_id = 4

-- Display: Lis Transaction Id
display.lis_transaction_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Lis Transaction Id: No Value"
  end

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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oegin From Me: No Value"
  end

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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book Out Time: No Value"
  end

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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book In: No Value"
  end

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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oegout Time To Me: No Value"
  end

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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oegin From Member: No Value"
  end

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

  index = index + size_of.wholesale_ack_legs_rep_groups(buffer, offset + index)

  index = index + size_of.wholesale_ack_clearing_rep_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Wholesale Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_trade_type = dissect.wholesale_trade_type(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 49 values
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Wholesale Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_side = dissect.wholesale_side(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = dissect.escb_membership(buffer, index, packet, parent)

  -- Response Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, response_type = dissect.response_type(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = dissect.error_code(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Wholesale Ack Legs Rep Groups: Struct of 2 fields
  index, wholesale_ack_legs_rep_groups = dissect.wholesale_ack_legs_rep_groups(buffer, index, packet, parent)

  -- Wholesale Ack Clearing Rep Groups: Struct of 2 fields
  index, wholesale_ack_clearing_rep_groups = dissect.wholesale_ack_clearing_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Order Ack Message
dissect.wholesale_order_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_order_ack_message then
    local length = size_of.wholesale_order_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_order_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_order_ack_message, range, display)
  end

  return dissect.wholesale_order_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Client Rep Group
size_of.wholesale_client_rep_group = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol_index

  index = index + size_of.side

  index = index + size_of.account_type

  index = index + size_of.clearing_firm_id

  index = index + size_of.long_client_id

  index = index + size_of.account_number

  index = index + size_of.technical_origin

  index = index + size_of.open_close

  index = index + size_of.clearing_instruction

  index = index + size_of.free_text

  index = index + size_of.non_executing_client_id

  index = index + size_of.investment_decision_w_firm_short_code

  index = index + size_of.non_executing_broker_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.trading_capacity

  return index
end

-- Display: Wholesale Client Rep Group
display.wholesale_client_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Client Rep Group
dissect.wholesale_client_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = dissect.long_client_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = dissect.non_executing_client_id(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = dissect.investment_decision_w_firm_short_code(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = dissect.non_executing_broker_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Client Rep Group
dissect.wholesale_client_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_client_rep_group then
    local length = size_of.wholesale_client_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_client_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_client_rep_group, range, display)
  end

  return dissect.wholesale_client_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Client Rep Groups
size_of.wholesale_client_rep_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local wholesale_client_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_client_rep_group_count * 80

  return index
end

-- Display: Wholesale Client Rep Groups
display.wholesale_client_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Client Rep Groups
dissect.wholesale_client_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Wholesale Client Rep Group: Struct of 15 fields
  for i = 1, num_in_group do
    index = dissect.wholesale_client_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Wholesale Client Rep Groups
dissect.wholesale_client_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_client_rep_groups then
    local length = size_of.wholesale_client_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_client_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_client_rep_groups, range, display)
  end

  return dissect.wholesale_client_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Leg Last Trading Date
size_of.leg_last_trading_date = 8

-- Display: Leg Last Trading Date
display.leg_last_trading_date = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Last Trading Date: No Value"
  end

  return "Leg Last Trading Date: "..value
end

-- Dissect: Leg Last Trading Date
dissect.leg_last_trading_date = function(buffer, offset, packet, parent)
  local length = size_of.leg_last_trading_date
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

  local display = display.leg_last_trading_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_last_trading_date, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Type
size_of.leg_security_type = 1

-- Display: Leg Security Type
display.leg_security_type = function(value)
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
dissect.leg_security_type = function(buffer, offset, packet, parent)
  local length = size_of.leg_security_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Put Or Call
size_of.leg_put_or_call = 1

-- Display: Leg Put Or Call
display.leg_put_or_call = function(value)
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
dissect.leg_put_or_call = function(buffer, offset, packet, parent)
  local length = size_of.leg_put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_put_or_call(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
size_of.leg_ratio = 4

-- Display: Leg Ratio
display.leg_ratio = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Ratio: No Value"
  end

  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Strike Price
size_of.leg_strike_price = 8

-- Display: Leg Strike Price
display.leg_strike_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Strike Price: No Value"
  end

  return "Leg Strike Price: "..value
end

-- Dissect: Leg Strike Price
dissect.leg_strike_price = function(buffer, offset, packet, parent)
  local length = size_of.leg_strike_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_strike_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_strike_price, range, value, display)

  return offset + length, value
end

-- Size: Offer Quantity
size_of.offer_quantity = 8

-- Display: Offer Quantity
display.offer_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Quantity: No Value"
  end

  return "Offer Quantity: "..value
end

-- Dissect: Offer Quantity
dissect.offer_quantity = function(buffer, offset, packet, parent)
  local length = size_of.offer_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.offer_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_quantity, range, value, display)

  return offset + length, value
end

-- Size: Bid Quantity
size_of.bid_quantity = 8

-- Display: Bid Quantity
display.bid_quantity = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Quantity: No Value"
  end

  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
dissect.bid_quantity = function(buffer, offset, packet, parent)
  local length = size_of.bid_quantity
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_quantity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Leg Price
size_of.leg_price = 8

-- Display: Leg Price
display.leg_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Dissect: Leg Price
dissect.leg_price = function(buffer, offset, packet, parent)
  local length = size_of.leg_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.leg_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Wholesale Legs Rep Group
size_of.wholesale_legs_rep_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_symbol_index

  index = index + size_of.leg_price

  index = index + size_of.bid_quantity

  index = index + size_of.offer_quantity

  index = index + size_of.leg_side

  index = index + size_of.leg_strike_price

  index = index + size_of.leg_ratio

  index = index + size_of.leg_put_or_call

  index = index + size_of.leg_security_type

  index = index + size_of.leg_last_trading_date

  return index
end

-- Display: Wholesale Legs Rep Group
display.wholesale_legs_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Legs Rep Group
dissect.wholesale_legs_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = dissect.leg_price(buffer, index, packet, parent)

  -- Bid Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_quantity = dissect.bid_quantity(buffer, index, packet, parent)

  -- Offer Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_quantity = dissect.offer_quantity(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  -- Leg Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_strike_price = dissect.leg_strike_price(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_put_or_call = dissect.leg_put_or_call(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Last Trading Date: 8 Byte Ascii String Nullable
  index, leg_last_trading_date = dissect.leg_last_trading_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Legs Rep Group
dissect.wholesale_legs_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.wholesale_legs_rep_group then
    local length = size_of.wholesale_legs_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_legs_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_legs_rep_group, range, display)
  end

  return dissect.wholesale_legs_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Wholesale Legs Rep Groups
size_of.wholesale_legs_rep_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local wholesale_legs_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_legs_rep_group_count * 51

  return index
end

-- Display: Wholesale Legs Rep Groups
display.wholesale_legs_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Wholesale Legs Rep Groups
dissect.wholesale_legs_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Wholesale Legs Rep Group: Struct of 10 fields
  for i = 1, num_in_group do
    index = dissect.wholesale_legs_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Wholesale Legs Rep Groups
dissect.wholesale_legs_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_legs_rep_groups then
    local length = size_of.wholesale_legs_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.wholesale_legs_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.wholesale_legs_rep_groups, range, display)
  end

  return dissect.wholesale_legs_rep_groups_fields(buffer, offset, packet, parent)
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

  index = index + size_of.wholesale_legs_rep_groups(buffer, offset + index)

  index = index + size_of.wholesale_client_rep_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Wholesale Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_trade_type = dissect.wholesale_trade_type(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 49 values
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
  index, price = dissect.price(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Wholesale Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_side = dissect.wholesale_side(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = dissect.escb_membership(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = dissect.message_price_notation(buffer, index, packet, parent)

  -- Wholesale Legs Rep Groups: Struct of 2 fields
  index, wholesale_legs_rep_groups = dissect.wholesale_legs_rep_groups(buffer, index, packet, parent)

  -- Wholesale Client Rep Groups: Struct of 2 fields
  index, wholesale_client_rep_groups = dissect.wholesale_client_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: New Wholesale Order Message
dissect.new_wholesale_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_wholesale_order_message then
    local length = size_of.new_wholesale_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_wholesale_order_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.new_wholesale_order_message, range, display)
  end

  return dissect.new_wholesale_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Breach Status
size_of.breach_status = 1

-- Display: Breach Status
display.breach_status = function(value)
  -- Check if field has value
  if value == 255 then
    return "Breach Status: No Value"
  end

  return "Breach Status: "..value
end

-- Dissect: Breach Status
dissect.breach_status = function(buffer, offset, packet, parent)
  local length = size_of.breach_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.breach_status(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.breach_status, range, value, display)

  return offset + length, value
end

-- Size: Current Mmp Position
size_of.current_mmp_position = 8

-- Display: Current Mmp Position
display.current_mmp_position = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Current Mmp Position: No Value"
  end

  return "Current Mmp Position: "..value
end

-- Dissect: Current Mmp Position
dissect.current_mmp_position = function(buffer, offset, packet, parent)
  local length = size_of.current_mmp_position
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.current_mmp_position(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.current_mmp_position, range, value, display)

  return offset + length, value
end

-- Size: Breach Action
size_of.breach_action = 1

-- Display: Breach Action
display.breach_action = function(value)
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
dissect.breach_action = function(buffer, offset, packet, parent)
  local length = size_of.breach_action
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.breach_action(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.breach_action, range, value, display)

  return offset + length, value
end

-- Size: Protection Threshold
size_of.protection_threshold = 8

-- Display: Protection Threshold
display.protection_threshold = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Protection Threshold: No Value"
  end

  return "Protection Threshold: "..value
end

-- Dissect: Protection Threshold
dissect.protection_threshold = function(buffer, offset, packet, parent)
  local length = size_of.protection_threshold
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.protection_threshold(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.protection_threshold, range, value, display)

  return offset + length, value
end

-- Size: Protection Type
size_of.protection_type = 1

-- Display: Protection Type
display.protection_type = function(value)
  if value == 1 then
    return "Protection Type: Delta (1)"
  end
  if value == 2 then
    return "Protection Type: Volume (2)"
  end
  if value == 255 then
    return "Protection Type: No Value"
  end

  return "Protection Type: Unknown("..value..")"
end

-- Dissect: Protection Type
dissect.protection_type = function(buffer, offset, packet, parent)
  local length = size_of.protection_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.protection_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.protection_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mm P Section 2 Group
size_of.mm_p_section_2_group = function(buffer, offset)
  local index = 0

  index = index + size_of.protection_type

  index = index + size_of.protection_threshold

  index = index + size_of.breach_action

  index = index + size_of.current_mmp_position

  index = index + size_of.breach_status

  return index
end

-- Display: Mm P Section 2 Group
display.mm_p_section_2_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm P Section 2 Group
dissect.mm_p_section_2_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protection Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, protection_type = dissect.protection_type(buffer, index, packet, parent)

  -- Protection Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, protection_threshold = dissect.protection_threshold(buffer, index, packet, parent)

  -- Breach Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, breach_action = dissect.breach_action(buffer, index, packet, parent)

  -- Current Mmp Position: 8 Byte Signed Fixed Width Integer Nullable
  index, current_mmp_position = dissect.current_mmp_position(buffer, index, packet, parent)

  -- Breach Status: 1 Byte Unsigned Fixed Width Integer Nullable
  index, breach_status = dissect.breach_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm P Section 2 Group
dissect.mm_p_section_2_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_p_section_2_group then
    local length = size_of.mm_p_section_2_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_p_section_2_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_p_section_2_group, range, display)
  end

  return dissect.mm_p_section_2_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mm P Section 2 Groups
size_of.mm_p_section_2_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local mm_p_section_2_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mm_p_section_2_group_count * 19

  return index
end

-- Display: Mm P Section 2 Groups
display.mm_p_section_2_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm P Section 2 Groups
dissect.mm_p_section_2_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mm P Section 2 Group: Struct of 5 fields
  for i = 1, num_in_group do
    index = dissect.mm_p_section_2_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mm P Section 2 Groups
dissect.mm_p_section_2_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mm_p_section_2_groups then
    local length = size_of.mm_p_section_2_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_p_section_2_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_p_section_2_groups, range, display)
  end

  return dissect.mm_p_section_2_groups_fields(buffer, offset, packet, parent)
end

-- Size: Mmp Execution Type
size_of.mmp_execution_type = 1

-- Display: Mmp Execution Type
display.mmp_execution_type = function(buffer, packet, parent)
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
dissect.mmp_execution_type_bits = function(buffer, offset, packet, parent)

  -- Reserved 5: 5 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_5, buffer(offset, 1))

  -- Pull: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.pull, buffer(offset, 1))

  -- Acknowledgement: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.acknowledgement, buffer(offset, 1))

  -- Notification: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.notification, buffer(offset, 1))
end

-- Dissect: Mmp Execution Type
dissect.mmp_execution_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.mmp_execution_type(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mmp_execution_type, range, display)

  if show.mmp_execution_type then
    dissect.mmp_execution_type_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
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

  index = index + size_of.mm_p_section_2_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Mmp Execution Type: Struct of 4 fields
  index, mmp_execution_type = dissect.mmp_execution_type(buffer, index, packet, parent)

  -- Mm P Section 2 Groups: Struct of 2 fields
  index, mm_p_section_2_groups = dissect.mm_p_section_2_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Protection Ack Message
dissect.mm_protection_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mm_protection_ack_message then
    local length = size_of.mm_protection_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_protection_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_protection_ack_message, range, display)
  end

  return dissect.mm_protection_ack_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mm P Section Group
size_of.mm_p_section_group = function(buffer, offset)
  local index = 0

  index = index + size_of.protection_type

  index = index + size_of.protection_threshold

  index = index + size_of.breach_action

  return index
end

-- Display: Mm P Section Group
display.mm_p_section_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm P Section Group
dissect.mm_p_section_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Protection Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, protection_type = dissect.protection_type(buffer, index, packet, parent)

  -- Protection Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, protection_threshold = dissect.protection_threshold(buffer, index, packet, parent)

  -- Breach Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, breach_action = dissect.breach_action(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm P Section Group
dissect.mm_p_section_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mm_p_section_group then
    local length = size_of.mm_p_section_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_p_section_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_p_section_group, range, display)
  end

  return dissect.mm_p_section_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mm P Section Groups
size_of.mm_p_section_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local mm_p_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mm_p_section_group_count * 10

  return index
end

-- Display: Mm P Section Groups
display.mm_p_section_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mm P Section Groups
dissect.mm_p_section_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mm P Section Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.mm_p_section_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mm P Section Groups
dissect.mm_p_section_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mm_p_section_groups then
    local length = size_of.mm_p_section_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mm_p_section_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mm_p_section_groups, range, display)
  end

  return dissect.mm_p_section_groups_fields(buffer, offset, packet, parent)
end

-- Size: Request Type
size_of.request_type = 1

-- Display: Request Type
display.request_type = function(value)
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

  index = index + size_of.mm_p_section_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, request_type = dissect.request_type(buffer, index, packet, parent)

  -- Mm P Section Groups: Struct of 2 fields
  index, mm_p_section_groups = dissect.mm_p_section_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Protection Request Message
dissect.mm_protection_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Signed Fixed Width Integer
  index, security_req_id = dissect.security_req_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
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

-- Calculate size of: Strategy Legs Group
size_of.strategy_legs_group = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_symbol_index

  index = index + size_of.leg_ratio

  index = index + size_of.leg_security_type

  index = index + size_of.leg_put_or_call

  index = index + size_of.leg_price

  index = index + size_of.leg_strike_price

  index = index + size_of.leg_last_trading_date

  index = index + size_of.leg_side

  return index
end

-- Display: Strategy Legs Group
display.strategy_legs_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Legs Group
dissect.strategy_legs_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = dissect.leg_symbol_index(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_put_or_call = dissect.leg_put_or_call(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price = dissect.leg_price(buffer, index, packet, parent)

  -- Leg Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_strike_price = dissect.leg_strike_price(buffer, index, packet, parent)

  -- Leg Last Trading Date: 8 Byte Ascii String Nullable
  index, leg_last_trading_date = dissect.leg_last_trading_date(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Legs Group
dissect.strategy_legs_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_legs_group then
    local length = size_of.strategy_legs_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_legs_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_legs_group, range, display)
  end

  return dissect.strategy_legs_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Legs Groups
size_of.strategy_legs_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local strategy_legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_legs_group_count * 35

  return index
end

-- Display: Strategy Legs Groups
display.strategy_legs_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Legs Groups
dissect.strategy_legs_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Strategy Legs Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.strategy_legs_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Legs Groups
dissect.strategy_legs_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_legs_groups then
    local length = size_of.strategy_legs_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_legs_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.strategy_legs_groups, range, display)
  end

  return dissect.strategy_legs_groups_fields(buffer, offset, packet, parent)
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

  index = index + size_of.strategy_legs_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Signed Fixed Width Integer
  index, security_req_id = dissect.security_req_id(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = dissect.contract_symbol_index(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 49 values
  index, strategy_code = dissect.strategy_code(buffer, index, packet, parent)

  -- Strategy Legs Groups: Struct of 2 fields
  index, strategy_legs_groups = dissect.strategy_legs_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
dissect.security_definition_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
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

-- Calculate size of: Instrument Synchronization Section Group
size_of.instrument_synchronization_section_group = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol_index

  index = index + size_of.emm

  return index
end

-- Display: Instrument Synchronization Section Group
display.instrument_synchronization_section_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Synchronization Section Group
dissect.instrument_synchronization_section_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization Section Group
dissect.instrument_synchronization_section_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_synchronization_section_group then
    local length = size_of.instrument_synchronization_section_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_synchronization_section_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_synchronization_section_group, range, display)
  end

  return dissect.instrument_synchronization_section_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Synchronization Section Groups
size_of.instrument_synchronization_section_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local instrument_synchronization_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrument_synchronization_section_group_count * 5

  return index
end

-- Display: Instrument Synchronization Section Groups
display.instrument_synchronization_section_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Synchronization Section Groups
dissect.instrument_synchronization_section_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Instrument Synchronization Section Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.instrument_synchronization_section_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Instrument Synchronization Section Groups
dissect.instrument_synchronization_section_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_synchronization_section_groups then
    local length = size_of.instrument_synchronization_section_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_synchronization_section_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_synchronization_section_groups, range, display)
  end

  return dissect.instrument_synchronization_section_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Synchronization List Message
size_of.instrument_synchronization_list_message = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_seq_num

  index = index + size_of.oegout_to_member

  index = index + size_of.resynchronization_id

  index = index + size_of.instrument_synchronization_section_groups(buffer, offset + index)

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

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Resynchronization Id: 2 Byte Unsigned Fixed Width Integer
  index, resynchronization_id = dissect.resynchronization_id(buffer, index, packet, parent)

  -- Instrument Synchronization Section Groups: Struct of 2 fields
  index, instrument_synchronization_section_groups = dissect.instrument_synchronization_section_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization List Message
dissect.instrument_synchronization_list_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_synchronization_list_message then
    local length = size_of.instrument_synchronization_list_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_synchronization_list_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.instrument_synchronization_list_message, range, display)
  end

  return dissect.instrument_synchronization_list_message_fields(buffer, offset, packet, parent)
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Size Limit: No Value"
  end

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
  -- Check if field has value
  if value == nil or value == '' then
    return "Family Id: No Value"
  end

  return "Family Id: "..value
end

-- Dissect: Family Id
dissect.family_id = function(buffer, offset, packet, parent)
  local length = size_of.family_id
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

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Family Id: 8 Byte Ascii String Nullable
  index, family_id = dissect.family_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 30 values
  index, user_status = dissect.user_status(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Order Size Limit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_size_limit = dissect.order_size_limit(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: User Notification Message
dissect.user_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Req Id: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Potential Matching Qty: 8 Byte Unsigned Fixed Width Integer
  index, potential_matching_qty = dissect.potential_matching_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
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
  if value == 1 then
    return "Recipient Type: Rfq Issuer (1)"
  end
  if value == 2 then
    return "Recipient Type: Rf Qrecipient Lp (2)"
  end

  return "Recipient Type: Unknown("..value..")"
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
  -- Check if field has value
  if value == 255 then
    return "Number Of L Ps: No Value"
  end

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
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Potential Matching Px: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Potential Matching Px: 8 Byte Signed Fixed Width Integer Nullable
  index, potential_matching_px = dissect.potential_matching_px(buffer, index, packet, parent)

  -- Potential Matching Qty: 8 Byte Unsigned Fixed Width Integer
  index, potential_matching_qty = dissect.potential_matching_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Number Of L Ps: 1 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_l_ps = dissect.number_of_l_ps(buffer, index, packet, parent)

  -- Recipient Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Min Order Qty: No Value"
  end

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
display.dark_execution_instruction = function(buffer, packet, parent)
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
dissect.dark_execution_instruction_bits = function(buffer, offset, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_3, buffer(offset, 1))

  -- Minimum Quantity Type: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.minimum_quantity_type, buffer(offset, 1))

  -- Sweep Order Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.sweep_order_indicator, buffer(offset, 1))

  -- Displayed Order Interaction: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.displayed_order_interaction, buffer(offset, 1))

  -- Deferred Trade Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.deferred_trade_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Dark Execution Instruction
dissect.dark_execution_instruction = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.dark_execution_instruction(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.dark_execution_instruction, range, display)

  if show.dark_execution_instruction then
    dissect.dark_execution_instruction_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: End Client
size_of.end_client = 11

-- Display: End Client
display.end_client = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "End Client: No Value"
  end

  return "End Client: "..value
end

-- Dissect: End Client
dissect.end_client = function(buffer, offset, packet, parent)
  local length = size_of.end_client
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

  local display = display.end_client(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.end_client, range, value, display)

  return offset + length, value
end

-- Size: Rfq Update Type
size_of.rfq_update_type = 1

-- Display: Rfq Update Type
display.rfq_update_type = function(value)
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
  -- Check if field has value
  if value == nil or value == '' then
    return "Counterpart Firm Id: No Value"
  end

  return "Counterpart Firm Id: "..value
end

-- Dissect: Counterpart Firm Id
dissect.counterpart_firm_id = function(buffer, offset, packet, parent)
  local length = size_of.counterpart_firm_id
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Counterpart Firm Id: 8 Byte Ascii String Nullable
  index, counterpart_firm_id = dissect.counterpart_firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Rfq Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, rfq_update_type = dissect.rfq_update_type(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- End Client: 11 Byte Ascii String Nullable
  index, end_client = dissect.end_client(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Afq Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Lp Action Code: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
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
  if value == 1 then
    return "Input Price Type: Valuation Price (1)"
  end
  if value == 2 then
    return "Input Price Type: Alternative Indicative Price Aip (2)"
  end

  return "Input Price Type: Unknown("..value..")"
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Input Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, input_price_type = dissect.input_price_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer Nullable
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
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Orig Client Order Id: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
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
  -- Check if field has value
  if value == 4294967295 then
    return "Parent Symbol Index: No Value"
  end

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
  -- Check if field has value
  if value == 4294967295 then
    return "Parent Exec Id: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Last Traded Px: 8 Byte Signed Fixed Width Integer
  index, last_traded_px = dissect.last_traded_px(buffer, index, packet, parent)

  -- Last Shares: 8 Byte Unsigned Fixed Width Integer
  index, last_shares = dissect.last_shares(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Parent Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, parent_exec_id = dissect.parent_exec_id(buffer, index, packet, parent)

  -- Parent Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Signed Fixed Width Integer
  index, total_affected_orders = dissect.total_affected_orders(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
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

-- Calculate size of: Mi Fi D Fields Group
size_of.mi_fi_d_fields_group = function(buffer, offset)
  local index = 0

  index = index + size_of.execution_within_firm_short_code

  index = index + size_of.client_identification_shortcode

  index = index + size_of.mi_fid_indicators

  return index
end

-- Display: Mi Fi D Fields Group
display.mi_fi_d_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mi Fi D Fields Group
dissect.mi_fi_d_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  return index
end

-- Dissect: Mi Fi D Fields Group
dissect.mi_fi_d_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.mi_fi_d_fields_group then
    local length = size_of.mi_fi_d_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mi_fi_d_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fi_d_fields_group, range, display)
  end

  return dissect.mi_fi_d_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Mi Fi D Fields Groups
size_of.mi_fi_d_fields_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local mi_fi_d_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mi_fi_d_fields_group_count * 9

  return index
end

-- Display: Mi Fi D Fields Groups
display.mi_fi_d_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mi Fi D Fields Groups
dissect.mi_fi_d_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Mi Fi D Fields Group: Struct of 3 fields
  for i = 1, num_in_group do
    index = dissect.mi_fi_d_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mi Fi D Fields Groups
dissect.mi_fi_d_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mi_fi_d_fields_groups then
    local length = size_of.mi_fi_d_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.mi_fi_d_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.mi_fi_d_fields_groups, range, display)
  end

  return dissect.mi_fi_d_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Target Execution Within Firm Short Code
size_of.target_execution_within_firm_short_code = 4

-- Display: Target Execution Within Firm Short Code
display.target_execution_within_firm_short_code = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Target Execution Within Firm Short Code: No Value"
  end

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
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity: No Value"
  end

  return "Maturity: "..value
end

-- Dissect: Maturity
dissect.maturity = function(buffer, offset, packet, parent)
  local length = size_of.maturity
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

  local display = display.maturity(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.maturity, range, value, display)

  return offset + length, value
end

-- Size: Contract Id
size_of.contract_id = 4

-- Display: Contract Id
display.contract_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Contract Id: No Value"
  end

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
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Group Code: No Value"
  end

  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
dissect.instrument_group_code = function(buffer, offset, packet, parent)
  local length = size_of.instrument_group_code
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

  index = index + size_of.mi_fi_d_fields_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Signed Fixed Width Integer
  index, total_affected_orders = dissect.total_affected_orders(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String Nullable
  index, instrument_group_code = dissect.instrument_group_code(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Contract Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, contract_id = dissect.contract_id(buffer, index, packet, parent)

  -- Maturity: 8 Byte Ascii String Nullable
  index, maturity = dissect.maturity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Target Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, target_execution_within_firm_short_code = dissect.target_execution_within_firm_short_code(buffer, index, packet, parent)

  -- Mi Fi D Fields Groups: Struct of 2 fields
  index, mi_fi_d_fields_groups = dissect.mi_fi_d_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Ack Message
dissect.mass_cancel_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + size_of.not_used_group_2_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String Nullable
  index, instrument_group_code = dissect.instrument_group_code(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, logical_access_id = dissect.logical_access_id(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id = dissect.oe_partition_id(buffer, index, packet, parent)

  -- Contract Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, contract_id = dissect.contract_id(buffer, index, packet, parent)

  -- Maturity: 8 Byte Ascii String Nullable
  index, maturity = dissect.maturity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  -- Target Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, target_execution_within_firm_short_code = dissect.target_execution_within_firm_short_code(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = dissect.not_used_group_2_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Message
dissect.mass_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + size_of.not_used_group_2_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = dissect.order_category(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = dissect.not_used_group_2_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Request Message
dissect.cancel_request_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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
  -- Check if field has value
  if value == 255 then
    return "Firm Id Publication: No Value"
  end

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Firm Id Publication: 1 Byte Unsigned Fixed Width Integer Nullable
  index, firm_id_publication = dissect.firm_id_publication(buffer, index, packet, parent)

  -- End Client: 11 Byte Ascii String Nullable
  index, end_client = dissect.end_client(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
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

-- Size: Offer Error Code
size_of.offer_error_code = 2

-- Display: Offer Error Code
display.offer_error_code = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Offer Error Code: No Value"
  end

  return "Offer Error Code: "..value
end

-- Dissect: Offer Error Code
dissect.offer_error_code = function(buffer, offset, packet, parent)
  local length = size_of.offer_error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.offer_error_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_error_code, range, value, display)

  return offset + length, value
end

-- Size: Bid Error Code
size_of.bid_error_code = 2

-- Display: Bid Error Code
display.bid_error_code = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Bid Error Code: No Value"
  end

  return "Bid Error Code: "..value
end

-- Dissect: Bid Error Code
dissect.bid_error_code = function(buffer, offset, packet, parent)
  local length = size_of.bid_error_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bid_error_code(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_error_code, range, value, display)

  return offset + length, value
end

-- Size: Sell Revision Flag
size_of.sell_revision_flag = 1

-- Display: Sell Revision Flag
display.sell_revision_flag = function(value)
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
dissect.sell_revision_flag = function(buffer, offset, packet, parent)
  local length = size_of.sell_revision_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sell_revision_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.sell_revision_flag, range, value, display)

  return offset + length, value
end

-- Size: Buy Revision Flag
size_of.buy_revision_flag = 1

-- Display: Buy Revision Flag
display.buy_revision_flag = function(value)
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
dissect.buy_revision_flag = function(buffer, offset, packet, parent)
  local length = size_of.buy_revision_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.buy_revision_flag(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.buy_revision_flag, range, value, display)

  return offset + length, value
end

-- Size: Offer Order Id
size_of.offer_order_id = 8

-- Display: Offer Order Id
display.offer_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Order Id: No Value"
  end

  return "Offer Order Id: "..value
end

-- Dissect: Offer Order Id
dissect.offer_order_id = function(buffer, offset, packet, parent)
  local length = size_of.offer_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.offer_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_order_id, range, value, display)

  return offset + length, value
end

-- Size: Bid Order Id
size_of.bid_order_id = 8

-- Display: Bid Order Id
display.bid_order_id = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Order Id: No Value"
  end

  return "Bid Order Id: "..value
end

-- Dissect: Bid Order Id
dissect.bid_order_id = function(buffer, offset, packet, parent)
  local length = size_of.bid_order_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_order_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quote Acks Group
size_of.quote_acks_group = function(buffer, offset)
  local index = 0

  index = index + size_of.bid_order_id

  index = index + size_of.offer_order_id

  index = index + size_of.symbol_index

  index = index + size_of.emm

  index = index + size_of.buy_revision_flag

  index = index + size_of.sell_revision_flag

  index = index + size_of.bid_error_code

  index = index + size_of.offer_error_code

  return index
end

-- Display: Quote Acks Group
display.quote_acks_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Acks Group
dissect.quote_acks_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_order_id = dissect.bid_order_id(buffer, index, packet, parent)

  -- Offer Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_order_id = dissect.offer_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Buy Revision Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, buy_revision_flag = dissect.buy_revision_flag(buffer, index, packet, parent)

  -- Sell Revision Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, sell_revision_flag = dissect.sell_revision_flag(buffer, index, packet, parent)

  -- Bid Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, bid_error_code = dissect.bid_error_code(buffer, index, packet, parent)

  -- Offer Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, offer_error_code = dissect.offer_error_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Acks Group
dissect.quote_acks_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_acks_group then
    local length = size_of.quote_acks_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_acks_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_acks_group, range, display)
  end

  return dissect.quote_acks_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Acks Groups
size_of.quote_acks_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local quote_acks_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_acks_group_count * 27

  return index
end

-- Display: Quote Acks Groups
display.quote_acks_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Acks Groups
dissect.quote_acks_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Quote Acks Group: Struct of 8 fields
  for i = 1, num_in_group do
    index = dissect.quote_acks_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quote Acks Groups
dissect.quote_acks_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_acks_groups then
    local length = size_of.quote_acks_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_acks_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_acks_groups, range, display)
  end

  return dissect.quote_acks_groups_fields(buffer, offset, packet, parent)
end

-- Size: Lp Role
size_of.lp_role = 1

-- Display: Lp Role
display.lp_role = function(value)
  if value == 1 then
    return "Lp Role: Liquidity Provideror Market Maker (1)"
  end
  if value == 3 then
    return "Lp Role: Retail Liquidity Provider (3)"
  end
  if value == 12 then
    return "Lp Role: Rfq Liquidity Provider (12)"
  end
  if value == 255 then
    return "Lp Role: No Value"
  end

  return "Lp Role: Unknown("..value..")"
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

  index = index + size_of.quote_acks_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lp_role = dissect.lp_role(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Quote Acks Groups: Struct of 2 fields
  index, quote_acks_groups = dissect.quote_acks_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Message
dissect.quote_ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_ack_message then
    local length = size_of.quote_ack_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quote_ack_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quote_ack_message, range, display)
  end

  return dissect.quote_ack_message_fields(buffer, offset, packet, parent)
end

-- Size: Offer Px
size_of.offer_px = 8

-- Display: Offer Px
display.offer_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Dissect: Offer Px
dissect.offer_px = function(buffer, offset, packet, parent)
  local length = size_of.offer_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.offer_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Size: Offer Size
size_of.offer_size = 8

-- Display: Offer Size
display.offer_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local length = size_of.offer_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Px
size_of.bid_px = 8

-- Display: Bid Px
display.bid_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Dissect: Bid Px
dissect.bid_px = function(buffer, offset, packet, parent)
  local length = size_of.bid_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.bid_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 8

-- Display: Bid Size
display.bid_size = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Quotes Rep Group
size_of.quotes_rep_group = function(buffer, offset)
  local index = 0

  index = index + size_of.bid_size

  index = index + size_of.bid_px

  index = index + size_of.offer_size

  index = index + size_of.offer_px

  index = index + size_of.symbol_index

  index = index + size_of.emm

  return index
end

-- Display: Quotes Rep Group
display.quotes_rep_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quotes Rep Group
dissect.quotes_rep_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Signed Fixed Width Integer Nullable
  index, bid_px = dissect.bid_px(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Signed Fixed Width Integer Nullable
  index, offer_px = dissect.offer_px(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Rep Group
dissect.quotes_rep_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quotes_rep_group then
    local length = size_of.quotes_rep_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quotes_rep_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quotes_rep_group, range, display)
  end

  return dissect.quotes_rep_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quotes Rep Groups
size_of.quotes_rep_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local quotes_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quotes_rep_group_count * 37

  return index
end

-- Display: Quotes Rep Groups
display.quotes_rep_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quotes Rep Groups
dissect.quotes_rep_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Quotes Rep Group: Struct of 6 fields
  for i = 1, num_in_group do
    index = dissect.quotes_rep_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Quotes Rep Groups
dissect.quotes_rep_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_rep_groups then
    local length = size_of.quotes_rep_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quotes_rep_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quotes_rep_groups, range, display)
  end

  return dissect.quotes_rep_groups_fields(buffer, offset, packet, parent)
end

-- Size: Client Id
size_of.client_id = 8

-- Display: Client Id
display.client_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Id: No Value"
  end

  return "Client Id: "..value
end

-- Dissect: Client Id
dissect.client_id = function(buffer, offset, packet, parent)
  local length = size_of.client_id
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

  local display = display.client_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.client_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Clearing Dataset Group
size_of.clearing_dataset_group = function(buffer, offset)
  local index = 0

  index = index + size_of.clearing_firm_id

  index = index + size_of.client_id

  index = index + size_of.account_number

  index = index + size_of.technical_origin

  index = index + size_of.open_close

  index = index + size_of.clearing_instruction

  index = index + size_of.free_text

  return index
end

-- Display: Clearing Dataset Group
display.clearing_dataset_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Dataset Group
dissect.clearing_dataset_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Client Id: 8 Byte Ascii String Nullable
  index, client_id = dissect.client_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = dissect.free_text(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Dataset Group
dissect.clearing_dataset_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.clearing_dataset_group then
    local length = size_of.clearing_dataset_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.clearing_dataset_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_dataset_group, range, display)
  end

  return dissect.clearing_dataset_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clearing Dataset Groups
size_of.clearing_dataset_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local clearing_dataset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_dataset_group_count * 51

  return index
end

-- Display: Clearing Dataset Groups
display.clearing_dataset_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Dataset Groups
dissect.clearing_dataset_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Clearing Dataset Group: Struct of 7 fields
  for i = 1, num_in_group do
    index = dissect.clearing_dataset_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Clearing Dataset Groups
dissect.clearing_dataset_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_dataset_groups then
    local length = size_of.clearing_dataset_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.clearing_dataset_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_dataset_groups, range, display)
  end

  return dissect.clearing_dataset_groups_fields(buffer, offset, packet, parent)
end

-- Size: Execution Instruction
size_of.execution_instruction = 1

-- Display: Execution Instruction
display.execution_instruction = function(buffer, packet, parent)
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
dissect.execution_instruction_bits = function(buffer, offset, packet, parent)

  -- Reserved 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_1, buffer(offset, 1))

  -- Conditional Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.conditional_order, buffer(offset, 1))

  -- Rfq Confirmation: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_confirmation, buffer(offset, 1))

  -- Rfq Answer: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.rfq_answer, buffer(offset, 1))

  -- Disabled Cancel On Disconnect Indicator: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.disabled_cancel_on_disconnect_indicator, buffer(offset, 1))

  -- Disclosed Quantity Randomization: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.disclosed_quantity_randomization, buffer(offset, 1))

  -- Stp Incoming Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stp_incoming_order, buffer(offset, 1))

  -- Stp Resting Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stp_resting_order, buffer(offset, 1))
end

-- Dissect: Execution Instruction
dissect.execution_instruction = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.execution_instruction(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.execution_instruction, range, display)

  if show.execution_instruction then
    dissect.execution_instruction_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
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

  index = index + size_of.mi_fi_d_shortcodes_groups(buffer, offset + index)

  index = index + size_of.clearing_dataset_groups(buffer, offset + index)

  index = index + size_of.quotes_rep_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lp_role = dissect.lp_role(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Rfe Answer: 1 Byte Unsigned Fixed Width Integer
  index, rfe_answer = dissect.rfe_answer(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 8 fields
  index, execution_instruction = dissect.execution_instruction(buffer, index, packet, parent)

  -- Mi Fi D Shortcodes Groups: Struct of 2 fields
  index, mi_fi_d_shortcodes_groups = dissect.mi_fi_d_shortcodes_groups(buffer, index, packet, parent)

  -- Clearing Dataset Groups: Struct of 2 fields
  index, clearing_dataset_groups = dissect.clearing_dataset_groups(buffer, index, packet, parent)

  -- Quotes Rep Groups: Struct of 2 fields
  index, quotes_rep_groups = dissect.quotes_rep_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Message
dissect.quotes_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_message then
    local length = size_of.quotes_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.quotes_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.quotes_message, range, display)
  end

  return dissect.quotes_message_fields(buffer, offset, packet, parent)
end

-- Size: Breached Collar Price
size_of.breached_collar_price = 8

-- Display: Breached Collar Price
display.breached_collar_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Breached Collar Price: No Value"
  end

  return "Breached Collar Price: "..value
end

-- Dissect: Breached Collar Price
dissect.breached_collar_price = function(buffer, offset, packet, parent)
  local length = size_of.breached_collar_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.breached_collar_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.breached_collar_price, range, value, display)

  return offset + length, value
end

-- Size: Collar Rej Type
size_of.collar_rej_type = 1

-- Display: Collar Rej Type
display.collar_rej_type = function(value)
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
dissect.collar_rej_type = function(buffer, offset, packet, parent)
  local length = size_of.collar_rej_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.collar_rej_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_rej_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Collar Fields Group
size_of.collar_fields_group = function(buffer, offset)
  local index = 0

  index = index + size_of.collar_rej_type

  index = index + size_of.breached_collar_price

  return index
end

-- Display: Collar Fields Group
display.collar_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Collar Fields Group
dissect.collar_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Collar Rej Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, collar_rej_type = dissect.collar_rej_type(buffer, index, packet, parent)

  -- Breached Collar Price: 8 Byte Signed Fixed Width Integer Nullable
  index, breached_collar_price = dissect.breached_collar_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Fields Group
dissect.collar_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.collar_fields_group then
    local length = size_of.collar_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.collar_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_fields_group, range, display)
  end

  return dissect.collar_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Collar Fields Groups
size_of.collar_fields_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local collar_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + collar_fields_group_count * 9

  return index
end

-- Display: Collar Fields Groups
display.collar_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Collar Fields Groups
dissect.collar_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Collar Fields Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.collar_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Collar Fields Groups
dissect.collar_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.collar_fields_groups then
    local length = size_of.collar_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.collar_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.collar_fields_groups, range, display)
  end

  return dissect.collar_fields_groups_fields(buffer, offset, packet, parent)
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

  index = index + size_of.collar_fields_groups(buffer, offset + index)

  index = index + size_of.mi_fi_d_fields_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = dissect.rejected_message(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = dissect.error_code(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message_id = dissect.rejected_message_id(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Collar Fields Groups: Struct of 2 fields
  index, collar_fields_groups = dissect.collar_fields_groups(buffer, index, packet, parent)

  -- Mi Fi D Fields Groups: Struct of 2 fields
  index, mi_fi_d_fields_groups = dissect.mi_fi_d_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
dissect.reject_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.reject_message then
    local length = size_of.reject_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.reject_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reject_message, range, display)
  end

  return dissect.reject_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Additional Infos Group
size_of.additional_infos_group = function(buffer, offset)
  local index = 0

  index = index + size_of.long_client_id

  return index
end

-- Display: Additional Infos Group
display.additional_infos_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Additional Infos Group
dissect.additional_infos_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = dissect.long_client_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Additional Infos Group
dissect.additional_infos_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.additional_infos_group then
    local length = size_of.additional_infos_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.additional_infos_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.additional_infos_group, range, display)
  end

  return dissect.additional_infos_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Additional Infos Groups
size_of.additional_infos_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local additional_infos_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + additional_infos_group_count * 16

  return index
end

-- Display: Additional Infos Groups
display.additional_infos_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Additional Infos Groups
dissect.additional_infos_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Additional Infos Group: Struct of 1 fields
  for i = 1, num_in_group do
    index = dissect.additional_infos_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Additional Infos Groups
dissect.additional_infos_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.additional_infos_groups then
    local length = size_of.additional_infos_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.additional_infos_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.additional_infos_groups, range, display)
  end

  return dissect.additional_infos_groups_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clearing Fields Group
size_of.clearing_fields_group = function(buffer, offset)
  local index = 0

  index = index + size_of.clearing_firm_id

  index = index + size_of.client_id

  index = index + size_of.account_number

  index = index + size_of.technical_origin

  index = index + size_of.open_close

  index = index + size_of.clearing_instruction

  index = index + size_of.account_type_cross

  return index
end

-- Display: Clearing Fields Group
display.clearing_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Fields Group
dissect.clearing_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = dissect.clearing_firm_id(buffer, index, packet, parent)

  -- Client Id: 8 Byte Ascii String Nullable
  index, client_id = dissect.client_id(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = dissect.account_number(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = dissect.technical_origin(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = dissect.open_close(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = dissect.clearing_instruction(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = dissect.account_type_cross(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Fields Group
dissect.clearing_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.clearing_fields_group then
    local length = size_of.clearing_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.clearing_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_fields_group, range, display)
  end

  return dissect.clearing_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Clearing Fields Groups
size_of.clearing_fields_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local clearing_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_fields_group_count * 34

  return index
end

-- Display: Clearing Fields Groups
display.clearing_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Clearing Fields Groups
dissect.clearing_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Clearing Fields Group: Struct of 7 fields
  for i = 1, num_in_group do
    index = dissect.clearing_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Clearing Fields Groups
dissect.clearing_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_fields_groups then
    local length = size_of.clearing_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.clearing_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.clearing_fields_groups, range, display)
  end

  return dissect.clearing_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Stop Triggered Time In Force
size_of.stop_triggered_time_in_force = 1

-- Display: Stop Triggered Time In Force
display.stop_triggered_time_in_force = function(value)
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
dissect.stop_triggered_time_in_force = function(buffer, offset, packet, parent)
  local length = size_of.stop_triggered_time_in_force
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.stop_triggered_time_in_force(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stop_triggered_time_in_force, range, value, display)

  return offset + length, value
end

-- Size: Undisclosed Iceberg Type
size_of.undisclosed_iceberg_type = 1

-- Display: Undisclosed Iceberg Type
display.undisclosed_iceberg_type = function(value)
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
dissect.undisclosed_iceberg_type = function(buffer, offset, packet, parent)
  local length = size_of.undisclosed_iceberg_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.undisclosed_iceberg_type(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.undisclosed_iceberg_type, range, value, display)

  return offset + length, value
end

-- Size: Trading Session
size_of.trading_session = 1

-- Display: Trading Session
display.trading_session = function(buffer, packet, parent)
  local display = ""

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
dissect.trading_session_bits = function(buffer, offset, packet, parent)

  -- Reserved 4: 4 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_4, buffer(offset, 1))

  -- Session 3: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.session_3, buffer(offset, 1))

  -- Session 2: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.session_2, buffer(offset, 1))

  -- Session 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.session_1, buffer(offset, 1))

  -- Reserved 1: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.reserved_1, buffer(offset, 1))
end

-- Dissect: Trading Session
dissect.trading_session = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.trading_session(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trading_session, range, display)

  if show.trading_session then
    dissect.trading_session_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Peg Offset
size_of.peg_offset = 1

-- Display: Peg Offset
display.peg_offset = function(value)
  -- Check if field has value
  if value == 128 then
    return "Peg Offset: No Value"
  end

  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
dissect.peg_offset = function(buffer, offset, packet, parent)
  local length = size_of.peg_offset
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = display.peg_offset(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Size: Order Expiration Date
size_of.order_expiration_date = 2

-- Display: Order Expiration Date
display.order_expiration_date = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Order Expiration Date: No Value"
  end

  return "Order Expiration Date: "..value
end

-- Dissect: Order Expiration Date
dissect.order_expiration_date = function(buffer, offset, packet, parent)
  local length = size_of.order_expiration_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_expiration_date(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_expiration_date, range, value, display)

  return offset + length, value
end

-- Size: Order Expiration Time
size_of.order_expiration_time = 4

-- Display: Order Expiration Time
display.order_expiration_time = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Expiration Time: No Value"
  end

  return "Order Expiration Time: "..value
end

-- Dissect: Order Expiration Time
dissect.order_expiration_time = function(buffer, offset, packet, parent)
  local length = size_of.order_expiration_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.order_expiration_time(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.order_expiration_time, range, value, display)

  return offset + length, value
end

-- Size: Disclosed Qty
size_of.disclosed_qty = 8

-- Display: Disclosed Qty
display.disclosed_qty = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Disclosed Qty: No Value"
  end

  return "Disclosed Qty: "..value
end

-- Dissect: Disclosed Qty
dissect.disclosed_qty = function(buffer, offset, packet, parent)
  local length = size_of.disclosed_qty
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.disclosed_qty(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.disclosed_qty, range, value, display)

  return offset + length, value
end

-- Size: Undisclosed Price
size_of.undisclosed_price = 8

-- Display: Undisclosed Price
display.undisclosed_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Undisclosed Price: No Value"
  end

  return "Undisclosed Price: "..value
end

-- Dissect: Undisclosed Price
dissect.undisclosed_price = function(buffer, offset, packet, parent)
  local length = size_of.undisclosed_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.undisclosed_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.undisclosed_price, range, value, display)

  return offset + length, value
end

-- Size: Stop Px
size_of.stop_px = 8

-- Display: Stop Px
display.stop_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Dissect: Stop Px
dissect.stop_px = function(buffer, offset, packet, parent)
  local length = size_of.stop_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.stop_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Optional Fields Group
size_of.optional_fields_group = function(buffer, offset)
  local index = 0

  index = index + size_of.stop_px

  index = index + size_of.undisclosed_price

  index = index + size_of.disclosed_qty

  index = index + size_of.min_order_qty

  index = index + size_of.quote_req_id

  index = index + size_of.order_expiration_time

  index = index + size_of.order_expiration_date

  index = index + size_of.peg_offset

  index = index + size_of.trading_session

  index = index + size_of.undisclosed_iceberg_type

  index = index + size_of.stop_triggered_time_in_force

  return index
end

-- Display: Optional Fields Group
display.optional_fields_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Group
dissect.optional_fields_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = dissect.stop_px(buffer, index, packet, parent)

  -- Undisclosed Price: 8 Byte Signed Fixed Width Integer Nullable
  index, undisclosed_price = dissect.undisclosed_price(buffer, index, packet, parent)

  -- Disclosed Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, disclosed_qty = dissect.disclosed_qty(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, min_order_qty = dissect.min_order_qty(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id = dissect.quote_req_id(buffer, index, packet, parent)

  -- Order Expiration Time: 4 Byte Unsigned Fixed Width Integer Nullable
  index, order_expiration_time = dissect.order_expiration_time(buffer, index, packet, parent)

  -- Order Expiration Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, order_expiration_date = dissect.order_expiration_date(buffer, index, packet, parent)

  -- Peg Offset: 1 Byte Signed Fixed Width Integer Nullable
  index, peg_offset = dissect.peg_offset(buffer, index, packet, parent)

  -- Trading Session: Struct of 5 fields
  index, trading_session = dissect.trading_session(buffer, index, packet, parent)

  -- Undisclosed Iceberg Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, undisclosed_iceberg_type = dissect.undisclosed_iceberg_type(buffer, index, packet, parent)

  -- Stop Triggered Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, stop_triggered_time_in_force = dissect.stop_triggered_time_in_force(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Group
dissect.optional_fields_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.optional_fields_group then
    local length = size_of.optional_fields_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.optional_fields_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_group, range, display)
  end

  return dissect.optional_fields_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Optional Fields Groups
size_of.optional_fields_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local optional_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_group_count * 50

  return index
end

-- Display: Optional Fields Groups
display.optional_fields_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Groups
dissect.optional_fields_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Optional Fields Group: Struct of 11 fields
  for i = 1, num_in_group do
    index = dissect.optional_fields_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Optional Fields Groups
dissect.optional_fields_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_groups then
    local length = size_of.optional_fields_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.optional_fields_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_groups, range, display)
  end

  return dissect.optional_fields_groups_fields(buffer, offset, packet, parent)
end

-- Size: Stpid
size_of.stpid = 2

-- Display: Stpid
display.stpid = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stpid: No Value"
  end

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

  index = index + size_of.free_text_section_groups(buffer, offset + index)

  index = index + size_of.optional_fields_groups(buffer, offset + index)

  index = index + size_of.clearing_fields_groups(buffer, offset + index)

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + size_of.not_used_group_2_groups(buffer, offset + index)

  index = index + size_of.additional_infos_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = dissect.client_identification_shortcode(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lp_role = dissect.lp_role(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 8 fields
  index, execution_instruction = dissect.execution_instruction(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Stpid: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stpid = dissect.stpid(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = dissect.free_text_section_groups(buffer, index, packet, parent)

  -- Optional Fields Groups: Struct of 2 fields
  index, optional_fields_groups = dissect.optional_fields_groups(buffer, index, packet, parent)

  -- Clearing Fields Groups: Struct of 2 fields
  index, clearing_fields_groups = dissect.clearing_fields_groups(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = dissect.not_used_group_2_groups(buffer, index, packet, parent)

  -- Additional Infos Groups: Struct of 2 fields
  index, additional_infos_groups = dissect.additional_infos_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Replace Message
dissect.cancel_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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

  return "Kill Reason: Unknown("..value..")"
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

  index = index + size_of.mi_fi_d_fields_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Kill Reason: 2 Byte Unsigned Fixed Width Integer Enum with 26 values
  index, kill_reason = dissect.kill_reason(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Mi Fi D Fields Groups: Struct of 2 fields
  index, mi_fi_d_fields_groups = dissect.mi_fi_d_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Kill Message
dissect.kill_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.kill_message then
    local length = size_of.kill_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.kill_message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.kill_message, range, display)
  end

  return dissect.kill_message_fields(buffer, offset, packet, parent)
end

-- Size: Evaluated Price
size_of.evaluated_price = 8

-- Display: Evaluated Price
display.evaluated_price = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Evaluated Price: No Value"
  end

  return "Evaluated Price: "..value
end

-- Dissect: Evaluated Price
dissect.evaluated_price = function(buffer, offset, packet, parent)
  local length = size_of.evaluated_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.evaluated_price(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.evaluated_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Optional Fields Derivatives Group
size_of.optional_fields_derivatives_group = function(buffer, offset)
  local index = 0

  index = index + size_of.evaluated_price

  index = index + size_of.message_price_notation

  return index
end

-- Display: Optional Fields Derivatives Group
display.optional_fields_derivatives_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Derivatives Group
dissect.optional_fields_derivatives_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Evaluated Price: 8 Byte Signed Fixed Width Integer Nullable
  index, evaluated_price = dissect.evaluated_price(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = dissect.message_price_notation(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Derivatives Group
dissect.optional_fields_derivatives_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.optional_fields_derivatives_group then
    local length = size_of.optional_fields_derivatives_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.optional_fields_derivatives_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_derivatives_group, range, display)
  end

  return dissect.optional_fields_derivatives_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Optional Fields Derivatives Groups
size_of.optional_fields_derivatives_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local optional_fields_derivatives_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_derivatives_group_count * 9

  return index
end

-- Display: Optional Fields Derivatives Groups
display.optional_fields_derivatives_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Derivatives Groups
dissect.optional_fields_derivatives_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Optional Fields Derivatives Group: Struct of 2 fields
  for i = 1, num_in_group do
    index = dissect.optional_fields_derivatives_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Optional Fields Derivatives Groups
dissect.optional_fields_derivatives_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_derivatives_groups then
    local length = size_of.optional_fields_derivatives_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.optional_fields_derivatives_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_derivatives_groups, range, display)
  end

  return dissect.optional_fields_derivatives_groups_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Instrument Id
size_of.underlying_instrument_id = 4

-- Display: Underlying Instrument Id
display.underlying_instrument_id = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Instrument Id: No Value"
  end

  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
dissect.underlying_instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.underlying_instrument_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.underlying_instrument_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Package Id
size_of.package_id = 12

-- Display: Package Id
display.package_id = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Package Id: No Value"
  end

  return "Package Id: "..value
end

-- Dissect: Package Id
dissect.package_id = function(buffer, offset, packet, parent)
  local length = size_of.package_id
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

  local display = display.package_id(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.package_id, range, value, display)

  return offset + length, value
end

-- Size: Other Leg Last Px
size_of.other_leg_last_px = 8

-- Display: Other Leg Last Px
display.other_leg_last_px = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Other Leg Last Px: No Value"
  end

  return "Other Leg Last Px: "..value
end

-- Dissect: Other Leg Last Px
dissect.other_leg_last_px = function(buffer, offset, packet, parent)
  local length = size_of.other_leg_last_px
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.other_leg_last_px(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.other_leg_last_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Optional Fields Fill Group
size_of.optional_fields_fill_group = function(buffer, offset)
  local index = 0

  index = index + size_of.counterpart_firm_id

  index = index + size_of.other_leg_last_px

  index = index + size_of.package_id

  index = index + size_of.underlying_instrument_id

  return index
end

-- Display: Optional Fields Fill Group
display.optional_fields_fill_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Fill Group
dissect.optional_fields_fill_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Counterpart Firm Id: 8 Byte Ascii String Nullable
  index, counterpart_firm_id = dissect.counterpart_firm_id(buffer, index, packet, parent)

  -- Other Leg Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, other_leg_last_px = dissect.other_leg_last_px(buffer, index, packet, parent)

  -- Package Id: 12 Byte Ascii String Nullable
  index, package_id = dissect.package_id(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_instrument_id = dissect.underlying_instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Fill Group
dissect.optional_fields_fill_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.optional_fields_fill_group then
    local length = size_of.optional_fields_fill_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.optional_fields_fill_group(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_fill_group, range, display)
  end

  return dissect.optional_fields_fill_group_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Optional Fields Fill Groups
size_of.optional_fields_fill_groups = function(buffer, offset)
  local index = 0

  index = index + size_of.group_size_encoding(buffer, offset + index)

  -- Calculate field size from count
  local optional_fields_fill_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_fill_group_count * 32

  return index
end

-- Display: Optional Fields Fill Groups
display.optional_fields_fill_groups = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Optional Fields Fill Groups
dissect.optional_fields_fill_groups_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = dissect.group_size_encoding(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Optional Fields Fill Group: Struct of 4 fields
  for i = 1, num_in_group do
    index = dissect.optional_fields_fill_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Optional Fields Fill Groups
dissect.optional_fields_fill_groups = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_fill_groups then
    local length = size_of.optional_fields_fill_groups(buffer, offset)
    local range = buffer(offset, length)
    local display = display.optional_fields_fill_groups(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.optional_fields_fill_groups, range, display)
  end

  return dissect.optional_fields_fill_groups_fields(buffer, offset, packet, parent)
end

-- Size: Execution Phase
size_of.execution_phase = 1

-- Display: Execution Phase
display.execution_phase = function(value)
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
display.trade_qualifier = function(buffer, packet, parent)
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
dissect.trade_qualifier_bits = function(buffer, offset, packet, parent)

  -- Deferred Publication: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.deferred_publication, buffer(offset, 1))

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.nav_trade_expressed_in_price_currency, buffer(offset, 1))

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.nav_trade_expressed_in_bps, buffer(offset, 1))

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_creation_by_market_operations, buffer(offset, 1))

  -- Aggressive Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.aggressive_order, buffer(offset, 1))

  -- Passive Order: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.passive_order, buffer(offset, 1))

  -- First Trade Price: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.first_trade_price, buffer(offset, 1))

  -- Uncrossing Trade: 1 Bit
  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.uncrossing_trade, buffer(offset, 1))
end

-- Dissect: Trade Qualifier
dissect.trade_qualifier = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.trade_qualifier(range, packet, parent)
  local element = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.trade_qualifier, range, display)

  if show.trade_qualifier then
    dissect.trade_qualifier_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Trade Type
size_of.trade_type = 1

-- Display: Trade Type
display.trade_type = function(value)
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
  if value == 42 then
    return "Trade Type: Largein Scale Tradeinbasispoints (42)"
  end
  if value == 43 then
    return "Trade Type: Largein Scale Package Tradeinbasispoints (43)"
  end
  if value == 44 then
    return "Trade Type: Strategy Leg Largein Scale Tradeinbasispoints (44)"
  end
  if value == 41 then
    return "Trade Type: Largein Scale Trade (41)"
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

  index = index + size_of.optional_fields_fill_groups(buffer, offset + index)

  index = index + size_of.strategy_fields_groups(buffer, offset + index)

  index = index + size_of.mi_fi_d_fields_groups(buffer, offset + index)

  index = index + size_of.optional_fields_derivatives_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Trade Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time = dissect.trade_time(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 42 values
  index, trade_type = dissect.trade_type(buffer, index, packet, parent)

  -- Trade Qualifier: Struct of 8 fields
  index, trade_qualifier = dissect.trade_qualifier(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Last Traded Px: 8 Byte Signed Fixed Width Integer
  index, last_traded_px = dissect.last_traded_px(buffer, index, packet, parent)

  -- Last Shares: 8 Byte Unsigned Fixed Width Integer
  index, last_shares = dissect.last_shares(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = dissect.leaves_qty(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, execution_id = dissect.execution_id(buffer, index, packet, parent)

  -- Execution Phase: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, execution_phase = dissect.execution_phase(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = dissect.lis_transaction_id(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = dissect.escb_membership(buffer, index, packet, parent)

  -- Optional Fields Fill Groups: Struct of 2 fields
  index, optional_fields_fill_groups = dissect.optional_fields_fill_groups(buffer, index, packet, parent)

  -- Strategy Fields Groups: Struct of 2 fields
  index, strategy_fields_groups = dissect.strategy_fields_groups(buffer, index, packet, parent)

  -- Mi Fi D Fields Groups: Struct of 2 fields
  index, mi_fi_d_fields_groups = dissect.mi_fi_d_fields_groups(buffer, index, packet, parent)

  -- Optional Fields Derivatives Groups: Struct of 2 fields
  index, optional_fields_derivatives_groups = dissect.optional_fields_derivatives_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Fill Message
dissect.fill_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Priority: No Value"
  end

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

  return "Ack Type: Unknown("..value..")"
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

  index = index + size_of.mi_fi_d_fields_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Oegin From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_member = dissect.oegin_from_member(buffer, index, packet, parent)

  -- Oegout Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_time_to_me = dissect.oegout_time_to_me(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in = dissect.book_in(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time = dissect.book_out_time(buffer, index, packet, parent)

  -- Oegin From Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegin_from_me = dissect.oegin_from_me(buffer, index, packet, parent)

  -- Oegout To Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oegout_to_member = dissect.oegout_to_member(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = dissect.orig_client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 19 values
  index, ack_type = dissect.ack_type(buffer, index, packet, parent)

  -- Ack Phase: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, ack_phase = dissect.ack_phase(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_priority = dissect.order_priority(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = dissect.ack_qualifiers(buffer, index, packet, parent)

  -- Mi Fi D Fields Groups: Struct of 2 fields
  index, mi_fi_d_fields_groups = dissect.mi_fi_d_fields_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: Ack Message
dissect.ack_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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

  index = index + size_of.free_text_section_groups(buffer, offset + index)

  index = index + size_of.mi_fi_d_shortcodes_groups(buffer, offset + index)

  index = index + size_of.optional_fields_groups(buffer, offset + index)

  index = index + size_of.clearing_fields_groups(buffer, offset + index)

  index = index + size_of.not_used_group_1_groups(buffer, offset + index)

  index = index + size_of.not_used_group_2_groups(buffer, offset + index)

  index = index + size_of.additional_infos_groups(buffer, offset + index)

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

  -- Firm Id: 8 Byte Ascii String Nullable
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time = dissect.sending_time(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id = dissect.client_order_id(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index = dissect.symbol_index(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm = dissect.emm(buffer, index, packet, parent)

  -- Order Side: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = dissect.order_type(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, time_in_force = dissect.time_in_force(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px = dissect.order_px(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty = dissect.order_qty(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, execution_within_firm_short_code = dissect.execution_within_firm_short_code(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity = dissect.trading_capacity(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type = dissect.account_type(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lp_role = dissect.lp_role(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 8 fields
  index, execution_instruction = dissect.execution_instruction(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = dissect.dark_execution_instruction(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 7 fields
  index, mi_fid_indicators = dissect.mi_fid_indicators(buffer, index, packet, parent)

  -- Stpid: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stpid = dissect.stpid(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = dissect.non_executing_client_id(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = dissect.free_text_section_groups(buffer, index, packet, parent)

  -- Mi Fi D Shortcodes Groups: Struct of 2 fields
  index, mi_fi_d_shortcodes_groups = dissect.mi_fi_d_shortcodes_groups(buffer, index, packet, parent)

  -- Optional Fields Groups: Struct of 2 fields
  index, optional_fields_groups = dissect.optional_fields_groups(buffer, index, packet, parent)

  -- Clearing Fields Groups: Struct of 2 fields
  index, clearing_fields_groups = dissect.clearing_fields_groups(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = dissect.not_used_group_1_groups(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = dissect.not_used_group_2_groups(buffer, index, packet, parent)

  -- Additional Infos Groups: Struct of 2 fields
  index, additional_infos_groups = dissect.additional_infos_groups(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
dissect.new_order_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
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

-- Size: Block Length uint 16
size_of.block_length_uint_16 = 2

-- Display: Block Length uint 16
display.block_length_uint_16 = function(value)
  return "Block Length uint 16: "..value
end

-- Dissect: Block Length uint 16
dissect.block_length_uint_16 = function(buffer, offset, packet, parent)
  local length = size_of.block_length_uint_16
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.block_length_uint_16(value, buffer, offset, packet, parent)

  parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.block_length_uint_16, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.block_length_uint_16

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

  -- Block Length uint 16: 2 Byte Unsigned Fixed Width Integer
  index, block_length_uint_16 = dissect.block_length_uint_16(buffer, index, packet, parent)

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

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.frame

  index = index + size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

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

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(euronext_optiq_orderentrygateway_sbe_v4_2_2.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

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
  return dissect.packet(buffer, packet, protocol)
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

  if value == 203 then
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
