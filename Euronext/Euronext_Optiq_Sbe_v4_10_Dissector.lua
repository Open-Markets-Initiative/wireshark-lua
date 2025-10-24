-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 4.10 Protocol
local omi_euronext_optiq_sbe_v4_10 = Proto("Euronext.Optiq.Sbe.v4.10.Lua", "Euronext Optiq OrderEntryGateway Sbe 4.10")

-- Protocol table
local euronext_optiq_sbe_v4_10 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 4.10 Fields
omi_euronext_optiq_sbe_v4_10.fields.account_number = ProtoField.new("Account Number", "euronext.optiq.sbe.v4.10.accountnumber", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.account_number_cross = ProtoField.new("Account Number Cross", "euronext.optiq.sbe.v4.10.accountnumbercross", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.account_type = ProtoField.new("Account Type", "euronext.optiq.sbe.v4.10.accounttype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.account_type_cross = ProtoField.new("Account Type Cross", "euronext.optiq.sbe.v4.10.accounttypecross", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.account_type_optional = ProtoField.new("Account Type Optional", "euronext.optiq.sbe.v4.10.accounttypeoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.ack_phase = ProtoField.new("Ack Phase", "euronext.optiq.sbe.v4.10.ackphase", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.ack_qualifiers = ProtoField.new("Ack Qualifiers", "euronext.optiq.sbe.v4.10.ackqualifiers", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.ack_qualifiers_optional = ProtoField.new("Ack Qualifiers Optional", "euronext.optiq.sbe.v4.10.ackqualifiersoptional", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.ack_type = ProtoField.new("Ack Type", "euronext.optiq.sbe.v4.10.acktype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.acknowledgement = ProtoField.new("Acknowledgement", "euronext.optiq.sbe.v4.10.acknowledgement", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_sbe_v4_10.fields.action_type = ProtoField.new("Action Type", "euronext.optiq.sbe.v4.10.actiontype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.additional_infos_group = ProtoField.new("Additional Infos Group", "euronext.optiq.sbe.v4.10.additionalinfosgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.additional_infos_groups = ProtoField.new("Additional Infos Groups", "euronext.optiq.sbe.v4.10.additionalinfosgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.afq_reason = ProtoField.new("Afq Reason", "euronext.optiq.sbe.v4.10.afqreason", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.aggressive_order = ProtoField.new("Aggressive Order", "euronext.optiq.sbe.v4.10.aggressiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_sbe_v4_10.fields.bid_error_code = ProtoField.new("Bid Error Code", "euronext.optiq.sbe.v4.10.biderrorcode", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.bid_order_id = ProtoField.new("Bid Order Id", "euronext.optiq.sbe.v4.10.bidorderid", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.bid_px = ProtoField.new("Bid Px", "euronext.optiq.sbe.v4.10.bidpx", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.bid_quantity = ProtoField.new("Bid Quantity", "euronext.optiq.sbe.v4.10.bidquantity", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.bid_size = ProtoField.new("Bid Size", "euronext.optiq.sbe.v4.10.bidsize", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.sbe.v4.10.blocklength", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.block_length_short = ProtoField.new("Block Length Short", "euronext.optiq.sbe.v4.10.blocklengthshort", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.book_in = ProtoField.new("Book In", "euronext.optiq.sbe.v4.10.bookin", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.book_in_optional = ProtoField.new("Book In Optional", "euronext.optiq.sbe.v4.10.bookinoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.book_out_time = ProtoField.new("Book Out Time", "euronext.optiq.sbe.v4.10.bookouttime", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.book_out_time_optional = ProtoField.new("Book Out Time Optional", "euronext.optiq.sbe.v4.10.bookouttimeoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.breach_action = ProtoField.new("Breach Action", "euronext.optiq.sbe.v4.10.breachaction", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.breach_status = ProtoField.new("Breach Status", "euronext.optiq.sbe.v4.10.breachstatus", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.breached_collar_price = ProtoField.new("Breached Collar Price", "euronext.optiq.sbe.v4.10.breachedcollarprice", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.buy_revision_flag = ProtoField.new("Buy Revision Flag", "euronext.optiq.sbe.v4.10.buyrevisionflag", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.buy_side = ProtoField.new("Buy Side", "euronext.optiq.sbe.v4.10.buyside", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_euronext_optiq_sbe_v4_10.fields.bypass_indicator = ProtoField.new("Bypass Indicator", "euronext.optiq.sbe.v4.10.bypassindicator", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.ccpid = ProtoField.new("Ccpid", "euronext.optiq.sbe.v4.10.ccpid", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.centralisation_date = ProtoField.new("Centralisation Date", "euronext.optiq.sbe.v4.10.centralisationdate", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.cl_msg_seq_num = ProtoField.new("Cl Msg Seq Num", "euronext.optiq.sbe.v4.10.clmsgseqnum", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.clearing_dataset_group = ProtoField.new("Clearing Dataset Group", "euronext.optiq.sbe.v4.10.clearingdatasetgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.clearing_dataset_groups = ProtoField.new("Clearing Dataset Groups", "euronext.optiq.sbe.v4.10.clearingdatasetgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_group = ProtoField.new("Clearing Fields Group", "euronext.optiq.sbe.v4.10.clearingfieldsgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_groups = ProtoField.new("Clearing Fields Groups", "euronext.optiq.sbe.v4.10.clearingfieldsgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_x_group = ProtoField.new("Clearing Fields X Group", "euronext.optiq.sbe.v4.10.clearingfieldsxgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_x_groups = ProtoField.new("Clearing Fields X Groups", "euronext.optiq.sbe.v4.10.clearingfieldsxgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.clearing_firm_id = ProtoField.new("Clearing Firm Id", "euronext.optiq.sbe.v4.10.clearingfirmid", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "euronext.optiq.sbe.v4.10.clearinginstruction", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.client_id = ProtoField.new("Client Id", "euronext.optiq.sbe.v4.10.clientid", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.client_identification_short_code_cross = ProtoField.new("Client Identification Short Code Cross", "euronext.optiq.sbe.v4.10.clientidentificationshortcodecross", ftypes.INT32)
omi_euronext_optiq_sbe_v4_10.fields.client_identification_shortcode = ProtoField.new("Client Identification Shortcode", "euronext.optiq.sbe.v4.10.clientidentificationshortcode", ftypes.INT32)
omi_euronext_optiq_sbe_v4_10.fields.client_order_id = ProtoField.new("Client Order Id", "euronext.optiq.sbe.v4.10.clientorderid", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.client_order_id_optional = ProtoField.new("Client Order Id Optional", "euronext.optiq.sbe.v4.10.clientorderidoptional", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.collar_fields_group = ProtoField.new("Collar Fields Group", "euronext.optiq.sbe.v4.10.collarfieldsgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.collar_fields_groups = ProtoField.new("Collar Fields Groups", "euronext.optiq.sbe.v4.10.collarfieldsgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.collar_rej_type = ProtoField.new("Collar Rej Type", "euronext.optiq.sbe.v4.10.collarrejtype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.commodity_derivative_indicator = ProtoField.new("Commodity Derivative Indicator", "euronext.optiq.sbe.v4.10.commodityderivativeindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_sbe_v4_10.fields.conditional_order = ProtoField.new("Conditional Order", "euronext.optiq.sbe.v4.10.conditionalorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_euronext_optiq_sbe_v4_10.fields.contract_id = ProtoField.new("Contract Id", "euronext.optiq.sbe.v4.10.contractid", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.sbe.v4.10.contractsymbolindex", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.counterpart_firm_id = ProtoField.new("Counterpart Firm Id", "euronext.optiq.sbe.v4.10.counterpartfirmid", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.current_mmp_position = ProtoField.new("Current Mmp Position", "euronext.optiq.sbe.v4.10.currentmmpposition", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.dark_execution_instruction = ProtoField.new("Dark Execution Instruction", "euronext.optiq.sbe.v4.10.darkexecutioninstruction", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.dark_execution_instruction_optional = ProtoField.new("Dark Execution Instruction Optional", "euronext.optiq.sbe.v4.10.darkexecutioninstructionoptional", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.dark_indicator = ProtoField.new("Dark Indicator", "euronext.optiq.sbe.v4.10.darkindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_sbe_v4_10.fields.dea_indicator = ProtoField.new("Dea Indicator", "euronext.optiq.sbe.v4.10.deaindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_sbe_v4_10.fields.declaration_id = ProtoField.new("Declaration Id", "euronext.optiq.sbe.v4.10.declarationid", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.declaration_id_optional = ProtoField.new("Declaration Id Optional", "euronext.optiq.sbe.v4.10.declarationidoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.declaration_status = ProtoField.new("Declaration Status", "euronext.optiq.sbe.v4.10.declarationstatus", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.deferral_indicator = ProtoField.new("Deferral Indicator", "euronext.optiq.sbe.v4.10.deferralindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_sbe_v4_10.fields.deferred_publication = ProtoField.new("Deferred Publication", "euronext.optiq.sbe.v4.10.deferredpublication", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_euronext_optiq_sbe_v4_10.fields.deferred_trade_indicator = ProtoField.new("Deferred Trade Indicator", "euronext.optiq.sbe.v4.10.deferredtradeindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_sbe_v4_10.fields.disabled_cancel_on_disconnect_indicator = ProtoField.new("Disabled Cancel On Disconnect Indicator", "euronext.optiq.sbe.v4.10.disabledcancelondisconnectindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_sbe_v4_10.fields.disclosed_qty = ProtoField.new("Disclosed Qty", "euronext.optiq.sbe.v4.10.disclosedqty", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.disclosed_quantity_randomization = ProtoField.new("Disclosed Quantity Randomization", "euronext.optiq.sbe.v4.10.disclosedquantityrandomization", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_sbe_v4_10.fields.displayed_order_interaction = ProtoField.new("Displayed Order Interaction", "euronext.optiq.sbe.v4.10.displayedorderinteraction", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_sbe_v4_10.fields.emm = ProtoField.new("Emm", "euronext.optiq.sbe.v4.10.emm", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.emm_optional = ProtoField.new("Emm Optional", "euronext.optiq.sbe.v4.10.emmoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.end_client = ProtoField.new("End Client", "euronext.optiq.sbe.v4.10.endclient", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.sbe.v4.10.endtimevwap", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.entering_counterparty = ProtoField.new("Entering Counterparty", "euronext.optiq.sbe.v4.10.enteringcounterparty", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.error_code = ProtoField.new("Error Code", "euronext.optiq.sbe.v4.10.errorcode", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.error_code_optional = ProtoField.new("Error Code Optional", "euronext.optiq.sbe.v4.10.errorcodeoptional", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.escb_membership = ProtoField.new("Escb Membership", "euronext.optiq.sbe.v4.10.escbmembership", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.euronext_data_driven = ProtoField.new("Euronext Data Driven", "euronext.optiq.sbe.v4.10.euronextdatadriven", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_euronext_optiq_sbe_v4_10.fields.evaluated_price = ProtoField.new("Evaluated Price", "euronext.optiq.sbe.v4.10.evaluatedprice", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.exchange_id = ProtoField.new("Exchange Id", "euronext.optiq.sbe.v4.10.exchangeid", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.exchange_ioi_id_optional = ProtoField.new("Exchange Ioi Id Optional", "euronext.optiq.sbe.v4.10.exchangeioiidoptional", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.executed_upon_entry_flag = ProtoField.new("Executed Upon Entry Flag", "euronext.optiq.sbe.v4.10.executeduponentryflag", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_euronext_optiq_sbe_v4_10.fields.execution_algo_indicator = ProtoField.new("Execution Algo Indicator", "euronext.optiq.sbe.v4.10.executionalgoindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_sbe_v4_10.fields.execution_id = ProtoField.new("Execution Id", "euronext.optiq.sbe.v4.10.executionid", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.execution_id_optional = ProtoField.new("Execution Id Optional", "euronext.optiq.sbe.v4.10.executionidoptional", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.execution_instruction = ProtoField.new("Execution Instruction", "euronext.optiq.sbe.v4.10.executioninstruction", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.execution_instruction_optional = ProtoField.new("Execution Instruction Optional", "euronext.optiq.sbe.v4.10.executioninstructionoptional", ftypes.INT32)
omi_euronext_optiq_sbe_v4_10.fields.execution_phase = ProtoField.new("Execution Phase", "euronext.optiq.sbe.v4.10.executionphase", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.execution_upon_entry_flag_enabled = ProtoField.new("Execution Upon Entry Flag Enabled", "euronext.optiq.sbe.v4.10.executionuponentryflagenabled", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_euronext_optiq_sbe_v4_10.fields.execution_within_firm_short_code = ProtoField.new("Execution Within Firm Short Code", "euronext.optiq.sbe.v4.10.executionwithinfirmshortcode", ftypes.INT32)
omi_euronext_optiq_sbe_v4_10.fields.family_id = ProtoField.new("Family Id", "euronext.optiq.sbe.v4.10.familyid", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.field_actively_used = ProtoField.new("Field Actively Used", "euronext.optiq.sbe.v4.10.fieldactivelyused", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_euronext_optiq_sbe_v4_10.fields.final_execution_id = ProtoField.new("Final Execution Id", "euronext.optiq.sbe.v4.10.finalexecutionid", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.final_symbol_index = ProtoField.new("Final Symbol Index", "euronext.optiq.sbe.v4.10.finalsymbolindex", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.firm_id = ProtoField.new("Firm Id", "euronext.optiq.sbe.v4.10.firmid", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.firm_id_optional = ProtoField.new("Firm Id Optional", "euronext.optiq.sbe.v4.10.firmidoptional", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.firm_id_publication = ProtoField.new("Firm Id Publication", "euronext.optiq.sbe.v4.10.firmidpublication", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.first_trade_price = ProtoField.new("First Trade Price", "euronext.optiq.sbe.v4.10.firsttradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_sbe_v4_10.fields.frame = ProtoField.new("Frame", "euronext.optiq.sbe.v4.10.frame", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.free_text = ProtoField.new("Free Text", "euronext.optiq.sbe.v4.10.freetext", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.free_text_cross = ProtoField.new("Free Text Cross", "euronext.optiq.sbe.v4.10.freetextcross", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.free_text_section_group = ProtoField.new("Free Text Section Group", "euronext.optiq.sbe.v4.10.freetextsectiongroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.free_text_section_groups = ProtoField.new("Free Text Section Groups", "euronext.optiq.sbe.v4.10.freetextsectiongroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.frmaramplp = ProtoField.new("Frmaramplp", "euronext.optiq.sbe.v4.10.frmaramplp", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_sbe_v4_10.fields.gross_trade_amount = ProtoField.new("Gross Trade Amount", "euronext.optiq.sbe.v4.10.grosstradeamount", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "euronext.optiq.sbe.v4.10.groupsizeencoding", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.guarantee_flag = ProtoField.new("Guarantee Flag", "euronext.optiq.sbe.v4.10.guaranteeflag", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.guarantee_flag_optional = ProtoField.new("Guarantee Flag Optional", "euronext.optiq.sbe.v4.10.guaranteeflagoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.holdings = ProtoField.new("Holdings", "euronext.optiq.sbe.v4.10.holdings", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_euronext_optiq_sbe_v4_10.fields.ilqd = ProtoField.new("Ilqd", "euronext.optiq.sbe.v4.10.ilqd", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_euronext_optiq_sbe_v4_10.fields.input_price_type = ProtoField.new("Input Price Type", "euronext.optiq.sbe.v4.10.inputpricetype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.sbe.v4.10.instrumentgroupcode", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.instrument_synchronization_section_group = ProtoField.new("Instrument Synchronization Section Group", "euronext.optiq.sbe.v4.10.instrumentsynchronizationsectiongroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.instrument_synchronization_section_groups = ProtoField.new("Instrument Synchronization Section Groups", "euronext.optiq.sbe.v4.10.instrumentsynchronizationsectiongroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.interest_lists = ProtoField.new("Interest Lists", "euronext.optiq.sbe.v4.10.interestlists", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_euronext_optiq_sbe_v4_10.fields.internal_1 = ProtoField.new("Internal 1", "euronext.optiq.sbe.v4.10.internal1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_sbe_v4_10.fields.internal_2 = ProtoField.new("Internal 2", "euronext.optiq.sbe.v4.10.internal2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_sbe_v4_10.fields.investment_algo_indicator = ProtoField.new("Investment Algo Indicator", "euronext.optiq.sbe.v4.10.investmentalgoindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_sbe_v4_10.fields.investment_decision_w_firm_short_code = ProtoField.new("Investment Decision W Firm Short Code", "euronext.optiq.sbe.v4.10.investmentdecisionwfirmshortcode", ftypes.INT32)
omi_euronext_optiq_sbe_v4_10.fields.ioi_id = ProtoField.new("Ioi Id", "euronext.optiq.sbe.v4.10.ioiid", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.ioi_id_optional = ProtoField.new("Ioi Id Optional", "euronext.optiq.sbe.v4.10.ioiidoptional", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.ioi_quality_indication = ProtoField.new("Ioi Quality Indication", "euronext.optiq.sbe.v4.10.ioiqualityindication", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.ioi_quantity = ProtoField.new("Ioi Quantity", "euronext.optiq.sbe.v4.10.ioiquantity", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.ioi_side = ProtoField.new("Ioi Side", "euronext.optiq.sbe.v4.10.ioiside", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.ioi_transaction_type = ProtoField.new("Ioi Transaction Type", "euronext.optiq.sbe.v4.10.ioitransactiontype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.ioi_type = ProtoField.new("Ioi Type", "euronext.optiq.sbe.v4.10.ioitype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.kill_reason = ProtoField.new("Kill Reason", "euronext.optiq.sbe.v4.10.killreason", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.last_book_in_time = ProtoField.new("Last Book In Time", "euronext.optiq.sbe.v4.10.lastbookintime", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.last_cl_msg_seq_num = ProtoField.new("Last Cl Msg Seq Num", "euronext.optiq.sbe.v4.10.lastclmsgseqnum", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.last_msg_seq_num = ProtoField.new("Last Msg Seq Num", "euronext.optiq.sbe.v4.10.lastmsgseqnum", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.last_msg_seq_num_optional = ProtoField.new("Last Msg Seq Num Optional", "euronext.optiq.sbe.v4.10.lastmsgseqnumoptional", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.last_shares = ProtoField.new("Last Shares", "euronext.optiq.sbe.v4.10.lastshares", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.last_traded_px = ProtoField.new("Last Traded Px", "euronext.optiq.sbe.v4.10.lasttradedpx", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.last_traded_quantity = ProtoField.new("Last Traded Quantity", "euronext.optiq.sbe.v4.10.lasttradedquantity", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.leaves_qty = ProtoField.new("Leaves Qty", "euronext.optiq.sbe.v4.10.leavesqty", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.leg_1 = ProtoField.new("Leg 1", "euronext.optiq.sbe.v4.10.leg1", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_euronext_optiq_sbe_v4_10.fields.leg_2 = ProtoField.new("Leg 2", "euronext.optiq.sbe.v4.10.leg2", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_euronext_optiq_sbe_v4_10.fields.leg_3 = ProtoField.new("Leg 3", "euronext.optiq.sbe.v4.10.leg3", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_euronext_optiq_sbe_v4_10.fields.leg_4 = ProtoField.new("Leg 4", "euronext.optiq.sbe.v4.10.leg4", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_euronext_optiq_sbe_v4_10.fields.leg_5 = ProtoField.new("Leg 5", "euronext.optiq.sbe.v4.10.leg5", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_euronext_optiq_sbe_v4_10.fields.leg_6 = ProtoField.new("Leg 6", "euronext.optiq.sbe.v4.10.leg6", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_euronext_optiq_sbe_v4_10.fields.leg_7 = ProtoField.new("Leg 7", "euronext.optiq.sbe.v4.10.leg7", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_euronext_optiq_sbe_v4_10.fields.leg_8 = ProtoField.new("Leg 8", "euronext.optiq.sbe.v4.10.leg8", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_euronext_optiq_sbe_v4_10.fields.leg_9 = ProtoField.new("Leg 9", "euronext.optiq.sbe.v4.10.leg9", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_euronext_optiq_sbe_v4_10.fields.leg_bid_order_id = ProtoField.new("Leg Bid Order Id", "euronext.optiq.sbe.v4.10.legbidorderid", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.leg_error_code = ProtoField.new("Leg Error Code", "euronext.optiq.sbe.v4.10.legerrorcode", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "euronext.optiq.sbe.v4.10.leginstrumentid", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.leg_last_px = ProtoField.new("Leg Last Px", "euronext.optiq.sbe.v4.10.leglastpx", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "euronext.optiq.sbe.v4.10.leglastqty", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.leg_last_trading_date = ProtoField.new("Leg Last Trading Date", "euronext.optiq.sbe.v4.10.leglasttradingdate", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.leg_offer_order_id = ProtoField.new("Leg Offer Order Id", "euronext.optiq.sbe.v4.10.legofferorderid", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.leg_price = ProtoField.new("Leg Price", "euronext.optiq.sbe.v4.10.legprice", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.leg_price_optional = ProtoField.new("Leg Price Optional", "euronext.optiq.sbe.v4.10.legpriceoptional", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.leg_put_or_call = ProtoField.new("Leg Put Or Call", "euronext.optiq.sbe.v4.10.legputorcall", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.leg_ratio = ProtoField.new("Leg Ratio", "euronext.optiq.sbe.v4.10.legratio", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.leg_ratio_optional = ProtoField.new("Leg Ratio Optional", "euronext.optiq.sbe.v4.10.legratiooptional", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.leg_security_type = ProtoField.new("Leg Security Type", "euronext.optiq.sbe.v4.10.legsecuritytype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.leg_side = ProtoField.new("Leg Side", "euronext.optiq.sbe.v4.10.legside", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.leg_side_optional = ProtoField.new("Leg Side Optional", "euronext.optiq.sbe.v4.10.legsideoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.leg_strike_price = ProtoField.new("Leg Strike Price", "euronext.optiq.sbe.v4.10.legstrikeprice", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.leg_symbol_index = ProtoField.new("Leg Symbol Index", "euronext.optiq.sbe.v4.10.legsymbolindex", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.lis_transaction_id = ProtoField.new("Lis Transaction Id", "euronext.optiq.sbe.v4.10.listransactionid", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.local_community_of_specialist_ams = ProtoField.new("Local Community Of Specialist Ams", "euronext.optiq.sbe.v4.10.localcommunityofspecialistams", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_euronext_optiq_sbe_v4_10.fields.local_community_of_specialist_bru = ProtoField.new("Local Community Of Specialist Bru", "euronext.optiq.sbe.v4.10.localcommunityofspecialistbru", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_euronext_optiq_sbe_v4_10.fields.local_community_of_specialist_lis = ProtoField.new("Local Community Of Specialist Lis", "euronext.optiq.sbe.v4.10.localcommunityofspecialistlis", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_euronext_optiq_sbe_v4_10.fields.local_community_of_specialist_par = ProtoField.new("Local Community Of Specialist Par", "euronext.optiq.sbe.v4.10.localcommunityofspecialistpar", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_euronext_optiq_sbe_v4_10.fields.log_out_reason_code = ProtoField.new("Log Out Reason Code", "euronext.optiq.sbe.v4.10.logoutreasoncode", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.logical_access_id = ProtoField.new("Logical Access Id", "euronext.optiq.sbe.v4.10.logicalaccessid", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.logon_reject_code = ProtoField.new("Logon Reject Code", "euronext.optiq.sbe.v4.10.logonrejectcode", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.long_client_id = ProtoField.new("Long Client Id", "euronext.optiq.sbe.v4.10.longclientid", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.lp_action_code = ProtoField.new("Lp Action Code", "euronext.optiq.sbe.v4.10.lpactioncode", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.lp_role = ProtoField.new("Lp Role", "euronext.optiq.sbe.v4.10.lprole", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.lp_role_optional = ProtoField.new("Lp Role Optional", "euronext.optiq.sbe.v4.10.lproleoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.lrgs = ProtoField.new("Lrgs", "euronext.optiq.sbe.v4.10.lrgs", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_sbe_v4_10.fields.maturity = ProtoField.new("Maturity", "euronext.optiq.sbe.v4.10.maturity", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.message = ProtoField.new("Message", "euronext.optiq.sbe.v4.10.message", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.sbe.v4.10.messageheader", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.sbe.v4.10.messagepricenotation", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.mi_cof_secondary_listing = ProtoField.new("Mi Cof Secondary Listing", "euronext.optiq.sbe.v4.10.micofsecondarylisting", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mifid_fields_group = ProtoField.new("Mifid Fields Group", "euronext.optiq.sbe.v4.10.mifidfieldsgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mifid_fields_groups = ProtoField.new("Mifid Fields Groups", "euronext.optiq.sbe.v4.10.mifidfieldsgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mifid_indicators = ProtoField.new("Mifid Indicators", "euronext.optiq.sbe.v4.10.mifidindicators", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mifid_indicators_optional = ProtoField.new("Mifid Indicators Optional", "euronext.optiq.sbe.v4.10.mifidindicatorsoptional", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mifid_short_codes_group = ProtoField.new("Mifid Short Codes Group", "euronext.optiq.sbe.v4.10.mifidshortcodesgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mifid_short_codes_groups = ProtoField.new("Mifid Short Codes Groups", "euronext.optiq.sbe.v4.10.mifidshortcodesgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.min_order_qty = ProtoField.new("Min Order Qty", "euronext.optiq.sbe.v4.10.minorderqty", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.minimum_order_quantity = ProtoField.new("Minimum Order Quantity", "euronext.optiq.sbe.v4.10.minimumorderquantity", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.minimum_quantity_type = ProtoField.new("Minimum Quantity Type", "euronext.optiq.sbe.v4.10.minimumquantitytype", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_sbe_v4_10.fields.miscellaneous_fee_amount = ProtoField.new("Miscellaneous Fee Amount", "euronext.optiq.sbe.v4.10.miscellaneousfeeamount", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.mmp_execution_type = ProtoField.new("Mmp Execution Type", "euronext.optiq.sbe.v4.10.mmpexecutiontype", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mmp_section_group = ProtoField.new("Mmp Section Group", "euronext.optiq.sbe.v4.10.mmpsectiongroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mmp_section_groups = ProtoField.new("Mmp Section Groups", "euronext.optiq.sbe.v4.10.mmpsectiongroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mmp_section2_group = ProtoField.new("Mmp Section2 Group", "euronext.optiq.sbe.v4.10.mmpsection2group", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mmp_section2_groups = ProtoField.new("Mmp Section2 Groups", "euronext.optiq.sbe.v4.10.mmpsection2groups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "euronext.optiq.sbe.v4.10.msgseqnum", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.nav_trade_expressed_in_bps = ProtoField.new("Nav Trade Expressed In Bps", "euronext.optiq.sbe.v4.10.navtradeexpressedinbps", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_sbe_v4_10.fields.nav_trade_expressed_in_price_currency = ProtoField.new("Nav Trade Expressed In Price Currency", "euronext.optiq.sbe.v4.10.navtradeexpressedinpricecurrency", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_euronext_optiq_sbe_v4_10.fields.nliq = ProtoField.new("Nliq", "euronext.optiq.sbe.v4.10.nliq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_sbe_v4_10.fields.non_executing_broker_short_code = ProtoField.new("Non Executing Broker Short Code", "euronext.optiq.sbe.v4.10.nonexecutingbrokershortcode", ftypes.INT32)
omi_euronext_optiq_sbe_v4_10.fields.non_executing_client_id = ProtoField.new("Non Executing Client Id", "euronext.optiq.sbe.v4.10.nonexecutingclientid", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.not_used_group_1_groups = ProtoField.new("Not Used Group 1 Groups", "euronext.optiq.sbe.v4.10.notusedgroup1groups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.not_used_group_2_groups = ProtoField.new("Not Used Group 2 Groups", "euronext.optiq.sbe.v4.10.notusedgroup2groups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.notification = ProtoField.new("Notification", "euronext.optiq.sbe.v4.10.notification", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_sbe_v4_10.fields.num_in_group = ProtoField.new("Num In Group", "euronext.optiq.sbe.v4.10.numingroup", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.number_of_lps = ProtoField.new("Number Of Lps", "euronext.optiq.sbe.v4.10.numberoflps", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.oe_partition_id = ProtoField.new("Oe Partition Id", "euronext.optiq.sbe.v4.10.oepartitionid", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.oe_partition_id_optional = ProtoField.new("Oe Partition Id Optional", "euronext.optiq.sbe.v4.10.oepartitionidoptional", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.oeg_in_from_me = ProtoField.new("Oeg In From Me", "euronext.optiq.sbe.v4.10.oeginfromme", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.oeg_in_from_me_optional = ProtoField.new("Oeg In From Me Optional", "euronext.optiq.sbe.v4.10.oeginfrommeoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.oeg_in_from_member = ProtoField.new("Oeg In From Member", "euronext.optiq.sbe.v4.10.oeginfrommember", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.oeg_out_time_to_me = ProtoField.new("Oeg Out Time To Me", "euronext.optiq.sbe.v4.10.oegouttimetome", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.oeg_out_to_member = ProtoField.new("Oeg Out To Member", "euronext.optiq.sbe.v4.10.oegouttomember", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.oeg_out_to_member_optional = ProtoField.new("Oeg Out To Member Optional", "euronext.optiq.sbe.v4.10.oegouttomemberoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.offer_error_code = ProtoField.new("Offer Error Code", "euronext.optiq.sbe.v4.10.offererrorcode", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.offer_order_id = ProtoField.new("Offer Order Id", "euronext.optiq.sbe.v4.10.offerorderid", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.offer_px = ProtoField.new("Offer Px", "euronext.optiq.sbe.v4.10.offerpx", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.offer_quantity = ProtoField.new("Offer Quantity", "euronext.optiq.sbe.v4.10.offerquantity", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.offer_size = ProtoField.new("Offer Size", "euronext.optiq.sbe.v4.10.offersize", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.oilq = ProtoField.new("Oilq", "euronext.optiq.sbe.v4.10.oilq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_sbe_v4_10.fields.omf = ProtoField.new("Omf", "euronext.optiq.sbe.v4.10.omf", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_euronext_optiq_sbe_v4_10.fields.open_close = ProtoField.new("Open Close", "euronext.optiq.sbe.v4.10.openclose", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.operation_type = ProtoField.new("Operation Type", "euronext.optiq.sbe.v4.10.operationtype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.sbe.v4.10.optiontype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_derivatives_group = ProtoField.new("Optional Fields Derivatives Group", "euronext.optiq.sbe.v4.10.optionalfieldsderivativesgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_derivatives_groups = ProtoField.new("Optional Fields Derivatives Groups", "euronext.optiq.sbe.v4.10.optionalfieldsderivativesgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_fill_group = ProtoField.new("Optional Fields Fill Group", "euronext.optiq.sbe.v4.10.optionalfieldsfillgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_fill_groups = ProtoField.new("Optional Fields Fill Groups", "euronext.optiq.sbe.v4.10.optionalfieldsfillgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_group = ProtoField.new("Optional Fields Group", "euronext.optiq.sbe.v4.10.optionalfieldsgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_groups = ProtoField.new("Optional Fields Groups", "euronext.optiq.sbe.v4.10.optionalfieldsgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.order_actor_type = ProtoField.new("Order Actor Type", "euronext.optiq.sbe.v4.10.orderactortype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.order_category = ProtoField.new("Order Category", "euronext.optiq.sbe.v4.10.ordercategory", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.order_expiration_date = ProtoField.new("Order Expiration Date", "euronext.optiq.sbe.v4.10.orderexpirationdate", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.order_expiration_time = ProtoField.new("Order Expiration Time", "euronext.optiq.sbe.v4.10.orderexpirationtime", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.order_id = ProtoField.new("Order Id", "euronext.optiq.sbe.v4.10.orderid", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.order_id_optional = ProtoField.new("Order Id Optional", "euronext.optiq.sbe.v4.10.orderidoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.order_origin = ProtoField.new("Order Origin", "euronext.optiq.sbe.v4.10.orderorigin", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.order_price = ProtoField.new("Order Price", "euronext.optiq.sbe.v4.10.orderprice", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.sbe.v4.10.orderpriority", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.sbe.v4.10.orderpx", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.order_px_optional = ProtoField.new("Order Px Optional", "euronext.optiq.sbe.v4.10.orderpxoptional", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.order_qty = ProtoField.new("Order Qty", "euronext.optiq.sbe.v4.10.orderqty", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "euronext.optiq.sbe.v4.10.orderqtyoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.order_quantity = ProtoField.new("Order Quantity", "euronext.optiq.sbe.v4.10.orderquantity", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.order_size_limit = ProtoField.new("Order Size Limit", "euronext.optiq.sbe.v4.10.ordersizelimit", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.sbe.v4.10.ordertype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.orig_client_order_id = ProtoField.new("Orig Client Order Id", "euronext.optiq.sbe.v4.10.origclientorderid", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.original_ioiid = ProtoField.new("Original Ioiid", "euronext.optiq.sbe.v4.10.originalioiid", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.other_leg_last_px = ProtoField.new("Other Leg Last Px", "euronext.optiq.sbe.v4.10.otherleglastpx", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.package_id = ProtoField.new("Package Id", "euronext.optiq.sbe.v4.10.packageid", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.packet = ProtoField.new("Packet", "euronext.optiq.sbe.v4.10.packet", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.parent_exec_id = ProtoField.new("Parent Exec Id", "euronext.optiq.sbe.v4.10.parentexecid", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.parent_symbol_index = ProtoField.new("Parent Symbol Index", "euronext.optiq.sbe.v4.10.parentsymbolindex", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.passive_order = ProtoField.new("Passive Order", "euronext.optiq.sbe.v4.10.passiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_sbe_v4_10.fields.payload = ProtoField.new("Payload", "euronext.optiq.sbe.v4.10.payload", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.peg_offset = ProtoField.new("Peg Offset", "euronext.optiq.sbe.v4.10.pegoffset", ftypes.INT8)
omi_euronext_optiq_sbe_v4_10.fields.potential_matching_px = ProtoField.new("Potential Matching Px", "euronext.optiq.sbe.v4.10.potentialmatchingpx", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.potential_matching_qty = ProtoField.new("Potential Matching Qty", "euronext.optiq.sbe.v4.10.potentialmatchingqty", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.pre_matching_type = ProtoField.new("Pre Matching Type", "euronext.optiq.sbe.v4.10.prematchingtype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.previous_day_indicator = ProtoField.new("Previous Day Indicator", "euronext.optiq.sbe.v4.10.previousdayindicator", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.pric = ProtoField.new("Pric", "euronext.optiq.sbe.v4.10.pric", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_sbe_v4_10.fields.price = ProtoField.new("Price", "euronext.optiq.sbe.v4.10.price", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.price_optional = ProtoField.new("Price Optional", "euronext.optiq.sbe.v4.10.priceoptional", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.principal_code = ProtoField.new("Principal Code", "euronext.optiq.sbe.v4.10.principalcode", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.principal_code_cross = ProtoField.new("Principal Code Cross", "euronext.optiq.sbe.v4.10.principalcodecross", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.protection_threshold = ProtoField.new("Protection Threshold", "euronext.optiq.sbe.v4.10.protectionthreshold", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.protection_type = ProtoField.new("Protection Type", "euronext.optiq.sbe.v4.10.protectiontype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.protection_type_optional = ProtoField.new("Protection Type Optional", "euronext.optiq.sbe.v4.10.protectiontypeoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.pull = ProtoField.new("Pull", "euronext.optiq.sbe.v4.10.pull", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_sbe_v4_10.fields.quality_of_sell_side_counterparty = ProtoField.new("Quality Of Sell Side Counterparty", "euronext.optiq.sbe.v4.10.qualityofsellsidecounterparty", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_euronext_optiq_sbe_v4_10.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.sbe.v4.10.quantity", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.quantity_optional = ProtoField.new("Quantity Optional", "euronext.optiq.sbe.v4.10.quantityoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.queue_indicator = ProtoField.new("Queue Indicator", "euronext.optiq.sbe.v4.10.queueindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_sbe_v4_10.fields.queueing_indicator = ProtoField.new("Queueing Indicator", "euronext.optiq.sbe.v4.10.queueingindicator", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.quote_acks_group = ProtoField.new("Quote Acks Group", "euronext.optiq.sbe.v4.10.quoteacksgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.quote_acks_groups = ProtoField.new("Quote Acks Groups", "euronext.optiq.sbe.v4.10.quoteacksgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.quote_req_id = ProtoField.new("Quote Req Id", "euronext.optiq.sbe.v4.10.quotereqid", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.quote_req_id_optional = ProtoField.new("Quote Req Id Optional", "euronext.optiq.sbe.v4.10.quotereqidoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.quotes_rep_group = ProtoField.new("Quotes Rep Group", "euronext.optiq.sbe.v4.10.quotesrepgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.quotes_rep_groups = ProtoField.new("Quotes Rep Groups", "euronext.optiq.sbe.v4.10.quotesrepgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.recipient_type = ProtoField.new("Recipient Type", "euronext.optiq.sbe.v4.10.recipienttype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.rejected_client_message_sequence_number = ProtoField.new("Rejected Client Message Sequence Number", "euronext.optiq.sbe.v4.10.rejectedclientmessagesequencenumber", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.rejected_message = ProtoField.new("Rejected Message", "euronext.optiq.sbe.v4.10.rejectedmessage", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.rejected_message_id = ProtoField.new("Rejected Message Id", "euronext.optiq.sbe.v4.10.rejectedmessageid", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.request_type = ProtoField.new("Request Type", "euronext.optiq.sbe.v4.10.requesttype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.request_with_client_order_id = ProtoField.new("Request With Client Order Id", "euronext.optiq.sbe.v4.10.requestwithclientorderid", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_sbe_v4_10.fields.reserved_1 = ProtoField.new("Reserved 1", "euronext.optiq.sbe.v4.10.reserved1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_euronext_optiq_sbe_v4_10.fields.reserved_2 = ProtoField.new("Reserved 2", "euronext.optiq.sbe.v4.10.reserved2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_euronext_optiq_sbe_v4_10.fields.reserved_3 = ProtoField.new("Reserved 3", "euronext.optiq.sbe.v4.10.reserved3", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_euronext_optiq_sbe_v4_10.fields.reserved_5 = ProtoField.new("Reserved 5", "euronext.optiq.sbe.v4.10.reserved5", ftypes.UINT8, nil, base.DEC, 0xF8)
omi_euronext_optiq_sbe_v4_10.fields.reserved_6 = ProtoField.new("Reserved 6", "euronext.optiq.sbe.v4.10.reserved6", ftypes.UINT16, nil, base.DEC, 0xFC00)
omi_euronext_optiq_sbe_v4_10.fields.response_type = ProtoField.new("Response Type", "euronext.optiq.sbe.v4.10.responsetype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.resynchronization_id = ProtoField.new("Resynchronization Id", "euronext.optiq.sbe.v4.10.resynchronizationid", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.rfe_answer = ProtoField.new("Rfe Answer", "euronext.optiq.sbe.v4.10.rfeanswer", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.rfpt = ProtoField.new("Rfpt", "euronext.optiq.sbe.v4.10.rfpt", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_sbe_v4_10.fields.rfq_answer = ProtoField.new("Rfq Answer", "euronext.optiq.sbe.v4.10.rfqanswer", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_sbe_v4_10.fields.rfq_confirmation = ProtoField.new("Rfq Confirmation", "euronext.optiq.sbe.v4.10.rfqconfirmation", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_sbe_v4_10.fields.rfq_counterparts_group = ProtoField.new("Rfq Counterparts Group", "euronext.optiq.sbe.v4.10.rfqcounterpartsgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.rfq_counterparts_groups = ProtoField.new("Rfq Counterparts Groups", "euronext.optiq.sbe.v4.10.rfqcounterpartsgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.rfq_update_type = ProtoField.new("Rfq Update Type", "euronext.optiq.sbe.v4.10.rfqupdatetype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.sbe.v4.10.schemaid", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.security_req_id = ProtoField.new("Security Req Id", "euronext.optiq.sbe.v4.10.securityreqid", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.sell_revision_flag = ProtoField.new("Sell Revision Flag", "euronext.optiq.sbe.v4.10.sellrevisionflag", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.sell_side = ProtoField.new("Sell Side", "euronext.optiq.sbe.v4.10.sellside", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_euronext_optiq_sbe_v4_10.fields.sending_time = ProtoField.new("Sending Time", "euronext.optiq.sbe.v4.10.sendingtime", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.sending_time_optional = ProtoField.new("Sending Time Optional", "euronext.optiq.sbe.v4.10.sendingtimeoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.session_1 = ProtoField.new("Session 1", "euronext.optiq.sbe.v4.10.session1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_sbe_v4_10.fields.session_2 = ProtoField.new("Session 2", "euronext.optiq.sbe.v4.10.session2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_sbe_v4_10.fields.session_3 = ProtoField.new("Session 3", "euronext.optiq.sbe.v4.10.session3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_sbe_v4_10.fields.session_4 = ProtoField.new("Session 4", "euronext.optiq.sbe.v4.10.session4", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_sbe_v4_10.fields.settlement_flag = ProtoField.new("Settlement Flag", "euronext.optiq.sbe.v4.10.settlementflag", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.settlement_flag_optional = ProtoField.new("Settlement Flag Optional", "euronext.optiq.sbe.v4.10.settlementflagoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.settlement_period = ProtoField.new("Settlement Period", "euronext.optiq.sbe.v4.10.settlementperiod", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.settlement_period_optional = ProtoField.new("Settlement Period Optional", "euronext.optiq.sbe.v4.10.settlementperiodoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.side = ProtoField.new("Side", "euronext.optiq.sbe.v4.10.side", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.side_optional = ProtoField.new("Side Optional", "euronext.optiq.sbe.v4.10.sideoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.size = ProtoField.new("Size", "euronext.optiq.sbe.v4.10.size", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_sbe_v4_10.fields.software_provider = ProtoField.new("Software Provider", "euronext.optiq.sbe.v4.10.softwareprovider", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.sbe.v4.10.starttimevwap", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.stop_px = ProtoField.new("Stop Px", "euronext.optiq.sbe.v4.10.stoppx", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.stop_triggered_time_in_force = ProtoField.new("Stop Triggered Time In Force", "euronext.optiq.sbe.v4.10.stoptriggeredtimeinforce", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.stp_incoming_order = ProtoField.new("Stp Incoming Order", "euronext.optiq.sbe.v4.10.stpincomingorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_sbe_v4_10.fields.stp_resting_order = ProtoField.new("Stp Resting Order", "euronext.optiq.sbe.v4.10.stprestingorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_sbe_v4_10.fields.stpid = ProtoField.new("Stpid", "euronext.optiq.sbe.v4.10.stpid", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.strategy_code = ProtoField.new("Strategy Code", "euronext.optiq.sbe.v4.10.strategycode", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.strategy_code_optional = ProtoField.new("Strategy Code Optional", "euronext.optiq.sbe.v4.10.strategycodeoptional", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.strategy_fields_group = ProtoField.new("Strategy Fields Group", "euronext.optiq.sbe.v4.10.strategyfieldsgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.strategy_fields_groups = ProtoField.new("Strategy Fields Groups", "euronext.optiq.sbe.v4.10.strategyfieldsgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.strategy_legs_group = ProtoField.new("Strategy Legs Group", "euronext.optiq.sbe.v4.10.strategylegsgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.strategy_legs_groups = ProtoField.new("Strategy Legs Groups", "euronext.optiq.sbe.v4.10.strategylegsgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.sweep_order_indicator = ProtoField.new("Sweep Order Indicator", "euronext.optiq.sbe.v4.10.sweeporderindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_sbe_v4_10.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.sbe.v4.10.symbolindex", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.symbol_index_optional = ProtoField.new("Symbol Index Optional", "euronext.optiq.sbe.v4.10.symbolindexoptional", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.target_counterparties = ProtoField.new("Target Counterparties", "euronext.optiq.sbe.v4.10.targetcounterparties", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.target_execution_within_firm_short_code = ProtoField.new("Target Execution Within Firm Short Code", "euronext.optiq.sbe.v4.10.targetexecutionwithinfirmshortcode", ftypes.INT32)
omi_euronext_optiq_sbe_v4_10.fields.technical_origin = ProtoField.new("Technical Origin", "euronext.optiq.sbe.v4.10.technicalorigin", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.sbe.v4.10.templateid", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.time_in_force = ProtoField.new("Time In Force", "euronext.optiq.sbe.v4.10.timeinforce", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "euronext.optiq.sbe.v4.10.totalaffectedorders", ftypes.INT32)
omi_euronext_optiq_sbe_v4_10.fields.trade_creation_by_market_operations = ProtoField.new("Trade Creation By Market Operations", "euronext.optiq.sbe.v4.10.tradecreationbymarketoperations", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_sbe_v4_10.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.sbe.v4.10.tradequalifier", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.trade_time = ProtoField.new("Trade Time", "euronext.optiq.sbe.v4.10.tradetime", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.trade_time_optional = ProtoField.new("Trade Time Optional", "euronext.optiq.sbe.v4.10.tradetimeoptional", ftypes.UINT64)
omi_euronext_optiq_sbe_v4_10.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.sbe.v4.10.tradetype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.trading_capacity = ProtoField.new("Trading Capacity", "euronext.optiq.sbe.v4.10.tradingcapacity", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.trading_capacity_cross = ProtoField.new("Trading Capacity Cross", "euronext.optiq.sbe.v4.10.tradingcapacitycross", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.trading_capacity_optional = ProtoField.new("Trading Capacity Optional", "euronext.optiq.sbe.v4.10.tradingcapacityoptional", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.trading_session = ProtoField.new("Trading Session", "euronext.optiq.sbe.v4.10.tradingsession", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.transaction_price_type = ProtoField.new("Transaction Price Type", "euronext.optiq.sbe.v4.10.transactionpricetype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.uncrossing_trade = ProtoField.new("Uncrossing Trade", "euronext.optiq.sbe.v4.10.uncrossingtrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_sbe_v4_10.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "euronext.optiq.sbe.v4.10.underlyinginstrumentid", ftypes.UINT32)
omi_euronext_optiq_sbe_v4_10.fields.undisclosed_iceberg_type = ProtoField.new("Undisclosed Iceberg Type", "euronext.optiq.sbe.v4.10.undisclosedicebergtype", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.undisclosed_price = ProtoField.new("Undisclosed Price", "euronext.optiq.sbe.v4.10.undisclosedprice", ftypes.INT64)
omi_euronext_optiq_sbe_v4_10.fields.use_of_cross_partition = ProtoField.new("Use Of Cross Partition", "euronext.optiq.sbe.v4.10.useofcrosspartition", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_sbe_v4_10.fields.user_status = ProtoField.new("User Status", "euronext.optiq.sbe.v4.10.userstatus", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.version = ProtoField.new("Version", "euronext.optiq.sbe.v4.10.version", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.waiver_indicator = ProtoField.new("Waiver Indicator", "euronext.optiq.sbe.v4.10.waiverindicator", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_clearing_rep_group = ProtoField.new("Wholesale Ack Clearing Rep Group", "euronext.optiq.sbe.v4.10.wholesaleackclearingrepgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_clearing_rep_groups = ProtoField.new("Wholesale Ack Clearing Rep Groups", "euronext.optiq.sbe.v4.10.wholesaleackclearingrepgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_legs_rep_group = ProtoField.new("Wholesale Ack Legs Rep Group", "euronext.optiq.sbe.v4.10.wholesaleacklegsrepgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_legs_rep_groups = ProtoField.new("Wholesale Ack Legs Rep Groups", "euronext.optiq.sbe.v4.10.wholesaleacklegsrepgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_client_rep_group = ProtoField.new("Wholesale Client Rep Group", "euronext.optiq.sbe.v4.10.wholesaleclientrepgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_client_rep_groups = ProtoField.new("Wholesale Client Rep Groups", "euronext.optiq.sbe.v4.10.wholesaleclientrepgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_legs_rep_group = ProtoField.new("Wholesale Legs Rep Group", "euronext.optiq.sbe.v4.10.wholesalelegsrepgroup", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_legs_rep_groups = ProtoField.new("Wholesale Legs Rep Groups", "euronext.optiq.sbe.v4.10.wholesalelegsrepgroups", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_side = ProtoField.new("Wholesale Side", "euronext.optiq.sbe.v4.10.wholesaleside", ftypes.UINT8)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_trade_type = ProtoField.new("Wholesale Trade Type", "euronext.optiq.sbe.v4.10.wholesaletradetype", ftypes.UINT8)

-- Euronext Optiq OrderEntryGateway Sbe 4.10 messages
omi_euronext_optiq_sbe_v4_10.fields.ack_message = ProtoField.new("Ack Message", "euronext.optiq.sbe.v4.10.ackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.ask_for_quote_message = ProtoField.new("Ask For Quote Message", "euronext.optiq.sbe.v4.10.askforquotemessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.cancel_replace_message = ProtoField.new("Cancel Replace Message", "euronext.optiq.sbe.v4.10.cancelreplacemessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.cancel_request_message = ProtoField.new("Cancel Request Message", "euronext.optiq.sbe.v4.10.cancelrequestmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.collar_breach_confirmation_message = ProtoField.new("Collar Breach Confirmation Message", "euronext.optiq.sbe.v4.10.collarbreachconfirmationmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.cross_order_message = ProtoField.new("Cross Order Message", "euronext.optiq.sbe.v4.10.crossordermessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.declaration_cancel_and_refusal_message = ProtoField.new("Declaration Cancel And Refusal Message", "euronext.optiq.sbe.v4.10.declarationcancelandrefusalmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.declaration_entry_ack_message = ProtoField.new("Declaration Entry Ack Message", "euronext.optiq.sbe.v4.10.declarationentryackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.declaration_entry_message = ProtoField.new("Declaration Entry Message", "euronext.optiq.sbe.v4.10.declarationentrymessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.declaration_entry_reject_message = ProtoField.new("Declaration Entry Reject Message", "euronext.optiq.sbe.v4.10.declarationentryrejectmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.declaration_notice_message = ProtoField.new("Declaration Notice Message", "euronext.optiq.sbe.v4.10.declarationnoticemessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.fill_message = ProtoField.new("Fill Message", "euronext.optiq.sbe.v4.10.fillmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.fund_price_input_ack_message = ProtoField.new("Fund Price Input Ack Message", "euronext.optiq.sbe.v4.10.fundpriceinputackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.fund_price_input_message = ProtoField.new("Fund Price Input Message", "euronext.optiq.sbe.v4.10.fundpriceinputmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.instrument_synchronization_list_message = ProtoField.new("Instrument Synchronization List Message", "euronext.optiq.sbe.v4.10.instrumentsynchronizationlistmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.kill_message = ProtoField.new("Kill Message", "euronext.optiq.sbe.v4.10.killmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.liquidity_provider_command_message = ProtoField.new("Liquidity Provider Command Message", "euronext.optiq.sbe.v4.10.liquidityprovidercommandmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.logon_ack_message = ProtoField.new("Logon Ack Message", "euronext.optiq.sbe.v4.10.logonackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.logon_message = ProtoField.new("Logon Message", "euronext.optiq.sbe.v4.10.logonmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.logon_reject_message = ProtoField.new("Logon Reject Message", "euronext.optiq.sbe.v4.10.logonrejectmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.logout_message = ProtoField.new("Logout Message", "euronext.optiq.sbe.v4.10.logoutmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mass_cancel_ack_message = ProtoField.new("Mass Cancel Ack Message", "euronext.optiq.sbe.v4.10.masscancelackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "euronext.optiq.sbe.v4.10.masscancelmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mm_protection_ack_message = ProtoField.new("Mm Protection Ack Message", "euronext.optiq.sbe.v4.10.mmprotectionackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mm_protection_request_message = ProtoField.new("Mm Protection Request Message", "euronext.optiq.sbe.v4.10.mmprotectionrequestmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mm_sign_in_ack_message = ProtoField.new("Mm Sign In Ack Message", "euronext.optiq.sbe.v4.10.mmsigninackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.mm_sign_in_message = ProtoField.new("Mm Sign In Message", "euronext.optiq.sbe.v4.10.mmsigninmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.new_order_message = ProtoField.new("New Order Message", "euronext.optiq.sbe.v4.10.newordermessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.new_wholesale_order_message = ProtoField.new("New Wholesale Order Message", "euronext.optiq.sbe.v4.10.newwholesaleordermessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.open_order_request_message = ProtoField.new("Open Order Request Message", "euronext.optiq.sbe.v4.10.openorderrequestmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.ownership_request_ack_message = ProtoField.new("Ownership Request Ack Message", "euronext.optiq.sbe.v4.10.ownershiprequestackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.ownership_request_message = ProtoField.new("Ownership Request Message", "euronext.optiq.sbe.v4.10.ownershiprequestmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.price_input_message = ProtoField.new("Price Input Message", "euronext.optiq.sbe.v4.10.priceinputmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.quote_ack_message = ProtoField.new("Quote Ack Message", "euronext.optiq.sbe.v4.10.quoteackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.quote_request_message = ProtoField.new("Quote Request Message", "euronext.optiq.sbe.v4.10.quoterequestmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.quotes_message = ProtoField.new("Quotes Message", "euronext.optiq.sbe.v4.10.quotesmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.reject_message = ProtoField.new("Reject Message", "euronext.optiq.sbe.v4.10.rejectmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.request_for_execution_message = ProtoField.new("Request For Execution Message", "euronext.optiq.sbe.v4.10.requestforexecutionmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.request_for_implied_execution_message = ProtoField.new("Request For Implied Execution Message", "euronext.optiq.sbe.v4.10.requestforimpliedexecutionmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.rfq_audit_message = ProtoField.new("Rfq Audit Message", "euronext.optiq.sbe.v4.10.rfqauditmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.rfq_matching_status_message = ProtoField.new("Rfq Matching Status Message", "euronext.optiq.sbe.v4.10.rfqmatchingstatusmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.rfq_notification_message = ProtoField.new("Rfq Notification Message", "euronext.optiq.sbe.v4.10.rfqnotificationmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.rfqlp_matching_status_message = ProtoField.new("Rfqlp Matching Status Message", "euronext.optiq.sbe.v4.10.rfqlpmatchingstatusmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.security_definition_ack_message = ProtoField.new("Security Definition Ack Message", "euronext.optiq.sbe.v4.10.securitydefinitionackmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.security_definition_request_message = ProtoField.new("Security Definition Request Message", "euronext.optiq.sbe.v4.10.securitydefinitionrequestmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.synchronization_time_message = ProtoField.new("Synchronization Time Message", "euronext.optiq.sbe.v4.10.synchronizationtimemessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.technical_reject_message = ProtoField.new("Technical Reject Message", "euronext.optiq.sbe.v4.10.technicalrejectmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.trade_bust_notification_message = ProtoField.new("Trade Bust Notification Message", "euronext.optiq.sbe.v4.10.tradebustnotificationmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.user_notification_message = ProtoField.new("User Notification Message", "euronext.optiq.sbe.v4.10.usernotificationmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wave_for_liquidity_message = ProtoField.new("Wave For Liquidity Message", "euronext.optiq.sbe.v4.10.waveforliquiditymessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wave_for_liquidity_notification_message = ProtoField.new("Wave For Liquidity Notification Message", "euronext.optiq.sbe.v4.10.waveforliquiditynotificationmessage", ftypes.STRING)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_order_ack_message = ProtoField.new("Wholesale Order Ack Message", "euronext.optiq.sbe.v4.10.wholesaleorderackmessage", ftypes.STRING)

-- Euronext Optiq OrderEntryGateway Sbe 4.10 generated fields
omi_euronext_optiq_sbe_v4_10.fields.additional_infos_group_index = ProtoField.new("Additional Infos Group Index", "euronext.optiq.sbe.v4.10.additionalinfosgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.clearing_dataset_group_index = ProtoField.new("Clearing Dataset Group Index", "euronext.optiq.sbe.v4.10.clearingdatasetgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_group_index = ProtoField.new("Clearing Fields Group Index", "euronext.optiq.sbe.v4.10.clearingfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_x_group_index = ProtoField.new("Clearing Fields X Group Index", "euronext.optiq.sbe.v4.10.clearingfieldsxgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.collar_fields_group_index = ProtoField.new("Collar Fields Group Index", "euronext.optiq.sbe.v4.10.collarfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.free_text_section_group_index = ProtoField.new("Free Text Section Group Index", "euronext.optiq.sbe.v4.10.freetextsectiongroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.instrument_synchronization_section_group_index = ProtoField.new("Instrument Synchronization Section Group Index", "euronext.optiq.sbe.v4.10.instrumentsynchronizationsectiongroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.mifid_fields_group_index = ProtoField.new("Mifid Fields Group Index", "euronext.optiq.sbe.v4.10.mifidfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.mifid_short_codes_group_index = ProtoField.new("Mifid Short Codes Group Index", "euronext.optiq.sbe.v4.10.mifidshortcodesgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.mmp_section_group_index = ProtoField.new("Mmp Section Group Index", "euronext.optiq.sbe.v4.10.mmpsectiongroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.mmp_section2_group_index = ProtoField.new("Mmp Section2 Group Index", "euronext.optiq.sbe.v4.10.mmpsection2groupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.not_used_group_1_group_index = ProtoField.new("Not Used Group 1 Group Index", "euronext.optiq.sbe.v4.10.notusedgroup1groupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.not_used_group_2_group_index = ProtoField.new("Not Used Group 2 Group Index", "euronext.optiq.sbe.v4.10.notusedgroup2groupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_derivatives_group_index = ProtoField.new("Optional Fields Derivatives Group Index", "euronext.optiq.sbe.v4.10.optionalfieldsderivativesgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_fill_group_index = ProtoField.new("Optional Fields Fill Group Index", "euronext.optiq.sbe.v4.10.optionalfieldsfillgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.optional_fields_group_index = ProtoField.new("Optional Fields Group Index", "euronext.optiq.sbe.v4.10.optionalfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.quote_acks_group_index = ProtoField.new("Quote Acks Group Index", "euronext.optiq.sbe.v4.10.quoteacksgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.quotes_rep_group_index = ProtoField.new("Quotes Rep Group Index", "euronext.optiq.sbe.v4.10.quotesrepgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.rfq_counterparts_group_index = ProtoField.new("Rfq Counterparts Group Index", "euronext.optiq.sbe.v4.10.rfqcounterpartsgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.strategy_fields_group_index = ProtoField.new("Strategy Fields Group Index", "euronext.optiq.sbe.v4.10.strategyfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.strategy_legs_group_index = ProtoField.new("Strategy Legs Group Index", "euronext.optiq.sbe.v4.10.strategylegsgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_clearing_rep_group_index = ProtoField.new("Wholesale Ack Clearing Rep Group Index", "euronext.optiq.sbe.v4.10.wholesaleackclearingrepgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_legs_rep_group_index = ProtoField.new("Wholesale Ack Legs Rep Group Index", "euronext.optiq.sbe.v4.10.wholesaleacklegsrepgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_client_rep_group_index = ProtoField.new("Wholesale Client Rep Group Index", "euronext.optiq.sbe.v4.10.wholesaleclientrepgroupindex", ftypes.UINT16)
omi_euronext_optiq_sbe_v4_10.fields.wholesale_legs_rep_group_index = ProtoField.new("Wholesale Legs Rep Group Index", "euronext.optiq.sbe.v4.10.wholesalelegsrepgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Euronext Optiq OrderEntryGateway Sbe 4.10 Element Dissection Options
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

-- Register Euronext Optiq OrderEntryGateway Sbe 4.10 Show Options
omi_euronext_optiq_sbe_v4_10.prefs.show_ack_message = Pref.bool("Show Ack Message", show.ack_message, "Parse and add Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_ack_qualifiers = Pref.bool("Show Ack Qualifiers", show.ack_qualifiers, "Parse and add Ack Qualifiers to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_ack_qualifiers_optional = Pref.bool("Show Ack Qualifiers Optional", show.ack_qualifiers_optional, "Parse and add Ack Qualifiers Optional to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_additional_infos_group = Pref.bool("Show Additional Infos Group", show.additional_infos_group, "Parse and add Additional Infos Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_additional_infos_groups = Pref.bool("Show Additional Infos Groups", show.additional_infos_groups, "Parse and add Additional Infos Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_ask_for_quote_message = Pref.bool("Show Ask For Quote Message", show.ask_for_quote_message, "Parse and add Ask For Quote Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_cancel_replace_message = Pref.bool("Show Cancel Replace Message", show.cancel_replace_message, "Parse and add Cancel Replace Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_cancel_request_message = Pref.bool("Show Cancel Request Message", show.cancel_request_message, "Parse and add Cancel Request Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_dataset_group = Pref.bool("Show Clearing Dataset Group", show.clearing_dataset_group, "Parse and add Clearing Dataset Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_dataset_groups = Pref.bool("Show Clearing Dataset Groups", show.clearing_dataset_groups, "Parse and add Clearing Dataset Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_group = Pref.bool("Show Clearing Fields Group", show.clearing_fields_group, "Parse and add Clearing Fields Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_groups = Pref.bool("Show Clearing Fields Groups", show.clearing_fields_groups, "Parse and add Clearing Fields Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_x_group = Pref.bool("Show Clearing Fields X Group", show.clearing_fields_x_group, "Parse and add Clearing Fields X Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_x_groups = Pref.bool("Show Clearing Fields X Groups", show.clearing_fields_x_groups, "Parse and add Clearing Fields X Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_collar_breach_confirmation_message = Pref.bool("Show Collar Breach Confirmation Message", show.collar_breach_confirmation_message, "Parse and add Collar Breach Confirmation Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_collar_fields_group = Pref.bool("Show Collar Fields Group", show.collar_fields_group, "Parse and add Collar Fields Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_collar_fields_groups = Pref.bool("Show Collar Fields Groups", show.collar_fields_groups, "Parse and add Collar Fields Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_cross_order_message = Pref.bool("Show Cross Order Message", show.cross_order_message, "Parse and add Cross Order Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_dark_execution_instruction = Pref.bool("Show Dark Execution Instruction", show.dark_execution_instruction, "Parse and add Dark Execution Instruction to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_dark_execution_instruction_optional = Pref.bool("Show Dark Execution Instruction Optional", show.dark_execution_instruction_optional, "Parse and add Dark Execution Instruction Optional to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_cancel_and_refusal_message = Pref.bool("Show Declaration Cancel And Refusal Message", show.declaration_cancel_and_refusal_message, "Parse and add Declaration Cancel And Refusal Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_ack_message = Pref.bool("Show Declaration Entry Ack Message", show.declaration_entry_ack_message, "Parse and add Declaration Entry Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_message = Pref.bool("Show Declaration Entry Message", show.declaration_entry_message, "Parse and add Declaration Entry Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_reject_message = Pref.bool("Show Declaration Entry Reject Message", show.declaration_entry_reject_message, "Parse and add Declaration Entry Reject Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_notice_message = Pref.bool("Show Declaration Notice Message", show.declaration_notice_message, "Parse and add Declaration Notice Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_execution_instruction = Pref.bool("Show Execution Instruction", show.execution_instruction, "Parse and add Execution Instruction to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_execution_instruction_optional = Pref.bool("Show Execution Instruction Optional", show.execution_instruction_optional, "Parse and add Execution Instruction Optional to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_fill_message = Pref.bool("Show Fill Message", show.fill_message, "Parse and add Fill Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_free_text_section_group = Pref.bool("Show Free Text Section Group", show.free_text_section_group, "Parse and add Free Text Section Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_free_text_section_groups = Pref.bool("Show Free Text Section Groups", show.free_text_section_groups, "Parse and add Free Text Section Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_fund_price_input_ack_message = Pref.bool("Show Fund Price Input Ack Message", show.fund_price_input_ack_message, "Parse and add Fund Price Input Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_fund_price_input_message = Pref.bool("Show Fund Price Input Message", show.fund_price_input_message, "Parse and add Fund Price Input Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_list_message = Pref.bool("Show Instrument Synchronization List Message", show.instrument_synchronization_list_message, "Parse and add Instrument Synchronization List Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_section_group = Pref.bool("Show Instrument Synchronization Section Group", show.instrument_synchronization_section_group, "Parse and add Instrument Synchronization Section Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_section_groups = Pref.bool("Show Instrument Synchronization Section Groups", show.instrument_synchronization_section_groups, "Parse and add Instrument Synchronization Section Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_kill_message = Pref.bool("Show Kill Message", show.kill_message, "Parse and add Kill Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_liquidity_provider_command_message = Pref.bool("Show Liquidity Provider Command Message", show.liquidity_provider_command_message, "Parse and add Liquidity Provider Command Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_logon_ack_message = Pref.bool("Show Logon Ack Message", show.logon_ack_message, "Parse and add Logon Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_logon_reject_message = Pref.bool("Show Logon Reject Message", show.logon_reject_message, "Parse and add Logon Reject Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mass_cancel_ack_message = Pref.bool("Show Mass Cancel Ack Message", show.mass_cancel_ack_message, "Parse and add Mass Cancel Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mass_cancel_message = Pref.bool("Show Mass Cancel Message", show.mass_cancel_message, "Parse and add Mass Cancel Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_fields_group = Pref.bool("Show Mifid Fields Group", show.mifid_fields_group, "Parse and add Mifid Fields Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_fields_groups = Pref.bool("Show Mifid Fields Groups", show.mifid_fields_groups, "Parse and add Mifid Fields Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_indicators = Pref.bool("Show Mifid Indicators", show.mifid_indicators, "Parse and add Mifid Indicators to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_indicators_optional = Pref.bool("Show Mifid Indicators Optional", show.mifid_indicators_optional, "Parse and add Mifid Indicators Optional to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_short_codes_group = Pref.bool("Show Mifid Short Codes Group", show.mifid_short_codes_group, "Parse and add Mifid Short Codes Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_short_codes_groups = Pref.bool("Show Mifid Short Codes Groups", show.mifid_short_codes_groups, "Parse and add Mifid Short Codes Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mm_protection_ack_message = Pref.bool("Show Mm Protection Ack Message", show.mm_protection_ack_message, "Parse and add Mm Protection Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mm_protection_request_message = Pref.bool("Show Mm Protection Request Message", show.mm_protection_request_message, "Parse and add Mm Protection Request Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mm_sign_in_ack_message = Pref.bool("Show Mm Sign In Ack Message", show.mm_sign_in_ack_message, "Parse and add Mm Sign In Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mm_sign_in_message = Pref.bool("Show Mm Sign In Message", show.mm_sign_in_message, "Parse and add Mm Sign In Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_execution_type = Pref.bool("Show Mmp Execution Type", show.mmp_execution_type, "Parse and add Mmp Execution Type to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section_group = Pref.bool("Show Mmp Section Group", show.mmp_section_group, "Parse and add Mmp Section Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section_groups = Pref.bool("Show Mmp Section Groups", show.mmp_section_groups, "Parse and add Mmp Section Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section2_group = Pref.bool("Show Mmp Section2 Group", show.mmp_section2_group, "Parse and add Mmp Section2 Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section2_groups = Pref.bool("Show Mmp Section2 Groups", show.mmp_section2_groups, "Parse and add Mmp Section2 Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_new_wholesale_order_message = Pref.bool("Show New Wholesale Order Message", show.new_wholesale_order_message, "Parse and add New Wholesale Order Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_not_used_group_1_groups = Pref.bool("Show Not Used Group 1 Groups", show.not_used_group_1_groups, "Parse and add Not Used Group 1 Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_not_used_group_2_groups = Pref.bool("Show Not Used Group 2 Groups", show.not_used_group_2_groups, "Parse and add Not Used Group 2 Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_open_close = Pref.bool("Show Open Close", show.open_close, "Parse and add Open Close to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_open_order_request_message = Pref.bool("Show Open Order Request Message", show.open_order_request_message, "Parse and add Open Order Request Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_derivatives_group = Pref.bool("Show Optional Fields Derivatives Group", show.optional_fields_derivatives_group, "Parse and add Optional Fields Derivatives Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_derivatives_groups = Pref.bool("Show Optional Fields Derivatives Groups", show.optional_fields_derivatives_groups, "Parse and add Optional Fields Derivatives Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_fill_group = Pref.bool("Show Optional Fields Fill Group", show.optional_fields_fill_group, "Parse and add Optional Fields Fill Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_fill_groups = Pref.bool("Show Optional Fields Fill Groups", show.optional_fields_fill_groups, "Parse and add Optional Fields Fill Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_group = Pref.bool("Show Optional Fields Group", show.optional_fields_group, "Parse and add Optional Fields Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_groups = Pref.bool("Show Optional Fields Groups", show.optional_fields_groups, "Parse and add Optional Fields Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_ownership_request_ack_message = Pref.bool("Show Ownership Request Ack Message", show.ownership_request_ack_message, "Parse and add Ownership Request Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_ownership_request_message = Pref.bool("Show Ownership Request Message", show.ownership_request_message, "Parse and add Ownership Request Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_price_input_message = Pref.bool("Show Price Input Message", show.price_input_message, "Parse and add Price Input Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_quote_ack_message = Pref.bool("Show Quote Ack Message", show.quote_ack_message, "Parse and add Quote Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_quote_acks_group = Pref.bool("Show Quote Acks Group", show.quote_acks_group, "Parse and add Quote Acks Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_quote_acks_groups = Pref.bool("Show Quote Acks Groups", show.quote_acks_groups, "Parse and add Quote Acks Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_quote_request_message = Pref.bool("Show Quote Request Message", show.quote_request_message, "Parse and add Quote Request Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_message = Pref.bool("Show Quotes Message", show.quotes_message, "Parse and add Quotes Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_rep_group = Pref.bool("Show Quotes Rep Group", show.quotes_rep_group, "Parse and add Quotes Rep Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_rep_groups = Pref.bool("Show Quotes Rep Groups", show.quotes_rep_groups, "Parse and add Quotes Rep Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_request_for_execution_message = Pref.bool("Show Request For Execution Message", show.request_for_execution_message, "Parse and add Request For Execution Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_request_for_implied_execution_message = Pref.bool("Show Request For Implied Execution Message", show.request_for_implied_execution_message, "Parse and add Request For Implied Execution Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_audit_message = Pref.bool("Show Rfq Audit Message", show.rfq_audit_message, "Parse and add Rfq Audit Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_counterparts_group = Pref.bool("Show Rfq Counterparts Group", show.rfq_counterparts_group, "Parse and add Rfq Counterparts Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_counterparts_groups = Pref.bool("Show Rfq Counterparts Groups", show.rfq_counterparts_groups, "Parse and add Rfq Counterparts Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_matching_status_message = Pref.bool("Show Rfq Matching Status Message", show.rfq_matching_status_message, "Parse and add Rfq Matching Status Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_notification_message = Pref.bool("Show Rfq Notification Message", show.rfq_notification_message, "Parse and add Rfq Notification Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_rfqlp_matching_status_message = Pref.bool("Show Rfqlp Matching Status Message", show.rfqlp_matching_status_message, "Parse and add Rfqlp Matching Status Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_security_definition_ack_message = Pref.bool("Show Security Definition Ack Message", show.security_definition_ack_message, "Parse and add Security Definition Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_security_definition_request_message = Pref.bool("Show Security Definition Request Message", show.security_definition_request_message, "Parse and add Security Definition Request Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_fields_group = Pref.bool("Show Strategy Fields Group", show.strategy_fields_group, "Parse and add Strategy Fields Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_fields_groups = Pref.bool("Show Strategy Fields Groups", show.strategy_fields_groups, "Parse and add Strategy Fields Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_legs_group = Pref.bool("Show Strategy Legs Group", show.strategy_legs_group, "Parse and add Strategy Legs Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_legs_groups = Pref.bool("Show Strategy Legs Groups", show.strategy_legs_groups, "Parse and add Strategy Legs Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_synchronization_time_message = Pref.bool("Show Synchronization Time Message", show.synchronization_time_message, "Parse and add Synchronization Time Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_target_counterparties = Pref.bool("Show Target Counterparties", show.target_counterparties, "Parse and add Target Counterparties to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_technical_reject_message = Pref.bool("Show Technical Reject Message", show.technical_reject_message, "Parse and add Technical Reject Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_trade_bust_notification_message = Pref.bool("Show Trade Bust Notification Message", show.trade_bust_notification_message, "Parse and add Trade Bust Notification Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_trade_qualifier = Pref.bool("Show Trade Qualifier", show.trade_qualifier, "Parse and add Trade Qualifier to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_trading_session = Pref.bool("Show Trading Session", show.trading_session, "Parse and add Trading Session to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_user_notification_message = Pref.bool("Show User Notification Message", show.user_notification_message, "Parse and add User Notification Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_waiver_indicator = Pref.bool("Show Waiver Indicator", show.waiver_indicator, "Parse and add Waiver Indicator to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wave_for_liquidity_message = Pref.bool("Show Wave For Liquidity Message", show.wave_for_liquidity_message, "Parse and add Wave For Liquidity Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wave_for_liquidity_notification_message = Pref.bool("Show Wave For Liquidity Notification Message", show.wave_for_liquidity_notification_message, "Parse and add Wave For Liquidity Notification Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_clearing_rep_group = Pref.bool("Show Wholesale Ack Clearing Rep Group", show.wholesale_ack_clearing_rep_group, "Parse and add Wholesale Ack Clearing Rep Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_clearing_rep_groups = Pref.bool("Show Wholesale Ack Clearing Rep Groups", show.wholesale_ack_clearing_rep_groups, "Parse and add Wholesale Ack Clearing Rep Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_legs_rep_group = Pref.bool("Show Wholesale Ack Legs Rep Group", show.wholesale_ack_legs_rep_group, "Parse and add Wholesale Ack Legs Rep Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_legs_rep_groups = Pref.bool("Show Wholesale Ack Legs Rep Groups", show.wholesale_ack_legs_rep_groups, "Parse and add Wholesale Ack Legs Rep Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_client_rep_group = Pref.bool("Show Wholesale Client Rep Group", show.wholesale_client_rep_group, "Parse and add Wholesale Client Rep Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_client_rep_groups = Pref.bool("Show Wholesale Client Rep Groups", show.wholesale_client_rep_groups, "Parse and add Wholesale Client Rep Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_legs_rep_group = Pref.bool("Show Wholesale Legs Rep Group", show.wholesale_legs_rep_group, "Parse and add Wholesale Legs Rep Group to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_legs_rep_groups = Pref.bool("Show Wholesale Legs Rep Groups", show.wholesale_legs_rep_groups, "Parse and add Wholesale Legs Rep Groups to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_order_ack_message = Pref.bool("Show Wholesale Order Ack Message", show.wholesale_order_ack_message, "Parse and add Wholesale Order Ack Message to protocol tree")
omi_euronext_optiq_sbe_v4_10.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_euronext_optiq_sbe_v4_10.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_ack_message then
    show.ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_ack_message
    changed = true
  end
  if show.ack_qualifiers ~= omi_euronext_optiq_sbe_v4_10.prefs.show_ack_qualifiers then
    show.ack_qualifiers = omi_euronext_optiq_sbe_v4_10.prefs.show_ack_qualifiers
    changed = true
  end
  if show.ack_qualifiers_optional ~= omi_euronext_optiq_sbe_v4_10.prefs.show_ack_qualifiers_optional then
    show.ack_qualifiers_optional = omi_euronext_optiq_sbe_v4_10.prefs.show_ack_qualifiers_optional
    changed = true
  end
  if show.additional_infos_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_additional_infos_group then
    show.additional_infos_group = omi_euronext_optiq_sbe_v4_10.prefs.show_additional_infos_group
    changed = true
  end
  if show.additional_infos_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_additional_infos_groups then
    show.additional_infos_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_additional_infos_groups
    changed = true
  end
  if show.ask_for_quote_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_ask_for_quote_message then
    show.ask_for_quote_message = omi_euronext_optiq_sbe_v4_10.prefs.show_ask_for_quote_message
    changed = true
  end
  if show.cancel_replace_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_cancel_replace_message then
    show.cancel_replace_message = omi_euronext_optiq_sbe_v4_10.prefs.show_cancel_replace_message
    changed = true
  end
  if show.cancel_request_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_cancel_request_message then
    show.cancel_request_message = omi_euronext_optiq_sbe_v4_10.prefs.show_cancel_request_message
    changed = true
  end
  if show.clearing_dataset_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_dataset_group then
    show.clearing_dataset_group = omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_dataset_group
    changed = true
  end
  if show.clearing_dataset_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_dataset_groups then
    show.clearing_dataset_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_dataset_groups
    changed = true
  end
  if show.clearing_fields_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_group then
    show.clearing_fields_group = omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_group
    changed = true
  end
  if show.clearing_fields_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_groups then
    show.clearing_fields_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_groups
    changed = true
  end
  if show.clearing_fields_x_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_x_group then
    show.clearing_fields_x_group = omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_x_group
    changed = true
  end
  if show.clearing_fields_x_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_x_groups then
    show.clearing_fields_x_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_clearing_fields_x_groups
    changed = true
  end
  if show.collar_breach_confirmation_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_collar_breach_confirmation_message then
    show.collar_breach_confirmation_message = omi_euronext_optiq_sbe_v4_10.prefs.show_collar_breach_confirmation_message
    changed = true
  end
  if show.collar_fields_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_collar_fields_group then
    show.collar_fields_group = omi_euronext_optiq_sbe_v4_10.prefs.show_collar_fields_group
    changed = true
  end
  if show.collar_fields_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_collar_fields_groups then
    show.collar_fields_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_collar_fields_groups
    changed = true
  end
  if show.cross_order_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_cross_order_message then
    show.cross_order_message = omi_euronext_optiq_sbe_v4_10.prefs.show_cross_order_message
    changed = true
  end
  if show.dark_execution_instruction ~= omi_euronext_optiq_sbe_v4_10.prefs.show_dark_execution_instruction then
    show.dark_execution_instruction = omi_euronext_optiq_sbe_v4_10.prefs.show_dark_execution_instruction
    changed = true
  end
  if show.dark_execution_instruction_optional ~= omi_euronext_optiq_sbe_v4_10.prefs.show_dark_execution_instruction_optional then
    show.dark_execution_instruction_optional = omi_euronext_optiq_sbe_v4_10.prefs.show_dark_execution_instruction_optional
    changed = true
  end
  if show.declaration_cancel_and_refusal_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_cancel_and_refusal_message then
    show.declaration_cancel_and_refusal_message = omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_cancel_and_refusal_message
    changed = true
  end
  if show.declaration_entry_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_ack_message then
    show.declaration_entry_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_ack_message
    changed = true
  end
  if show.declaration_entry_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_message then
    show.declaration_entry_message = omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_message
    changed = true
  end
  if show.declaration_entry_reject_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_reject_message then
    show.declaration_entry_reject_message = omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_entry_reject_message
    changed = true
  end
  if show.declaration_notice_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_notice_message then
    show.declaration_notice_message = omi_euronext_optiq_sbe_v4_10.prefs.show_declaration_notice_message
    changed = true
  end
  if show.execution_instruction ~= omi_euronext_optiq_sbe_v4_10.prefs.show_execution_instruction then
    show.execution_instruction = omi_euronext_optiq_sbe_v4_10.prefs.show_execution_instruction
    changed = true
  end
  if show.execution_instruction_optional ~= omi_euronext_optiq_sbe_v4_10.prefs.show_execution_instruction_optional then
    show.execution_instruction_optional = omi_euronext_optiq_sbe_v4_10.prefs.show_execution_instruction_optional
    changed = true
  end
  if show.fill_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_fill_message then
    show.fill_message = omi_euronext_optiq_sbe_v4_10.prefs.show_fill_message
    changed = true
  end
  if show.free_text_section_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_free_text_section_group then
    show.free_text_section_group = omi_euronext_optiq_sbe_v4_10.prefs.show_free_text_section_group
    changed = true
  end
  if show.free_text_section_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_free_text_section_groups then
    show.free_text_section_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_free_text_section_groups
    changed = true
  end
  if show.fund_price_input_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_fund_price_input_ack_message then
    show.fund_price_input_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_fund_price_input_ack_message
    changed = true
  end
  if show.fund_price_input_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_fund_price_input_message then
    show.fund_price_input_message = omi_euronext_optiq_sbe_v4_10.prefs.show_fund_price_input_message
    changed = true
  end
  if show.group_size_encoding ~= omi_euronext_optiq_sbe_v4_10.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_euronext_optiq_sbe_v4_10.prefs.show_group_size_encoding
    changed = true
  end
  if show.instrument_synchronization_list_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_list_message then
    show.instrument_synchronization_list_message = omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_list_message
    changed = true
  end
  if show.instrument_synchronization_section_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_section_group then
    show.instrument_synchronization_section_group = omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_section_group
    changed = true
  end
  if show.instrument_synchronization_section_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_section_groups then
    show.instrument_synchronization_section_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_instrument_synchronization_section_groups
    changed = true
  end
  if show.kill_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_kill_message then
    show.kill_message = omi_euronext_optiq_sbe_v4_10.prefs.show_kill_message
    changed = true
  end
  if show.liquidity_provider_command_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_liquidity_provider_command_message then
    show.liquidity_provider_command_message = omi_euronext_optiq_sbe_v4_10.prefs.show_liquidity_provider_command_message
    changed = true
  end
  if show.logon_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_logon_ack_message then
    show.logon_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_logon_ack_message
    changed = true
  end
  if show.logon_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_logon_message then
    show.logon_message = omi_euronext_optiq_sbe_v4_10.prefs.show_logon_message
    changed = true
  end
  if show.logon_reject_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_logon_reject_message then
    show.logon_reject_message = omi_euronext_optiq_sbe_v4_10.prefs.show_logon_reject_message
    changed = true
  end
  if show.logout_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_logout_message then
    show.logout_message = omi_euronext_optiq_sbe_v4_10.prefs.show_logout_message
    changed = true
  end
  if show.mass_cancel_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mass_cancel_ack_message then
    show.mass_cancel_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_mass_cancel_ack_message
    changed = true
  end
  if show.mass_cancel_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mass_cancel_message then
    show.mass_cancel_message = omi_euronext_optiq_sbe_v4_10.prefs.show_mass_cancel_message
    changed = true
  end
  if show.message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_message then
    show.message = omi_euronext_optiq_sbe_v4_10.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_euronext_optiq_sbe_v4_10.prefs.show_message_header then
    show.message_header = omi_euronext_optiq_sbe_v4_10.prefs.show_message_header
    changed = true
  end
  if show.mifid_fields_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_fields_group then
    show.mifid_fields_group = omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_fields_group
    changed = true
  end
  if show.mifid_fields_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_fields_groups then
    show.mifid_fields_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_fields_groups
    changed = true
  end
  if show.mifid_indicators ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_indicators then
    show.mifid_indicators = omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_indicators
    changed = true
  end
  if show.mifid_indicators_optional ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_indicators_optional then
    show.mifid_indicators_optional = omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_indicators_optional
    changed = true
  end
  if show.mifid_short_codes_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_short_codes_group then
    show.mifid_short_codes_group = omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_short_codes_group
    changed = true
  end
  if show.mifid_short_codes_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_short_codes_groups then
    show.mifid_short_codes_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_mifid_short_codes_groups
    changed = true
  end
  if show.mm_protection_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mm_protection_ack_message then
    show.mm_protection_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_mm_protection_ack_message
    changed = true
  end
  if show.mm_protection_request_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mm_protection_request_message then
    show.mm_protection_request_message = omi_euronext_optiq_sbe_v4_10.prefs.show_mm_protection_request_message
    changed = true
  end
  if show.mm_sign_in_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mm_sign_in_ack_message then
    show.mm_sign_in_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_mm_sign_in_ack_message
    changed = true
  end
  if show.mm_sign_in_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mm_sign_in_message then
    show.mm_sign_in_message = omi_euronext_optiq_sbe_v4_10.prefs.show_mm_sign_in_message
    changed = true
  end
  if show.mmp_execution_type ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_execution_type then
    show.mmp_execution_type = omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_execution_type
    changed = true
  end
  if show.mmp_section_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section_group then
    show.mmp_section_group = omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section_group
    changed = true
  end
  if show.mmp_section_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section_groups then
    show.mmp_section_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section_groups
    changed = true
  end
  if show.mmp_section2_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section2_group then
    show.mmp_section2_group = omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section2_group
    changed = true
  end
  if show.mmp_section2_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section2_groups then
    show.mmp_section2_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_mmp_section2_groups
    changed = true
  end
  if show.new_order_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_new_order_message then
    show.new_order_message = omi_euronext_optiq_sbe_v4_10.prefs.show_new_order_message
    changed = true
  end
  if show.new_wholesale_order_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_new_wholesale_order_message then
    show.new_wholesale_order_message = omi_euronext_optiq_sbe_v4_10.prefs.show_new_wholesale_order_message
    changed = true
  end
  if show.not_used_group_1_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_not_used_group_1_groups then
    show.not_used_group_1_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_not_used_group_1_groups
    changed = true
  end
  if show.not_used_group_2_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_not_used_group_2_groups then
    show.not_used_group_2_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_not_used_group_2_groups
    changed = true
  end
  if show.open_close ~= omi_euronext_optiq_sbe_v4_10.prefs.show_open_close then
    show.open_close = omi_euronext_optiq_sbe_v4_10.prefs.show_open_close
    changed = true
  end
  if show.open_order_request_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_open_order_request_message then
    show.open_order_request_message = omi_euronext_optiq_sbe_v4_10.prefs.show_open_order_request_message
    changed = true
  end
  if show.optional_fields_derivatives_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_derivatives_group then
    show.optional_fields_derivatives_group = omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_derivatives_group
    changed = true
  end
  if show.optional_fields_derivatives_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_derivatives_groups then
    show.optional_fields_derivatives_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_derivatives_groups
    changed = true
  end
  if show.optional_fields_fill_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_fill_group then
    show.optional_fields_fill_group = omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_fill_group
    changed = true
  end
  if show.optional_fields_fill_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_fill_groups then
    show.optional_fields_fill_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_fill_groups
    changed = true
  end
  if show.optional_fields_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_group then
    show.optional_fields_group = omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_group
    changed = true
  end
  if show.optional_fields_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_groups then
    show.optional_fields_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_optional_fields_groups
    changed = true
  end
  if show.ownership_request_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_ownership_request_ack_message then
    show.ownership_request_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_ownership_request_ack_message
    changed = true
  end
  if show.ownership_request_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_ownership_request_message then
    show.ownership_request_message = omi_euronext_optiq_sbe_v4_10.prefs.show_ownership_request_message
    changed = true
  end
  if show.packet ~= omi_euronext_optiq_sbe_v4_10.prefs.show_packet then
    show.packet = omi_euronext_optiq_sbe_v4_10.prefs.show_packet
    changed = true
  end
  if show.price_input_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_price_input_message then
    show.price_input_message = omi_euronext_optiq_sbe_v4_10.prefs.show_price_input_message
    changed = true
  end
  if show.quote_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_quote_ack_message then
    show.quote_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_quote_ack_message
    changed = true
  end
  if show.quote_acks_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_quote_acks_group then
    show.quote_acks_group = omi_euronext_optiq_sbe_v4_10.prefs.show_quote_acks_group
    changed = true
  end
  if show.quote_acks_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_quote_acks_groups then
    show.quote_acks_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_quote_acks_groups
    changed = true
  end
  if show.quote_request_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_quote_request_message then
    show.quote_request_message = omi_euronext_optiq_sbe_v4_10.prefs.show_quote_request_message
    changed = true
  end
  if show.quotes_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_message then
    show.quotes_message = omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_message
    changed = true
  end
  if show.quotes_rep_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_rep_group then
    show.quotes_rep_group = omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_rep_group
    changed = true
  end
  if show.quotes_rep_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_rep_groups then
    show.quotes_rep_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_quotes_rep_groups
    changed = true
  end
  if show.reject_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_reject_message then
    show.reject_message = omi_euronext_optiq_sbe_v4_10.prefs.show_reject_message
    changed = true
  end
  if show.request_for_execution_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_request_for_execution_message then
    show.request_for_execution_message = omi_euronext_optiq_sbe_v4_10.prefs.show_request_for_execution_message
    changed = true
  end
  if show.request_for_implied_execution_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_request_for_implied_execution_message then
    show.request_for_implied_execution_message = omi_euronext_optiq_sbe_v4_10.prefs.show_request_for_implied_execution_message
    changed = true
  end
  if show.rfq_audit_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_audit_message then
    show.rfq_audit_message = omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_audit_message
    changed = true
  end
  if show.rfq_counterparts_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_counterparts_group then
    show.rfq_counterparts_group = omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_counterparts_group
    changed = true
  end
  if show.rfq_counterparts_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_counterparts_groups then
    show.rfq_counterparts_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_counterparts_groups
    changed = true
  end
  if show.rfq_matching_status_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_matching_status_message then
    show.rfq_matching_status_message = omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_matching_status_message
    changed = true
  end
  if show.rfq_notification_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_notification_message then
    show.rfq_notification_message = omi_euronext_optiq_sbe_v4_10.prefs.show_rfq_notification_message
    changed = true
  end
  if show.rfqlp_matching_status_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_rfqlp_matching_status_message then
    show.rfqlp_matching_status_message = omi_euronext_optiq_sbe_v4_10.prefs.show_rfqlp_matching_status_message
    changed = true
  end
  if show.security_definition_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_security_definition_ack_message then
    show.security_definition_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_security_definition_ack_message
    changed = true
  end
  if show.security_definition_request_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_security_definition_request_message then
    show.security_definition_request_message = omi_euronext_optiq_sbe_v4_10.prefs.show_security_definition_request_message
    changed = true
  end
  if show.strategy_fields_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_fields_group then
    show.strategy_fields_group = omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_fields_group
    changed = true
  end
  if show.strategy_fields_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_fields_groups then
    show.strategy_fields_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_fields_groups
    changed = true
  end
  if show.strategy_legs_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_legs_group then
    show.strategy_legs_group = omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_legs_group
    changed = true
  end
  if show.strategy_legs_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_legs_groups then
    show.strategy_legs_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_strategy_legs_groups
    changed = true
  end
  if show.synchronization_time_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_synchronization_time_message then
    show.synchronization_time_message = omi_euronext_optiq_sbe_v4_10.prefs.show_synchronization_time_message
    changed = true
  end
  if show.target_counterparties ~= omi_euronext_optiq_sbe_v4_10.prefs.show_target_counterparties then
    show.target_counterparties = omi_euronext_optiq_sbe_v4_10.prefs.show_target_counterparties
    changed = true
  end
  if show.technical_reject_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_technical_reject_message then
    show.technical_reject_message = omi_euronext_optiq_sbe_v4_10.prefs.show_technical_reject_message
    changed = true
  end
  if show.trade_bust_notification_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_trade_bust_notification_message then
    show.trade_bust_notification_message = omi_euronext_optiq_sbe_v4_10.prefs.show_trade_bust_notification_message
    changed = true
  end
  if show.trade_qualifier ~= omi_euronext_optiq_sbe_v4_10.prefs.show_trade_qualifier then
    show.trade_qualifier = omi_euronext_optiq_sbe_v4_10.prefs.show_trade_qualifier
    changed = true
  end
  if show.trading_session ~= omi_euronext_optiq_sbe_v4_10.prefs.show_trading_session then
    show.trading_session = omi_euronext_optiq_sbe_v4_10.prefs.show_trading_session
    changed = true
  end
  if show.user_notification_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_user_notification_message then
    show.user_notification_message = omi_euronext_optiq_sbe_v4_10.prefs.show_user_notification_message
    changed = true
  end
  if show.waiver_indicator ~= omi_euronext_optiq_sbe_v4_10.prefs.show_waiver_indicator then
    show.waiver_indicator = omi_euronext_optiq_sbe_v4_10.prefs.show_waiver_indicator
    changed = true
  end
  if show.wave_for_liquidity_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wave_for_liquidity_message then
    show.wave_for_liquidity_message = omi_euronext_optiq_sbe_v4_10.prefs.show_wave_for_liquidity_message
    changed = true
  end
  if show.wave_for_liquidity_notification_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wave_for_liquidity_notification_message then
    show.wave_for_liquidity_notification_message = omi_euronext_optiq_sbe_v4_10.prefs.show_wave_for_liquidity_notification_message
    changed = true
  end
  if show.wholesale_ack_clearing_rep_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_clearing_rep_group then
    show.wholesale_ack_clearing_rep_group = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_clearing_rep_group
    changed = true
  end
  if show.wholesale_ack_clearing_rep_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_clearing_rep_groups then
    show.wholesale_ack_clearing_rep_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_clearing_rep_groups
    changed = true
  end
  if show.wholesale_ack_legs_rep_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_legs_rep_group then
    show.wholesale_ack_legs_rep_group = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_legs_rep_group
    changed = true
  end
  if show.wholesale_ack_legs_rep_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_legs_rep_groups then
    show.wholesale_ack_legs_rep_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_ack_legs_rep_groups
    changed = true
  end
  if show.wholesale_client_rep_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_client_rep_group then
    show.wholesale_client_rep_group = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_client_rep_group
    changed = true
  end
  if show.wholesale_client_rep_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_client_rep_groups then
    show.wholesale_client_rep_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_client_rep_groups
    changed = true
  end
  if show.wholesale_legs_rep_group ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_legs_rep_group then
    show.wholesale_legs_rep_group = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_legs_rep_group
    changed = true
  end
  if show.wholesale_legs_rep_groups ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_legs_rep_groups then
    show.wholesale_legs_rep_groups = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_legs_rep_groups
    changed = true
  end
  if show.wholesale_order_ack_message ~= omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_order_ack_message then
    show.wholesale_order_ack_message = omi_euronext_optiq_sbe_v4_10.prefs.show_wholesale_order_ack_message
    changed = true
  end
  if show.payload ~= omi_euronext_optiq_sbe_v4_10.prefs.show_payload then
    show.payload = omi_euronext_optiq_sbe_v4_10.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq OrderEntryGateway Sbe 4.10
-----------------------------------------------------------------------

-- Num In Group
euronext_optiq_sbe_v4_10.num_in_group = {}

-- Size: Num In Group
euronext_optiq_sbe_v4_10.num_in_group.size = 1

-- Display: Num In Group
euronext_optiq_sbe_v4_10.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
euronext_optiq_sbe_v4_10.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length Short
euronext_optiq_sbe_v4_10.block_length_short = {}

-- Size: Block Length Short
euronext_optiq_sbe_v4_10.block_length_short.size = 1

-- Display: Block Length Short
euronext_optiq_sbe_v4_10.block_length_short.display = function(value)
  return "Block Length Short: "..value
end

-- Dissect: Block Length Short
euronext_optiq_sbe_v4_10.block_length_short.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.block_length_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.block_length_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.block_length_short, range, value, display)

  return offset + length, value
end

-- Group Size Encoding
euronext_optiq_sbe_v4_10.group_size_encoding = {}

-- Size: Group Size Encoding
euronext_optiq_sbe_v4_10.group_size_encoding.size =
  euronext_optiq_sbe_v4_10.block_length_short.size + 
  euronext_optiq_sbe_v4_10.num_in_group.size

-- Display: Group Size Encoding
euronext_optiq_sbe_v4_10.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
euronext_optiq_sbe_v4_10.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length Short: 1 Byte Unsigned Fixed Width Integer
  index, block_length_short = euronext_optiq_sbe_v4_10.block_length_short.dissect(buffer, index, packet, parent)

  -- Num In Group: 1 Byte Unsigned Fixed Width Integer
  index, num_in_group = euronext_optiq_sbe_v4_10.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
euronext_optiq_sbe_v4_10.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.group_size_encoding, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Not Used Group 1 Groups
euronext_optiq_sbe_v4_10.not_used_group_1_groups = {}

-- Calculate size of: Not Used Group 1 Groups
euronext_optiq_sbe_v4_10.not_used_group_1_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local not_used_group_1_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + not_used_group_1_group_count * 0

  return index
end

-- Display: Not Used Group 1 Groups
euronext_optiq_sbe_v4_10.not_used_group_1_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Used Group 1 Groups
euronext_optiq_sbe_v4_10.not_used_group_1_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Not Used Group 1 Group
  for not_used_group_1_group_index = 1, num_in_group do
    index, not_used_group_1_group = euronext_optiq_sbe_v4_10.not_used_group_1_group.dissect(buffer, index, packet, parent, not_used_group_1_group_index)
  end

  return index
end

-- Dissect: Not Used Group 1 Groups
euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.not_used_group_1_groups then
    local length = euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.not_used_group_1_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.not_used_group_1_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.not_used_group_1_groups.fields(buffer, offset, packet, parent)
end

-- Rejected Message Id
euronext_optiq_sbe_v4_10.rejected_message_id = {}

-- Size: Rejected Message Id
euronext_optiq_sbe_v4_10.rejected_message_id.size = 2

-- Display: Rejected Message Id
euronext_optiq_sbe_v4_10.rejected_message_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Rejected Message Id: No Value"
  end

  return "Rejected Message Id: "..value
end

-- Dissect: Rejected Message Id
euronext_optiq_sbe_v4_10.rejected_message_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.rejected_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.rejected_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rejected_message_id, range, value, display)

  return offset + length, value
end

-- Rejected Message
euronext_optiq_sbe_v4_10.rejected_message = {}

-- Size: Rejected Message
euronext_optiq_sbe_v4_10.rejected_message.size = 1

-- Display: Rejected Message
euronext_optiq_sbe_v4_10.rejected_message.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Rejected Message: No Value"
  end

  return "Rejected Message: "..value
end

-- Dissect: Rejected Message
euronext_optiq_sbe_v4_10.rejected_message.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.rejected_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.rejected_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rejected_message, range, value, display)

  return offset + length, value
end

-- Error Code
euronext_optiq_sbe_v4_10.error_code = {}

-- Size: Error Code
euronext_optiq_sbe_v4_10.error_code.size = 2

-- Display: Error Code
euronext_optiq_sbe_v4_10.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
euronext_optiq_sbe_v4_10.error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.error_code, range, value, display)

  return offset + length, value
end

-- Operation Type
euronext_optiq_sbe_v4_10.operation_type = {}

-- Size: Operation Type
euronext_optiq_sbe_v4_10.operation_type.size = 1

-- Display: Operation Type
euronext_optiq_sbe_v4_10.operation_type.display = function(value)
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
euronext_optiq_sbe_v4_10.operation_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.operation_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.operation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Mi Cof Secondary Listing
euronext_optiq_sbe_v4_10.mi_cof_secondary_listing = {}

-- Size: Mi Cof Secondary Listing
euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.size = 4

-- Display: Mi Cof Secondary Listing
euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Cof Secondary Listing: No Value"
  end

  return "Mi Cof Secondary Listing: "..value
end

-- Dissect: Mi Cof Secondary Listing
euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.size
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

  local display = euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.mi_cof_secondary_listing, range, value, display)

  return offset + length, value
end

-- Emm Optional
euronext_optiq_sbe_v4_10.emm_optional = {}

-- Size: Emm Optional
euronext_optiq_sbe_v4_10.emm_optional.size = 1

-- Display: Emm Optional
euronext_optiq_sbe_v4_10.emm_optional.display = function(value)
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
euronext_optiq_sbe_v4_10.emm_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.emm_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.emm_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.emm_optional, range, value, display)

  return offset + length, value
end

-- Symbol Index
euronext_optiq_sbe_v4_10.symbol_index = {}

-- Size: Symbol Index
euronext_optiq_sbe_v4_10.symbol_index.size = 4

-- Display: Symbol Index
euronext_optiq_sbe_v4_10.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
euronext_optiq_sbe_v4_10.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Client Order Id
euronext_optiq_sbe_v4_10.client_order_id = {}

-- Size: Client Order Id
euronext_optiq_sbe_v4_10.client_order_id.size = 8

-- Display: Client Order Id
euronext_optiq_sbe_v4_10.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
euronext_optiq_sbe_v4_10.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Firm Id
euronext_optiq_sbe_v4_10.firm_id = {}

-- Size: Firm Id
euronext_optiq_sbe_v4_10.firm_id.size = 8

-- Display: Firm Id
euronext_optiq_sbe_v4_10.firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id: No Value"
  end

  return "Firm Id: "..value
end

-- Dissect: Firm Id
euronext_optiq_sbe_v4_10.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.firm_id.size
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

  local display = euronext_optiq_sbe_v4_10.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
euronext_optiq_sbe_v4_10.msg_seq_num = {}

-- Size: Msg Seq Num
euronext_optiq_sbe_v4_10.msg_seq_num.size = 4

-- Display: Msg Seq Num
euronext_optiq_sbe_v4_10.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
euronext_optiq_sbe_v4_10.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Declaration Entry Reject Message
euronext_optiq_sbe_v4_10.declaration_entry_reject_message = {}

-- Calculate size of: Declaration Entry Reject Message
euronext_optiq_sbe_v4_10.declaration_entry_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm_optional.size

  index = index + euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.size

  index = index + euronext_optiq_sbe_v4_10.operation_type.size

  index = index + euronext_optiq_sbe_v4_10.error_code.size

  index = index + euronext_optiq_sbe_v4_10.rejected_message.size

  index = index + euronext_optiq_sbe_v4_10.rejected_message_id.size

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  return index
end

-- Display: Declaration Entry Reject Message
euronext_optiq_sbe_v4_10.declaration_entry_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Entry Reject Message
euronext_optiq_sbe_v4_10.declaration_entry_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_sbe_v4_10.emm_optional.dissect(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.dissect(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = euronext_optiq_sbe_v4_10.operation_type.dissect(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = euronext_optiq_sbe_v4_10.error_code.dissect(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = euronext_optiq_sbe_v4_10.rejected_message.dissect(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message_id = euronext_optiq_sbe_v4_10.rejected_message_id.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Reject Message
euronext_optiq_sbe_v4_10.declaration_entry_reject_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.declaration_entry_reject_message then
    local length = euronext_optiq_sbe_v4_10.declaration_entry_reject_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.declaration_entry_reject_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.declaration_entry_reject_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.declaration_entry_reject_message.fields(buffer, offset, packet, parent)
end

-- Bypass Indicator
euronext_optiq_sbe_v4_10.bypass_indicator = {}

-- Size: Bypass Indicator
euronext_optiq_sbe_v4_10.bypass_indicator.size = 1

-- Display: Bypass Indicator
euronext_optiq_sbe_v4_10.bypass_indicator.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Bypass Indicator: No Value"
  end

  return "Bypass Indicator: "..value
end

-- Dissect: Bypass Indicator
euronext_optiq_sbe_v4_10.bypass_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.bypass_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.bypass_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.bypass_indicator, range, value, display)

  return offset + length, value
end

-- Price
euronext_optiq_sbe_v4_10.price = {}

-- Size: Price
euronext_optiq_sbe_v4_10.price.size = 8

-- Display: Price
euronext_optiq_sbe_v4_10.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
euronext_optiq_sbe_v4_10.price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.price, range, value, display)

  return offset + length, value
end

-- Emm
euronext_optiq_sbe_v4_10.emm = {}

-- Size: Emm
euronext_optiq_sbe_v4_10.emm.size = 1

-- Display: Emm
euronext_optiq_sbe_v4_10.emm.display = function(value)
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
euronext_optiq_sbe_v4_10.emm.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.emm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.emm.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.emm, range, value, display)

  return offset + length, value
end

-- Fund Price Input Ack Message
euronext_optiq_sbe_v4_10.fund_price_input_ack_message = {}

-- Size: Fund Price Input Ack Message
euronext_optiq_sbe_v4_10.fund_price_input_ack_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.price.size + 
  euronext_optiq_sbe_v4_10.bypass_indicator.size

-- Display: Fund Price Input Ack Message
euronext_optiq_sbe_v4_10.fund_price_input_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fund Price Input Ack Message
euronext_optiq_sbe_v4_10.fund_price_input_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = euronext_optiq_sbe_v4_10.price.dissect(buffer, index, packet, parent)

  -- Bypass Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, bypass_indicator = euronext_optiq_sbe_v4_10.bypass_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fund Price Input Ack Message
euronext_optiq_sbe_v4_10.fund_price_input_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.fund_price_input_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.fund_price_input_ack_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.fund_price_input_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.fund_price_input_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.fund_price_input_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Sending Time
euronext_optiq_sbe_v4_10.sending_time = {}

-- Size: Sending Time
euronext_optiq_sbe_v4_10.sending_time.size = 8

-- Display: Sending Time
euronext_optiq_sbe_v4_10.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
euronext_optiq_sbe_v4_10.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Cl Msg Seq Num
euronext_optiq_sbe_v4_10.cl_msg_seq_num = {}

-- Size: Cl Msg Seq Num
euronext_optiq_sbe_v4_10.cl_msg_seq_num.size = 4

-- Display: Cl Msg Seq Num
euronext_optiq_sbe_v4_10.cl_msg_seq_num.display = function(value)
  return "Cl Msg Seq Num: "..value
end

-- Dissect: Cl Msg Seq Num
euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.cl_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.cl_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.cl_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Fund Price Input Message
euronext_optiq_sbe_v4_10.fund_price_input_message = {}

-- Size: Fund Price Input Message
euronext_optiq_sbe_v4_10.fund_price_input_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.price.size + 
  euronext_optiq_sbe_v4_10.bypass_indicator.size

-- Display: Fund Price Input Message
euronext_optiq_sbe_v4_10.fund_price_input_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fund Price Input Message
euronext_optiq_sbe_v4_10.fund_price_input_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = euronext_optiq_sbe_v4_10.price.dissect(buffer, index, packet, parent)

  -- Bypass Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, bypass_indicator = euronext_optiq_sbe_v4_10.bypass_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fund Price Input Message
euronext_optiq_sbe_v4_10.fund_price_input_message.dissect = function(buffer, offset, packet, parent)
  if show.fund_price_input_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.fund_price_input_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.fund_price_input_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.fund_price_input_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.fund_price_input_message.fields(buffer, offset, packet, parent)
  end
end

-- Action Type
euronext_optiq_sbe_v4_10.action_type = {}

-- Size: Action Type
euronext_optiq_sbe_v4_10.action_type.size = 1

-- Display: Action Type
euronext_optiq_sbe_v4_10.action_type.display = function(value)
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
euronext_optiq_sbe_v4_10.action_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.action_type, range, value, display)

  return offset + length, value
end

-- Declaration Id
euronext_optiq_sbe_v4_10.declaration_id = {}

-- Size: Declaration Id
euronext_optiq_sbe_v4_10.declaration_id.size = 8

-- Display: Declaration Id
euronext_optiq_sbe_v4_10.declaration_id.display = function(value)
  return "Declaration Id: "..value
end

-- Dissect: Declaration Id
euronext_optiq_sbe_v4_10.declaration_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.declaration_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.declaration_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.declaration_id, range, value, display)

  return offset + length, value
end

-- Declaration Cancel And Refusal Message
euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message = {}

-- Size: Declaration Cancel And Refusal Message
euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.declaration_id.size + 
  euronext_optiq_sbe_v4_10.action_type.size

-- Display: Declaration Cancel And Refusal Message
euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Cancel And Refusal Message
euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer
  index, declaration_id = euronext_optiq_sbe_v4_10.declaration_id.dissect(buffer, index, packet, parent)

  -- Action Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, action_type = euronext_optiq_sbe_v4_10.action_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Cancel And Refusal Message
euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.dissect = function(buffer, offset, packet, parent)
  if show.declaration_cancel_and_refusal_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.declaration_cancel_and_refusal_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.fields(buffer, offset, packet, parent)
  end
end

-- Not Used Group 2 Groups
euronext_optiq_sbe_v4_10.not_used_group_2_groups = {}

-- Calculate size of: Not Used Group 2 Groups
euronext_optiq_sbe_v4_10.not_used_group_2_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local not_used_group_2_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + not_used_group_2_group_count * 0

  return index
end

-- Display: Not Used Group 2 Groups
euronext_optiq_sbe_v4_10.not_used_group_2_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Not Used Group 2 Groups
euronext_optiq_sbe_v4_10.not_used_group_2_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Not Used Group 2 Group
  for not_used_group_2_group_index = 1, num_in_group do
    index, not_used_group_2_group = euronext_optiq_sbe_v4_10.not_used_group_2_group.dissect(buffer, index, packet, parent, not_used_group_2_group_index)
  end

  return index
end

-- Dissect: Not Used Group 2 Groups
euronext_optiq_sbe_v4_10.not_used_group_2_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.not_used_group_2_groups then
    local length = euronext_optiq_sbe_v4_10.not_used_group_2_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.not_used_group_2_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.not_used_group_2_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.not_used_group_2_groups.fields(buffer, offset, packet, parent)
end

-- Ccpid
euronext_optiq_sbe_v4_10.ccpid = {}

-- Size: Ccpid
euronext_optiq_sbe_v4_10.ccpid.size = 1

-- Display: Ccpid
euronext_optiq_sbe_v4_10.ccpid.display = function(value)
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
euronext_optiq_sbe_v4_10.ccpid.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ccpid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.ccpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ccpid, range, value, display)

  return offset + length, value
end

-- Miscellaneous Fee Amount
euronext_optiq_sbe_v4_10.miscellaneous_fee_amount = {}

-- Size: Miscellaneous Fee Amount
euronext_optiq_sbe_v4_10.miscellaneous_fee_amount.size = 8

-- Display: Miscellaneous Fee Amount
euronext_optiq_sbe_v4_10.miscellaneous_fee_amount.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Miscellaneous Fee Amount: No Value"
  end

  return "Miscellaneous Fee Amount: "..value
end

-- Dissect: Miscellaneous Fee Amount
euronext_optiq_sbe_v4_10.miscellaneous_fee_amount.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.miscellaneous_fee_amount.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.miscellaneous_fee_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.miscellaneous_fee_amount, range, value, display)

  return offset + length, value
end

-- Previous Day Indicator
euronext_optiq_sbe_v4_10.previous_day_indicator = {}

-- Size: Previous Day Indicator
euronext_optiq_sbe_v4_10.previous_day_indicator.size = 1

-- Display: Previous Day Indicator
euronext_optiq_sbe_v4_10.previous_day_indicator.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Previous Day Indicator: No Value"
  end

  return "Previous Day Indicator: "..value
end

-- Dissect: Previous Day Indicator
euronext_optiq_sbe_v4_10.previous_day_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.previous_day_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.previous_day_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.previous_day_indicator, range, value, display)

  return offset + length, value
end

-- Waiver Indicator
euronext_optiq_sbe_v4_10.waiver_indicator = {}

-- Size: Waiver Indicator
euronext_optiq_sbe_v4_10.waiver_indicator.size = 1

-- Display: Waiver Indicator
euronext_optiq_sbe_v4_10.waiver_indicator.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.waiver_indicator.bits = function(buffer, offset, packet, parent)

  -- Omf: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.omf, buffer(offset, 1))

  -- Ilqd: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ilqd, buffer(offset, 1))

  -- Size: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.size, buffer(offset, 1))

  -- Pric: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.pric, buffer(offset, 1))

  -- Oilq: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oilq, buffer(offset, 1))

  -- Nliq: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.nliq, buffer(offset, 1))

  -- Rfpt: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfpt, buffer(offset, 1))

  -- Lrgs: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.lrgs, buffer(offset, 1))
end

-- Dissect: Waiver Indicator
euronext_optiq_sbe_v4_10.waiver_indicator.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.waiver_indicator.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.waiver_indicator, range, display)

  if show.waiver_indicator then
    euronext_optiq_sbe_v4_10.waiver_indicator.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Free Text Cross
euronext_optiq_sbe_v4_10.free_text_cross = {}

-- Size: Free Text Cross
euronext_optiq_sbe_v4_10.free_text_cross.size = 18

-- Display: Free Text Cross
euronext_optiq_sbe_v4_10.free_text_cross.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text Cross: No Value"
  end

  return "Free Text Cross: "..value
end

-- Dissect: Free Text Cross
euronext_optiq_sbe_v4_10.free_text_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.free_text_cross.size
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

  local display = euronext_optiq_sbe_v4_10.free_text_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.free_text_cross, range, value, display)

  return offset + length, value
end

-- Free Text
euronext_optiq_sbe_v4_10.free_text = {}

-- Size: Free Text
euronext_optiq_sbe_v4_10.free_text.size = 18

-- Display: Free Text
euronext_optiq_sbe_v4_10.free_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text: No Value"
  end

  return "Free Text: "..value
end

-- Dissect: Free Text
euronext_optiq_sbe_v4_10.free_text.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.free_text.size
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

  local display = euronext_optiq_sbe_v4_10.free_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.free_text, range, value, display)

  return offset + length, value
end

-- Account Number Cross
euronext_optiq_sbe_v4_10.account_number_cross = {}

-- Size: Account Number Cross
euronext_optiq_sbe_v4_10.account_number_cross.size = 12

-- Display: Account Number Cross
euronext_optiq_sbe_v4_10.account_number_cross.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number Cross: No Value"
  end

  return "Account Number Cross: "..value
end

-- Dissect: Account Number Cross
euronext_optiq_sbe_v4_10.account_number_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.account_number_cross.size
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

  local display = euronext_optiq_sbe_v4_10.account_number_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.account_number_cross, range, value, display)

  return offset + length, value
end

-- Account Number
euronext_optiq_sbe_v4_10.account_number = {}

-- Size: Account Number
euronext_optiq_sbe_v4_10.account_number.size = 12

-- Display: Account Number
euronext_optiq_sbe_v4_10.account_number.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number: No Value"
  end

  return "Account Number: "..value
end

-- Dissect: Account Number
euronext_optiq_sbe_v4_10.account_number.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.account_number.size
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

  local display = euronext_optiq_sbe_v4_10.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.account_number, range, value, display)

  return offset + length, value
end

-- Gross Trade Amount
euronext_optiq_sbe_v4_10.gross_trade_amount = {}

-- Size: Gross Trade Amount
euronext_optiq_sbe_v4_10.gross_trade_amount.size = 8

-- Display: Gross Trade Amount
euronext_optiq_sbe_v4_10.gross_trade_amount.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Gross Trade Amount: No Value"
  end

  return "Gross Trade Amount: "..value
end

-- Dissect: Gross Trade Amount
euronext_optiq_sbe_v4_10.gross_trade_amount.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.gross_trade_amount.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.gross_trade_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.gross_trade_amount, range, value, display)

  return offset + length, value
end

-- End Time Vwap
euronext_optiq_sbe_v4_10.end_time_vwap = {}

-- Size: End Time Vwap
euronext_optiq_sbe_v4_10.end_time_vwap.size = 4

-- Display: End Time Vwap
euronext_optiq_sbe_v4_10.end_time_vwap.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "End Time Vwap: No Value"
  end

  return "End Time Vwap: "..value
end

-- Dissect: End Time Vwap
euronext_optiq_sbe_v4_10.end_time_vwap.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.end_time_vwap.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.end_time_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.end_time_vwap, range, value, display)

  return offset + length, value
end

-- Start Time Vwap
euronext_optiq_sbe_v4_10.start_time_vwap = {}

-- Size: Start Time Vwap
euronext_optiq_sbe_v4_10.start_time_vwap.size = 4

-- Display: Start Time Vwap
euronext_optiq_sbe_v4_10.start_time_vwap.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Start Time Vwap: No Value"
  end

  return "Start Time Vwap: "..value
end

-- Dissect: Start Time Vwap
euronext_optiq_sbe_v4_10.start_time_vwap.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.start_time_vwap.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.start_time_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.start_time_vwap, range, value, display)

  return offset + length, value
end

-- Principal Code Cross
euronext_optiq_sbe_v4_10.principal_code_cross = {}

-- Size: Principal Code Cross
euronext_optiq_sbe_v4_10.principal_code_cross.size = 8

-- Display: Principal Code Cross
euronext_optiq_sbe_v4_10.principal_code_cross.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code Cross: No Value"
  end

  return "Principal Code Cross: "..value
end

-- Dissect: Principal Code Cross
euronext_optiq_sbe_v4_10.principal_code_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.principal_code_cross.size
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

  local display = euronext_optiq_sbe_v4_10.principal_code_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.principal_code_cross, range, value, display)

  return offset + length, value
end

-- Principal Code
euronext_optiq_sbe_v4_10.principal_code = {}

-- Size: Principal Code
euronext_optiq_sbe_v4_10.principal_code.size = 8

-- Display: Principal Code
euronext_optiq_sbe_v4_10.principal_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code: No Value"
  end

  return "Principal Code: "..value
end

-- Dissect: Principal Code
euronext_optiq_sbe_v4_10.principal_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.principal_code.size
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

  local display = euronext_optiq_sbe_v4_10.principal_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.principal_code, range, value, display)

  return offset + length, value
end

-- Transaction Price Type
euronext_optiq_sbe_v4_10.transaction_price_type = {}

-- Size: Transaction Price Type
euronext_optiq_sbe_v4_10.transaction_price_type.size = 1

-- Display: Transaction Price Type
euronext_optiq_sbe_v4_10.transaction_price_type.display = function(value)
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
euronext_optiq_sbe_v4_10.transaction_price_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.transaction_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.transaction_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.transaction_price_type, range, value, display)

  return offset + length, value
end

-- Guarantee Flag Optional
euronext_optiq_sbe_v4_10.guarantee_flag_optional = {}

-- Size: Guarantee Flag Optional
euronext_optiq_sbe_v4_10.guarantee_flag_optional.size = 1

-- Display: Guarantee Flag Optional
euronext_optiq_sbe_v4_10.guarantee_flag_optional.display = function(value)
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
euronext_optiq_sbe_v4_10.guarantee_flag_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.guarantee_flag_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.guarantee_flag_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.guarantee_flag_optional, range, value, display)

  return offset + length, value
end

-- Settlement Period Optional
euronext_optiq_sbe_v4_10.settlement_period_optional = {}

-- Size: Settlement Period Optional
euronext_optiq_sbe_v4_10.settlement_period_optional.size = 1

-- Display: Settlement Period Optional
euronext_optiq_sbe_v4_10.settlement_period_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Settlement Period Optional: No Value"
  end

  return "Settlement Period Optional: "..value
end

-- Dissect: Settlement Period Optional
euronext_optiq_sbe_v4_10.settlement_period_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.settlement_period_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.settlement_period_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.settlement_period_optional, range, value, display)

  return offset + length, value
end

-- Settlement Flag Optional
euronext_optiq_sbe_v4_10.settlement_flag_optional = {}

-- Size: Settlement Flag Optional
euronext_optiq_sbe_v4_10.settlement_flag_optional.size = 1

-- Display: Settlement Flag Optional
euronext_optiq_sbe_v4_10.settlement_flag_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Settlement Flag Optional: No Value"
  end

  return "Settlement Flag Optional: "..value
end

-- Dissect: Settlement Flag Optional
euronext_optiq_sbe_v4_10.settlement_flag_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.settlement_flag_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.settlement_flag_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.settlement_flag_optional, range, value, display)

  return offset + length, value
end

-- Trading Capacity Cross
euronext_optiq_sbe_v4_10.trading_capacity_cross = {}

-- Size: Trading Capacity Cross
euronext_optiq_sbe_v4_10.trading_capacity_cross.size = 1

-- Display: Trading Capacity Cross
euronext_optiq_sbe_v4_10.trading_capacity_cross.display = function(value)
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
euronext_optiq_sbe_v4_10.trading_capacity_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.trading_capacity_cross.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.trading_capacity_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.trading_capacity_cross, range, value, display)

  return offset + length, value
end

-- Trading Capacity Optional
euronext_optiq_sbe_v4_10.trading_capacity_optional = {}

-- Size: Trading Capacity Optional
euronext_optiq_sbe_v4_10.trading_capacity_optional.size = 1

-- Display: Trading Capacity Optional
euronext_optiq_sbe_v4_10.trading_capacity_optional.display = function(value)
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
euronext_optiq_sbe_v4_10.trading_capacity_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.trading_capacity_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.trading_capacity_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.trading_capacity_optional, range, value, display)

  return offset + length, value
end

-- Account Type Cross
euronext_optiq_sbe_v4_10.account_type_cross = {}

-- Size: Account Type Cross
euronext_optiq_sbe_v4_10.account_type_cross.size = 1

-- Display: Account Type Cross
euronext_optiq_sbe_v4_10.account_type_cross.display = function(value)
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
euronext_optiq_sbe_v4_10.account_type_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.account_type_cross.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.account_type_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.account_type_cross, range, value, display)

  return offset + length, value
end

-- Account Type Optional
euronext_optiq_sbe_v4_10.account_type_optional = {}

-- Size: Account Type Optional
euronext_optiq_sbe_v4_10.account_type_optional.size = 1

-- Display: Account Type Optional
euronext_optiq_sbe_v4_10.account_type_optional.display = function(value)
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
euronext_optiq_sbe_v4_10.account_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.account_type_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.account_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.account_type_optional, range, value, display)

  return offset + length, value
end

-- Clearing Firm Id
euronext_optiq_sbe_v4_10.clearing_firm_id = {}

-- Size: Clearing Firm Id
euronext_optiq_sbe_v4_10.clearing_firm_id.size = 8

-- Display: Clearing Firm Id
euronext_optiq_sbe_v4_10.clearing_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Id: No Value"
  end

  return "Clearing Firm Id: "..value
end

-- Dissect: Clearing Firm Id
euronext_optiq_sbe_v4_10.clearing_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.clearing_firm_id.size
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

  local display = euronext_optiq_sbe_v4_10.clearing_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_firm_id, range, value, display)

  return offset + length, value
end

-- Centralisation Date
euronext_optiq_sbe_v4_10.centralisation_date = {}

-- Size: Centralisation Date
euronext_optiq_sbe_v4_10.centralisation_date.size = 10

-- Display: Centralisation Date
euronext_optiq_sbe_v4_10.centralisation_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Centralisation Date: No Value"
  end

  return "Centralisation Date: "..value
end

-- Dissect: Centralisation Date
euronext_optiq_sbe_v4_10.centralisation_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.centralisation_date.size
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

  local display = euronext_optiq_sbe_v4_10.centralisation_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.centralisation_date, range, value, display)

  return offset + length, value
end

-- Trade Time Optional
euronext_optiq_sbe_v4_10.trade_time_optional = {}

-- Size: Trade Time Optional
euronext_optiq_sbe_v4_10.trade_time_optional.size = 8

-- Display: Trade Time Optional
euronext_optiq_sbe_v4_10.trade_time_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trade Time Optional: No Value"
  end

  return "Trade Time Optional: "..value
end

-- Dissect: Trade Time Optional
euronext_optiq_sbe_v4_10.trade_time_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.trade_time_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.trade_time_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.trade_time_optional, range, value, display)

  return offset + length, value
end

-- Pre Matching Type
euronext_optiq_sbe_v4_10.pre_matching_type = {}

-- Size: Pre Matching Type
euronext_optiq_sbe_v4_10.pre_matching_type.size = 1

-- Display: Pre Matching Type
euronext_optiq_sbe_v4_10.pre_matching_type.display = function(value)
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
euronext_optiq_sbe_v4_10.pre_matching_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.pre_matching_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.pre_matching_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.pre_matching_type, range, value, display)

  return offset + length, value
end

-- Price Optional
euronext_optiq_sbe_v4_10.price_optional = {}

-- Size: Price Optional
euronext_optiq_sbe_v4_10.price_optional.size = 8

-- Display: Price Optional
euronext_optiq_sbe_v4_10.price_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Dissect: Price Optional
euronext_optiq_sbe_v4_10.price_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.price_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.price_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Quantity Optional
euronext_optiq_sbe_v4_10.quantity_optional = {}

-- Size: Quantity Optional
euronext_optiq_sbe_v4_10.quantity_optional.size = 8

-- Display: Quantity Optional
euronext_optiq_sbe_v4_10.quantity_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quantity Optional: No Value"
  end

  return "Quantity Optional: "..value
end

-- Dissect: Quantity Optional
euronext_optiq_sbe_v4_10.quantity_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.quantity_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.quantity_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.quantity_optional, range, value, display)

  return offset + length, value
end

-- Side Optional
euronext_optiq_sbe_v4_10.side_optional = {}

-- Size: Side Optional
euronext_optiq_sbe_v4_10.side_optional.size = 1

-- Display: Side Optional
euronext_optiq_sbe_v4_10.side_optional.display = function(value)
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
euronext_optiq_sbe_v4_10.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.side_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Entering Counterparty
euronext_optiq_sbe_v4_10.entering_counterparty = {}

-- Size: Entering Counterparty
euronext_optiq_sbe_v4_10.entering_counterparty.size = 8

-- Display: Entering Counterparty
euronext_optiq_sbe_v4_10.entering_counterparty.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Entering Counterparty: No Value"
  end

  return "Entering Counterparty: "..value
end

-- Dissect: Entering Counterparty
euronext_optiq_sbe_v4_10.entering_counterparty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.entering_counterparty.size
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

  local display = euronext_optiq_sbe_v4_10.entering_counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.entering_counterparty, range, value, display)

  return offset + length, value
end

-- Declaration Status
euronext_optiq_sbe_v4_10.declaration_status = {}

-- Size: Declaration Status
euronext_optiq_sbe_v4_10.declaration_status.size = 1

-- Display: Declaration Status
euronext_optiq_sbe_v4_10.declaration_status.display = function(value)
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
euronext_optiq_sbe_v4_10.declaration_status.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.declaration_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.declaration_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.declaration_status, range, value, display)

  return offset + length, value
end

-- Client Order Id Optional
euronext_optiq_sbe_v4_10.client_order_id_optional = {}

-- Size: Client Order Id Optional
euronext_optiq_sbe_v4_10.client_order_id_optional.size = 8

-- Display: Client Order Id Optional
euronext_optiq_sbe_v4_10.client_order_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Client Order Id Optional: No Value"
  end

  return "Client Order Id Optional: "..value
end

-- Dissect: Client Order Id Optional
euronext_optiq_sbe_v4_10.client_order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.client_order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.client_order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.client_order_id_optional, range, value, display)

  return offset + length, value
end

-- Declaration Notice Message
euronext_optiq_sbe_v4_10.declaration_notice_message = {}

-- Calculate size of: Declaration Notice Message
euronext_optiq_sbe_v4_10.declaration_notice_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.declaration_id.size

  index = index + euronext_optiq_sbe_v4_10.declaration_status.size

  index = index + euronext_optiq_sbe_v4_10.operation_type.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.entering_counterparty.size

  index = index + euronext_optiq_sbe_v4_10.side_optional.size

  index = index + euronext_optiq_sbe_v4_10.quantity_optional.size

  index = index + euronext_optiq_sbe_v4_10.price_optional.size

  index = index + euronext_optiq_sbe_v4_10.pre_matching_type.size

  index = index + euronext_optiq_sbe_v4_10.trade_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.size

  index = index + euronext_optiq_sbe_v4_10.centralisation_date.size

  index = index + euronext_optiq_sbe_v4_10.clearing_firm_id.size

  index = index + euronext_optiq_sbe_v4_10.account_type_optional.size

  index = index + euronext_optiq_sbe_v4_10.account_type_cross.size

  index = index + euronext_optiq_sbe_v4_10.trading_capacity_optional.size

  index = index + euronext_optiq_sbe_v4_10.trading_capacity_cross.size

  index = index + euronext_optiq_sbe_v4_10.settlement_flag_optional.size

  index = index + euronext_optiq_sbe_v4_10.settlement_period_optional.size

  index = index + euronext_optiq_sbe_v4_10.guarantee_flag_optional.size

  index = index + euronext_optiq_sbe_v4_10.transaction_price_type.size

  index = index + euronext_optiq_sbe_v4_10.principal_code.size

  index = index + euronext_optiq_sbe_v4_10.principal_code_cross.size

  index = index + euronext_optiq_sbe_v4_10.start_time_vwap.size

  index = index + euronext_optiq_sbe_v4_10.end_time_vwap.size

  index = index + euronext_optiq_sbe_v4_10.gross_trade_amount.size

  index = index + euronext_optiq_sbe_v4_10.account_number.size

  index = index + euronext_optiq_sbe_v4_10.account_number_cross.size

  index = index + euronext_optiq_sbe_v4_10.free_text.size

  index = index + euronext_optiq_sbe_v4_10.free_text_cross.size

  index = index + euronext_optiq_sbe_v4_10.waiver_indicator.size

  index = index + euronext_optiq_sbe_v4_10.previous_day_indicator.size

  index = index + euronext_optiq_sbe_v4_10.miscellaneous_fee_amount.size

  index = index + euronext_optiq_sbe_v4_10.ccpid.size

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.not_used_group_2_groups.size(buffer, offset + index)

  return index
end

-- Display: Declaration Notice Message
euronext_optiq_sbe_v4_10.declaration_notice_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Notice Message
euronext_optiq_sbe_v4_10.declaration_notice_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_sbe_v4_10.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Declaration Id: 8 Byte Unsigned Fixed Width Integer
  index, declaration_id = euronext_optiq_sbe_v4_10.declaration_id.dissect(buffer, index, packet, parent)

  -- Declaration Status: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, declaration_status = euronext_optiq_sbe_v4_10.declaration_status.dissect(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = euronext_optiq_sbe_v4_10.operation_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Entering Counterparty: 8 Byte Ascii String Nullable
  index, entering_counterparty = euronext_optiq_sbe_v4_10.entering_counterparty.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_sbe_v4_10.side_optional.dissect(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_sbe_v4_10.quantity_optional.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = euronext_optiq_sbe_v4_10.price_optional.dissect(buffer, index, packet, parent)

  -- Pre Matching Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, pre_matching_type = euronext_optiq_sbe_v4_10.pre_matching_type.dissect(buffer, index, packet, parent)

  -- Trade Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trade_time_optional = euronext_optiq_sbe_v4_10.trade_time_optional.dissect(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.dissect(buffer, index, packet, parent)

  -- Centralisation Date: 10 Byte Ascii String Nullable
  index, centralisation_date = euronext_optiq_sbe_v4_10.centralisation_date.dissect(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_sbe_v4_10.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_sbe_v4_10.account_type_optional.dissect(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = euronext_optiq_sbe_v4_10.account_type_cross.dissect(buffer, index, packet, parent)

  -- Trading Capacity Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_optional = euronext_optiq_sbe_v4_10.trading_capacity_optional.dissect(buffer, index, packet, parent)

  -- Trading Capacity Cross: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_cross = euronext_optiq_sbe_v4_10.trading_capacity_cross.dissect(buffer, index, packet, parent)

  -- Settlement Flag Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_flag_optional = euronext_optiq_sbe_v4_10.settlement_flag_optional.dissect(buffer, index, packet, parent)

  -- Settlement Period Optional: 1 Byte Unsigned Fixed Width Integer Nullable
  index, settlement_period_optional = euronext_optiq_sbe_v4_10.settlement_period_optional.dissect(buffer, index, packet, parent)

  -- Guarantee Flag Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, guarantee_flag_optional = euronext_optiq_sbe_v4_10.guarantee_flag_optional.dissect(buffer, index, packet, parent)

  -- Transaction Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, transaction_price_type = euronext_optiq_sbe_v4_10.transaction_price_type.dissect(buffer, index, packet, parent)

  -- Principal Code: 8 Byte Ascii String Nullable
  index, principal_code = euronext_optiq_sbe_v4_10.principal_code.dissect(buffer, index, packet, parent)

  -- Principal Code Cross: 8 Byte Ascii String Nullable
  index, principal_code_cross = euronext_optiq_sbe_v4_10.principal_code_cross.dissect(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = euronext_optiq_sbe_v4_10.start_time_vwap.dissect(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = euronext_optiq_sbe_v4_10.end_time_vwap.dissect(buffer, index, packet, parent)

  -- Gross Trade Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_trade_amount = euronext_optiq_sbe_v4_10.gross_trade_amount.dissect(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_sbe_v4_10.account_number.dissect(buffer, index, packet, parent)

  -- Account Number Cross: 12 Byte Ascii String Nullable
  index, account_number_cross = euronext_optiq_sbe_v4_10.account_number_cross.dissect(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_sbe_v4_10.free_text.dissect(buffer, index, packet, parent)

  -- Free Text Cross: 18 Byte Ascii String Nullable
  index, free_text_cross = euronext_optiq_sbe_v4_10.free_text_cross.dissect(buffer, index, packet, parent)

  -- Waiver Indicator: Struct of 8 fields
  index, waiver_indicator = euronext_optiq_sbe_v4_10.waiver_indicator.dissect(buffer, index, packet, parent)

  -- Previous Day Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, previous_day_indicator = euronext_optiq_sbe_v4_10.previous_day_indicator.dissect(buffer, index, packet, parent)

  -- Miscellaneous Fee Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, miscellaneous_fee_amount = euronext_optiq_sbe_v4_10.miscellaneous_fee_amount.dissect(buffer, index, packet, parent)

  -- Ccpid: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, ccpid = euronext_optiq_sbe_v4_10.ccpid.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_sbe_v4_10.not_used_group_2_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Notice Message
euronext_optiq_sbe_v4_10.declaration_notice_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.declaration_notice_message then
    local length = euronext_optiq_sbe_v4_10.declaration_notice_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.declaration_notice_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.declaration_notice_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.declaration_notice_message.fields(buffer, offset, packet, parent)
end

-- Declaration Id Optional
euronext_optiq_sbe_v4_10.declaration_id_optional = {}

-- Size: Declaration Id Optional
euronext_optiq_sbe_v4_10.declaration_id_optional.size = 8

-- Display: Declaration Id Optional
euronext_optiq_sbe_v4_10.declaration_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Declaration Id Optional: No Value"
  end

  return "Declaration Id Optional: "..value
end

-- Dissect: Declaration Id Optional
euronext_optiq_sbe_v4_10.declaration_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.declaration_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.declaration_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.declaration_id_optional, range, value, display)

  return offset + length, value
end

-- Declaration Entry Ack Message
euronext_optiq_sbe_v4_10.declaration_entry_ack_message = {}

-- Calculate size of: Declaration Entry Ack Message
euronext_optiq_sbe_v4_10.declaration_entry_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.declaration_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.size

  index = index + euronext_optiq_sbe_v4_10.operation_type.size

  index = index + euronext_optiq_sbe_v4_10.pre_matching_type.size

  index = index + euronext_optiq_sbe_v4_10.waiver_indicator.size

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  return index
end

-- Display: Declaration Entry Ack Message
euronext_optiq_sbe_v4_10.declaration_entry_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Entry Ack Message
euronext_optiq_sbe_v4_10.declaration_entry_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Declaration Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, declaration_id_optional = euronext_optiq_sbe_v4_10.declaration_id_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.dissect(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = euronext_optiq_sbe_v4_10.operation_type.dissect(buffer, index, packet, parent)

  -- Pre Matching Type: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, pre_matching_type = euronext_optiq_sbe_v4_10.pre_matching_type.dissect(buffer, index, packet, parent)

  -- Waiver Indicator: Struct of 8 fields
  index, waiver_indicator = euronext_optiq_sbe_v4_10.waiver_indicator.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Ack Message
euronext_optiq_sbe_v4_10.declaration_entry_ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.declaration_entry_ack_message then
    local length = euronext_optiq_sbe_v4_10.declaration_entry_ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.declaration_entry_ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.declaration_entry_ack_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.declaration_entry_ack_message.fields(buffer, offset, packet, parent)
end

-- Client Identification Short Code Cross
euronext_optiq_sbe_v4_10.client_identification_short_code_cross = {}

-- Size: Client Identification Short Code Cross
euronext_optiq_sbe_v4_10.client_identification_short_code_cross.size = 4

-- Display: Client Identification Short Code Cross
euronext_optiq_sbe_v4_10.client_identification_short_code_cross.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Client Identification Short Code Cross: No Value"
  end

  return "Client Identification Short Code Cross: "..value
end

-- Dissect: Client Identification Short Code Cross
euronext_optiq_sbe_v4_10.client_identification_short_code_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.client_identification_short_code_cross.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_sbe_v4_10.client_identification_short_code_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.client_identification_short_code_cross, range, value, display)

  return offset + length, value
end

-- Investment Decision W Firm Short Code
euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code = {}

-- Size: Investment Decision W Firm Short Code
euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.size = 4

-- Display: Investment Decision W Firm Short Code
euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Investment Decision W Firm Short Code: No Value"
  end

  return "Investment Decision W Firm Short Code: "..value
end

-- Dissect: Investment Decision W Firm Short Code
euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.investment_decision_w_firm_short_code, range, value, display)

  return offset + length, value
end

-- Mifid Indicators
euronext_optiq_sbe_v4_10.mifid_indicators = {}

-- Size: Mifid Indicators
euronext_optiq_sbe_v4_10.mifid_indicators.size = 1

-- Display: Mifid Indicators
euronext_optiq_sbe_v4_10.mifid_indicators.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.mifid_indicators.bits = function(buffer, offset, packet, parent)

  -- Reserved 2: 2 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_2, buffer(offset, 1))

  -- Frmaramplp: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.frmaramplp, buffer(offset, 1))

  -- Deferral Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.deferral_indicator, buffer(offset, 1))

  -- Commodity Derivative Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.commodity_derivative_indicator, buffer(offset, 1))

  -- Execution Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_algo_indicator, buffer(offset, 1))

  -- Investment Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.investment_algo_indicator, buffer(offset, 1))

  -- Dea Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.dea_indicator, buffer(offset, 1))
end

-- Dissect: Mifid Indicators
euronext_optiq_sbe_v4_10.mifid_indicators.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.mifid_indicators.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mifid_indicators, range, display)

  if show.mifid_indicators then
    euronext_optiq_sbe_v4_10.mifid_indicators.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Guarantee Flag
euronext_optiq_sbe_v4_10.guarantee_flag = {}

-- Size: Guarantee Flag
euronext_optiq_sbe_v4_10.guarantee_flag.size = 1

-- Display: Guarantee Flag
euronext_optiq_sbe_v4_10.guarantee_flag.display = function(value)
  if value == 1 then
    return "Guarantee Flag: Clearedbutnot Guaranteed (1)"
  end
  if value == 2 then
    return "Guarantee Flag: Clearedand Guaranteed (2)"
  end

  return "Guarantee Flag: Unknown("..value..")"
end

-- Dissect: Guarantee Flag
euronext_optiq_sbe_v4_10.guarantee_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.guarantee_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.guarantee_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.guarantee_flag, range, value, display)

  return offset + length, value
end

-- Settlement Flag
euronext_optiq_sbe_v4_10.settlement_flag = {}

-- Size: Settlement Flag
euronext_optiq_sbe_v4_10.settlement_flag.size = 1

-- Display: Settlement Flag
euronext_optiq_sbe_v4_10.settlement_flag.display = function(value)
  return "Settlement Flag: "..value
end

-- Dissect: Settlement Flag
euronext_optiq_sbe_v4_10.settlement_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.settlement_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.settlement_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.settlement_flag, range, value, display)

  return offset + length, value
end

-- Settlement Period
euronext_optiq_sbe_v4_10.settlement_period = {}

-- Size: Settlement Period
euronext_optiq_sbe_v4_10.settlement_period.size = 1

-- Display: Settlement Period
euronext_optiq_sbe_v4_10.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
euronext_optiq_sbe_v4_10.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.settlement_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Trading Capacity
euronext_optiq_sbe_v4_10.trading_capacity = {}

-- Size: Trading Capacity
euronext_optiq_sbe_v4_10.trading_capacity.size = 1

-- Display: Trading Capacity
euronext_optiq_sbe_v4_10.trading_capacity.display = function(value)
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
euronext_optiq_sbe_v4_10.trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.trading_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Account Type
euronext_optiq_sbe_v4_10.account_type = {}

-- Size: Account Type
euronext_optiq_sbe_v4_10.account_type.size = 1

-- Display: Account Type
euronext_optiq_sbe_v4_10.account_type.display = function(value)
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
euronext_optiq_sbe_v4_10.account_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.account_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.account_type, range, value, display)

  return offset + length, value
end

-- Client Identification Shortcode
euronext_optiq_sbe_v4_10.client_identification_shortcode = {}

-- Size: Client Identification Shortcode
euronext_optiq_sbe_v4_10.client_identification_shortcode.size = 4

-- Display: Client Identification Shortcode
euronext_optiq_sbe_v4_10.client_identification_shortcode.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Client Identification Shortcode: No Value"
  end

  return "Client Identification Shortcode: "..value
end

-- Dissect: Client Identification Shortcode
euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.client_identification_shortcode.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_sbe_v4_10.client_identification_shortcode.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.client_identification_shortcode, range, value, display)

  return offset + length, value
end

-- Execution Within Firm Short Code
euronext_optiq_sbe_v4_10.execution_within_firm_short_code = {}

-- Size: Execution Within Firm Short Code
euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size = 4

-- Display: Execution Within Firm Short Code
euronext_optiq_sbe_v4_10.execution_within_firm_short_code.display = function(value)
  return "Execution Within Firm Short Code: "..value
end

-- Dissect: Execution Within Firm Short Code
euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_within_firm_short_code, range, value, display)

  return offset + length, value
end

-- Side
euronext_optiq_sbe_v4_10.side = {}

-- Size: Side
euronext_optiq_sbe_v4_10.side.size = 1

-- Display: Side
euronext_optiq_sbe_v4_10.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
euronext_optiq_sbe_v4_10.side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.side, range, value, display)

  return offset + length, value
end

-- Declaration Entry Message
euronext_optiq_sbe_v4_10.declaration_entry_message = {}

-- Calculate size of: Declaration Entry Message
euronext_optiq_sbe_v4_10.declaration_entry_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.operation_type.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.entering_counterparty.size

  index = index + euronext_optiq_sbe_v4_10.side.size

  index = index + euronext_optiq_sbe_v4_10.quantity_optional.size

  index = index + euronext_optiq_sbe_v4_10.price_optional.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.client_identification_shortcode.size

  index = index + euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.size

  index = index + euronext_optiq_sbe_v4_10.centralisation_date.size

  index = index + euronext_optiq_sbe_v4_10.clearing_firm_id.size

  index = index + euronext_optiq_sbe_v4_10.account_type.size

  index = index + euronext_optiq_sbe_v4_10.account_type_cross.size

  index = index + euronext_optiq_sbe_v4_10.trading_capacity.size

  index = index + euronext_optiq_sbe_v4_10.trading_capacity_cross.size

  index = index + euronext_optiq_sbe_v4_10.settlement_period.size

  index = index + euronext_optiq_sbe_v4_10.settlement_flag.size

  index = index + euronext_optiq_sbe_v4_10.guarantee_flag.size

  index = index + euronext_optiq_sbe_v4_10.mifid_indicators.size

  index = index + euronext_optiq_sbe_v4_10.transaction_price_type.size

  index = index + euronext_optiq_sbe_v4_10.principal_code.size

  index = index + euronext_optiq_sbe_v4_10.principal_code_cross.size

  index = index + euronext_optiq_sbe_v4_10.start_time_vwap.size

  index = index + euronext_optiq_sbe_v4_10.end_time_vwap.size

  index = index + euronext_optiq_sbe_v4_10.gross_trade_amount.size

  index = index + euronext_optiq_sbe_v4_10.account_number.size

  index = index + euronext_optiq_sbe_v4_10.account_number_cross.size

  index = index + euronext_optiq_sbe_v4_10.free_text.size

  index = index + euronext_optiq_sbe_v4_10.free_text_cross.size

  index = index + euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.client_identification_short_code_cross.size

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  return index
end

-- Display: Declaration Entry Message
euronext_optiq_sbe_v4_10.declaration_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Entry Message
euronext_optiq_sbe_v4_10.declaration_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Operation Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, operation_type = euronext_optiq_sbe_v4_10.operation_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Entering Counterparty: 8 Byte Ascii String Nullable
  index, entering_counterparty = euronext_optiq_sbe_v4_10.entering_counterparty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_sbe_v4_10.quantity_optional.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = euronext_optiq_sbe_v4_10.price_optional.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: 4 Byte Ascii String Nullable
  index, mi_cof_secondary_listing = euronext_optiq_sbe_v4_10.mi_cof_secondary_listing.dissect(buffer, index, packet, parent)

  -- Centralisation Date: 10 Byte Ascii String Nullable
  index, centralisation_date = euronext_optiq_sbe_v4_10.centralisation_date.dissect(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_sbe_v4_10.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_sbe_v4_10.account_type.dissect(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = euronext_optiq_sbe_v4_10.account_type_cross.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = euronext_optiq_sbe_v4_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Trading Capacity Cross: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_cross = euronext_optiq_sbe_v4_10.trading_capacity_cross.dissect(buffer, index, packet, parent)

  -- Settlement Period: 1 Byte Unsigned Fixed Width Integer
  index, settlement_period = euronext_optiq_sbe_v4_10.settlement_period.dissect(buffer, index, packet, parent)

  -- Settlement Flag: 1 Byte Unsigned Fixed Width Integer
  index, settlement_flag = euronext_optiq_sbe_v4_10.settlement_flag.dissect(buffer, index, packet, parent)

  -- Guarantee Flag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, guarantee_flag = euronext_optiq_sbe_v4_10.guarantee_flag.dissect(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_sbe_v4_10.mifid_indicators.dissect(buffer, index, packet, parent)

  -- Transaction Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, transaction_price_type = euronext_optiq_sbe_v4_10.transaction_price_type.dissect(buffer, index, packet, parent)

  -- Principal Code: 8 Byte Ascii String Nullable
  index, principal_code = euronext_optiq_sbe_v4_10.principal_code.dissect(buffer, index, packet, parent)

  -- Principal Code Cross: 8 Byte Ascii String Nullable
  index, principal_code_cross = euronext_optiq_sbe_v4_10.principal_code_cross.dissect(buffer, index, packet, parent)

  -- Start Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, start_time_vwap = euronext_optiq_sbe_v4_10.start_time_vwap.dissect(buffer, index, packet, parent)

  -- End Time Vwap: 4 Byte Unsigned Fixed Width Integer Nullable
  index, end_time_vwap = euronext_optiq_sbe_v4_10.end_time_vwap.dissect(buffer, index, packet, parent)

  -- Gross Trade Amount: 8 Byte Signed Fixed Width Integer Nullable
  index, gross_trade_amount = euronext_optiq_sbe_v4_10.gross_trade_amount.dissect(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_sbe_v4_10.account_number.dissect(buffer, index, packet, parent)

  -- Account Number Cross: 12 Byte Ascii String Nullable
  index, account_number_cross = euronext_optiq_sbe_v4_10.account_number_cross.dissect(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_sbe_v4_10.free_text.dissect(buffer, index, packet, parent)

  -- Free Text Cross: 18 Byte Ascii String Nullable
  index, free_text_cross = euronext_optiq_sbe_v4_10.free_text_cross.dissect(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Short Code Cross: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_short_code_cross = euronext_optiq_sbe_v4_10.client_identification_short_code_cross.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Message
euronext_optiq_sbe_v4_10.declaration_entry_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.declaration_entry_message then
    local length = euronext_optiq_sbe_v4_10.declaration_entry_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.declaration_entry_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.declaration_entry_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.declaration_entry_message.fields(buffer, offset, packet, parent)
end

-- Rejected Client Message Sequence Number
euronext_optiq_sbe_v4_10.rejected_client_message_sequence_number = {}

-- Size: Rejected Client Message Sequence Number
euronext_optiq_sbe_v4_10.rejected_client_message_sequence_number.size = 4

-- Display: Rejected Client Message Sequence Number
euronext_optiq_sbe_v4_10.rejected_client_message_sequence_number.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Rejected Client Message Sequence Number: No Value"
  end

  return "Rejected Client Message Sequence Number: "..value
end

-- Dissect: Rejected Client Message Sequence Number
euronext_optiq_sbe_v4_10.rejected_client_message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.rejected_client_message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.rejected_client_message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rejected_client_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Oeg Out To Member Optional
euronext_optiq_sbe_v4_10.oeg_out_to_member_optional = {}

-- Size: Oeg Out To Member Optional
euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size = 8

-- Display: Oeg Out To Member Optional
euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg Out To Member Optional: No Value"
  end

  return "Oeg Out To Member Optional: "..value
end

-- Dissect: Oeg Out To Member Optional
euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oeg_out_to_member_optional, range, value, display)

  return offset + length, value
end

-- Technical Reject Message
euronext_optiq_sbe_v4_10.technical_reject_message = {}

-- Size: Technical Reject Message
euronext_optiq_sbe_v4_10.technical_reject_message.size =
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.rejected_client_message_sequence_number.size + 
  euronext_optiq_sbe_v4_10.rejected_message.size + 
  euronext_optiq_sbe_v4_10.error_code.size + 
  euronext_optiq_sbe_v4_10.rejected_message_id.size

-- Display: Technical Reject Message
euronext_optiq_sbe_v4_10.technical_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Technical Reject Message
euronext_optiq_sbe_v4_10.technical_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Rejected Client Message Sequence Number: 4 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_client_message_sequence_number = euronext_optiq_sbe_v4_10.rejected_client_message_sequence_number.dissect(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = euronext_optiq_sbe_v4_10.rejected_message.dissect(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = euronext_optiq_sbe_v4_10.error_code.dissect(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message_id = euronext_optiq_sbe_v4_10.rejected_message_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Reject Message
euronext_optiq_sbe_v4_10.technical_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.technical_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.technical_reject_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.technical_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.technical_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.technical_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Log Out Reason Code
euronext_optiq_sbe_v4_10.log_out_reason_code = {}

-- Size: Log Out Reason Code
euronext_optiq_sbe_v4_10.log_out_reason_code.size = 1

-- Display: Log Out Reason Code
euronext_optiq_sbe_v4_10.log_out_reason_code.display = function(value)
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
euronext_optiq_sbe_v4_10.log_out_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.log_out_reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.log_out_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.log_out_reason_code, range, value, display)

  return offset + length, value
end

-- Logout Message
euronext_optiq_sbe_v4_10.logout_message = {}

-- Size: Logout Message
euronext_optiq_sbe_v4_10.logout_message.size =
  euronext_optiq_sbe_v4_10.log_out_reason_code.size

-- Display: Logout Message
euronext_optiq_sbe_v4_10.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
euronext_optiq_sbe_v4_10.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Log Out Reason Code: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, log_out_reason_code = euronext_optiq_sbe_v4_10.log_out_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
euronext_optiq_sbe_v4_10.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.logout_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.logout_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Msg Seq Num
euronext_optiq_sbe_v4_10.last_msg_seq_num = {}

-- Size: Last Msg Seq Num
euronext_optiq_sbe_v4_10.last_msg_seq_num.size = 4

-- Display: Last Msg Seq Num
euronext_optiq_sbe_v4_10.last_msg_seq_num.display = function(value)
  return "Last Msg Seq Num: "..value
end

-- Dissect: Last Msg Seq Num
euronext_optiq_sbe_v4_10.last_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.last_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.last_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.last_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Last Cl Msg Seq Num
euronext_optiq_sbe_v4_10.last_cl_msg_seq_num = {}

-- Size: Last Cl Msg Seq Num
euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.size = 4

-- Display: Last Cl Msg Seq Num
euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.display = function(value)
  return "Last Cl Msg Seq Num: "..value
end

-- Dissect: Last Cl Msg Seq Num
euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.last_cl_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Logon Reject Code
euronext_optiq_sbe_v4_10.logon_reject_code = {}

-- Size: Logon Reject Code
euronext_optiq_sbe_v4_10.logon_reject_code.size = 1

-- Display: Logon Reject Code
euronext_optiq_sbe_v4_10.logon_reject_code.display = function(value)
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
euronext_optiq_sbe_v4_10.logon_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.logon_reject_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.logon_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.logon_reject_code, range, value, display)

  return offset + length, value
end

-- Exchange Id
euronext_optiq_sbe_v4_10.exchange_id = {}

-- Size: Exchange Id
euronext_optiq_sbe_v4_10.exchange_id.size = 8

-- Display: Exchange Id
euronext_optiq_sbe_v4_10.exchange_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Id: No Value"
  end

  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
euronext_optiq_sbe_v4_10.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.exchange_id.size
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

  local display = euronext_optiq_sbe_v4_10.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Logon Reject Message
euronext_optiq_sbe_v4_10.logon_reject_message = {}

-- Size: Logon Reject Message
euronext_optiq_sbe_v4_10.logon_reject_message.size =
  euronext_optiq_sbe_v4_10.exchange_id.size + 
  euronext_optiq_sbe_v4_10.logon_reject_code.size + 
  euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.last_msg_seq_num.size

-- Display: Logon Reject Message
euronext_optiq_sbe_v4_10.logon_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Reject Message
euronext_optiq_sbe_v4_10.logon_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 8 Byte Ascii String
  index, exchange_id = euronext_optiq_sbe_v4_10.exchange_id.dissect(buffer, index, packet, parent)

  -- Logon Reject Code: 1 Byte Unsigned Fixed Width Integer Enum with 7 values
  index, logon_reject_code = euronext_optiq_sbe_v4_10.logon_reject_code.dissect(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_cl_msg_seq_num = euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Last Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_msg_seq_num = euronext_optiq_sbe_v4_10.last_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Reject Message
euronext_optiq_sbe_v4_10.logon_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.logon_reject_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.logon_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.logon_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.logon_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Ack Message
euronext_optiq_sbe_v4_10.logon_ack_message = {}

-- Size: Logon Ack Message
euronext_optiq_sbe_v4_10.logon_ack_message.size =
  euronext_optiq_sbe_v4_10.exchange_id.size + 
  euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.size

-- Display: Logon Ack Message
euronext_optiq_sbe_v4_10.logon_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Ack Message
euronext_optiq_sbe_v4_10.logon_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 8 Byte Ascii String
  index, exchange_id = euronext_optiq_sbe_v4_10.exchange_id.dissect(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_cl_msg_seq_num = euronext_optiq_sbe_v4_10.last_cl_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Ack Message
euronext_optiq_sbe_v4_10.logon_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.logon_ack_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.logon_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.logon_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.logon_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Queueing Indicator
euronext_optiq_sbe_v4_10.queueing_indicator = {}

-- Size: Queueing Indicator
euronext_optiq_sbe_v4_10.queueing_indicator.size = 1

-- Display: Queueing Indicator
euronext_optiq_sbe_v4_10.queueing_indicator.display = function(value)
  return "Queueing Indicator: "..value
end

-- Dissect: Queueing Indicator
euronext_optiq_sbe_v4_10.queueing_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.queueing_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.queueing_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.queueing_indicator, range, value, display)

  return offset + length, value
end

-- Software Provider
euronext_optiq_sbe_v4_10.software_provider = {}

-- Size: Software Provider
euronext_optiq_sbe_v4_10.software_provider.size = 8

-- Display: Software Provider
euronext_optiq_sbe_v4_10.software_provider.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Software Provider: No Value"
  end

  return "Software Provider: "..value
end

-- Dissect: Software Provider
euronext_optiq_sbe_v4_10.software_provider.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.software_provider.size
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

  local display = euronext_optiq_sbe_v4_10.software_provider.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.software_provider, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Optional
euronext_optiq_sbe_v4_10.last_msg_seq_num_optional = {}

-- Size: Last Msg Seq Num Optional
euronext_optiq_sbe_v4_10.last_msg_seq_num_optional.size = 4

-- Display: Last Msg Seq Num Optional
euronext_optiq_sbe_v4_10.last_msg_seq_num_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Msg Seq Num Optional: No Value"
  end

  return "Last Msg Seq Num Optional: "..value
end

-- Dissect: Last Msg Seq Num Optional
euronext_optiq_sbe_v4_10.last_msg_seq_num_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.last_msg_seq_num_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.last_msg_seq_num_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.last_msg_seq_num_optional, range, value, display)

  return offset + length, value
end

-- Oe Partition Id
euronext_optiq_sbe_v4_10.oe_partition_id = {}

-- Size: Oe Partition Id
euronext_optiq_sbe_v4_10.oe_partition_id.size = 2

-- Display: Oe Partition Id
euronext_optiq_sbe_v4_10.oe_partition_id.display = function(value)
  return "Oe Partition Id: "..value
end

-- Dissect: Oe Partition Id
euronext_optiq_sbe_v4_10.oe_partition_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.oe_partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.oe_partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oe_partition_id, range, value, display)

  return offset + length, value
end

-- Logical Access Id
euronext_optiq_sbe_v4_10.logical_access_id = {}

-- Size: Logical Access Id
euronext_optiq_sbe_v4_10.logical_access_id.size = 4

-- Display: Logical Access Id
euronext_optiq_sbe_v4_10.logical_access_id.display = function(value)
  return "Logical Access Id: "..value
end

-- Dissect: Logical Access Id
euronext_optiq_sbe_v4_10.logical_access_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.logical_access_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.logical_access_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.logical_access_id, range, value, display)

  return offset + length, value
end

-- Logon Message
euronext_optiq_sbe_v4_10.logon_message = {}

-- Size: Logon Message
euronext_optiq_sbe_v4_10.logon_message.size =
  euronext_optiq_sbe_v4_10.logical_access_id.size + 
  euronext_optiq_sbe_v4_10.oe_partition_id.size + 
  euronext_optiq_sbe_v4_10.last_msg_seq_num_optional.size + 
  euronext_optiq_sbe_v4_10.software_provider.size + 
  euronext_optiq_sbe_v4_10.queueing_indicator.size

-- Display: Logon Message
euronext_optiq_sbe_v4_10.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
euronext_optiq_sbe_v4_10.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = euronext_optiq_sbe_v4_10.logical_access_id.dissect(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = euronext_optiq_sbe_v4_10.oe_partition_id.dissect(buffer, index, packet, parent)

  -- Last Msg Seq Num Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_msg_seq_num_optional = euronext_optiq_sbe_v4_10.last_msg_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Software Provider: 8 Byte Ascii String Nullable
  index, software_provider = euronext_optiq_sbe_v4_10.software_provider.dissect(buffer, index, packet, parent)

  -- Queueing Indicator: 1 Byte Unsigned Fixed Width Integer
  index, queueing_indicator = euronext_optiq_sbe_v4_10.queueing_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
euronext_optiq_sbe_v4_10.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.logon_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Error Code Optional
euronext_optiq_sbe_v4_10.error_code_optional = {}

-- Size: Error Code Optional
euronext_optiq_sbe_v4_10.error_code_optional.size = 2

-- Display: Error Code Optional
euronext_optiq_sbe_v4_10.error_code_optional.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Error Code Optional: No Value"
  end

  return "Error Code Optional: "..value
end

-- Dissect: Error Code Optional
euronext_optiq_sbe_v4_10.error_code_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.error_code_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.error_code_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.error_code_optional, range, value, display)

  return offset + length, value
end

-- Ioi Quality Indication
euronext_optiq_sbe_v4_10.ioi_quality_indication = {}

-- Size: Ioi Quality Indication
euronext_optiq_sbe_v4_10.ioi_quality_indication.size = 1

-- Display: Ioi Quality Indication
euronext_optiq_sbe_v4_10.ioi_quality_indication.display = function(value)
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
euronext_optiq_sbe_v4_10.ioi_quality_indication.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ioi_quality_indication.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.ioi_quality_indication.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ioi_quality_indication, range, value, display)

  return offset + length, value
end

-- Ioi Quantity
euronext_optiq_sbe_v4_10.ioi_quantity = {}

-- Size: Ioi Quantity
euronext_optiq_sbe_v4_10.ioi_quantity.size = 1

-- Display: Ioi Quantity
euronext_optiq_sbe_v4_10.ioi_quantity.display = function(value)
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
euronext_optiq_sbe_v4_10.ioi_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ioi_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.ioi_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ioi_quantity, range, value, display)

  return offset + length, value
end

-- Order Quantity
euronext_optiq_sbe_v4_10.order_quantity = {}

-- Size: Order Quantity
euronext_optiq_sbe_v4_10.order_quantity.size = 8

-- Display: Order Quantity
euronext_optiq_sbe_v4_10.order_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Quantity: No Value"
  end

  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
euronext_optiq_sbe_v4_10.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Ioi Side
euronext_optiq_sbe_v4_10.ioi_side = {}

-- Size: Ioi Side
euronext_optiq_sbe_v4_10.ioi_side.size = 1

-- Display: Ioi Side
euronext_optiq_sbe_v4_10.ioi_side.display = function(value)
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
euronext_optiq_sbe_v4_10.ioi_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ioi_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.ioi_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ioi_side, range, value, display)

  return offset + length, value
end

-- Original Ioiid
euronext_optiq_sbe_v4_10.original_ioiid = {}

-- Size: Original Ioiid
euronext_optiq_sbe_v4_10.original_ioiid.size = 8

-- Display: Original Ioiid
euronext_optiq_sbe_v4_10.original_ioiid.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Original Ioiid: No Value"
  end

  return "Original Ioiid: "..value
end

-- Dissect: Original Ioiid
euronext_optiq_sbe_v4_10.original_ioiid.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.original_ioiid.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.original_ioiid.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.original_ioiid, range, value, display)

  return offset + length, value
end

-- Ioi Type
euronext_optiq_sbe_v4_10.ioi_type = {}

-- Size: Ioi Type
euronext_optiq_sbe_v4_10.ioi_type.size = 1

-- Display: Ioi Type
euronext_optiq_sbe_v4_10.ioi_type.display = function(value)
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
euronext_optiq_sbe_v4_10.ioi_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ioi_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.ioi_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ioi_type, range, value, display)

  return offset + length, value
end

-- Exchange Ioi Id Optional
euronext_optiq_sbe_v4_10.exchange_ioi_id_optional = {}

-- Size: Exchange Ioi Id Optional
euronext_optiq_sbe_v4_10.exchange_ioi_id_optional.size = 8

-- Display: Exchange Ioi Id Optional
euronext_optiq_sbe_v4_10.exchange_ioi_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Exchange Ioi Id Optional: No Value"
  end

  return "Exchange Ioi Id Optional: "..value
end

-- Dissect: Exchange Ioi Id Optional
euronext_optiq_sbe_v4_10.exchange_ioi_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.exchange_ioi_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.exchange_ioi_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.exchange_ioi_id_optional, range, value, display)

  return offset + length, value
end

-- Ioi Id Optional
euronext_optiq_sbe_v4_10.ioi_id_optional = {}

-- Size: Ioi Id Optional
euronext_optiq_sbe_v4_10.ioi_id_optional.size = 8

-- Display: Ioi Id Optional
euronext_optiq_sbe_v4_10.ioi_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Ioi Id Optional: No Value"
  end

  return "Ioi Id Optional: "..value
end

-- Dissect: Ioi Id Optional
euronext_optiq_sbe_v4_10.ioi_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ioi_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.ioi_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ioi_id_optional, range, value, display)

  return offset + length, value
end

-- Oeg In From Me Optional
euronext_optiq_sbe_v4_10.oeg_in_from_me_optional = {}

-- Size: Oeg In From Me Optional
euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size = 8

-- Display: Oeg In From Me Optional
euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg In From Me Optional: No Value"
  end

  return "Oeg In From Me Optional: "..value
end

-- Dissect: Oeg In From Me Optional
euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oeg_in_from_me_optional, range, value, display)

  return offset + length, value
end

-- Book Out Time Optional
euronext_optiq_sbe_v4_10.book_out_time_optional = {}

-- Size: Book Out Time Optional
euronext_optiq_sbe_v4_10.book_out_time_optional.size = 8

-- Display: Book Out Time Optional
euronext_optiq_sbe_v4_10.book_out_time_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book Out Time Optional: No Value"
  end

  return "Book Out Time Optional: "..value
end

-- Dissect: Book Out Time Optional
euronext_optiq_sbe_v4_10.book_out_time_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.book_out_time_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.book_out_time_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.book_out_time_optional, range, value, display)

  return offset + length, value
end

-- Book In Optional
euronext_optiq_sbe_v4_10.book_in_optional = {}

-- Size: Book In Optional
euronext_optiq_sbe_v4_10.book_in_optional.size = 8

-- Display: Book In Optional
euronext_optiq_sbe_v4_10.book_in_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book In Optional: No Value"
  end

  return "Book In Optional: "..value
end

-- Dissect: Book In Optional
euronext_optiq_sbe_v4_10.book_in_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.book_in_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.book_in_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.book_in_optional, range, value, display)

  return offset + length, value
end

-- Oeg Out Time To Me
euronext_optiq_sbe_v4_10.oeg_out_time_to_me = {}

-- Size: Oeg Out Time To Me
euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size = 8

-- Display: Oeg Out Time To Me
euronext_optiq_sbe_v4_10.oeg_out_time_to_me.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg Out Time To Me: No Value"
  end

  return "Oeg Out Time To Me: "..value
end

-- Dissect: Oeg Out Time To Me
euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oeg_out_time_to_me, range, value, display)

  return offset + length, value
end

-- Oeg In From Member
euronext_optiq_sbe_v4_10.oeg_in_from_member = {}

-- Size: Oeg In From Member
euronext_optiq_sbe_v4_10.oeg_in_from_member.size = 8

-- Display: Oeg In From Member
euronext_optiq_sbe_v4_10.oeg_in_from_member.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg In From Member: No Value"
  end

  return "Oeg In From Member: "..value
end

-- Dissect: Oeg In From Member
euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.oeg_in_from_member.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.oeg_in_from_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oeg_in_from_member, range, value, display)

  return offset + length, value
end

-- Wave For Liquidity Notification Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message = {}

-- Size: Wave For Liquidity Notification Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_member.size + 
  euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size + 
  euronext_optiq_sbe_v4_10.book_in_optional.size + 
  euronext_optiq_sbe_v4_10.book_out_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.ioi_id_optional.size + 
  euronext_optiq_sbe_v4_10.exchange_ioi_id_optional.size + 
  euronext_optiq_sbe_v4_10.ioi_type.size + 
  euronext_optiq_sbe_v4_10.original_ioiid.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm_optional.size + 
  euronext_optiq_sbe_v4_10.ioi_side.size + 
  euronext_optiq_sbe_v4_10.order_quantity.size + 
  euronext_optiq_sbe_v4_10.ioi_quantity.size + 
  euronext_optiq_sbe_v4_10.ioi_quality_indication.size + 
  euronext_optiq_sbe_v4_10.error_code_optional.size

-- Display: Wave For Liquidity Notification Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wave For Liquidity Notification Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_sbe_v4_10.book_in_optional.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Ioi Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, ioi_id_optional = euronext_optiq_sbe_v4_10.ioi_id_optional.dissect(buffer, index, packet, parent)

  -- Exchange Ioi Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, exchange_ioi_id_optional = euronext_optiq_sbe_v4_10.exchange_ioi_id_optional.dissect(buffer, index, packet, parent)

  -- Ioi Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, ioi_type = euronext_optiq_sbe_v4_10.ioi_type.dissect(buffer, index, packet, parent)

  -- Original Ioiid: 8 Byte Signed Fixed Width Integer Nullable
  index, original_ioiid = euronext_optiq_sbe_v4_10.original_ioiid.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_sbe_v4_10.emm_optional.dissect(buffer, index, packet, parent)

  -- Ioi Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioi_side = euronext_optiq_sbe_v4_10.ioi_side.dissect(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_quantity = euronext_optiq_sbe_v4_10.order_quantity.dissect(buffer, index, packet, parent)

  -- Ioi Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ioi_quantity = euronext_optiq_sbe_v4_10.ioi_quantity.dissect(buffer, index, packet, parent)

  -- Ioi Quality Indication: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ioi_quality_indication = euronext_optiq_sbe_v4_10.ioi_quality_indication.dissect(buffer, index, packet, parent)

  -- Error Code Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, error_code_optional = euronext_optiq_sbe_v4_10.error_code_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wave For Liquidity Notification Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.wave_for_liquidity_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wave_for_liquidity_notification_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Target Counterparties
euronext_optiq_sbe_v4_10.target_counterparties = {}

-- Size: Target Counterparties
euronext_optiq_sbe_v4_10.target_counterparties.size = 2

-- Display: Target Counterparties
euronext_optiq_sbe_v4_10.target_counterparties.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.target_counterparties.bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_6, buffer(offset, 2))

  -- Local Community Of Specialist Lis: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.local_community_of_specialist_lis, buffer(offset, 2))

  -- Local Community Of Specialist Bru: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.local_community_of_specialist_bru, buffer(offset, 2))

  -- Local Community Of Specialist Par: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.local_community_of_specialist_par, buffer(offset, 2))

  -- Local Community Of Specialist Ams: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.local_community_of_specialist_ams, buffer(offset, 2))

  -- Quality Of Sell Side Counterparty: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.quality_of_sell_side_counterparty, buffer(offset, 2))

  -- Sell Side: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.sell_side, buffer(offset, 2))

  -- Buy Side: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.buy_side, buffer(offset, 2))

  -- Holdings: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.holdings, buffer(offset, 2))

  -- Interest Lists: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.interest_lists, buffer(offset, 2))

  -- Euronext Data Driven: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.euronext_data_driven, buffer(offset, 2))
end

-- Dissect: Target Counterparties
euronext_optiq_sbe_v4_10.target_counterparties.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.target_counterparties.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.target_counterparties, range, display)

  if show.target_counterparties then
    euronext_optiq_sbe_v4_10.target_counterparties.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Ioi Transaction Type
euronext_optiq_sbe_v4_10.ioi_transaction_type = {}

-- Size: Ioi Transaction Type
euronext_optiq_sbe_v4_10.ioi_transaction_type.size = 1

-- Display: Ioi Transaction Type
euronext_optiq_sbe_v4_10.ioi_transaction_type.display = function(value)
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
euronext_optiq_sbe_v4_10.ioi_transaction_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ioi_transaction_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.ioi_transaction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ioi_transaction_type, range, value, display)

  return offset + length, value
end

-- Ioi Id
euronext_optiq_sbe_v4_10.ioi_id = {}

-- Size: Ioi Id
euronext_optiq_sbe_v4_10.ioi_id.size = 8

-- Display: Ioi Id
euronext_optiq_sbe_v4_10.ioi_id.display = function(value)
  return "Ioi Id: "..value
end

-- Dissect: Ioi Id
euronext_optiq_sbe_v4_10.ioi_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ioi_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.ioi_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ioi_id, range, value, display)

  return offset + length, value
end

-- Wave For Liquidity Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_message = {}

-- Size: Wave For Liquidity Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.ioi_id.size + 
  euronext_optiq_sbe_v4_10.ioi_transaction_type.size + 
  euronext_optiq_sbe_v4_10.original_ioiid.size + 
  euronext_optiq_sbe_v4_10.target_counterparties.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.ioi_side.size + 
  euronext_optiq_sbe_v4_10.order_quantity.size + 
  euronext_optiq_sbe_v4_10.ioi_quantity.size + 
  euronext_optiq_sbe_v4_10.ioi_quality_indication.size

-- Display: Wave For Liquidity Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wave For Liquidity Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Ioi Id: 8 Byte Signed Fixed Width Integer
  index, ioi_id = euronext_optiq_sbe_v4_10.ioi_id.dissect(buffer, index, packet, parent)

  -- Ioi Transaction Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioi_transaction_type = euronext_optiq_sbe_v4_10.ioi_transaction_type.dissect(buffer, index, packet, parent)

  -- Original Ioiid: 8 Byte Signed Fixed Width Integer Nullable
  index, original_ioiid = euronext_optiq_sbe_v4_10.original_ioiid.dissect(buffer, index, packet, parent)

  -- Target Counterparties: Struct of 11 fields
  index, target_counterparties = euronext_optiq_sbe_v4_10.target_counterparties.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Ioi Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, ioi_side = euronext_optiq_sbe_v4_10.ioi_side.dissect(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_quantity = euronext_optiq_sbe_v4_10.order_quantity.dissect(buffer, index, packet, parent)

  -- Ioi Quantity: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ioi_quantity = euronext_optiq_sbe_v4_10.ioi_quantity.dissect(buffer, index, packet, parent)

  -- Ioi Quality Indication: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, ioi_quality_indication = euronext_optiq_sbe_v4_10.ioi_quality_indication.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wave For Liquidity Message
euronext_optiq_sbe_v4_10.wave_for_liquidity_message.dissect = function(buffer, offset, packet, parent)
  if show.wave_for_liquidity_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wave_for_liquidity_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.wave_for_liquidity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.wave_for_liquidity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.wave_for_liquidity_message.fields(buffer, offset, packet, parent)
  end
end

-- Minimum Order Quantity
euronext_optiq_sbe_v4_10.minimum_order_quantity = {}

-- Size: Minimum Order Quantity
euronext_optiq_sbe_v4_10.minimum_order_quantity.size = 8

-- Display: Minimum Order Quantity
euronext_optiq_sbe_v4_10.minimum_order_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Minimum Order Quantity: No Value"
  end

  return "Minimum Order Quantity: "..value
end

-- Dissect: Minimum Order Quantity
euronext_optiq_sbe_v4_10.minimum_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.minimum_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.minimum_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.minimum_order_quantity, range, value, display)

  return offset + length, value
end

-- Dark Execution Instruction Optional
euronext_optiq_sbe_v4_10.dark_execution_instruction_optional = {}

-- Size: Dark Execution Instruction Optional
euronext_optiq_sbe_v4_10.dark_execution_instruction_optional.size = 1

-- Display: Dark Execution Instruction Optional
euronext_optiq_sbe_v4_10.dark_execution_instruction_optional.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.dark_execution_instruction_optional.bits = function(buffer, offset, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_3, buffer(offset, 1))

  -- Minimum Quantity Type: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.minimum_quantity_type, buffer(offset, 1))

  -- Sweep Order Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.sweep_order_indicator, buffer(offset, 1))

  -- Displayed Order Interaction: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.displayed_order_interaction, buffer(offset, 1))

  -- Deferred Trade Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.deferred_trade_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Dark Execution Instruction Optional
euronext_optiq_sbe_v4_10.dark_execution_instruction_optional.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.dark_execution_instruction_optional.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.dark_execution_instruction_optional, range, display)

  if show.dark_execution_instruction_optional then
    euronext_optiq_sbe_v4_10.dark_execution_instruction_optional.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Last Traded Quantity
euronext_optiq_sbe_v4_10.last_traded_quantity = {}

-- Size: Last Traded Quantity
euronext_optiq_sbe_v4_10.last_traded_quantity.size = 8

-- Display: Last Traded Quantity
euronext_optiq_sbe_v4_10.last_traded_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Traded Quantity: No Value"
  end

  return "Last Traded Quantity: "..value
end

-- Dissect: Last Traded Quantity
euronext_optiq_sbe_v4_10.last_traded_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.last_traded_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.last_traded_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.last_traded_quantity, range, value, display)

  return offset + length, value
end

-- Order Price
euronext_optiq_sbe_v4_10.order_price = {}

-- Size: Order Price
euronext_optiq_sbe_v4_10.order_price.size = 8

-- Display: Order Price
euronext_optiq_sbe_v4_10.order_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Price: No Value"
  end

  return "Order Price: "..value
end

-- Dissect: Order Price
euronext_optiq_sbe_v4_10.order_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_price, range, value, display)

  return offset + length, value
end

-- Order Origin
euronext_optiq_sbe_v4_10.order_origin = {}

-- Size: Order Origin
euronext_optiq_sbe_v4_10.order_origin.size = 1

-- Display: Order Origin
euronext_optiq_sbe_v4_10.order_origin.display = function(value)
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
euronext_optiq_sbe_v4_10.order_origin.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_origin.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_origin, range, value, display)

  return offset + length, value
end

-- Rfq Counterparts Group
euronext_optiq_sbe_v4_10.rfq_counterparts_group = {}

-- Size: Rfq Counterparts Group
euronext_optiq_sbe_v4_10.rfq_counterparts_group.size =
  euronext_optiq_sbe_v4_10.order_origin.size + 
  euronext_optiq_sbe_v4_10.order_price.size + 
  euronext_optiq_sbe_v4_10.last_traded_quantity.size + 
  euronext_optiq_sbe_v4_10.dark_execution_instruction_optional.size + 
  euronext_optiq_sbe_v4_10.minimum_order_quantity.size

-- Display: Rfq Counterparts Group
euronext_optiq_sbe_v4_10.rfq_counterparts_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Counterparts Group
euronext_optiq_sbe_v4_10.rfq_counterparts_group.fields = function(buffer, offset, packet, parent, rfq_counterparts_group_index)
  local index = offset

  -- Implicit Rfq Counterparts Group Index
  if rfq_counterparts_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_counterparts_group_index, rfq_counterparts_group_index)
    iteration:set_generated()
  end

  -- Order Origin: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, order_origin = euronext_optiq_sbe_v4_10.order_origin.dissect(buffer, index, packet, parent)

  -- Order Price: 8 Byte Signed Fixed Width Integer Nullable
  index, order_price = euronext_optiq_sbe_v4_10.order_price.dissect(buffer, index, packet, parent)

  -- Last Traded Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_traded_quantity = euronext_optiq_sbe_v4_10.last_traded_quantity.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction Optional: Struct of 6 fields
  index, dark_execution_instruction_optional = euronext_optiq_sbe_v4_10.dark_execution_instruction_optional.dissect(buffer, index, packet, parent)

  -- Minimum Order Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, minimum_order_quantity = euronext_optiq_sbe_v4_10.minimum_order_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Counterparts Group
euronext_optiq_sbe_v4_10.rfq_counterparts_group.dissect = function(buffer, offset, packet, parent, rfq_counterparts_group_index)
  if show.rfq_counterparts_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_counterparts_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.rfq_counterparts_group.fields(buffer, offset, packet, parent, rfq_counterparts_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.rfq_counterparts_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.rfq_counterparts_group.fields(buffer, offset, packet, parent, rfq_counterparts_group_index)
  end
end

-- Rfq Counterparts Groups
euronext_optiq_sbe_v4_10.rfq_counterparts_groups = {}

-- Calculate size of: Rfq Counterparts Groups
euronext_optiq_sbe_v4_10.rfq_counterparts_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local rfq_counterparts_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + rfq_counterparts_group_count * 26

  return index
end

-- Display: Rfq Counterparts Groups
euronext_optiq_sbe_v4_10.rfq_counterparts_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Counterparts Groups
euronext_optiq_sbe_v4_10.rfq_counterparts_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Rfq Counterparts Group
  for rfq_counterparts_group_index = 1, num_in_group do
    index, rfq_counterparts_group = euronext_optiq_sbe_v4_10.rfq_counterparts_group.dissect(buffer, index, packet, parent, rfq_counterparts_group_index)
  end

  return index
end

-- Dissect: Rfq Counterparts Groups
euronext_optiq_sbe_v4_10.rfq_counterparts_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.rfq_counterparts_groups then
    local length = euronext_optiq_sbe_v4_10.rfq_counterparts_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.rfq_counterparts_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_counterparts_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.rfq_counterparts_groups.fields(buffer, offset, packet, parent)
end

-- Quote Req Id
euronext_optiq_sbe_v4_10.quote_req_id = {}

-- Size: Quote Req Id
euronext_optiq_sbe_v4_10.quote_req_id.size = 8

-- Display: Quote Req Id
euronext_optiq_sbe_v4_10.quote_req_id.display = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
euronext_optiq_sbe_v4_10.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.quote_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Oeg Out To Member
euronext_optiq_sbe_v4_10.oeg_out_to_member = {}

-- Size: Oeg Out To Member
euronext_optiq_sbe_v4_10.oeg_out_to_member.size = 8

-- Display: Oeg Out To Member
euronext_optiq_sbe_v4_10.oeg_out_to_member.display = function(value)
  return "Oeg Out To Member: "..value
end

-- Dissect: Oeg Out To Member
euronext_optiq_sbe_v4_10.oeg_out_to_member.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.oeg_out_to_member.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.oeg_out_to_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oeg_out_to_member, range, value, display)

  return offset + length, value
end

-- Oeg In From Me
euronext_optiq_sbe_v4_10.oeg_in_from_me = {}

-- Size: Oeg In From Me
euronext_optiq_sbe_v4_10.oeg_in_from_me.size = 8

-- Display: Oeg In From Me
euronext_optiq_sbe_v4_10.oeg_in_from_me.display = function(value)
  return "Oeg In From Me: "..value
end

-- Dissect: Oeg In From Me
euronext_optiq_sbe_v4_10.oeg_in_from_me.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.oeg_in_from_me.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.oeg_in_from_me.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oeg_in_from_me, range, value, display)

  return offset + length, value
end

-- Book Out Time
euronext_optiq_sbe_v4_10.book_out_time = {}

-- Size: Book Out Time
euronext_optiq_sbe_v4_10.book_out_time.size = 8

-- Display: Book Out Time
euronext_optiq_sbe_v4_10.book_out_time.display = function(value)
  return "Book Out Time: "..value
end

-- Dissect: Book Out Time
euronext_optiq_sbe_v4_10.book_out_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.book_out_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.book_out_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.book_out_time, range, value, display)

  return offset + length, value
end

-- Book In
euronext_optiq_sbe_v4_10.book_in = {}

-- Size: Book In
euronext_optiq_sbe_v4_10.book_in.size = 8

-- Display: Book In
euronext_optiq_sbe_v4_10.book_in.display = function(value)
  return "Book In: "..value
end

-- Dissect: Book In
euronext_optiq_sbe_v4_10.book_in.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.book_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.book_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.book_in, range, value, display)

  return offset + length, value
end

-- Rfq Audit Message
euronext_optiq_sbe_v4_10.rfq_audit_message = {}

-- Calculate size of: Rfq Audit Message
euronext_optiq_sbe_v4_10.rfq_audit_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.book_in.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member.size

  index = index + euronext_optiq_sbe_v4_10.quote_req_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.rfq_counterparts_groups.size(buffer, offset + index)

  return index
end

-- Display: Rfq Audit Message
euronext_optiq_sbe_v4_10.rfq_audit_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Audit Message
euronext_optiq_sbe_v4_10.rfq_audit_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = euronext_optiq_sbe_v4_10.book_out_time.dissect(buffer, index, packet, parent)

  -- Oeg In From Me: 8 Byte Unsigned Fixed Width Integer
  index, oeg_in_from_me = euronext_optiq_sbe_v4_10.oeg_in_from_me.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member: 8 Byte Unsigned Fixed Width Integer
  index, oeg_out_to_member = euronext_optiq_sbe_v4_10.oeg_out_to_member.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = euronext_optiq_sbe_v4_10.quote_req_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Rfq Counterparts Groups: Struct of 2 fields
  index, rfq_counterparts_groups = euronext_optiq_sbe_v4_10.rfq_counterparts_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Audit Message
euronext_optiq_sbe_v4_10.rfq_audit_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.rfq_audit_message then
    local length = euronext_optiq_sbe_v4_10.rfq_audit_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.rfq_audit_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_audit_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.rfq_audit_message.fields(buffer, offset, packet, parent)
end

-- Execution Id Optional
euronext_optiq_sbe_v4_10.execution_id_optional = {}

-- Size: Execution Id Optional
euronext_optiq_sbe_v4_10.execution_id_optional.size = 4

-- Display: Execution Id Optional
euronext_optiq_sbe_v4_10.execution_id_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Execution Id Optional: No Value"
  end

  return "Execution Id Optional: "..value
end

-- Dissect: Execution Id Optional
euronext_optiq_sbe_v4_10.execution_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.execution_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.execution_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_id_optional, range, value, display)

  return offset + length, value
end

-- Leg Side Optional
euronext_optiq_sbe_v4_10.leg_side_optional = {}

-- Size: Leg Side Optional
euronext_optiq_sbe_v4_10.leg_side_optional.size = 1

-- Display: Leg Side Optional
euronext_optiq_sbe_v4_10.leg_side_optional.display = function(value)
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
euronext_optiq_sbe_v4_10.leg_side_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_side_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_side_optional, range, value, display)

  return offset + length, value
end

-- Leg Instrument Id
euronext_optiq_sbe_v4_10.leg_instrument_id = {}

-- Size: Leg Instrument Id
euronext_optiq_sbe_v4_10.leg_instrument_id.size = 4

-- Display: Leg Instrument Id
euronext_optiq_sbe_v4_10.leg_instrument_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Instrument Id: No Value"
  end

  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
euronext_optiq_sbe_v4_10.leg_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg Last Qty
euronext_optiq_sbe_v4_10.leg_last_qty = {}

-- Size: Leg Last Qty
euronext_optiq_sbe_v4_10.leg_last_qty.size = 8

-- Display: Leg Last Qty
euronext_optiq_sbe_v4_10.leg_last_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
euronext_optiq_sbe_v4_10.leg_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.leg_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Leg Last Px
euronext_optiq_sbe_v4_10.leg_last_px = {}

-- Size: Leg Last Px
euronext_optiq_sbe_v4_10.leg_last_px.size = 8

-- Display: Leg Last Px
euronext_optiq_sbe_v4_10.leg_last_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Dissect: Leg Last Px
euronext_optiq_sbe_v4_10.leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_last_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.leg_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Strategy Fields Group
euronext_optiq_sbe_v4_10.strategy_fields_group = {}

-- Size: Strategy Fields Group
euronext_optiq_sbe_v4_10.strategy_fields_group.size =
  euronext_optiq_sbe_v4_10.leg_last_px.size + 
  euronext_optiq_sbe_v4_10.leg_last_qty.size + 
  euronext_optiq_sbe_v4_10.leg_instrument_id.size + 
  euronext_optiq_sbe_v4_10.leg_side_optional.size + 
  euronext_optiq_sbe_v4_10.execution_id_optional.size

-- Display: Strategy Fields Group
euronext_optiq_sbe_v4_10.strategy_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Fields Group
euronext_optiq_sbe_v4_10.strategy_fields_group.fields = function(buffer, offset, packet, parent, strategy_fields_group_index)
  local index = offset

  -- Implicit Strategy Fields Group Index
  if strategy_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.strategy_fields_group_index, strategy_fields_group_index)
    iteration:set_generated()
  end

  -- Leg Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_last_px = euronext_optiq_sbe_v4_10.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_last_qty = euronext_optiq_sbe_v4_10.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_instrument_id = euronext_optiq_sbe_v4_10.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side_optional = euronext_optiq_sbe_v4_10.leg_side_optional.dissect(buffer, index, packet, parent)

  -- Execution Id Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, execution_id_optional = euronext_optiq_sbe_v4_10.execution_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Fields Group
euronext_optiq_sbe_v4_10.strategy_fields_group.dissect = function(buffer, offset, packet, parent, strategy_fields_group_index)
  if show.strategy_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.strategy_fields_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.strategy_fields_group.fields(buffer, offset, packet, parent, strategy_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.strategy_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.strategy_fields_group.fields(buffer, offset, packet, parent, strategy_fields_group_index)
  end
end

-- Strategy Fields Groups
euronext_optiq_sbe_v4_10.strategy_fields_groups = {}

-- Calculate size of: Strategy Fields Groups
euronext_optiq_sbe_v4_10.strategy_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local strategy_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_fields_group_count * 25

  return index
end

-- Display: Strategy Fields Groups
euronext_optiq_sbe_v4_10.strategy_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Fields Groups
euronext_optiq_sbe_v4_10.strategy_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Strategy Fields Group
  for strategy_fields_group_index = 1, num_in_group do
    index, strategy_fields_group = euronext_optiq_sbe_v4_10.strategy_fields_group.dissect(buffer, index, packet, parent, strategy_fields_group_index)
  end

  return index
end

-- Dissect: Strategy Fields Groups
euronext_optiq_sbe_v4_10.strategy_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_fields_groups then
    local length = euronext_optiq_sbe_v4_10.strategy_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.strategy_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.strategy_fields_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.strategy_fields_groups.fields(buffer, offset, packet, parent)
end

-- Clearing Instruction
euronext_optiq_sbe_v4_10.clearing_instruction = {}

-- Size: Clearing Instruction
euronext_optiq_sbe_v4_10.clearing_instruction.size = 2

-- Display: Clearing Instruction
euronext_optiq_sbe_v4_10.clearing_instruction.display = function(value)
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
euronext_optiq_sbe_v4_10.clearing_instruction.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.clearing_instruction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.clearing_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_instruction, range, value, display)

  return offset + length, value
end

-- Open Close
euronext_optiq_sbe_v4_10.open_close = {}

-- Size: Open Close
euronext_optiq_sbe_v4_10.open_close.size = 2

-- Display: Open Close
euronext_optiq_sbe_v4_10.open_close.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.open_close.bits = function(buffer, offset, packet, parent)

  -- Reserved 6: 6 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_6, buffer(offset, 2))

  -- Leg 9: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_9, buffer(offset, 2))

  -- Leg 8: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_8, buffer(offset, 2))

  -- Leg 7: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_7, buffer(offset, 2))

  -- Leg 6: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_6, buffer(offset, 2))

  -- Leg 5: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_5, buffer(offset, 2))

  -- Leg 4: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_4, buffer(offset, 2))

  -- Leg 3: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_3, buffer(offset, 2))

  -- Leg 2: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_2, buffer(offset, 2))

  -- Leg 1: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_1, buffer(offset, 2))

  -- Field Actively Used: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.field_actively_used, buffer(offset, 2))
end

-- Dissect: Open Close
euronext_optiq_sbe_v4_10.open_close.dissect = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.open_close.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.open_close, range, display)

  if show.open_close then
    euronext_optiq_sbe_v4_10.open_close.bits(buffer, offset, packet, element)
  end

  return offset + 2, range
end

-- Technical Origin
euronext_optiq_sbe_v4_10.technical_origin = {}

-- Size: Technical Origin
euronext_optiq_sbe_v4_10.technical_origin.size = 1

-- Display: Technical Origin
euronext_optiq_sbe_v4_10.technical_origin.display = function(value)
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
euronext_optiq_sbe_v4_10.technical_origin.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.technical_origin.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.technical_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.technical_origin, range, value, display)

  return offset + length, value
end

-- Long Client Id
euronext_optiq_sbe_v4_10.long_client_id = {}

-- Size: Long Client Id
euronext_optiq_sbe_v4_10.long_client_id.size = 16

-- Display: Long Client Id
euronext_optiq_sbe_v4_10.long_client_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Client Id: No Value"
  end

  return "Long Client Id: "..value
end

-- Dissect: Long Client Id
euronext_optiq_sbe_v4_10.long_client_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.long_client_id.size
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

  local display = euronext_optiq_sbe_v4_10.long_client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.long_client_id, range, value, display)

  return offset + length, value
end

-- Clearing Fields X Group
euronext_optiq_sbe_v4_10.clearing_fields_x_group = {}

-- Size: Clearing Fields X Group
euronext_optiq_sbe_v4_10.clearing_fields_x_group.size =
  euronext_optiq_sbe_v4_10.clearing_firm_id.size + 
  euronext_optiq_sbe_v4_10.long_client_id.size + 
  euronext_optiq_sbe_v4_10.account_number.size + 
  euronext_optiq_sbe_v4_10.technical_origin.size + 
  euronext_optiq_sbe_v4_10.open_close.size + 
  euronext_optiq_sbe_v4_10.clearing_instruction.size + 
  euronext_optiq_sbe_v4_10.account_type.size + 
  euronext_optiq_sbe_v4_10.trading_capacity_optional.size

-- Display: Clearing Fields X Group
euronext_optiq_sbe_v4_10.clearing_fields_x_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Fields X Group
euronext_optiq_sbe_v4_10.clearing_fields_x_group.fields = function(buffer, offset, packet, parent, clearing_fields_x_group_index)
  local index = offset

  -- Implicit Clearing Fields X Group Index
  if clearing_fields_x_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_x_group_index, clearing_fields_x_group_index)
    iteration:set_generated()
  end

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_sbe_v4_10.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_sbe_v4_10.long_client_id.dissect(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_sbe_v4_10.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_sbe_v4_10.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_sbe_v4_10.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_sbe_v4_10.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_sbe_v4_10.account_type.dissect(buffer, index, packet, parent)

  -- Trading Capacity Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_optional = euronext_optiq_sbe_v4_10.trading_capacity_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Fields X Group
euronext_optiq_sbe_v4_10.clearing_fields_x_group.dissect = function(buffer, offset, packet, parent, clearing_fields_x_group_index)
  if show.clearing_fields_x_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_x_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.clearing_fields_x_group.fields(buffer, offset, packet, parent, clearing_fields_x_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.clearing_fields_x_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.clearing_fields_x_group.fields(buffer, offset, packet, parent, clearing_fields_x_group_index)
  end
end

-- Clearing Fields X Groups
euronext_optiq_sbe_v4_10.clearing_fields_x_groups = {}

-- Calculate size of: Clearing Fields X Groups
euronext_optiq_sbe_v4_10.clearing_fields_x_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local clearing_fields_x_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_fields_x_group_count * 43

  return index
end

-- Display: Clearing Fields X Groups
euronext_optiq_sbe_v4_10.clearing_fields_x_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Fields X Groups
euronext_optiq_sbe_v4_10.clearing_fields_x_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Clearing Fields X Group
  for clearing_fields_x_group_index = 1, num_in_group do
    index, clearing_fields_x_group = euronext_optiq_sbe_v4_10.clearing_fields_x_group.dissect(buffer, index, packet, parent, clearing_fields_x_group_index)
  end

  return index
end

-- Dissect: Clearing Fields X Groups
euronext_optiq_sbe_v4_10.clearing_fields_x_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_fields_x_groups then
    local length = euronext_optiq_sbe_v4_10.clearing_fields_x_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.clearing_fields_x_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_x_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.clearing_fields_x_groups.fields(buffer, offset, packet, parent)
end

-- Non Executing Broker Short Code
euronext_optiq_sbe_v4_10.non_executing_broker_short_code = {}

-- Size: Non Executing Broker Short Code
euronext_optiq_sbe_v4_10.non_executing_broker_short_code.size = 4

-- Display: Non Executing Broker Short Code
euronext_optiq_sbe_v4_10.non_executing_broker_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Non Executing Broker Short Code: No Value"
  end

  return "Non Executing Broker Short Code: "..value
end

-- Dissect: Non Executing Broker Short Code
euronext_optiq_sbe_v4_10.non_executing_broker_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.non_executing_broker_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_sbe_v4_10.non_executing_broker_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.non_executing_broker_short_code, range, value, display)

  return offset + length, value
end

-- Mifid Short Codes Group
euronext_optiq_sbe_v4_10.mifid_short_codes_group = {}

-- Size: Mifid Short Codes Group
euronext_optiq_sbe_v4_10.mifid_short_codes_group.size =
  euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.non_executing_broker_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size

-- Display: Mifid Short Codes Group
euronext_optiq_sbe_v4_10.mifid_short_codes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Short Codes Group
euronext_optiq_sbe_v4_10.mifid_short_codes_group.fields = function(buffer, offset, packet, parent, mifid_short_codes_group_index)
  local index = offset

  -- Implicit Mifid Short Codes Group Index
  if mifid_short_codes_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mifid_short_codes_group_index, mifid_short_codes_group_index)
    iteration:set_generated()
  end

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = euronext_optiq_sbe_v4_10.non_executing_broker_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Short Codes Group
euronext_optiq_sbe_v4_10.mifid_short_codes_group.dissect = function(buffer, offset, packet, parent, mifid_short_codes_group_index)
  if show.mifid_short_codes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mifid_short_codes_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.mifid_short_codes_group.fields(buffer, offset, packet, parent, mifid_short_codes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.mifid_short_codes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.mifid_short_codes_group.fields(buffer, offset, packet, parent, mifid_short_codes_group_index)
  end
end

-- Mifid Short Codes Groups
euronext_optiq_sbe_v4_10.mifid_short_codes_groups = {}

-- Calculate size of: Mifid Short Codes Groups
euronext_optiq_sbe_v4_10.mifid_short_codes_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local mifid_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mifid_short_codes_group_count * 12

  return index
end

-- Display: Mifid Short Codes Groups
euronext_optiq_sbe_v4_10.mifid_short_codes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Short Codes Groups
euronext_optiq_sbe_v4_10.mifid_short_codes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Mifid Short Codes Group
  for mifid_short_codes_group_index = 1, num_in_group do
    index, mifid_short_codes_group = euronext_optiq_sbe_v4_10.mifid_short_codes_group.dissect(buffer, index, packet, parent, mifid_short_codes_group_index)
  end

  return index
end

-- Dissect: Mifid Short Codes Groups
euronext_optiq_sbe_v4_10.mifid_short_codes_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mifid_short_codes_groups then
    local length = euronext_optiq_sbe_v4_10.mifid_short_codes_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.mifid_short_codes_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mifid_short_codes_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.mifid_short_codes_groups.fields(buffer, offset, packet, parent)
end

-- Free Text Section Group
euronext_optiq_sbe_v4_10.free_text_section_group = {}

-- Size: Free Text Section Group
euronext_optiq_sbe_v4_10.free_text_section_group.size =
  euronext_optiq_sbe_v4_10.free_text.size

-- Display: Free Text Section Group
euronext_optiq_sbe_v4_10.free_text_section_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Free Text Section Group
euronext_optiq_sbe_v4_10.free_text_section_group.fields = function(buffer, offset, packet, parent, free_text_section_group_index)
  local index = offset

  -- Implicit Free Text Section Group Index
  if free_text_section_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.free_text_section_group_index, free_text_section_group_index)
    iteration:set_generated()
  end

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_sbe_v4_10.free_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Free Text Section Group
euronext_optiq_sbe_v4_10.free_text_section_group.dissect = function(buffer, offset, packet, parent, free_text_section_group_index)
  if show.free_text_section_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.free_text_section_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.free_text_section_group.fields(buffer, offset, packet, parent, free_text_section_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.free_text_section_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.free_text_section_group.fields(buffer, offset, packet, parent, free_text_section_group_index)
  end
end

-- Free Text Section Groups
euronext_optiq_sbe_v4_10.free_text_section_groups = {}

-- Calculate size of: Free Text Section Groups
euronext_optiq_sbe_v4_10.free_text_section_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local free_text_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + free_text_section_group_count * 18

  return index
end

-- Display: Free Text Section Groups
euronext_optiq_sbe_v4_10.free_text_section_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Free Text Section Groups
euronext_optiq_sbe_v4_10.free_text_section_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Free Text Section Group
  for free_text_section_group_index = 1, num_in_group do
    index, free_text_section_group = euronext_optiq_sbe_v4_10.free_text_section_group.dissect(buffer, index, packet, parent, free_text_section_group_index)
  end

  return index
end

-- Dissect: Free Text Section Groups
euronext_optiq_sbe_v4_10.free_text_section_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.free_text_section_groups then
    local length = euronext_optiq_sbe_v4_10.free_text_section_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.free_text_section_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.free_text_section_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.free_text_section_groups.fields(buffer, offset, packet, parent)
end

-- Message Price Notation
euronext_optiq_sbe_v4_10.message_price_notation = {}

-- Size: Message Price Notation
euronext_optiq_sbe_v4_10.message_price_notation.size = 1

-- Display: Message Price Notation
euronext_optiq_sbe_v4_10.message_price_notation.display = function(value)
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
euronext_optiq_sbe_v4_10.message_price_notation.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.message_price_notation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.message_price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.message_price_notation, range, value, display)

  return offset + length, value
end

-- Order Actor Type
euronext_optiq_sbe_v4_10.order_actor_type = {}

-- Size: Order Actor Type
euronext_optiq_sbe_v4_10.order_actor_type.size = 1

-- Display: Order Actor Type
euronext_optiq_sbe_v4_10.order_actor_type.display = function(value)
  if value == 1 then
    return "Order Actor Type: Initiator (1)"
  end
  if value == 2 then
    return "Order Actor Type: Reactor (2)"
  end

  return "Order Actor Type: Unknown("..value..")"
end

-- Dissect: Order Actor Type
euronext_optiq_sbe_v4_10.order_actor_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_actor_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.order_actor_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_actor_type, range, value, display)

  return offset + length, value
end

-- Non Executing Client Id
euronext_optiq_sbe_v4_10.non_executing_client_id = {}

-- Size: Non Executing Client Id
euronext_optiq_sbe_v4_10.non_executing_client_id.size = 2

-- Display: Non Executing Client Id
euronext_optiq_sbe_v4_10.non_executing_client_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Non Executing Client Id: No Value"
  end

  return "Non Executing Client Id: "..value
end

-- Dissect: Non Executing Client Id
euronext_optiq_sbe_v4_10.non_executing_client_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.non_executing_client_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.non_executing_client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.non_executing_client_id, range, value, display)

  return offset + length, value
end

-- Order Qty
euronext_optiq_sbe_v4_10.order_qty = {}

-- Size: Order Qty
euronext_optiq_sbe_v4_10.order_qty.size = 8

-- Display: Order Qty
euronext_optiq_sbe_v4_10.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
euronext_optiq_sbe_v4_10.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Px
euronext_optiq_sbe_v4_10.order_px = {}

-- Size: Order Px
euronext_optiq_sbe_v4_10.order_px.size = 8

-- Display: Order Px
euronext_optiq_sbe_v4_10.order_px.display = function(value)
  return "Order Px: "..value
end

-- Dissect: Order Px
euronext_optiq_sbe_v4_10.order_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.order_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_px, range, value, display)

  return offset + length, value
end

-- Order Type
euronext_optiq_sbe_v4_10.order_type = {}

-- Size: Order Type
euronext_optiq_sbe_v4_10.order_type.size = 1

-- Display: Order Type
euronext_optiq_sbe_v4_10.order_type.display = function(value)
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
euronext_optiq_sbe_v4_10.order_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_type, range, value, display)

  return offset + length, value
end

-- Cross Order Message
euronext_optiq_sbe_v4_10.cross_order_message = {}

-- Calculate size of: Cross Order Message
euronext_optiq_sbe_v4_10.cross_order_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.side.size

  index = index + euronext_optiq_sbe_v4_10.order_type.size

  index = index + euronext_optiq_sbe_v4_10.order_px.size

  index = index + euronext_optiq_sbe_v4_10.order_qty.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.mifid_indicators.size

  index = index + euronext_optiq_sbe_v4_10.non_executing_client_id.size

  index = index + euronext_optiq_sbe_v4_10.order_actor_type.size

  index = index + euronext_optiq_sbe_v4_10.message_price_notation.size

  index = index + euronext_optiq_sbe_v4_10.free_text_section_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.mifid_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.clearing_fields_x_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.strategy_fields_groups.size(buffer, offset + index)

  return index
end

-- Display: Cross Order Message
euronext_optiq_sbe_v4_10.cross_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Order Message
euronext_optiq_sbe_v4_10.cross_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = euronext_optiq_sbe_v4_10.order_type.dissect(buffer, index, packet, parent)

  -- Order Px: 8 Byte Signed Fixed Width Integer
  index, order_px = euronext_optiq_sbe_v4_10.order_px.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_sbe_v4_10.order_qty.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_sbe_v4_10.mifid_indicators.dissect(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = euronext_optiq_sbe_v4_10.non_executing_client_id.dissect(buffer, index, packet, parent)

  -- Order Actor Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, order_actor_type = euronext_optiq_sbe_v4_10.order_actor_type.dissect(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = euronext_optiq_sbe_v4_10.message_price_notation.dissect(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = euronext_optiq_sbe_v4_10.free_text_section_groups.dissect(buffer, index, packet, parent)

  -- Mifid Short Codes Groups: Struct of 2 fields
  index, mifid_short_codes_groups = euronext_optiq_sbe_v4_10.mifid_short_codes_groups.dissect(buffer, index, packet, parent)

  -- Clearing Fields X Groups: Struct of 2 fields
  index, clearing_fields_x_groups = euronext_optiq_sbe_v4_10.clearing_fields_x_groups.dissect(buffer, index, packet, parent)

  -- Strategy Fields Groups: Struct of 2 fields
  index, strategy_fields_groups = euronext_optiq_sbe_v4_10.strategy_fields_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Order Message
euronext_optiq_sbe_v4_10.cross_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cross_order_message then
    local length = euronext_optiq_sbe_v4_10.cross_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.cross_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.cross_order_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.cross_order_message.fields(buffer, offset, packet, parent)
end

-- Order Id
euronext_optiq_sbe_v4_10.order_id = {}

-- Size: Order Id
euronext_optiq_sbe_v4_10.order_id.size = 8

-- Display: Order Id
euronext_optiq_sbe_v4_10.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
euronext_optiq_sbe_v4_10.order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_id, range, value, display)

  return offset + length, value
end

-- Request For Implied Execution Message
euronext_optiq_sbe_v4_10.request_for_implied_execution_message = {}

-- Size: Request For Implied Execution Message
euronext_optiq_sbe_v4_10.request_for_implied_execution_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.order_id.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.mifid_indicators.size

-- Display: Request For Implied Execution Message
euronext_optiq_sbe_v4_10.request_for_implied_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Implied Execution Message
euronext_optiq_sbe_v4_10.request_for_implied_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = euronext_optiq_sbe_v4_10.order_id.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_sbe_v4_10.mifid_indicators.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Implied Execution Message
euronext_optiq_sbe_v4_10.request_for_implied_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.request_for_implied_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.request_for_implied_execution_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.request_for_implied_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.request_for_implied_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.request_for_implied_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Wholesale Ack Clearing Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group = {}

-- Size: Wholesale Ack Clearing Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group.size =
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.side.size + 
  euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.non_executing_broker_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.non_executing_client_id.size

-- Display: Wholesale Ack Clearing Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Ack Clearing Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group.fields = function(buffer, offset, packet, parent, wholesale_ack_clearing_rep_group_index)
  local index = offset

  -- Implicit Wholesale Ack Clearing Rep Group Index
  if wholesale_ack_clearing_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_clearing_rep_group_index, wholesale_ack_clearing_rep_group_index)
    iteration:set_generated()
  end

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = euronext_optiq_sbe_v4_10.non_executing_broker_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = euronext_optiq_sbe_v4_10.non_executing_client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Ack Clearing Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group.dissect = function(buffer, offset, packet, parent, wholesale_ack_clearing_rep_group_index)
  if show.wholesale_ack_clearing_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_clearing_rep_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group.fields(buffer, offset, packet, parent, wholesale_ack_clearing_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group.fields(buffer, offset, packet, parent, wholesale_ack_clearing_rep_group_index)
  end
end

-- Wholesale Ack Clearing Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups = {}

-- Calculate size of: Wholesale Ack Clearing Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local wholesale_ack_clearing_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_ack_clearing_rep_group_count * 19

  return index
end

-- Display: Wholesale Ack Clearing Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Ack Clearing Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Wholesale Ack Clearing Rep Group
  for wholesale_ack_clearing_rep_group_index = 1, num_in_group do
    index, wholesale_ack_clearing_rep_group = euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_group.dissect(buffer, index, packet, parent, wholesale_ack_clearing_rep_group_index)
  end

  return index
end

-- Dissect: Wholesale Ack Clearing Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_ack_clearing_rep_groups then
    local length = euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_clearing_rep_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.fields(buffer, offset, packet, parent)
end

-- Leg Error Code
euronext_optiq_sbe_v4_10.leg_error_code = {}

-- Size: Leg Error Code
euronext_optiq_sbe_v4_10.leg_error_code.size = 2

-- Display: Leg Error Code
euronext_optiq_sbe_v4_10.leg_error_code.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Leg Error Code: No Value"
  end

  return "Leg Error Code: "..value
end

-- Dissect: Leg Error Code
euronext_optiq_sbe_v4_10.leg_error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_error_code, range, value, display)

  return offset + length, value
end

-- Leg Offer Order Id
euronext_optiq_sbe_v4_10.leg_offer_order_id = {}

-- Size: Leg Offer Order Id
euronext_optiq_sbe_v4_10.leg_offer_order_id.size = 8

-- Display: Leg Offer Order Id
euronext_optiq_sbe_v4_10.leg_offer_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Offer Order Id: No Value"
  end

  return "Leg Offer Order Id: "..value
end

-- Dissect: Leg Offer Order Id
euronext_optiq_sbe_v4_10.leg_offer_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_offer_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.leg_offer_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_offer_order_id, range, value, display)

  return offset + length, value
end

-- Leg Bid Order Id
euronext_optiq_sbe_v4_10.leg_bid_order_id = {}

-- Size: Leg Bid Order Id
euronext_optiq_sbe_v4_10.leg_bid_order_id.size = 8

-- Display: Leg Bid Order Id
euronext_optiq_sbe_v4_10.leg_bid_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Bid Order Id: No Value"
  end

  return "Leg Bid Order Id: "..value
end

-- Dissect: Leg Bid Order Id
euronext_optiq_sbe_v4_10.leg_bid_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_bid_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.leg_bid_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_bid_order_id, range, value, display)

  return offset + length, value
end

-- Leg Symbol Index
euronext_optiq_sbe_v4_10.leg_symbol_index = {}

-- Size: Leg Symbol Index
euronext_optiq_sbe_v4_10.leg_symbol_index.size = 4

-- Display: Leg Symbol Index
euronext_optiq_sbe_v4_10.leg_symbol_index.display = function(value)
  return "Leg Symbol Index: "..value
end

-- Dissect: Leg Symbol Index
euronext_optiq_sbe_v4_10.leg_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_symbol_index, range, value, display)

  return offset + length, value
end

-- Wholesale Ack Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group = {}

-- Size: Wholesale Ack Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group.size =
  euronext_optiq_sbe_v4_10.leg_symbol_index.size + 
  euronext_optiq_sbe_v4_10.leg_bid_order_id.size + 
  euronext_optiq_sbe_v4_10.leg_offer_order_id.size + 
  euronext_optiq_sbe_v4_10.leg_side_optional.size + 
  euronext_optiq_sbe_v4_10.leg_error_code.size

-- Display: Wholesale Ack Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Ack Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group.fields = function(buffer, offset, packet, parent, wholesale_ack_legs_rep_group_index)
  local index = offset

  -- Implicit Wholesale Ack Legs Rep Group Index
  if wholesale_ack_legs_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_legs_rep_group_index, wholesale_ack_legs_rep_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_sbe_v4_10.leg_symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Bid Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_bid_order_id = euronext_optiq_sbe_v4_10.leg_bid_order_id.dissect(buffer, index, packet, parent)

  -- Leg Offer Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_offer_order_id = euronext_optiq_sbe_v4_10.leg_offer_order_id.dissect(buffer, index, packet, parent)

  -- Leg Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side_optional = euronext_optiq_sbe_v4_10.leg_side_optional.dissect(buffer, index, packet, parent)

  -- Leg Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, leg_error_code = euronext_optiq_sbe_v4_10.leg_error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Ack Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group.dissect = function(buffer, offset, packet, parent, wholesale_ack_legs_rep_group_index)
  if show.wholesale_ack_legs_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_legs_rep_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group.fields(buffer, offset, packet, parent, wholesale_ack_legs_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group.fields(buffer, offset, packet, parent, wholesale_ack_legs_rep_group_index)
  end
end

-- Wholesale Ack Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups = {}

-- Calculate size of: Wholesale Ack Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local wholesale_ack_legs_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_ack_legs_rep_group_count * 23

  return index
end

-- Display: Wholesale Ack Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Ack Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Wholesale Ack Legs Rep Group
  for wholesale_ack_legs_rep_group_index = 1, num_in_group do
    index, wholesale_ack_legs_rep_group = euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_group.dissect(buffer, index, packet, parent, wholesale_ack_legs_rep_group_index)
  end

  return index
end

-- Dissect: Wholesale Ack Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_ack_legs_rep_groups then
    local length = euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_ack_legs_rep_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.fields(buffer, offset, packet, parent)
end

-- Ack Qualifiers
euronext_optiq_sbe_v4_10.ack_qualifiers = {}

-- Size: Ack Qualifiers
euronext_optiq_sbe_v4_10.ack_qualifiers.size = 1

-- Display: Ack Qualifiers
euronext_optiq_sbe_v4_10.ack_qualifiers.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.ack_qualifiers.bits = function(buffer, offset, packet, parent)

  -- Executed Upon Entry Flag: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.executed_upon_entry_flag, buffer(offset, 1))

  -- Execution Upon Entry Flag Enabled: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_upon_entry_flag_enabled, buffer(offset, 1))

  -- Internal 2: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.internal_2, buffer(offset, 1))

  -- Internal 1: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.internal_1, buffer(offset, 1))

  -- Use Of Cross Partition: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.use_of_cross_partition, buffer(offset, 1))

  -- Request With Client Order Id: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.request_with_client_order_id, buffer(offset, 1))

  -- Queue Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.queue_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Ack Qualifiers
euronext_optiq_sbe_v4_10.ack_qualifiers.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.ack_qualifiers.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.ack_qualifiers, range, display)

  if show.ack_qualifiers then
    euronext_optiq_sbe_v4_10.ack_qualifiers.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Response Type
euronext_optiq_sbe_v4_10.response_type = {}

-- Size: Response Type
euronext_optiq_sbe_v4_10.response_type.size = 1

-- Display: Response Type
euronext_optiq_sbe_v4_10.response_type.display = function(value)
  if value == 0 then
    return "Response Type: Accept (0)"
  end
  if value == 1 then
    return "Response Type: Reject (1)"
  end

  return "Response Type: Unknown("..value..")"
end

-- Dissect: Response Type
euronext_optiq_sbe_v4_10.response_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.response_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.response_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.response_type, range, value, display)

  return offset + length, value
end

-- Escb Membership
euronext_optiq_sbe_v4_10.escb_membership = {}

-- Size: Escb Membership
euronext_optiq_sbe_v4_10.escb_membership.size = 1

-- Display: Escb Membership
euronext_optiq_sbe_v4_10.escb_membership.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Escb Membership: No Value"
  end

  return "Escb Membership: "..value
end

-- Dissect: Escb Membership
euronext_optiq_sbe_v4_10.escb_membership.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.escb_membership.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.escb_membership.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.escb_membership, range, value, display)

  return offset + length, value
end

-- Wholesale Side
euronext_optiq_sbe_v4_10.wholesale_side = {}

-- Size: Wholesale Side
euronext_optiq_sbe_v4_10.wholesale_side.size = 1

-- Display: Wholesale Side
euronext_optiq_sbe_v4_10.wholesale_side.display = function(value)
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
euronext_optiq_sbe_v4_10.wholesale_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.wholesale_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.wholesale_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_side, range, value, display)

  return offset + length, value
end

-- Strategy Code Optional
euronext_optiq_sbe_v4_10.strategy_code_optional = {}

-- Size: Strategy Code Optional
euronext_optiq_sbe_v4_10.strategy_code_optional.size = 1

-- Display: Strategy Code Optional
euronext_optiq_sbe_v4_10.strategy_code_optional.display = function(value)
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
euronext_optiq_sbe_v4_10.strategy_code_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.strategy_code_optional.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_sbe_v4_10.strategy_code_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.strategy_code_optional, range, value, display)

  return offset + length, value
end

-- Lis Transaction Id
euronext_optiq_sbe_v4_10.lis_transaction_id = {}

-- Size: Lis Transaction Id
euronext_optiq_sbe_v4_10.lis_transaction_id.size = 4

-- Display: Lis Transaction Id
euronext_optiq_sbe_v4_10.lis_transaction_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Lis Transaction Id: No Value"
  end

  return "Lis Transaction Id: "..value
end

-- Dissect: Lis Transaction Id
euronext_optiq_sbe_v4_10.lis_transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.lis_transaction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.lis_transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.lis_transaction_id, range, value, display)

  return offset + length, value
end

-- Wholesale Trade Type
euronext_optiq_sbe_v4_10.wholesale_trade_type = {}

-- Size: Wholesale Trade Type
euronext_optiq_sbe_v4_10.wholesale_trade_type.size = 1

-- Display: Wholesale Trade Type
euronext_optiq_sbe_v4_10.wholesale_trade_type.display = function(value)
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
euronext_optiq_sbe_v4_10.wholesale_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.wholesale_trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.wholesale_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_trade_type, range, value, display)

  return offset + length, value
end

-- Contract Symbol Index
euronext_optiq_sbe_v4_10.contract_symbol_index = {}

-- Size: Contract Symbol Index
euronext_optiq_sbe_v4_10.contract_symbol_index.size = 4

-- Display: Contract Symbol Index
euronext_optiq_sbe_v4_10.contract_symbol_index.display = function(value)
  return "Contract Symbol Index: "..value
end

-- Dissect: Contract Symbol Index
euronext_optiq_sbe_v4_10.contract_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.contract_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.contract_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.contract_symbol_index, range, value, display)

  return offset + length, value
end

-- Sending Time Optional
euronext_optiq_sbe_v4_10.sending_time_optional = {}

-- Size: Sending Time Optional
euronext_optiq_sbe_v4_10.sending_time_optional.size = 8

-- Display: Sending Time Optional
euronext_optiq_sbe_v4_10.sending_time_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Sending Time Optional: No Value"
  end

  return "Sending Time Optional: "..value
end

-- Dissect: Sending Time Optional
euronext_optiq_sbe_v4_10.sending_time_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.sending_time_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.sending_time_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.sending_time_optional, range, value, display)

  return offset + length, value
end

-- Wholesale Order Ack Message
euronext_optiq_sbe_v4_10.wholesale_order_ack_message = {}

-- Calculate size of: Wholesale Order Ack Message
euronext_optiq_sbe_v4_10.wholesale_order_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_member.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size

  index = index + euronext_optiq_sbe_v4_10.book_in_optional.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.contract_symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.wholesale_trade_type.size

  index = index + euronext_optiq_sbe_v4_10.lis_transaction_id.size

  index = index + euronext_optiq_sbe_v4_10.strategy_code_optional.size

  index = index + euronext_optiq_sbe_v4_10.price_optional.size

  index = index + euronext_optiq_sbe_v4_10.quantity_optional.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.mifid_indicators.size

  index = index + euronext_optiq_sbe_v4_10.wholesale_side.size

  index = index + euronext_optiq_sbe_v4_10.escb_membership.size

  index = index + euronext_optiq_sbe_v4_10.response_type.size

  index = index + euronext_optiq_sbe_v4_10.error_code.size

  index = index + euronext_optiq_sbe_v4_10.ack_qualifiers.size

  index = index + euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.size(buffer, offset + index)

  return index
end

-- Display: Wholesale Order Ack Message
euronext_optiq_sbe_v4_10.wholesale_order_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Order Ack Message
euronext_optiq_sbe_v4_10.wholesale_order_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_sbe_v4_10.book_in_optional.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_sbe_v4_10.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_sbe_v4_10.contract_symbol_index.dissect(buffer, index, packet, parent)

  -- Wholesale Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_trade_type = euronext_optiq_sbe_v4_10.wholesale_trade_type.dissect(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = euronext_optiq_sbe_v4_10.lis_transaction_id.dissect(buffer, index, packet, parent)

  -- Strategy Code Optional: 1 Byte Ascii String Enum with 49 values
  index, strategy_code_optional = euronext_optiq_sbe_v4_10.strategy_code_optional.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = euronext_optiq_sbe_v4_10.price_optional.dissect(buffer, index, packet, parent)

  -- Quantity Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_optional = euronext_optiq_sbe_v4_10.quantity_optional.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_sbe_v4_10.mifid_indicators.dissect(buffer, index, packet, parent)

  -- Wholesale Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_side = euronext_optiq_sbe_v4_10.wholesale_side.dissect(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = euronext_optiq_sbe_v4_10.escb_membership.dissect(buffer, index, packet, parent)

  -- Response Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, response_type = euronext_optiq_sbe_v4_10.response_type.dissect(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = euronext_optiq_sbe_v4_10.error_code.dissect(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = euronext_optiq_sbe_v4_10.ack_qualifiers.dissect(buffer, index, packet, parent)

  -- Wholesale Ack Legs Rep Groups: Struct of 2 fields
  index, wholesale_ack_legs_rep_groups = euronext_optiq_sbe_v4_10.wholesale_ack_legs_rep_groups.dissect(buffer, index, packet, parent)

  -- Wholesale Ack Clearing Rep Groups: Struct of 2 fields
  index, wholesale_ack_clearing_rep_groups = euronext_optiq_sbe_v4_10.wholesale_ack_clearing_rep_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Order Ack Message
euronext_optiq_sbe_v4_10.wholesale_order_ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_order_ack_message then
    local length = euronext_optiq_sbe_v4_10.wholesale_order_ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.wholesale_order_ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_order_ack_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.wholesale_order_ack_message.fields(buffer, offset, packet, parent)
end

-- Wholesale Client Rep Group
euronext_optiq_sbe_v4_10.wholesale_client_rep_group = {}

-- Size: Wholesale Client Rep Group
euronext_optiq_sbe_v4_10.wholesale_client_rep_group.size =
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.side.size + 
  euronext_optiq_sbe_v4_10.account_type.size + 
  euronext_optiq_sbe_v4_10.clearing_firm_id.size + 
  euronext_optiq_sbe_v4_10.long_client_id.size + 
  euronext_optiq_sbe_v4_10.account_number.size + 
  euronext_optiq_sbe_v4_10.technical_origin.size + 
  euronext_optiq_sbe_v4_10.open_close.size + 
  euronext_optiq_sbe_v4_10.clearing_instruction.size + 
  euronext_optiq_sbe_v4_10.free_text.size + 
  euronext_optiq_sbe_v4_10.non_executing_client_id.size + 
  euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.non_executing_broker_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.trading_capacity_optional.size

-- Display: Wholesale Client Rep Group
euronext_optiq_sbe_v4_10.wholesale_client_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Client Rep Group
euronext_optiq_sbe_v4_10.wholesale_client_rep_group.fields = function(buffer, offset, packet, parent, wholesale_client_rep_group_index)
  local index = offset

  -- Implicit Wholesale Client Rep Group Index
  if wholesale_client_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_client_rep_group_index, wholesale_client_rep_group_index)
    iteration:set_generated()
  end

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_sbe_v4_10.account_type.dissect(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_sbe_v4_10.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_sbe_v4_10.long_client_id.dissect(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_sbe_v4_10.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_sbe_v4_10.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_sbe_v4_10.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_sbe_v4_10.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_sbe_v4_10.free_text.dissect(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = euronext_optiq_sbe_v4_10.non_executing_client_id.dissect(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, investment_decision_w_firm_short_code = euronext_optiq_sbe_v4_10.investment_decision_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, non_executing_broker_short_code = euronext_optiq_sbe_v4_10.non_executing_broker_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Trading Capacity Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trading_capacity_optional = euronext_optiq_sbe_v4_10.trading_capacity_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Client Rep Group
euronext_optiq_sbe_v4_10.wholesale_client_rep_group.dissect = function(buffer, offset, packet, parent, wholesale_client_rep_group_index)
  if show.wholesale_client_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_client_rep_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.wholesale_client_rep_group.fields(buffer, offset, packet, parent, wholesale_client_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.wholesale_client_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.wholesale_client_rep_group.fields(buffer, offset, packet, parent, wholesale_client_rep_group_index)
  end
end

-- Wholesale Client Rep Groups
euronext_optiq_sbe_v4_10.wholesale_client_rep_groups = {}

-- Calculate size of: Wholesale Client Rep Groups
euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local wholesale_client_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_client_rep_group_count * 80

  return index
end

-- Display: Wholesale Client Rep Groups
euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Client Rep Groups
euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Wholesale Client Rep Group
  for wholesale_client_rep_group_index = 1, num_in_group do
    index, wholesale_client_rep_group = euronext_optiq_sbe_v4_10.wholesale_client_rep_group.dissect(buffer, index, packet, parent, wholesale_client_rep_group_index)
  end

  return index
end

-- Dissect: Wholesale Client Rep Groups
euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_client_rep_groups then
    local length = euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_client_rep_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.fields(buffer, offset, packet, parent)
end

-- Leg Last Trading Date
euronext_optiq_sbe_v4_10.leg_last_trading_date = {}

-- Size: Leg Last Trading Date
euronext_optiq_sbe_v4_10.leg_last_trading_date.size = 8

-- Display: Leg Last Trading Date
euronext_optiq_sbe_v4_10.leg_last_trading_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Leg Last Trading Date: No Value"
  end

  return "Leg Last Trading Date: "..value
end

-- Dissect: Leg Last Trading Date
euronext_optiq_sbe_v4_10.leg_last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_last_trading_date.size
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

  local display = euronext_optiq_sbe_v4_10.leg_last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_last_trading_date, range, value, display)

  return offset + length, value
end

-- Leg Security Type
euronext_optiq_sbe_v4_10.leg_security_type = {}

-- Size: Leg Security Type
euronext_optiq_sbe_v4_10.leg_security_type.size = 1

-- Display: Leg Security Type
euronext_optiq_sbe_v4_10.leg_security_type.display = function(value)
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
euronext_optiq_sbe_v4_10.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Put Or Call
euronext_optiq_sbe_v4_10.leg_put_or_call = {}

-- Size: Leg Put Or Call
euronext_optiq_sbe_v4_10.leg_put_or_call.size = 1

-- Display: Leg Put Or Call
euronext_optiq_sbe_v4_10.leg_put_or_call.display = function(value)
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
euronext_optiq_sbe_v4_10.leg_put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_put_or_call, range, value, display)

  return offset + length, value
end

-- Leg Ratio Optional
euronext_optiq_sbe_v4_10.leg_ratio_optional = {}

-- Size: Leg Ratio Optional
euronext_optiq_sbe_v4_10.leg_ratio_optional.size = 4

-- Display: Leg Ratio Optional
euronext_optiq_sbe_v4_10.leg_ratio_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Ratio Optional: No Value"
  end

  return "Leg Ratio Optional: "..value
end

-- Dissect: Leg Ratio Optional
euronext_optiq_sbe_v4_10.leg_ratio_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_ratio_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_ratio_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_ratio_optional, range, value, display)

  return offset + length, value
end

-- Leg Strike Price
euronext_optiq_sbe_v4_10.leg_strike_price = {}

-- Size: Leg Strike Price
euronext_optiq_sbe_v4_10.leg_strike_price.size = 8

-- Display: Leg Strike Price
euronext_optiq_sbe_v4_10.leg_strike_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Strike Price: No Value"
  end

  return "Leg Strike Price: "..value
end

-- Dissect: Leg Strike Price
euronext_optiq_sbe_v4_10.leg_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_strike_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.leg_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_strike_price, range, value, display)

  return offset + length, value
end

-- Offer Quantity
euronext_optiq_sbe_v4_10.offer_quantity = {}

-- Size: Offer Quantity
euronext_optiq_sbe_v4_10.offer_quantity.size = 8

-- Display: Offer Quantity
euronext_optiq_sbe_v4_10.offer_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Quantity: No Value"
  end

  return "Offer Quantity: "..value
end

-- Dissect: Offer Quantity
euronext_optiq_sbe_v4_10.offer_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.offer_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.offer_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.offer_quantity, range, value, display)

  return offset + length, value
end

-- Bid Quantity
euronext_optiq_sbe_v4_10.bid_quantity = {}

-- Size: Bid Quantity
euronext_optiq_sbe_v4_10.bid_quantity.size = 8

-- Display: Bid Quantity
euronext_optiq_sbe_v4_10.bid_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Quantity: No Value"
  end

  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
euronext_optiq_sbe_v4_10.bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.bid_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Leg Price
euronext_optiq_sbe_v4_10.leg_price = {}

-- Size: Leg Price
euronext_optiq_sbe_v4_10.leg_price.size = 8

-- Display: Leg Price
euronext_optiq_sbe_v4_10.leg_price.display = function(value)
  return "Leg Price: "..value
end

-- Dissect: Leg Price
euronext_optiq_sbe_v4_10.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Wholesale Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_legs_rep_group = {}

-- Size: Wholesale Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_legs_rep_group.size =
  euronext_optiq_sbe_v4_10.leg_symbol_index.size + 
  euronext_optiq_sbe_v4_10.leg_price.size + 
  euronext_optiq_sbe_v4_10.bid_quantity.size + 
  euronext_optiq_sbe_v4_10.offer_quantity.size + 
  euronext_optiq_sbe_v4_10.leg_side_optional.size + 
  euronext_optiq_sbe_v4_10.leg_strike_price.size + 
  euronext_optiq_sbe_v4_10.leg_ratio_optional.size + 
  euronext_optiq_sbe_v4_10.leg_put_or_call.size + 
  euronext_optiq_sbe_v4_10.leg_security_type.size + 
  euronext_optiq_sbe_v4_10.leg_last_trading_date.size

-- Display: Wholesale Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_legs_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_legs_rep_group.fields = function(buffer, offset, packet, parent, wholesale_legs_rep_group_index)
  local index = offset

  -- Implicit Wholesale Legs Rep Group Index
  if wholesale_legs_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_legs_rep_group_index, wholesale_legs_rep_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_sbe_v4_10.leg_symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Signed Fixed Width Integer
  index, leg_price = euronext_optiq_sbe_v4_10.leg_price.dissect(buffer, index, packet, parent)

  -- Bid Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_quantity = euronext_optiq_sbe_v4_10.bid_quantity.dissect(buffer, index, packet, parent)

  -- Offer Quantity: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_quantity = euronext_optiq_sbe_v4_10.offer_quantity.dissect(buffer, index, packet, parent)

  -- Leg Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side_optional = euronext_optiq_sbe_v4_10.leg_side_optional.dissect(buffer, index, packet, parent)

  -- Leg Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_strike_price = euronext_optiq_sbe_v4_10.leg_strike_price.dissect(buffer, index, packet, parent)

  -- Leg Ratio Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio_optional = euronext_optiq_sbe_v4_10.leg_ratio_optional.dissect(buffer, index, packet, parent)

  -- Leg Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_put_or_call = euronext_optiq_sbe_v4_10.leg_put_or_call.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = euronext_optiq_sbe_v4_10.leg_security_type.dissect(buffer, index, packet, parent)

  -- Leg Last Trading Date: 8 Byte Ascii String Nullable
  index, leg_last_trading_date = euronext_optiq_sbe_v4_10.leg_last_trading_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Wholesale Legs Rep Group
euronext_optiq_sbe_v4_10.wholesale_legs_rep_group.dissect = function(buffer, offset, packet, parent, wholesale_legs_rep_group_index)
  if show.wholesale_legs_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_legs_rep_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.wholesale_legs_rep_group.fields(buffer, offset, packet, parent, wholesale_legs_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.wholesale_legs_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.wholesale_legs_rep_group.fields(buffer, offset, packet, parent, wholesale_legs_rep_group_index)
  end
end

-- Wholesale Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups = {}

-- Calculate size of: Wholesale Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local wholesale_legs_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + wholesale_legs_rep_group_count * 51

  return index
end

-- Display: Wholesale Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Wholesale Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Wholesale Legs Rep Group
  for wholesale_legs_rep_group_index = 1, num_in_group do
    index, wholesale_legs_rep_group = euronext_optiq_sbe_v4_10.wholesale_legs_rep_group.dissect(buffer, index, packet, parent, wholesale_legs_rep_group_index)
  end

  return index
end

-- Dissect: Wholesale Legs Rep Groups
euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.wholesale_legs_rep_groups then
    local length = euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.wholesale_legs_rep_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.fields(buffer, offset, packet, parent)
end

-- Quantity
euronext_optiq_sbe_v4_10.quantity = {}

-- Size: Quantity
euronext_optiq_sbe_v4_10.quantity.size = 8

-- Display: Quantity
euronext_optiq_sbe_v4_10.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
euronext_optiq_sbe_v4_10.quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.quantity, range, value, display)

  return offset + length, value
end

-- New Wholesale Order Message
euronext_optiq_sbe_v4_10.new_wholesale_order_message = {}

-- Calculate size of: New Wholesale Order Message
euronext_optiq_sbe_v4_10.new_wholesale_order_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.contract_symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.wholesale_trade_type.size

  index = index + euronext_optiq_sbe_v4_10.lis_transaction_id.size

  index = index + euronext_optiq_sbe_v4_10.strategy_code_optional.size

  index = index + euronext_optiq_sbe_v4_10.price.size

  index = index + euronext_optiq_sbe_v4_10.quantity.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.mifid_indicators.size

  index = index + euronext_optiq_sbe_v4_10.wholesale_side.size

  index = index + euronext_optiq_sbe_v4_10.escb_membership.size

  index = index + euronext_optiq_sbe_v4_10.message_price_notation.size

  index = index + euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.size(buffer, offset + index)

  return index
end

-- Display: New Wholesale Order Message
euronext_optiq_sbe_v4_10.new_wholesale_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Wholesale Order Message
euronext_optiq_sbe_v4_10.new_wholesale_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_sbe_v4_10.contract_symbol_index.dissect(buffer, index, packet, parent)

  -- Wholesale Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_trade_type = euronext_optiq_sbe_v4_10.wholesale_trade_type.dissect(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = euronext_optiq_sbe_v4_10.lis_transaction_id.dissect(buffer, index, packet, parent)

  -- Strategy Code Optional: 1 Byte Ascii String Enum with 49 values
  index, strategy_code_optional = euronext_optiq_sbe_v4_10.strategy_code_optional.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = euronext_optiq_sbe_v4_10.price.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = euronext_optiq_sbe_v4_10.quantity.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_sbe_v4_10.mifid_indicators.dissect(buffer, index, packet, parent)

  -- Wholesale Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, wholesale_side = euronext_optiq_sbe_v4_10.wholesale_side.dissect(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = euronext_optiq_sbe_v4_10.escb_membership.dissect(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = euronext_optiq_sbe_v4_10.message_price_notation.dissect(buffer, index, packet, parent)

  -- Wholesale Legs Rep Groups: Struct of 2 fields
  index, wholesale_legs_rep_groups = euronext_optiq_sbe_v4_10.wholesale_legs_rep_groups.dissect(buffer, index, packet, parent)

  -- Wholesale Client Rep Groups: Struct of 2 fields
  index, wholesale_client_rep_groups = euronext_optiq_sbe_v4_10.wholesale_client_rep_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Wholesale Order Message
euronext_optiq_sbe_v4_10.new_wholesale_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_wholesale_order_message then
    local length = euronext_optiq_sbe_v4_10.new_wholesale_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.new_wholesale_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.new_wholesale_order_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.new_wholesale_order_message.fields(buffer, offset, packet, parent)
end

-- Breach Status
euronext_optiq_sbe_v4_10.breach_status = {}

-- Size: Breach Status
euronext_optiq_sbe_v4_10.breach_status.size = 1

-- Display: Breach Status
euronext_optiq_sbe_v4_10.breach_status.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Breach Status: No Value"
  end

  return "Breach Status: "..value
end

-- Dissect: Breach Status
euronext_optiq_sbe_v4_10.breach_status.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.breach_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.breach_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.breach_status, range, value, display)

  return offset + length, value
end

-- Current Mmp Position
euronext_optiq_sbe_v4_10.current_mmp_position = {}

-- Size: Current Mmp Position
euronext_optiq_sbe_v4_10.current_mmp_position.size = 8

-- Display: Current Mmp Position
euronext_optiq_sbe_v4_10.current_mmp_position.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Current Mmp Position: No Value"
  end

  return "Current Mmp Position: "..value
end

-- Dissect: Current Mmp Position
euronext_optiq_sbe_v4_10.current_mmp_position.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.current_mmp_position.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.current_mmp_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.current_mmp_position, range, value, display)

  return offset + length, value
end

-- Breach Action
euronext_optiq_sbe_v4_10.breach_action = {}

-- Size: Breach Action
euronext_optiq_sbe_v4_10.breach_action.size = 1

-- Display: Breach Action
euronext_optiq_sbe_v4_10.breach_action.display = function(value)
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
euronext_optiq_sbe_v4_10.breach_action.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.breach_action.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.breach_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.breach_action, range, value, display)

  return offset + length, value
end

-- Protection Threshold
euronext_optiq_sbe_v4_10.protection_threshold = {}

-- Size: Protection Threshold
euronext_optiq_sbe_v4_10.protection_threshold.size = 8

-- Display: Protection Threshold
euronext_optiq_sbe_v4_10.protection_threshold.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Protection Threshold: No Value"
  end

  return "Protection Threshold: "..value
end

-- Dissect: Protection Threshold
euronext_optiq_sbe_v4_10.protection_threshold.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.protection_threshold.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.protection_threshold.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.protection_threshold, range, value, display)

  return offset + length, value
end

-- Protection Type Optional
euronext_optiq_sbe_v4_10.protection_type_optional = {}

-- Size: Protection Type Optional
euronext_optiq_sbe_v4_10.protection_type_optional.size = 1

-- Display: Protection Type Optional
euronext_optiq_sbe_v4_10.protection_type_optional.display = function(value)
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
euronext_optiq_sbe_v4_10.protection_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.protection_type_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.protection_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.protection_type_optional, range, value, display)

  return offset + length, value
end

-- Mmp Section2 Group
euronext_optiq_sbe_v4_10.mmp_section2_group = {}

-- Size: Mmp Section2 Group
euronext_optiq_sbe_v4_10.mmp_section2_group.size =
  euronext_optiq_sbe_v4_10.protection_type_optional.size + 
  euronext_optiq_sbe_v4_10.protection_threshold.size + 
  euronext_optiq_sbe_v4_10.breach_action.size + 
  euronext_optiq_sbe_v4_10.current_mmp_position.size + 
  euronext_optiq_sbe_v4_10.breach_status.size

-- Display: Mmp Section2 Group
euronext_optiq_sbe_v4_10.mmp_section2_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmp Section2 Group
euronext_optiq_sbe_v4_10.mmp_section2_group.fields = function(buffer, offset, packet, parent, mmp_section2_group_index)
  local index = offset

  -- Implicit Mmp Section2 Group Index
  if mmp_section2_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mmp_section2_group_index, mmp_section2_group_index)
    iteration:set_generated()
  end

  -- Protection Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, protection_type_optional = euronext_optiq_sbe_v4_10.protection_type_optional.dissect(buffer, index, packet, parent)

  -- Protection Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, protection_threshold = euronext_optiq_sbe_v4_10.protection_threshold.dissect(buffer, index, packet, parent)

  -- Breach Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, breach_action = euronext_optiq_sbe_v4_10.breach_action.dissect(buffer, index, packet, parent)

  -- Current Mmp Position: 8 Byte Signed Fixed Width Integer Nullable
  index, current_mmp_position = euronext_optiq_sbe_v4_10.current_mmp_position.dissect(buffer, index, packet, parent)

  -- Breach Status: 1 Byte Unsigned Fixed Width Integer Nullable
  index, breach_status = euronext_optiq_sbe_v4_10.breach_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmp Section2 Group
euronext_optiq_sbe_v4_10.mmp_section2_group.dissect = function(buffer, offset, packet, parent, mmp_section2_group_index)
  if show.mmp_section2_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mmp_section2_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.mmp_section2_group.fields(buffer, offset, packet, parent, mmp_section2_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.mmp_section2_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.mmp_section2_group.fields(buffer, offset, packet, parent, mmp_section2_group_index)
  end
end

-- Mmp Section2 Groups
euronext_optiq_sbe_v4_10.mmp_section2_groups = {}

-- Calculate size of: Mmp Section2 Groups
euronext_optiq_sbe_v4_10.mmp_section2_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local mmp_section2_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mmp_section2_group_count * 19

  return index
end

-- Display: Mmp Section2 Groups
euronext_optiq_sbe_v4_10.mmp_section2_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmp Section2 Groups
euronext_optiq_sbe_v4_10.mmp_section2_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Mmp Section2 Group
  for mmp_section2_group_index = 1, num_in_group do
    index, mmp_section2_group = euronext_optiq_sbe_v4_10.mmp_section2_group.dissect(buffer, index, packet, parent, mmp_section2_group_index)
  end

  return index
end

-- Dissect: Mmp Section2 Groups
euronext_optiq_sbe_v4_10.mmp_section2_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mmp_section2_groups then
    local length = euronext_optiq_sbe_v4_10.mmp_section2_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.mmp_section2_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mmp_section2_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.mmp_section2_groups.fields(buffer, offset, packet, parent)
end

-- Mmp Execution Type
euronext_optiq_sbe_v4_10.mmp_execution_type = {}

-- Size: Mmp Execution Type
euronext_optiq_sbe_v4_10.mmp_execution_type.size = 1

-- Display: Mmp Execution Type
euronext_optiq_sbe_v4_10.mmp_execution_type.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.mmp_execution_type.bits = function(buffer, offset, packet, parent)

  -- Reserved 5: 5 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_5, buffer(offset, 1))

  -- Pull: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.pull, buffer(offset, 1))

  -- Acknowledgement: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.acknowledgement, buffer(offset, 1))

  -- Notification: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.notification, buffer(offset, 1))
end

-- Dissect: Mmp Execution Type
euronext_optiq_sbe_v4_10.mmp_execution_type.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.mmp_execution_type.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mmp_execution_type, range, display)

  if show.mmp_execution_type then
    euronext_optiq_sbe_v4_10.mmp_execution_type.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Mm Protection Ack Message
euronext_optiq_sbe_v4_10.mm_protection_ack_message = {}

-- Calculate size of: Mm Protection Ack Message
euronext_optiq_sbe_v4_10.mm_protection_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_member.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size

  index = index + euronext_optiq_sbe_v4_10.book_in_optional.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.mmp_execution_type.size

  index = index + euronext_optiq_sbe_v4_10.mmp_section2_groups.size(buffer, offset + index)

  return index
end

-- Display: Mm Protection Ack Message
euronext_optiq_sbe_v4_10.mm_protection_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Protection Ack Message
euronext_optiq_sbe_v4_10.mm_protection_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_sbe_v4_10.book_in_optional.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_sbe_v4_10.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Mmp Execution Type: Struct of 4 fields
  index, mmp_execution_type = euronext_optiq_sbe_v4_10.mmp_execution_type.dissect(buffer, index, packet, parent)

  -- Mmp Section2 Groups: Struct of 2 fields
  index, mmp_section2_groups = euronext_optiq_sbe_v4_10.mmp_section2_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Protection Ack Message
euronext_optiq_sbe_v4_10.mm_protection_ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mm_protection_ack_message then
    local length = euronext_optiq_sbe_v4_10.mm_protection_ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.mm_protection_ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mm_protection_ack_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.mm_protection_ack_message.fields(buffer, offset, packet, parent)
end

-- Protection Type
euronext_optiq_sbe_v4_10.protection_type = {}

-- Size: Protection Type
euronext_optiq_sbe_v4_10.protection_type.size = 1

-- Display: Protection Type
euronext_optiq_sbe_v4_10.protection_type.display = function(value)
  if value == 1 then
    return "Protection Type: Delta (1)"
  end
  if value == 2 then
    return "Protection Type: Volume (2)"
  end

  return "Protection Type: Unknown("..value..")"
end

-- Dissect: Protection Type
euronext_optiq_sbe_v4_10.protection_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.protection_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.protection_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.protection_type, range, value, display)

  return offset + length, value
end

-- Mmp Section Group
euronext_optiq_sbe_v4_10.mmp_section_group = {}

-- Size: Mmp Section Group
euronext_optiq_sbe_v4_10.mmp_section_group.size =
  euronext_optiq_sbe_v4_10.protection_type.size + 
  euronext_optiq_sbe_v4_10.protection_threshold.size + 
  euronext_optiq_sbe_v4_10.breach_action.size

-- Display: Mmp Section Group
euronext_optiq_sbe_v4_10.mmp_section_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmp Section Group
euronext_optiq_sbe_v4_10.mmp_section_group.fields = function(buffer, offset, packet, parent, mmp_section_group_index)
  local index = offset

  -- Implicit Mmp Section Group Index
  if mmp_section_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mmp_section_group_index, mmp_section_group_index)
    iteration:set_generated()
  end

  -- Protection Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, protection_type = euronext_optiq_sbe_v4_10.protection_type.dissect(buffer, index, packet, parent)

  -- Protection Threshold: 8 Byte Unsigned Fixed Width Integer Nullable
  index, protection_threshold = euronext_optiq_sbe_v4_10.protection_threshold.dissect(buffer, index, packet, parent)

  -- Breach Action: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, breach_action = euronext_optiq_sbe_v4_10.breach_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mmp Section Group
euronext_optiq_sbe_v4_10.mmp_section_group.dissect = function(buffer, offset, packet, parent, mmp_section_group_index)
  if show.mmp_section_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mmp_section_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.mmp_section_group.fields(buffer, offset, packet, parent, mmp_section_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.mmp_section_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.mmp_section_group.fields(buffer, offset, packet, parent, mmp_section_group_index)
  end
end

-- Mmp Section Groups
euronext_optiq_sbe_v4_10.mmp_section_groups = {}

-- Calculate size of: Mmp Section Groups
euronext_optiq_sbe_v4_10.mmp_section_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local mmp_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mmp_section_group_count * 10

  return index
end

-- Display: Mmp Section Groups
euronext_optiq_sbe_v4_10.mmp_section_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mmp Section Groups
euronext_optiq_sbe_v4_10.mmp_section_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Mmp Section Group
  for mmp_section_group_index = 1, num_in_group do
    index, mmp_section_group = euronext_optiq_sbe_v4_10.mmp_section_group.dissect(buffer, index, packet, parent, mmp_section_group_index)
  end

  return index
end

-- Dissect: Mmp Section Groups
euronext_optiq_sbe_v4_10.mmp_section_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mmp_section_groups then
    local length = euronext_optiq_sbe_v4_10.mmp_section_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.mmp_section_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mmp_section_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.mmp_section_groups.fields(buffer, offset, packet, parent)
end

-- Request Type
euronext_optiq_sbe_v4_10.request_type = {}

-- Size: Request Type
euronext_optiq_sbe_v4_10.request_type.size = 1

-- Display: Request Type
euronext_optiq_sbe_v4_10.request_type.display = function(value)
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
euronext_optiq_sbe_v4_10.request_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.request_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.request_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.request_type, range, value, display)

  return offset + length, value
end

-- Mm Protection Request Message
euronext_optiq_sbe_v4_10.mm_protection_request_message = {}

-- Calculate size of: Mm Protection Request Message
euronext_optiq_sbe_v4_10.mm_protection_request_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.request_type.size

  index = index + euronext_optiq_sbe_v4_10.mmp_section_groups.size(buffer, offset + index)

  return index
end

-- Display: Mm Protection Request Message
euronext_optiq_sbe_v4_10.mm_protection_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Protection Request Message
euronext_optiq_sbe_v4_10.mm_protection_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, request_type = euronext_optiq_sbe_v4_10.request_type.dissect(buffer, index, packet, parent)

  -- Mmp Section Groups: Struct of 2 fields
  index, mmp_section_groups = euronext_optiq_sbe_v4_10.mmp_section_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Protection Request Message
euronext_optiq_sbe_v4_10.mm_protection_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mm_protection_request_message then
    local length = euronext_optiq_sbe_v4_10.mm_protection_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.mm_protection_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mm_protection_request_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.mm_protection_request_message.fields(buffer, offset, packet, parent)
end

-- Security Req Id
euronext_optiq_sbe_v4_10.security_req_id = {}

-- Size: Security Req Id
euronext_optiq_sbe_v4_10.security_req_id.size = 8

-- Display: Security Req Id
euronext_optiq_sbe_v4_10.security_req_id.display = function(value)
  return "Security Req Id: "..value
end

-- Dissect: Security Req Id
euronext_optiq_sbe_v4_10.security_req_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.security_req_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.security_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.security_req_id, range, value, display)

  return offset + length, value
end

-- Security Definition Ack Message
euronext_optiq_sbe_v4_10.security_definition_ack_message = {}

-- Size: Security Definition Ack Message
euronext_optiq_sbe_v4_10.security_definition_ack_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_member.size + 
  euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size + 
  euronext_optiq_sbe_v4_10.book_in_optional.size + 
  euronext_optiq_sbe_v4_10.book_out_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.security_req_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size

-- Display: Security Definition Ack Message
euronext_optiq_sbe_v4_10.security_definition_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Ack Message
euronext_optiq_sbe_v4_10.security_definition_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_sbe_v4_10.book_in_optional.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Signed Fixed Width Integer
  index, security_req_id = euronext_optiq_sbe_v4_10.security_req_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Ack Message
euronext_optiq_sbe_v4_10.security_definition_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.security_definition_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.security_definition_ack_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.security_definition_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.security_definition_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.security_definition_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Side
euronext_optiq_sbe_v4_10.leg_side = {}

-- Size: Leg Side
euronext_optiq_sbe_v4_10.leg_side.size = 1

-- Display: Leg Side
euronext_optiq_sbe_v4_10.leg_side.display = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
euronext_optiq_sbe_v4_10.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Price Optional
euronext_optiq_sbe_v4_10.leg_price_optional = {}

-- Size: Leg Price Optional
euronext_optiq_sbe_v4_10.leg_price_optional.size = 8

-- Display: Leg Price Optional
euronext_optiq_sbe_v4_10.leg_price_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Price Optional: No Value"
  end

  return "Leg Price Optional: "..value
end

-- Dissect: Leg Price Optional
euronext_optiq_sbe_v4_10.leg_price_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_price_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.leg_price_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_price_optional, range, value, display)

  return offset + length, value
end

-- Leg Ratio
euronext_optiq_sbe_v4_10.leg_ratio = {}

-- Size: Leg Ratio
euronext_optiq_sbe_v4_10.leg_ratio.size = 4

-- Display: Leg Ratio
euronext_optiq_sbe_v4_10.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
euronext_optiq_sbe_v4_10.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Strategy Legs Group
euronext_optiq_sbe_v4_10.strategy_legs_group = {}

-- Size: Strategy Legs Group
euronext_optiq_sbe_v4_10.strategy_legs_group.size =
  euronext_optiq_sbe_v4_10.leg_symbol_index.size + 
  euronext_optiq_sbe_v4_10.leg_ratio.size + 
  euronext_optiq_sbe_v4_10.leg_security_type.size + 
  euronext_optiq_sbe_v4_10.leg_put_or_call.size + 
  euronext_optiq_sbe_v4_10.leg_price_optional.size + 
  euronext_optiq_sbe_v4_10.leg_strike_price.size + 
  euronext_optiq_sbe_v4_10.leg_last_trading_date.size + 
  euronext_optiq_sbe_v4_10.leg_side.size

-- Display: Strategy Legs Group
euronext_optiq_sbe_v4_10.strategy_legs_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Legs Group
euronext_optiq_sbe_v4_10.strategy_legs_group.fields = function(buffer, offset, packet, parent, strategy_legs_group_index)
  local index = offset

  -- Implicit Strategy Legs Group Index
  if strategy_legs_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.strategy_legs_group_index, strategy_legs_group_index)
    iteration:set_generated()
  end

  -- Leg Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, leg_symbol_index = euronext_optiq_sbe_v4_10.leg_symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_ratio = euronext_optiq_sbe_v4_10.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = euronext_optiq_sbe_v4_10.leg_security_type.dissect(buffer, index, packet, parent)

  -- Leg Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_put_or_call = euronext_optiq_sbe_v4_10.leg_put_or_call.dissect(buffer, index, packet, parent)

  -- Leg Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_price_optional = euronext_optiq_sbe_v4_10.leg_price_optional.dissect(buffer, index, packet, parent)

  -- Leg Strike Price: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_strike_price = euronext_optiq_sbe_v4_10.leg_strike_price.dissect(buffer, index, packet, parent)

  -- Leg Last Trading Date: 8 Byte Ascii String Nullable
  index, leg_last_trading_date = euronext_optiq_sbe_v4_10.leg_last_trading_date.dissect(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, leg_side = euronext_optiq_sbe_v4_10.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Legs Group
euronext_optiq_sbe_v4_10.strategy_legs_group.dissect = function(buffer, offset, packet, parent, strategy_legs_group_index)
  if show.strategy_legs_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.strategy_legs_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.strategy_legs_group.fields(buffer, offset, packet, parent, strategy_legs_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.strategy_legs_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.strategy_legs_group.fields(buffer, offset, packet, parent, strategy_legs_group_index)
  end
end

-- Strategy Legs Groups
euronext_optiq_sbe_v4_10.strategy_legs_groups = {}

-- Calculate size of: Strategy Legs Groups
euronext_optiq_sbe_v4_10.strategy_legs_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local strategy_legs_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + strategy_legs_group_count * 35

  return index
end

-- Display: Strategy Legs Groups
euronext_optiq_sbe_v4_10.strategy_legs_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Legs Groups
euronext_optiq_sbe_v4_10.strategy_legs_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Strategy Legs Group
  for strategy_legs_group_index = 1, num_in_group do
    index, strategy_legs_group = euronext_optiq_sbe_v4_10.strategy_legs_group.dissect(buffer, index, packet, parent, strategy_legs_group_index)
  end

  return index
end

-- Dissect: Strategy Legs Groups
euronext_optiq_sbe_v4_10.strategy_legs_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_legs_groups then
    local length = euronext_optiq_sbe_v4_10.strategy_legs_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.strategy_legs_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.strategy_legs_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.strategy_legs_groups.fields(buffer, offset, packet, parent)
end

-- Strategy Code
euronext_optiq_sbe_v4_10.strategy_code = {}

-- Size: Strategy Code
euronext_optiq_sbe_v4_10.strategy_code.size = 1

-- Display: Strategy Code
euronext_optiq_sbe_v4_10.strategy_code.display = function(value)
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
euronext_optiq_sbe_v4_10.strategy_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.strategy_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = euronext_optiq_sbe_v4_10.strategy_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Security Definition Request Message
euronext_optiq_sbe_v4_10.security_definition_request_message = {}

-- Calculate size of: Security Definition Request Message
euronext_optiq_sbe_v4_10.security_definition_request_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.security_req_id.size

  index = index + euronext_optiq_sbe_v4_10.contract_symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.strategy_code.size

  index = index + euronext_optiq_sbe_v4_10.strategy_legs_groups.size(buffer, offset + index)

  return index
end

-- Display: Security Definition Request Message
euronext_optiq_sbe_v4_10.security_definition_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Request Message
euronext_optiq_sbe_v4_10.security_definition_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Security Req Id: 8 Byte Signed Fixed Width Integer
  index, security_req_id = euronext_optiq_sbe_v4_10.security_req_id.dissect(buffer, index, packet, parent)

  -- Contract Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, contract_symbol_index = euronext_optiq_sbe_v4_10.contract_symbol_index.dissect(buffer, index, packet, parent)

  -- Strategy Code: 1 Byte Ascii String Enum with 48 values
  index, strategy_code = euronext_optiq_sbe_v4_10.strategy_code.dissect(buffer, index, packet, parent)

  -- Strategy Legs Groups: Struct of 2 fields
  index, strategy_legs_groups = euronext_optiq_sbe_v4_10.strategy_legs_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Request Message
euronext_optiq_sbe_v4_10.security_definition_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.security_definition_request_message then
    local length = euronext_optiq_sbe_v4_10.security_definition_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.security_definition_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.security_definition_request_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.security_definition_request_message.fields(buffer, offset, packet, parent)
end

-- Last Book In Time
euronext_optiq_sbe_v4_10.last_book_in_time = {}

-- Size: Last Book In Time
euronext_optiq_sbe_v4_10.last_book_in_time.size = 8

-- Display: Last Book In Time
euronext_optiq_sbe_v4_10.last_book_in_time.display = function(value)
  return "Last Book In Time: "..value
end

-- Dissect: Last Book In Time
euronext_optiq_sbe_v4_10.last_book_in_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.last_book_in_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.last_book_in_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.last_book_in_time, range, value, display)

  return offset + length, value
end

-- Resynchronization Id
euronext_optiq_sbe_v4_10.resynchronization_id = {}

-- Size: Resynchronization Id
euronext_optiq_sbe_v4_10.resynchronization_id.size = 2

-- Display: Resynchronization Id
euronext_optiq_sbe_v4_10.resynchronization_id.display = function(value)
  return "Resynchronization Id: "..value
end

-- Dissect: Resynchronization Id
euronext_optiq_sbe_v4_10.resynchronization_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.resynchronization_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.resynchronization_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.resynchronization_id, range, value, display)

  return offset + length, value
end

-- Synchronization Time Message
euronext_optiq_sbe_v4_10.synchronization_time_message = {}

-- Size: Synchronization Time Message
euronext_optiq_sbe_v4_10.synchronization_time_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.resynchronization_id.size + 
  euronext_optiq_sbe_v4_10.last_book_in_time.size

-- Display: Synchronization Time Message
euronext_optiq_sbe_v4_10.synchronization_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Time Message
euronext_optiq_sbe_v4_10.synchronization_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Resynchronization Id: 2 Byte Unsigned Fixed Width Integer
  index, resynchronization_id = euronext_optiq_sbe_v4_10.resynchronization_id.dissect(buffer, index, packet, parent)

  -- Last Book In Time: 8 Byte Unsigned Fixed Width Integer
  index, last_book_in_time = euronext_optiq_sbe_v4_10.last_book_in_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Time Message
euronext_optiq_sbe_v4_10.synchronization_time_message.dissect = function(buffer, offset, packet, parent)
  if show.synchronization_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.synchronization_time_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.synchronization_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.synchronization_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.synchronization_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Synchronization Section Group
euronext_optiq_sbe_v4_10.instrument_synchronization_section_group = {}

-- Size: Instrument Synchronization Section Group
euronext_optiq_sbe_v4_10.instrument_synchronization_section_group.size =
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size

-- Display: Instrument Synchronization Section Group
euronext_optiq_sbe_v4_10.instrument_synchronization_section_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Synchronization Section Group
euronext_optiq_sbe_v4_10.instrument_synchronization_section_group.fields = function(buffer, offset, packet, parent, instrument_synchronization_section_group_index)
  local index = offset

  -- Implicit Instrument Synchronization Section Group Index
  if instrument_synchronization_section_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.instrument_synchronization_section_group_index, instrument_synchronization_section_group_index)
    iteration:set_generated()
  end

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization Section Group
euronext_optiq_sbe_v4_10.instrument_synchronization_section_group.dissect = function(buffer, offset, packet, parent, instrument_synchronization_section_group_index)
  if show.instrument_synchronization_section_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.instrument_synchronization_section_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.instrument_synchronization_section_group.fields(buffer, offset, packet, parent, instrument_synchronization_section_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.instrument_synchronization_section_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.instrument_synchronization_section_group.fields(buffer, offset, packet, parent, instrument_synchronization_section_group_index)
  end
end

-- Instrument Synchronization Section Groups
euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups = {}

-- Calculate size of: Instrument Synchronization Section Groups
euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local instrument_synchronization_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrument_synchronization_section_group_count * 5

  return index
end

-- Display: Instrument Synchronization Section Groups
euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Synchronization Section Groups
euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Instrument Synchronization Section Group
  for instrument_synchronization_section_group_index = 1, num_in_group do
    index, instrument_synchronization_section_group = euronext_optiq_sbe_v4_10.instrument_synchronization_section_group.dissect(buffer, index, packet, parent, instrument_synchronization_section_group_index)
  end

  return index
end

-- Dissect: Instrument Synchronization Section Groups
euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_synchronization_section_groups then
    local length = euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.instrument_synchronization_section_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.fields(buffer, offset, packet, parent)
end

-- Instrument Synchronization List Message
euronext_optiq_sbe_v4_10.instrument_synchronization_list_message = {}

-- Calculate size of: Instrument Synchronization List Message
euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size

  index = index + euronext_optiq_sbe_v4_10.resynchronization_id.size

  index = index + euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.size(buffer, offset + index)

  return index
end

-- Display: Instrument Synchronization List Message
euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Synchronization List Message
euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Resynchronization Id: 2 Byte Unsigned Fixed Width Integer
  index, resynchronization_id = euronext_optiq_sbe_v4_10.resynchronization_id.dissect(buffer, index, packet, parent)

  -- Instrument Synchronization Section Groups: Struct of 2 fields
  index, instrument_synchronization_section_groups = euronext_optiq_sbe_v4_10.instrument_synchronization_section_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization List Message
euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_synchronization_list_message then
    local length = euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.instrument_synchronization_list_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.fields(buffer, offset, packet, parent)
end

-- Mm Sign In Ack Message
euronext_optiq_sbe_v4_10.mm_sign_in_ack_message = {}

-- Size: Mm Sign In Ack Message
euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_member.size + 
  euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size + 
  euronext_optiq_sbe_v4_10.book_in.size + 
  euronext_optiq_sbe_v4_10.book_out_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.logical_access_id.size + 
  euronext_optiq_sbe_v4_10.oe_partition_id.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.clearing_firm_id.size + 
  euronext_optiq_sbe_v4_10.account_number.size + 
  euronext_optiq_sbe_v4_10.technical_origin.size + 
  euronext_optiq_sbe_v4_10.open_close.size + 
  euronext_optiq_sbe_v4_10.clearing_instruction.size + 
  euronext_optiq_sbe_v4_10.free_text.size + 
  euronext_optiq_sbe_v4_10.long_client_id.size

-- Display: Mm Sign In Ack Message
euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Sign In Ack Message
euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = euronext_optiq_sbe_v4_10.logical_access_id.dissect(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = euronext_optiq_sbe_v4_10.oe_partition_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_sbe_v4_10.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_sbe_v4_10.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_sbe_v4_10.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_sbe_v4_10.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_sbe_v4_10.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_sbe_v4_10.free_text.dissect(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_sbe_v4_10.long_client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Sign In Ack Message
euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.mm_sign_in_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mm_sign_in_ack_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Mm Sign In Message
euronext_optiq_sbe_v4_10.mm_sign_in_message = {}

-- Size: Mm Sign In Message
euronext_optiq_sbe_v4_10.mm_sign_in_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.logical_access_id.size + 
  euronext_optiq_sbe_v4_10.oe_partition_id.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.clearing_firm_id.size + 
  euronext_optiq_sbe_v4_10.account_number.size + 
  euronext_optiq_sbe_v4_10.technical_origin.size + 
  euronext_optiq_sbe_v4_10.open_close.size + 
  euronext_optiq_sbe_v4_10.clearing_instruction.size + 
  euronext_optiq_sbe_v4_10.free_text.size + 
  euronext_optiq_sbe_v4_10.long_client_id.size

-- Display: Mm Sign In Message
euronext_optiq_sbe_v4_10.mm_sign_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mm Sign In Message
euronext_optiq_sbe_v4_10.mm_sign_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Logical Access Id: 4 Byte Unsigned Fixed Width Integer
  index, logical_access_id = euronext_optiq_sbe_v4_10.logical_access_id.dissect(buffer, index, packet, parent)

  -- Oe Partition Id: 2 Byte Unsigned Fixed Width Integer
  index, oe_partition_id = euronext_optiq_sbe_v4_10.oe_partition_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_sbe_v4_10.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_sbe_v4_10.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_sbe_v4_10.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_sbe_v4_10.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_sbe_v4_10.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_sbe_v4_10.free_text.dissect(buffer, index, packet, parent)

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_sbe_v4_10.long_client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mm Sign In Message
euronext_optiq_sbe_v4_10.mm_sign_in_message.dissect = function(buffer, offset, packet, parent)
  if show.mm_sign_in_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mm_sign_in_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.mm_sign_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.mm_sign_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.mm_sign_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Size Limit
euronext_optiq_sbe_v4_10.order_size_limit = {}

-- Size: Order Size Limit
euronext_optiq_sbe_v4_10.order_size_limit.size = 8

-- Display: Order Size Limit
euronext_optiq_sbe_v4_10.order_size_limit.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Size Limit: No Value"
  end

  return "Order Size Limit: "..value
end

-- Dissect: Order Size Limit
euronext_optiq_sbe_v4_10.order_size_limit.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_size_limit.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.order_size_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_size_limit, range, value, display)

  return offset + length, value
end

-- Lp Role Optional
euronext_optiq_sbe_v4_10.lp_role_optional = {}

-- Size: Lp Role Optional
euronext_optiq_sbe_v4_10.lp_role_optional.size = 4

-- Display: Lp Role Optional
euronext_optiq_sbe_v4_10.lp_role_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Lp Role Optional: No Value"
  end

  return "Lp Role Optional: "..value
end

-- Dissect: Lp Role Optional
euronext_optiq_sbe_v4_10.lp_role_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.lp_role_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.lp_role_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.lp_role_optional, range, value, display)

  return offset + length, value
end

-- User Status
euronext_optiq_sbe_v4_10.user_status = {}

-- Size: User Status
euronext_optiq_sbe_v4_10.user_status.size = 1

-- Display: User Status
euronext_optiq_sbe_v4_10.user_status.display = function(value)
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
euronext_optiq_sbe_v4_10.user_status.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.user_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.user_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.user_status, range, value, display)

  return offset + length, value
end

-- Symbol Index Optional
euronext_optiq_sbe_v4_10.symbol_index_optional = {}

-- Size: Symbol Index Optional
euronext_optiq_sbe_v4_10.symbol_index_optional.size = 4

-- Display: Symbol Index Optional
euronext_optiq_sbe_v4_10.symbol_index_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Symbol Index Optional: No Value"
  end

  return "Symbol Index Optional: "..value
end

-- Dissect: Symbol Index Optional
euronext_optiq_sbe_v4_10.symbol_index_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.symbol_index_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.symbol_index_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.symbol_index_optional, range, value, display)

  return offset + length, value
end

-- Family Id
euronext_optiq_sbe_v4_10.family_id = {}

-- Size: Family Id
euronext_optiq_sbe_v4_10.family_id.size = 8

-- Display: Family Id
euronext_optiq_sbe_v4_10.family_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Family Id: No Value"
  end

  return "Family Id: "..value
end

-- Dissect: Family Id
euronext_optiq_sbe_v4_10.family_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.family_id.size
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

  local display = euronext_optiq_sbe_v4_10.family_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.family_id, range, value, display)

  return offset + length, value
end

-- Execution Instruction Optional
euronext_optiq_sbe_v4_10.execution_instruction_optional = {}

-- Size: Execution Instruction Optional
euronext_optiq_sbe_v4_10.execution_instruction_optional.size = 1

-- Display: Execution Instruction Optional
euronext_optiq_sbe_v4_10.execution_instruction_optional.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.execution_instruction_optional.bits = function(buffer, offset, packet, parent)

  -- Reserved 1: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_1, buffer(offset, 1))

  -- Conditional Order: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.conditional_order, buffer(offset, 1))

  -- Rfq Confirmation: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_confirmation, buffer(offset, 1))

  -- Rfq Answer: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_answer, buffer(offset, 1))

  -- Disabled Cancel On Disconnect Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.disabled_cancel_on_disconnect_indicator, buffer(offset, 1))

  -- Disclosed Quantity Randomization: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.disclosed_quantity_randomization, buffer(offset, 1))

  -- Stp Incoming Order: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.stp_incoming_order, buffer(offset, 1))

  -- Stp Resting Order: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.stp_resting_order, buffer(offset, 1))
end

-- Dissect: Execution Instruction Optional
euronext_optiq_sbe_v4_10.execution_instruction_optional.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.execution_instruction_optional.display(range, packet, parent)
  local element = parent:add_le(omi_euronext_optiq_sbe_v4_10.fields.execution_instruction_optional, range, display)

  if show.execution_instruction_optional then
    euronext_optiq_sbe_v4_10.execution_instruction_optional.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- User Notification Message
euronext_optiq_sbe_v4_10.user_notification_message = {}

-- Calculate size of: User Notification Message
euronext_optiq_sbe_v4_10.user_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.execution_instruction_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_identification_shortcode.size

  index = index + euronext_optiq_sbe_v4_10.family_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index_optional.size

  index = index + euronext_optiq_sbe_v4_10.user_status.size

  index = index + euronext_optiq_sbe_v4_10.lp_role_optional.size

  index = index + euronext_optiq_sbe_v4_10.order_size_limit.size

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  return index
end

-- Display: User Notification Message
euronext_optiq_sbe_v4_10.user_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Notification Message
euronext_optiq_sbe_v4_10.user_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Execution Instruction Optional: Struct of 8 fields
  index, execution_instruction_optional = euronext_optiq_sbe_v4_10.execution_instruction_optional.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Family Id: 8 Byte Ascii String Nullable
  index, family_id = euronext_optiq_sbe_v4_10.family_id.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_sbe_v4_10.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- User Status: 1 Byte Unsigned Fixed Width Integer Enum with 30 values
  index, user_status = euronext_optiq_sbe_v4_10.user_status.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_sbe_v4_10.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Order Size Limit: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_size_limit = euronext_optiq_sbe_v4_10.order_size_limit.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Notification Message
euronext_optiq_sbe_v4_10.user_notification_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.user_notification_message then
    local length = euronext_optiq_sbe_v4_10.user_notification_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.user_notification_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.user_notification_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.user_notification_message.fields(buffer, offset, packet, parent)
end

-- Potential Matching Qty
euronext_optiq_sbe_v4_10.potential_matching_qty = {}

-- Size: Potential Matching Qty
euronext_optiq_sbe_v4_10.potential_matching_qty.size = 8

-- Display: Potential Matching Qty
euronext_optiq_sbe_v4_10.potential_matching_qty.display = function(value)
  return "Potential Matching Qty: "..value
end

-- Dissect: Potential Matching Qty
euronext_optiq_sbe_v4_10.potential_matching_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.potential_matching_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.potential_matching_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.potential_matching_qty, range, value, display)

  return offset + length, value
end

-- Rfqlp Matching Status Message
euronext_optiq_sbe_v4_10.rfqlp_matching_status_message = {}

-- Size: Rfqlp Matching Status Message
euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.book_in.size + 
  euronext_optiq_sbe_v4_10.book_out_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.quote_req_id.size + 
  euronext_optiq_sbe_v4_10.potential_matching_qty.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.side.size

-- Display: Rfqlp Matching Status Message
euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfqlp Matching Status Message
euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = euronext_optiq_sbe_v4_10.quote_req_id.dissect(buffer, index, packet, parent)

  -- Potential Matching Qty: 8 Byte Unsigned Fixed Width Integer
  index, potential_matching_qty = euronext_optiq_sbe_v4_10.potential_matching_qty.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfqlp Matching Status Message
euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.dissect = function(buffer, offset, packet, parent)
  if show.rfqlp_matching_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfqlp_matching_status_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Recipient Type
euronext_optiq_sbe_v4_10.recipient_type = {}

-- Size: Recipient Type
euronext_optiq_sbe_v4_10.recipient_type.size = 1

-- Display: Recipient Type
euronext_optiq_sbe_v4_10.recipient_type.display = function(value)
  if value == 1 then
    return "Recipient Type: Rfq Issuer (1)"
  end
  if value == 2 then
    return "Recipient Type: Rf Qrecipient Lp (2)"
  end

  return "Recipient Type: Unknown("..value..")"
end

-- Dissect: Recipient Type
euronext_optiq_sbe_v4_10.recipient_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.recipient_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.recipient_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.recipient_type, range, value, display)

  return offset + length, value
end

-- Number Of Lps
euronext_optiq_sbe_v4_10.number_of_lps = {}

-- Size: Number Of Lps
euronext_optiq_sbe_v4_10.number_of_lps.size = 1

-- Display: Number Of Lps
euronext_optiq_sbe_v4_10.number_of_lps.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Number Of Lps: No Value"
  end

  return "Number Of Lps: "..value
end

-- Dissect: Number Of Lps
euronext_optiq_sbe_v4_10.number_of_lps.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.number_of_lps.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.number_of_lps.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.number_of_lps, range, value, display)

  return offset + length, value
end

-- Potential Matching Px
euronext_optiq_sbe_v4_10.potential_matching_px = {}

-- Size: Potential Matching Px
euronext_optiq_sbe_v4_10.potential_matching_px.size = 8

-- Display: Potential Matching Px
euronext_optiq_sbe_v4_10.potential_matching_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Potential Matching Px: No Value"
  end

  return "Potential Matching Px: "..value
end

-- Dissect: Potential Matching Px
euronext_optiq_sbe_v4_10.potential_matching_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.potential_matching_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.potential_matching_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.potential_matching_px, range, value, display)

  return offset + length, value
end

-- Rfq Matching Status Message
euronext_optiq_sbe_v4_10.rfq_matching_status_message = {}

-- Size: Rfq Matching Status Message
euronext_optiq_sbe_v4_10.rfq_matching_status_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.book_in.size + 
  euronext_optiq_sbe_v4_10.book_out_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.quote_req_id.size + 
  euronext_optiq_sbe_v4_10.potential_matching_px.size + 
  euronext_optiq_sbe_v4_10.potential_matching_qty.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.side.size + 
  euronext_optiq_sbe_v4_10.number_of_lps.size + 
  euronext_optiq_sbe_v4_10.recipient_type.size

-- Display: Rfq Matching Status Message
euronext_optiq_sbe_v4_10.rfq_matching_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Matching Status Message
euronext_optiq_sbe_v4_10.rfq_matching_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = euronext_optiq_sbe_v4_10.quote_req_id.dissect(buffer, index, packet, parent)

  -- Potential Matching Px: 8 Byte Signed Fixed Width Integer Nullable
  index, potential_matching_px = euronext_optiq_sbe_v4_10.potential_matching_px.dissect(buffer, index, packet, parent)

  -- Potential Matching Qty: 8 Byte Unsigned Fixed Width Integer
  index, potential_matching_qty = euronext_optiq_sbe_v4_10.potential_matching_qty.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Number Of Lps: 1 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_lps = euronext_optiq_sbe_v4_10.number_of_lps.dissect(buffer, index, packet, parent)

  -- Recipient Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, recipient_type = euronext_optiq_sbe_v4_10.recipient_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Matching Status Message
euronext_optiq_sbe_v4_10.rfq_matching_status_message.dissect = function(buffer, offset, packet, parent)
  if show.rfq_matching_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_matching_status_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.rfq_matching_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.rfq_matching_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.rfq_matching_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Min Order Qty
euronext_optiq_sbe_v4_10.min_order_qty = {}

-- Size: Min Order Qty
euronext_optiq_sbe_v4_10.min_order_qty.size = 8

-- Display: Min Order Qty
euronext_optiq_sbe_v4_10.min_order_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Min Order Qty: No Value"
  end

  return "Min Order Qty: "..value
end

-- Dissect: Min Order Qty
euronext_optiq_sbe_v4_10.min_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.min_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.min_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.min_order_qty, range, value, display)

  return offset + length, value
end

-- Dark Execution Instruction
euronext_optiq_sbe_v4_10.dark_execution_instruction = {}

-- Size: Dark Execution Instruction
euronext_optiq_sbe_v4_10.dark_execution_instruction.size = 1

-- Display: Dark Execution Instruction
euronext_optiq_sbe_v4_10.dark_execution_instruction.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.dark_execution_instruction.bits = function(buffer, offset, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_3, buffer(offset, 1))

  -- Minimum Quantity Type: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.minimum_quantity_type, buffer(offset, 1))

  -- Sweep Order Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.sweep_order_indicator, buffer(offset, 1))

  -- Displayed Order Interaction: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.displayed_order_interaction, buffer(offset, 1))

  -- Deferred Trade Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.deferred_trade_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Dark Execution Instruction
euronext_optiq_sbe_v4_10.dark_execution_instruction.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.dark_execution_instruction.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.dark_execution_instruction, range, display)

  if show.dark_execution_instruction then
    euronext_optiq_sbe_v4_10.dark_execution_instruction.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- End Client
euronext_optiq_sbe_v4_10.end_client = {}

-- Size: End Client
euronext_optiq_sbe_v4_10.end_client.size = 11

-- Display: End Client
euronext_optiq_sbe_v4_10.end_client.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "End Client: No Value"
  end

  return "End Client: "..value
end

-- Dissect: End Client
euronext_optiq_sbe_v4_10.end_client.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.end_client.size
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

  local display = euronext_optiq_sbe_v4_10.end_client.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.end_client, range, value, display)

  return offset + length, value
end

-- Rfq Update Type
euronext_optiq_sbe_v4_10.rfq_update_type = {}

-- Size: Rfq Update Type
euronext_optiq_sbe_v4_10.rfq_update_type.size = 1

-- Display: Rfq Update Type
euronext_optiq_sbe_v4_10.rfq_update_type.display = function(value)
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
euronext_optiq_sbe_v4_10.rfq_update_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.rfq_update_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.rfq_update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_update_type, range, value, display)

  return offset + length, value
end

-- Counterpart Firm Id
euronext_optiq_sbe_v4_10.counterpart_firm_id = {}

-- Size: Counterpart Firm Id
euronext_optiq_sbe_v4_10.counterpart_firm_id.size = 8

-- Display: Counterpart Firm Id
euronext_optiq_sbe_v4_10.counterpart_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Counterpart Firm Id: No Value"
  end

  return "Counterpart Firm Id: "..value
end

-- Dissect: Counterpart Firm Id
euronext_optiq_sbe_v4_10.counterpart_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.counterpart_firm_id.size
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

  local display = euronext_optiq_sbe_v4_10.counterpart_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.counterpart_firm_id, range, value, display)

  return offset + length, value
end

-- Rfq Notification Message
euronext_optiq_sbe_v4_10.rfq_notification_message = {}

-- Size: Rfq Notification Message
euronext_optiq_sbe_v4_10.rfq_notification_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.book_in.size + 
  euronext_optiq_sbe_v4_10.book_out_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.quote_req_id.size + 
  euronext_optiq_sbe_v4_10.order_qty.size + 
  euronext_optiq_sbe_v4_10.counterpart_firm_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.rfq_update_type.size + 
  euronext_optiq_sbe_v4_10.side_optional.size + 
  euronext_optiq_sbe_v4_10.end_client.size + 
  euronext_optiq_sbe_v4_10.dark_execution_instruction.size + 
  euronext_optiq_sbe_v4_10.min_order_qty.size + 
  euronext_optiq_sbe_v4_10.account_type_optional.size

-- Display: Rfq Notification Message
euronext_optiq_sbe_v4_10.rfq_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Notification Message
euronext_optiq_sbe_v4_10.rfq_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Quote Req Id: 8 Byte Unsigned Fixed Width Integer
  index, quote_req_id = euronext_optiq_sbe_v4_10.quote_req_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_sbe_v4_10.order_qty.dissect(buffer, index, packet, parent)

  -- Counterpart Firm Id: 8 Byte Ascii String Nullable
  index, counterpart_firm_id = euronext_optiq_sbe_v4_10.counterpart_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Rfq Update Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, rfq_update_type = euronext_optiq_sbe_v4_10.rfq_update_type.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_sbe_v4_10.side_optional.dissect(buffer, index, packet, parent)

  -- End Client: 11 Byte Ascii String Nullable
  index, end_client = euronext_optiq_sbe_v4_10.end_client.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_sbe_v4_10.dark_execution_instruction.dissect(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, min_order_qty = euronext_optiq_sbe_v4_10.min_order_qty.dissect(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_sbe_v4_10.account_type_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Notification Message
euronext_optiq_sbe_v4_10.rfq_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.rfq_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_notification_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.rfq_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.rfq_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.rfq_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Request For Execution Message
euronext_optiq_sbe_v4_10.request_for_execution_message = {}

-- Size: Request For Execution Message
euronext_optiq_sbe_v4_10.request_for_execution_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size

-- Display: Request For Execution Message
euronext_optiq_sbe_v4_10.request_for_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Execution Message
euronext_optiq_sbe_v4_10.request_for_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Execution Message
euronext_optiq_sbe_v4_10.request_for_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.request_for_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.request_for_execution_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.request_for_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.request_for_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.request_for_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Afq Reason
euronext_optiq_sbe_v4_10.afq_reason = {}

-- Size: Afq Reason
euronext_optiq_sbe_v4_10.afq_reason.size = 1

-- Display: Afq Reason
euronext_optiq_sbe_v4_10.afq_reason.display = function(value)
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
euronext_optiq_sbe_v4_10.afq_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.afq_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.afq_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.afq_reason, range, value, display)

  return offset + length, value
end

-- Ask For Quote Message
euronext_optiq_sbe_v4_10.ask_for_quote_message = {}

-- Size: Ask For Quote Message
euronext_optiq_sbe_v4_10.ask_for_quote_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.afq_reason.size

-- Display: Ask For Quote Message
euronext_optiq_sbe_v4_10.ask_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask For Quote Message
euronext_optiq_sbe_v4_10.ask_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Afq Reason: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, afq_reason = euronext_optiq_sbe_v4_10.afq_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask For Quote Message
euronext_optiq_sbe_v4_10.ask_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.ask_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.ask_for_quote_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.ask_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.ask_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.ask_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Lp Action Code
euronext_optiq_sbe_v4_10.lp_action_code = {}

-- Size: Lp Action Code
euronext_optiq_sbe_v4_10.lp_action_code.size = 1

-- Display: Lp Action Code
euronext_optiq_sbe_v4_10.lp_action_code.display = function(value)
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
euronext_optiq_sbe_v4_10.lp_action_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.lp_action_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.lp_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.lp_action_code, range, value, display)

  return offset + length, value
end

-- Liquidity Provider Command Message
euronext_optiq_sbe_v4_10.liquidity_provider_command_message = {}

-- Size: Liquidity Provider Command Message
euronext_optiq_sbe_v4_10.liquidity_provider_command_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.lp_action_code.size

-- Display: Liquidity Provider Command Message
euronext_optiq_sbe_v4_10.liquidity_provider_command_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Provider Command Message
euronext_optiq_sbe_v4_10.liquidity_provider_command_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Lp Action Code: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, lp_action_code = euronext_optiq_sbe_v4_10.lp_action_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Provider Command Message
euronext_optiq_sbe_v4_10.liquidity_provider_command_message.dissect = function(buffer, offset, packet, parent)
  if show.liquidity_provider_command_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.liquidity_provider_command_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.liquidity_provider_command_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.liquidity_provider_command_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.liquidity_provider_command_message.fields(buffer, offset, packet, parent)
  end
end

-- Input Price Type
euronext_optiq_sbe_v4_10.input_price_type = {}

-- Size: Input Price Type
euronext_optiq_sbe_v4_10.input_price_type.size = 1

-- Display: Input Price Type
euronext_optiq_sbe_v4_10.input_price_type.display = function(value)
  if value == 1 then
    return "Input Price Type: Valuation Price (1)"
  end
  if value == 2 then
    return "Input Price Type: Alternative Indicative Price Aip (2)"
  end

  return "Input Price Type: Unknown("..value..")"
end

-- Dissect: Input Price Type
euronext_optiq_sbe_v4_10.input_price_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.input_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.input_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.input_price_type, range, value, display)

  return offset + length, value
end

-- Price Input Message
euronext_optiq_sbe_v4_10.price_input_message = {}

-- Size: Price Input Message
euronext_optiq_sbe_v4_10.price_input_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.input_price_type.size + 
  euronext_optiq_sbe_v4_10.price_optional.size

-- Display: Price Input Message
euronext_optiq_sbe_v4_10.price_input_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Input Message
euronext_optiq_sbe_v4_10.price_input_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Input Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, input_price_type = euronext_optiq_sbe_v4_10.input_price_type.dissect(buffer, index, packet, parent)

  -- Price Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, price_optional = euronext_optiq_sbe_v4_10.price_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Input Message
euronext_optiq_sbe_v4_10.price_input_message.dissect = function(buffer, offset, packet, parent)
  if show.price_input_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.price_input_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.price_input_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.price_input_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.price_input_message.fields(buffer, offset, packet, parent)
  end
end

-- Orig Client Order Id
euronext_optiq_sbe_v4_10.orig_client_order_id = {}

-- Size: Orig Client Order Id
euronext_optiq_sbe_v4_10.orig_client_order_id.size = 8

-- Display: Orig Client Order Id
euronext_optiq_sbe_v4_10.orig_client_order_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Orig Client Order Id: No Value"
  end

  return "Orig Client Order Id: "..value
end

-- Dissect: Orig Client Order Id
euronext_optiq_sbe_v4_10.orig_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.orig_client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.orig_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.orig_client_order_id, range, value, display)

  return offset + length, value
end

-- Order Id Optional
euronext_optiq_sbe_v4_10.order_id_optional = {}

-- Size: Order Id Optional
euronext_optiq_sbe_v4_10.order_id_optional.size = 8

-- Display: Order Id Optional
euronext_optiq_sbe_v4_10.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
euronext_optiq_sbe_v4_10.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Collar Breach Confirmation Message
euronext_optiq_sbe_v4_10.collar_breach_confirmation_message = {}

-- Size: Collar Breach Confirmation Message
euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.order_id_optional.size + 
  euronext_optiq_sbe_v4_10.orig_client_order_id.size

-- Display: Collar Breach Confirmation Message
euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collar Breach Confirmation Message
euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_sbe_v4_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_sbe_v4_10.orig_client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Breach Confirmation Message
euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.collar_breach_confirmation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.collar_breach_confirmation_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Parent Symbol Index
euronext_optiq_sbe_v4_10.parent_symbol_index = {}

-- Size: Parent Symbol Index
euronext_optiq_sbe_v4_10.parent_symbol_index.size = 4

-- Display: Parent Symbol Index
euronext_optiq_sbe_v4_10.parent_symbol_index.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Parent Symbol Index: No Value"
  end

  return "Parent Symbol Index: "..value
end

-- Dissect: Parent Symbol Index
euronext_optiq_sbe_v4_10.parent_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.parent_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.parent_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.parent_symbol_index, range, value, display)

  return offset + length, value
end

-- Parent Exec Id
euronext_optiq_sbe_v4_10.parent_exec_id = {}

-- Size: Parent Exec Id
euronext_optiq_sbe_v4_10.parent_exec_id.size = 4

-- Display: Parent Exec Id
euronext_optiq_sbe_v4_10.parent_exec_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Parent Exec Id: No Value"
  end

  return "Parent Exec Id: "..value
end

-- Dissect: Parent Exec Id
euronext_optiq_sbe_v4_10.parent_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.parent_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.parent_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.parent_exec_id, range, value, display)

  return offset + length, value
end

-- Last Shares
euronext_optiq_sbe_v4_10.last_shares = {}

-- Size: Last Shares
euronext_optiq_sbe_v4_10.last_shares.size = 8

-- Display: Last Shares
euronext_optiq_sbe_v4_10.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
euronext_optiq_sbe_v4_10.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Last Traded Px
euronext_optiq_sbe_v4_10.last_traded_px = {}

-- Size: Last Traded Px
euronext_optiq_sbe_v4_10.last_traded_px.size = 8

-- Display: Last Traded Px
euronext_optiq_sbe_v4_10.last_traded_px.display = function(value)
  return "Last Traded Px: "..value
end

-- Dissect: Last Traded Px
euronext_optiq_sbe_v4_10.last_traded_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.last_traded_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.last_traded_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.last_traded_px, range, value, display)

  return offset + length, value
end

-- Execution Id
euronext_optiq_sbe_v4_10.execution_id = {}

-- Size: Execution Id
euronext_optiq_sbe_v4_10.execution_id.size = 4

-- Display: Execution Id
euronext_optiq_sbe_v4_10.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
euronext_optiq_sbe_v4_10.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Trade Bust Notification Message
euronext_optiq_sbe_v4_10.trade_bust_notification_message = {}

-- Size: Trade Bust Notification Message
euronext_optiq_sbe_v4_10.trade_bust_notification_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.book_in.size + 
  euronext_optiq_sbe_v4_10.book_out_time_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size + 
  euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.execution_id.size + 
  euronext_optiq_sbe_v4_10.last_traded_px.size + 
  euronext_optiq_sbe_v4_10.last_shares.size + 
  euronext_optiq_sbe_v4_10.lis_transaction_id.size + 
  euronext_optiq_sbe_v4_10.parent_exec_id.size + 
  euronext_optiq_sbe_v4_10.parent_symbol_index.size

-- Display: Trade Bust Notification Message
euronext_optiq_sbe_v4_10.trade_bust_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Notification Message
euronext_optiq_sbe_v4_10.trade_bust_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer
  index, execution_id = euronext_optiq_sbe_v4_10.execution_id.dissect(buffer, index, packet, parent)

  -- Last Traded Px: 8 Byte Signed Fixed Width Integer
  index, last_traded_px = euronext_optiq_sbe_v4_10.last_traded_px.dissect(buffer, index, packet, parent)

  -- Last Shares: 8 Byte Unsigned Fixed Width Integer
  index, last_shares = euronext_optiq_sbe_v4_10.last_shares.dissect(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = euronext_optiq_sbe_v4_10.lis_transaction_id.dissect(buffer, index, packet, parent)

  -- Parent Exec Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, parent_exec_id = euronext_optiq_sbe_v4_10.parent_exec_id.dissect(buffer, index, packet, parent)

  -- Parent Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, parent_symbol_index = euronext_optiq_sbe_v4_10.parent_symbol_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Notification Message
euronext_optiq_sbe_v4_10.trade_bust_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_bust_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.trade_bust_notification_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.trade_bust_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.trade_bust_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.trade_bust_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Category
euronext_optiq_sbe_v4_10.order_category = {}

-- Size: Order Category
euronext_optiq_sbe_v4_10.order_category.size = 1

-- Display: Order Category
euronext_optiq_sbe_v4_10.order_category.display = function(value)
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
euronext_optiq_sbe_v4_10.order_category.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_category.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.order_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_category, range, value, display)

  return offset + length, value
end

-- Oe Partition Id Optional
euronext_optiq_sbe_v4_10.oe_partition_id_optional = {}

-- Size: Oe Partition Id Optional
euronext_optiq_sbe_v4_10.oe_partition_id_optional.size = 2

-- Display: Oe Partition Id Optional
euronext_optiq_sbe_v4_10.oe_partition_id_optional.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Oe Partition Id Optional: No Value"
  end

  return "Oe Partition Id Optional: "..value
end

-- Dissect: Oe Partition Id Optional
euronext_optiq_sbe_v4_10.oe_partition_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.oe_partition_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.oe_partition_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.oe_partition_id_optional, range, value, display)

  return offset + length, value
end

-- Ownership Request Message
euronext_optiq_sbe_v4_10.ownership_request_message = {}

-- Size: Ownership Request Message
euronext_optiq_sbe_v4_10.ownership_request_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.order_id_optional.size + 
  euronext_optiq_sbe_v4_10.orig_client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.lp_role_optional.size + 
  euronext_optiq_sbe_v4_10.oe_partition_id_optional.size + 
  euronext_optiq_sbe_v4_10.order_category.size

-- Display: Ownership Request Message
euronext_optiq_sbe_v4_10.ownership_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ownership Request Message
euronext_optiq_sbe_v4_10.ownership_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_sbe_v4_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_sbe_v4_10.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_sbe_v4_10.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Oe Partition Id Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id_optional = euronext_optiq_sbe_v4_10.oe_partition_id_optional.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_sbe_v4_10.order_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ownership Request Message
euronext_optiq_sbe_v4_10.ownership_request_message.dissect = function(buffer, offset, packet, parent)
  if show.ownership_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.ownership_request_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.ownership_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.ownership_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.ownership_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Affected Orders
euronext_optiq_sbe_v4_10.total_affected_orders = {}

-- Size: Total Affected Orders
euronext_optiq_sbe_v4_10.total_affected_orders.size = 4

-- Display: Total Affected Orders
euronext_optiq_sbe_v4_10.total_affected_orders.display = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
euronext_optiq_sbe_v4_10.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_sbe_v4_10.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Ownership Request Ack Message
euronext_optiq_sbe_v4_10.ownership_request_ack_message = {}

-- Size: Ownership Request Ack Message
euronext_optiq_sbe_v4_10.ownership_request_ack_message.size =
  euronext_optiq_sbe_v4_10.msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.order_id_optional.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.lp_role_optional.size + 
  euronext_optiq_sbe_v4_10.oe_partition_id_optional.size + 
  euronext_optiq_sbe_v4_10.total_affected_orders.size + 
  euronext_optiq_sbe_v4_10.order_category.size

-- Display: Ownership Request Ack Message
euronext_optiq_sbe_v4_10.ownership_request_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ownership Request Ack Message
euronext_optiq_sbe_v4_10.ownership_request_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_sbe_v4_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_sbe_v4_10.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Oe Partition Id Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id_optional = euronext_optiq_sbe_v4_10.oe_partition_id_optional.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Signed Fixed Width Integer
  index, total_affected_orders = euronext_optiq_sbe_v4_10.total_affected_orders.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_sbe_v4_10.order_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ownership Request Ack Message
euronext_optiq_sbe_v4_10.ownership_request_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.ownership_request_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.ownership_request_ack_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.ownership_request_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.ownership_request_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.ownership_request_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Order Request Message
euronext_optiq_sbe_v4_10.open_order_request_message = {}

-- Size: Open Order Request Message
euronext_optiq_sbe_v4_10.open_order_request_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.order_id_optional.size + 
  euronext_optiq_sbe_v4_10.orig_client_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.order_category.size

-- Display: Open Order Request Message
euronext_optiq_sbe_v4_10.open_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Order Request Message
euronext_optiq_sbe_v4_10.open_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_sbe_v4_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_sbe_v4_10.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_sbe_v4_10.order_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Order Request Message
euronext_optiq_sbe_v4_10.open_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.open_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.open_order_request_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.open_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.open_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.open_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Mifid Indicators Optional
euronext_optiq_sbe_v4_10.mifid_indicators_optional = {}

-- Size: Mifid Indicators Optional
euronext_optiq_sbe_v4_10.mifid_indicators_optional.size = 1

-- Display: Mifid Indicators Optional
euronext_optiq_sbe_v4_10.mifid_indicators_optional.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.mifid_indicators_optional.bits = function(buffer, offset, packet, parent)

  -- Reserved 2: 2 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_2, buffer(offset, 1))

  -- Frmaramplp: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.frmaramplp, buffer(offset, 1))

  -- Deferral Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.deferral_indicator, buffer(offset, 1))

  -- Commodity Derivative Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.commodity_derivative_indicator, buffer(offset, 1))

  -- Execution Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_algo_indicator, buffer(offset, 1))

  -- Investment Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.investment_algo_indicator, buffer(offset, 1))

  -- Dea Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.dea_indicator, buffer(offset, 1))
end

-- Dissect: Mifid Indicators Optional
euronext_optiq_sbe_v4_10.mifid_indicators_optional.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.mifid_indicators_optional.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mifid_indicators_optional, range, display)

  if show.mifid_indicators_optional then
    euronext_optiq_sbe_v4_10.mifid_indicators_optional.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Mifid Fields Group
euronext_optiq_sbe_v4_10.mifid_fields_group = {}

-- Size: Mifid Fields Group
euronext_optiq_sbe_v4_10.mifid_fields_group.size =
  euronext_optiq_sbe_v4_10.execution_instruction_optional.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.mifid_indicators_optional.size

-- Display: Mifid Fields Group
euronext_optiq_sbe_v4_10.mifid_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Fields Group
euronext_optiq_sbe_v4_10.mifid_fields_group.fields = function(buffer, offset, packet, parent, mifid_fields_group_index)
  local index = offset

  -- Implicit Mifid Fields Group Index
  if mifid_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mifid_fields_group_index, mifid_fields_group_index)
    iteration:set_generated()
  end

  -- Execution Instruction Optional: Struct of 8 fields
  index, execution_instruction_optional = euronext_optiq_sbe_v4_10.execution_instruction_optional.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Mifid Indicators Optional: Struct of 7 fields
  index, mifid_indicators_optional = euronext_optiq_sbe_v4_10.mifid_indicators_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Fields Group
euronext_optiq_sbe_v4_10.mifid_fields_group.dissect = function(buffer, offset, packet, parent, mifid_fields_group_index)
  if show.mifid_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mifid_fields_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.mifid_fields_group.fields(buffer, offset, packet, parent, mifid_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.mifid_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.mifid_fields_group.fields(buffer, offset, packet, parent, mifid_fields_group_index)
  end
end

-- Mifid Fields Groups
euronext_optiq_sbe_v4_10.mifid_fields_groups = {}

-- Calculate size of: Mifid Fields Groups
euronext_optiq_sbe_v4_10.mifid_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local mifid_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mifid_fields_group_count * 6

  return index
end

-- Display: Mifid Fields Groups
euronext_optiq_sbe_v4_10.mifid_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Fields Groups
euronext_optiq_sbe_v4_10.mifid_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Mifid Fields Group
  for mifid_fields_group_index = 1, num_in_group do
    index, mifid_fields_group = euronext_optiq_sbe_v4_10.mifid_fields_group.dissect(buffer, index, packet, parent, mifid_fields_group_index)
  end

  return index
end

-- Dissect: Mifid Fields Groups
euronext_optiq_sbe_v4_10.mifid_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mifid_fields_groups then
    local length = euronext_optiq_sbe_v4_10.mifid_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.mifid_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mifid_fields_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.mifid_fields_groups.fields(buffer, offset, packet, parent)
end

-- Target Execution Within Firm Short Code
euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code = {}

-- Size: Target Execution Within Firm Short Code
euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.size = 4

-- Display: Target Execution Within Firm Short Code
euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Target Execution Within Firm Short Code: No Value"
  end

  return "Target Execution Within Firm Short Code: "..value
end

-- Dissect: Target Execution Within Firm Short Code
euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.target_execution_within_firm_short_code, range, value, display)

  return offset + length, value
end

-- Ack Qualifiers Optional
euronext_optiq_sbe_v4_10.ack_qualifiers_optional = {}

-- Size: Ack Qualifiers Optional
euronext_optiq_sbe_v4_10.ack_qualifiers_optional.size = 1

-- Display: Ack Qualifiers Optional
euronext_optiq_sbe_v4_10.ack_qualifiers_optional.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.ack_qualifiers_optional.bits = function(buffer, offset, packet, parent)

  -- Executed Upon Entry Flag: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.executed_upon_entry_flag, buffer(offset, 1))

  -- Execution Upon Entry Flag Enabled: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_upon_entry_flag_enabled, buffer(offset, 1))

  -- Internal 2: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.internal_2, buffer(offset, 1))

  -- Internal 1: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.internal_1, buffer(offset, 1))

  -- Use Of Cross Partition: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.use_of_cross_partition, buffer(offset, 1))

  -- Request With Client Order Id: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.request_with_client_order_id, buffer(offset, 1))

  -- Queue Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.queue_indicator, buffer(offset, 1))

  -- Dark Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.dark_indicator, buffer(offset, 1))
end

-- Dissect: Ack Qualifiers Optional
euronext_optiq_sbe_v4_10.ack_qualifiers_optional.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.ack_qualifiers_optional.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.ack_qualifiers_optional, range, display)

  if show.ack_qualifiers_optional then
    euronext_optiq_sbe_v4_10.ack_qualifiers_optional.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Option Type
euronext_optiq_sbe_v4_10.option_type = {}

-- Size: Option Type
euronext_optiq_sbe_v4_10.option_type.size = 1

-- Display: Option Type
euronext_optiq_sbe_v4_10.option_type.display = function(value)
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
euronext_optiq_sbe_v4_10.option_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.option_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.option_type, range, value, display)

  return offset + length, value
end

-- Maturity
euronext_optiq_sbe_v4_10.maturity = {}

-- Size: Maturity
euronext_optiq_sbe_v4_10.maturity.size = 8

-- Display: Maturity
euronext_optiq_sbe_v4_10.maturity.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity: No Value"
  end

  return "Maturity: "..value
end

-- Dissect: Maturity
euronext_optiq_sbe_v4_10.maturity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.maturity.size
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

  local display = euronext_optiq_sbe_v4_10.maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.maturity, range, value, display)

  return offset + length, value
end

-- Contract Id
euronext_optiq_sbe_v4_10.contract_id = {}

-- Size: Contract Id
euronext_optiq_sbe_v4_10.contract_id.size = 4

-- Display: Contract Id
euronext_optiq_sbe_v4_10.contract_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Contract Id: No Value"
  end

  return "Contract Id: "..value
end

-- Dissect: Contract Id
euronext_optiq_sbe_v4_10.contract_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.contract_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.contract_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.contract_id, range, value, display)

  return offset + length, value
end

-- Instrument Group Code
euronext_optiq_sbe_v4_10.instrument_group_code = {}

-- Size: Instrument Group Code
euronext_optiq_sbe_v4_10.instrument_group_code.size = 2

-- Display: Instrument Group Code
euronext_optiq_sbe_v4_10.instrument_group_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Group Code: No Value"
  end

  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
euronext_optiq_sbe_v4_10.instrument_group_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.instrument_group_code.size
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

  local display = euronext_optiq_sbe_v4_10.instrument_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Mass Cancel Ack Message
euronext_optiq_sbe_v4_10.mass_cancel_ack_message = {}

-- Calculate size of: Mass Cancel Ack Message
euronext_optiq_sbe_v4_10.mass_cancel_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_member.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size

  index = index + euronext_optiq_sbe_v4_10.book_in.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.total_affected_orders.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index_optional.size

  index = index + euronext_optiq_sbe_v4_10.emm_optional.size

  index = index + euronext_optiq_sbe_v4_10.instrument_group_code.size

  index = index + euronext_optiq_sbe_v4_10.side_optional.size

  index = index + euronext_optiq_sbe_v4_10.lp_role_optional.size

  index = index + euronext_optiq_sbe_v4_10.oe_partition_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.contract_id.size

  index = index + euronext_optiq_sbe_v4_10.maturity.size

  index = index + euronext_optiq_sbe_v4_10.account_type_optional.size

  index = index + euronext_optiq_sbe_v4_10.option_type.size

  index = index + euronext_optiq_sbe_v4_10.order_category.size

  index = index + euronext_optiq_sbe_v4_10.ack_qualifiers_optional.size

  index = index + euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.mifid_fields_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Cancel Ack Message
euronext_optiq_sbe_v4_10.mass_cancel_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Ack Message
euronext_optiq_sbe_v4_10.mass_cancel_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time: 8 Byte Unsigned Fixed Width Integer
  index, book_out_time = euronext_optiq_sbe_v4_10.book_out_time.dissect(buffer, index, packet, parent)

  -- Oeg In From Me: 8 Byte Unsigned Fixed Width Integer
  index, oeg_in_from_me = euronext_optiq_sbe_v4_10.oeg_in_from_me.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member: 8 Byte Unsigned Fixed Width Integer
  index, oeg_out_to_member = euronext_optiq_sbe_v4_10.oeg_out_to_member.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: 4 Byte Signed Fixed Width Integer
  index, total_affected_orders = euronext_optiq_sbe_v4_10.total_affected_orders.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_sbe_v4_10.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_sbe_v4_10.emm_optional.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String Nullable
  index, instrument_group_code = euronext_optiq_sbe_v4_10.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_sbe_v4_10.side_optional.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_sbe_v4_10.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Oe Partition Id Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id_optional = euronext_optiq_sbe_v4_10.oe_partition_id_optional.dissect(buffer, index, packet, parent)

  -- Contract Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, contract_id = euronext_optiq_sbe_v4_10.contract_id.dissect(buffer, index, packet, parent)

  -- Maturity: 8 Byte Ascii String Nullable
  index, maturity = euronext_optiq_sbe_v4_10.maturity.dissect(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_sbe_v4_10.account_type_optional.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, option_type = euronext_optiq_sbe_v4_10.option_type.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_sbe_v4_10.order_category.dissect(buffer, index, packet, parent)

  -- Ack Qualifiers Optional: Struct of 8 fields
  index, ack_qualifiers_optional = euronext_optiq_sbe_v4_10.ack_qualifiers_optional.dissect(buffer, index, packet, parent)

  -- Target Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, target_execution_within_firm_short_code = euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_sbe_v4_10.mifid_fields_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Ack Message
euronext_optiq_sbe_v4_10.mass_cancel_ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_cancel_ack_message then
    local length = euronext_optiq_sbe_v4_10.mass_cancel_ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.mass_cancel_ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mass_cancel_ack_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.mass_cancel_ack_message.fields(buffer, offset, packet, parent)
end

-- Mass Cancel Message
euronext_optiq_sbe_v4_10.mass_cancel_message = {}

-- Calculate size of: Mass Cancel Message
euronext_optiq_sbe_v4_10.mass_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.client_identification_shortcode.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index_optional.size

  index = index + euronext_optiq_sbe_v4_10.emm_optional.size

  index = index + euronext_optiq_sbe_v4_10.instrument_group_code.size

  index = index + euronext_optiq_sbe_v4_10.side_optional.size

  index = index + euronext_optiq_sbe_v4_10.lp_role_optional.size

  index = index + euronext_optiq_sbe_v4_10.oe_partition_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.contract_id.size

  index = index + euronext_optiq_sbe_v4_10.maturity.size

  index = index + euronext_optiq_sbe_v4_10.account_type_optional.size

  index = index + euronext_optiq_sbe_v4_10.option_type.size

  index = index + euronext_optiq_sbe_v4_10.order_category.size

  index = index + euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.not_used_group_2_groups.size(buffer, offset + index)

  return index
end

-- Display: Mass Cancel Message
euronext_optiq_sbe_v4_10.mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Message
euronext_optiq_sbe_v4_10.mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_sbe_v4_10.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_sbe_v4_10.emm_optional.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: 2 Byte Ascii String Nullable
  index, instrument_group_code = euronext_optiq_sbe_v4_10.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_sbe_v4_10.side_optional.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lp_role_optional = euronext_optiq_sbe_v4_10.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Oe Partition Id Optional: 2 Byte Unsigned Fixed Width Integer Nullable
  index, oe_partition_id_optional = euronext_optiq_sbe_v4_10.oe_partition_id_optional.dissect(buffer, index, packet, parent)

  -- Contract Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, contract_id = euronext_optiq_sbe_v4_10.contract_id.dissect(buffer, index, packet, parent)

  -- Maturity: 8 Byte Ascii String Nullable
  index, maturity = euronext_optiq_sbe_v4_10.maturity.dissect(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_sbe_v4_10.account_type_optional.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, option_type = euronext_optiq_sbe_v4_10.option_type.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_sbe_v4_10.order_category.dissect(buffer, index, packet, parent)

  -- Target Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer Nullable
  index, target_execution_within_firm_short_code = euronext_optiq_sbe_v4_10.target_execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_sbe_v4_10.not_used_group_2_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Message
euronext_optiq_sbe_v4_10.mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_cancel_message then
    local length = euronext_optiq_sbe_v4_10.mass_cancel_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.mass_cancel_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.mass_cancel_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.mass_cancel_message.fields(buffer, offset, packet, parent)
end

-- Cancel Request Message
euronext_optiq_sbe_v4_10.cancel_request_message = {}

-- Calculate size of: Cancel Request Message
euronext_optiq_sbe_v4_10.cancel_request_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.client_identification_shortcode.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.orig_client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.side.size

  index = index + euronext_optiq_sbe_v4_10.order_type.size

  index = index + euronext_optiq_sbe_v4_10.order_category.size

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.not_used_group_2_groups.size(buffer, offset + index)

  return index
end

-- Display: Cancel Request Message
euronext_optiq_sbe_v4_10.cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Request Message
euronext_optiq_sbe_v4_10.cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_sbe_v4_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_sbe_v4_10.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = euronext_optiq_sbe_v4_10.order_type.dissect(buffer, index, packet, parent)

  -- Order Category: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, order_category = euronext_optiq_sbe_v4_10.order_category.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_sbe_v4_10.not_used_group_2_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Request Message
euronext_optiq_sbe_v4_10.cancel_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cancel_request_message then
    local length = euronext_optiq_sbe_v4_10.cancel_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.cancel_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.cancel_request_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.cancel_request_message.fields(buffer, offset, packet, parent)
end

-- Firm Id Publication
euronext_optiq_sbe_v4_10.firm_id_publication = {}

-- Size: Firm Id Publication
euronext_optiq_sbe_v4_10.firm_id_publication.size = 1

-- Display: Firm Id Publication
euronext_optiq_sbe_v4_10.firm_id_publication.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Firm Id Publication: No Value"
  end

  return "Firm Id Publication: "..value
end

-- Dissect: Firm Id Publication
euronext_optiq_sbe_v4_10.firm_id_publication.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.firm_id_publication.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.firm_id_publication.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.firm_id_publication, range, value, display)

  return offset + length, value
end

-- Quote Request Message
euronext_optiq_sbe_v4_10.quote_request_message = {}

-- Size: Quote Request Message
euronext_optiq_sbe_v4_10.quote_request_message.size =
  euronext_optiq_sbe_v4_10.cl_msg_seq_num.size + 
  euronext_optiq_sbe_v4_10.firm_id.size + 
  euronext_optiq_sbe_v4_10.sending_time.size + 
  euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size + 
  euronext_optiq_sbe_v4_10.client_identification_shortcode.size + 
  euronext_optiq_sbe_v4_10.client_order_id.size + 
  euronext_optiq_sbe_v4_10.order_qty.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.side_optional.size + 
  euronext_optiq_sbe_v4_10.firm_id_publication.size + 
  euronext_optiq_sbe_v4_10.end_client.size + 
  euronext_optiq_sbe_v4_10.dark_execution_instruction.size + 
  euronext_optiq_sbe_v4_10.min_order_qty.size + 
  euronext_optiq_sbe_v4_10.account_type_optional.size

-- Display: Quote Request Message
euronext_optiq_sbe_v4_10.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
euronext_optiq_sbe_v4_10.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_sbe_v4_10.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_sbe_v4_10.side_optional.dissect(buffer, index, packet, parent)

  -- Firm Id Publication: 1 Byte Unsigned Fixed Width Integer Nullable
  index, firm_id_publication = euronext_optiq_sbe_v4_10.firm_id_publication.dissect(buffer, index, packet, parent)

  -- End Client: 11 Byte Ascii String Nullable
  index, end_client = euronext_optiq_sbe_v4_10.end_client.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_sbe_v4_10.dark_execution_instruction.dissect(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, min_order_qty = euronext_optiq_sbe_v4_10.min_order_qty.dissect(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_sbe_v4_10.account_type_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
euronext_optiq_sbe_v4_10.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quote_request_message, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Error Code
euronext_optiq_sbe_v4_10.offer_error_code = {}

-- Size: Offer Error Code
euronext_optiq_sbe_v4_10.offer_error_code.size = 2

-- Display: Offer Error Code
euronext_optiq_sbe_v4_10.offer_error_code.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Offer Error Code: No Value"
  end

  return "Offer Error Code: "..value
end

-- Dissect: Offer Error Code
euronext_optiq_sbe_v4_10.offer_error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.offer_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.offer_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.offer_error_code, range, value, display)

  return offset + length, value
end

-- Bid Error Code
euronext_optiq_sbe_v4_10.bid_error_code = {}

-- Size: Bid Error Code
euronext_optiq_sbe_v4_10.bid_error_code.size = 2

-- Display: Bid Error Code
euronext_optiq_sbe_v4_10.bid_error_code.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Bid Error Code: No Value"
  end

  return "Bid Error Code: "..value
end

-- Dissect: Bid Error Code
euronext_optiq_sbe_v4_10.bid_error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.bid_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.bid_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.bid_error_code, range, value, display)

  return offset + length, value
end

-- Sell Revision Flag
euronext_optiq_sbe_v4_10.sell_revision_flag = {}

-- Size: Sell Revision Flag
euronext_optiq_sbe_v4_10.sell_revision_flag.size = 1

-- Display: Sell Revision Flag
euronext_optiq_sbe_v4_10.sell_revision_flag.display = function(value)
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
euronext_optiq_sbe_v4_10.sell_revision_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.sell_revision_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.sell_revision_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.sell_revision_flag, range, value, display)

  return offset + length, value
end

-- Buy Revision Flag
euronext_optiq_sbe_v4_10.buy_revision_flag = {}

-- Size: Buy Revision Flag
euronext_optiq_sbe_v4_10.buy_revision_flag.size = 1

-- Display: Buy Revision Flag
euronext_optiq_sbe_v4_10.buy_revision_flag.display = function(value)
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
euronext_optiq_sbe_v4_10.buy_revision_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.buy_revision_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.buy_revision_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.buy_revision_flag, range, value, display)

  return offset + length, value
end

-- Offer Order Id
euronext_optiq_sbe_v4_10.offer_order_id = {}

-- Size: Offer Order Id
euronext_optiq_sbe_v4_10.offer_order_id.size = 8

-- Display: Offer Order Id
euronext_optiq_sbe_v4_10.offer_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Order Id: No Value"
  end

  return "Offer Order Id: "..value
end

-- Dissect: Offer Order Id
euronext_optiq_sbe_v4_10.offer_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.offer_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.offer_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.offer_order_id, range, value, display)

  return offset + length, value
end

-- Bid Order Id
euronext_optiq_sbe_v4_10.bid_order_id = {}

-- Size: Bid Order Id
euronext_optiq_sbe_v4_10.bid_order_id.size = 8

-- Display: Bid Order Id
euronext_optiq_sbe_v4_10.bid_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Order Id: No Value"
  end

  return "Bid Order Id: "..value
end

-- Dissect: Bid Order Id
euronext_optiq_sbe_v4_10.bid_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.bid_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.bid_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.bid_order_id, range, value, display)

  return offset + length, value
end

-- Quote Acks Group
euronext_optiq_sbe_v4_10.quote_acks_group = {}

-- Size: Quote Acks Group
euronext_optiq_sbe_v4_10.quote_acks_group.size =
  euronext_optiq_sbe_v4_10.bid_order_id.size + 
  euronext_optiq_sbe_v4_10.offer_order_id.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size + 
  euronext_optiq_sbe_v4_10.buy_revision_flag.size + 
  euronext_optiq_sbe_v4_10.sell_revision_flag.size + 
  euronext_optiq_sbe_v4_10.bid_error_code.size + 
  euronext_optiq_sbe_v4_10.offer_error_code.size

-- Display: Quote Acks Group
euronext_optiq_sbe_v4_10.quote_acks_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Acks Group
euronext_optiq_sbe_v4_10.quote_acks_group.fields = function(buffer, offset, packet, parent, quote_acks_group_index)
  local index = offset

  -- Implicit Quote Acks Group Index
  if quote_acks_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quote_acks_group_index, quote_acks_group_index)
    iteration:set_generated()
  end

  -- Bid Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_order_id = euronext_optiq_sbe_v4_10.bid_order_id.dissect(buffer, index, packet, parent)

  -- Offer Order Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_order_id = euronext_optiq_sbe_v4_10.offer_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Buy Revision Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, buy_revision_flag = euronext_optiq_sbe_v4_10.buy_revision_flag.dissect(buffer, index, packet, parent)

  -- Sell Revision Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, sell_revision_flag = euronext_optiq_sbe_v4_10.sell_revision_flag.dissect(buffer, index, packet, parent)

  -- Bid Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, bid_error_code = euronext_optiq_sbe_v4_10.bid_error_code.dissect(buffer, index, packet, parent)

  -- Offer Error Code: 2 Byte Unsigned Fixed Width Integer Nullable
  index, offer_error_code = euronext_optiq_sbe_v4_10.offer_error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Acks Group
euronext_optiq_sbe_v4_10.quote_acks_group.dissect = function(buffer, offset, packet, parent, quote_acks_group_index)
  if show.quote_acks_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quote_acks_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.quote_acks_group.fields(buffer, offset, packet, parent, quote_acks_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.quote_acks_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.quote_acks_group.fields(buffer, offset, packet, parent, quote_acks_group_index)
  end
end

-- Quote Acks Groups
euronext_optiq_sbe_v4_10.quote_acks_groups = {}

-- Calculate size of: Quote Acks Groups
euronext_optiq_sbe_v4_10.quote_acks_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local quote_acks_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_acks_group_count * 27

  return index
end

-- Display: Quote Acks Groups
euronext_optiq_sbe_v4_10.quote_acks_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Acks Groups
euronext_optiq_sbe_v4_10.quote_acks_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Quote Acks Group
  for quote_acks_group_index = 1, num_in_group do
    index, quote_acks_group = euronext_optiq_sbe_v4_10.quote_acks_group.dissect(buffer, index, packet, parent, quote_acks_group_index)
  end

  return index
end

-- Dissect: Quote Acks Groups
euronext_optiq_sbe_v4_10.quote_acks_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_acks_groups then
    local length = euronext_optiq_sbe_v4_10.quote_acks_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.quote_acks_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quote_acks_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.quote_acks_groups.fields(buffer, offset, packet, parent)
end

-- Lp Role
euronext_optiq_sbe_v4_10.lp_role = {}

-- Size: Lp Role
euronext_optiq_sbe_v4_10.lp_role.size = 1

-- Display: Lp Role
euronext_optiq_sbe_v4_10.lp_role.display = function(value)
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
euronext_optiq_sbe_v4_10.lp_role.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.lp_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.lp_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.lp_role, range, value, display)

  return offset + length, value
end

-- Quote Ack Message
euronext_optiq_sbe_v4_10.quote_ack_message = {}

-- Calculate size of: Quote Ack Message
euronext_optiq_sbe_v4_10.quote_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_member.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size

  index = index + euronext_optiq_sbe_v4_10.book_in.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.account_type.size

  index = index + euronext_optiq_sbe_v4_10.lp_role.size

  index = index + euronext_optiq_sbe_v4_10.execution_instruction_optional.size

  index = index + euronext_optiq_sbe_v4_10.ack_qualifiers_optional.size

  index = index + euronext_optiq_sbe_v4_10.quote_acks_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Ack Message
euronext_optiq_sbe_v4_10.quote_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Ack Message
euronext_optiq_sbe_v4_10.quote_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_sbe_v4_10.account_type.dissect(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, lp_role = euronext_optiq_sbe_v4_10.lp_role.dissect(buffer, index, packet, parent)

  -- Execution Instruction Optional: Struct of 8 fields
  index, execution_instruction_optional = euronext_optiq_sbe_v4_10.execution_instruction_optional.dissect(buffer, index, packet, parent)

  -- Ack Qualifiers Optional: Struct of 8 fields
  index, ack_qualifiers_optional = euronext_optiq_sbe_v4_10.ack_qualifiers_optional.dissect(buffer, index, packet, parent)

  -- Quote Acks Groups: Struct of 2 fields
  index, quote_acks_groups = euronext_optiq_sbe_v4_10.quote_acks_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Message
euronext_optiq_sbe_v4_10.quote_ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_ack_message then
    local length = euronext_optiq_sbe_v4_10.quote_ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.quote_ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quote_ack_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.quote_ack_message.fields(buffer, offset, packet, parent)
end

-- Offer Px
euronext_optiq_sbe_v4_10.offer_px = {}

-- Size: Offer Px
euronext_optiq_sbe_v4_10.offer_px.size = 8

-- Display: Offer Px
euronext_optiq_sbe_v4_10.offer_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Dissect: Offer Px
euronext_optiq_sbe_v4_10.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.offer_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.offer_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Offer Size
euronext_optiq_sbe_v4_10.offer_size = {}

-- Size: Offer Size
euronext_optiq_sbe_v4_10.offer_size.size = 8

-- Display: Offer Size
euronext_optiq_sbe_v4_10.offer_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
euronext_optiq_sbe_v4_10.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Bid Px
euronext_optiq_sbe_v4_10.bid_px = {}

-- Size: Bid Px
euronext_optiq_sbe_v4_10.bid_px.size = 8

-- Display: Bid Px
euronext_optiq_sbe_v4_10.bid_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Dissect: Bid Px
euronext_optiq_sbe_v4_10.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.bid_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.bid_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Bid Size
euronext_optiq_sbe_v4_10.bid_size = {}

-- Size: Bid Size
euronext_optiq_sbe_v4_10.bid_size.size = 8

-- Display: Bid Size
euronext_optiq_sbe_v4_10.bid_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
euronext_optiq_sbe_v4_10.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Quotes Rep Group
euronext_optiq_sbe_v4_10.quotes_rep_group = {}

-- Size: Quotes Rep Group
euronext_optiq_sbe_v4_10.quotes_rep_group.size =
  euronext_optiq_sbe_v4_10.bid_size.size + 
  euronext_optiq_sbe_v4_10.bid_px.size + 
  euronext_optiq_sbe_v4_10.offer_size.size + 
  euronext_optiq_sbe_v4_10.offer_px.size + 
  euronext_optiq_sbe_v4_10.symbol_index.size + 
  euronext_optiq_sbe_v4_10.emm.size

-- Display: Quotes Rep Group
euronext_optiq_sbe_v4_10.quotes_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Rep Group
euronext_optiq_sbe_v4_10.quotes_rep_group.fields = function(buffer, offset, packet, parent, quotes_rep_group_index)
  local index = offset

  -- Implicit Quotes Rep Group Index
  if quotes_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quotes_rep_group_index, quotes_rep_group_index)
    iteration:set_generated()
  end

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = euronext_optiq_sbe_v4_10.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Signed Fixed Width Integer Nullable
  index, bid_px = euronext_optiq_sbe_v4_10.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = euronext_optiq_sbe_v4_10.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Signed Fixed Width Integer Nullable
  index, offer_px = euronext_optiq_sbe_v4_10.offer_px.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Rep Group
euronext_optiq_sbe_v4_10.quotes_rep_group.dissect = function(buffer, offset, packet, parent, quotes_rep_group_index)
  if show.quotes_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quotes_rep_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.quotes_rep_group.fields(buffer, offset, packet, parent, quotes_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.quotes_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.quotes_rep_group.fields(buffer, offset, packet, parent, quotes_rep_group_index)
  end
end

-- Quotes Rep Groups
euronext_optiq_sbe_v4_10.quotes_rep_groups = {}

-- Calculate size of: Quotes Rep Groups
euronext_optiq_sbe_v4_10.quotes_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local quotes_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quotes_rep_group_count * 37

  return index
end

-- Display: Quotes Rep Groups
euronext_optiq_sbe_v4_10.quotes_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Rep Groups
euronext_optiq_sbe_v4_10.quotes_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Quotes Rep Group
  for quotes_rep_group_index = 1, num_in_group do
    index, quotes_rep_group = euronext_optiq_sbe_v4_10.quotes_rep_group.dissect(buffer, index, packet, parent, quotes_rep_group_index)
  end

  return index
end

-- Dissect: Quotes Rep Groups
euronext_optiq_sbe_v4_10.quotes_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_rep_groups then
    local length = euronext_optiq_sbe_v4_10.quotes_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.quotes_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quotes_rep_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.quotes_rep_groups.fields(buffer, offset, packet, parent)
end

-- Client Id
euronext_optiq_sbe_v4_10.client_id = {}

-- Size: Client Id
euronext_optiq_sbe_v4_10.client_id.size = 8

-- Display: Client Id
euronext_optiq_sbe_v4_10.client_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Id: No Value"
  end

  return "Client Id: "..value
end

-- Dissect: Client Id
euronext_optiq_sbe_v4_10.client_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.client_id.size
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

  local display = euronext_optiq_sbe_v4_10.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.client_id, range, value, display)

  return offset + length, value
end

-- Clearing Dataset Group
euronext_optiq_sbe_v4_10.clearing_dataset_group = {}

-- Size: Clearing Dataset Group
euronext_optiq_sbe_v4_10.clearing_dataset_group.size =
  euronext_optiq_sbe_v4_10.clearing_firm_id.size + 
  euronext_optiq_sbe_v4_10.client_id.size + 
  euronext_optiq_sbe_v4_10.account_number.size + 
  euronext_optiq_sbe_v4_10.technical_origin.size + 
  euronext_optiq_sbe_v4_10.open_close.size + 
  euronext_optiq_sbe_v4_10.clearing_instruction.size + 
  euronext_optiq_sbe_v4_10.free_text.size

-- Display: Clearing Dataset Group
euronext_optiq_sbe_v4_10.clearing_dataset_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Dataset Group
euronext_optiq_sbe_v4_10.clearing_dataset_group.fields = function(buffer, offset, packet, parent, clearing_dataset_group_index)
  local index = offset

  -- Implicit Clearing Dataset Group Index
  if clearing_dataset_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_dataset_group_index, clearing_dataset_group_index)
    iteration:set_generated()
  end

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_sbe_v4_10.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id: 8 Byte Ascii String Nullable
  index, client_id = euronext_optiq_sbe_v4_10.client_id.dissect(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_sbe_v4_10.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_sbe_v4_10.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_sbe_v4_10.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_sbe_v4_10.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Free Text: 18 Byte Ascii String Nullable
  index, free_text = euronext_optiq_sbe_v4_10.free_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Dataset Group
euronext_optiq_sbe_v4_10.clearing_dataset_group.dissect = function(buffer, offset, packet, parent, clearing_dataset_group_index)
  if show.clearing_dataset_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_dataset_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.clearing_dataset_group.fields(buffer, offset, packet, parent, clearing_dataset_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.clearing_dataset_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.clearing_dataset_group.fields(buffer, offset, packet, parent, clearing_dataset_group_index)
  end
end

-- Clearing Dataset Groups
euronext_optiq_sbe_v4_10.clearing_dataset_groups = {}

-- Calculate size of: Clearing Dataset Groups
euronext_optiq_sbe_v4_10.clearing_dataset_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local clearing_dataset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_dataset_group_count * 51

  return index
end

-- Display: Clearing Dataset Groups
euronext_optiq_sbe_v4_10.clearing_dataset_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Dataset Groups
euronext_optiq_sbe_v4_10.clearing_dataset_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Clearing Dataset Group
  for clearing_dataset_group_index = 1, num_in_group do
    index, clearing_dataset_group = euronext_optiq_sbe_v4_10.clearing_dataset_group.dissect(buffer, index, packet, parent, clearing_dataset_group_index)
  end

  return index
end

-- Dissect: Clearing Dataset Groups
euronext_optiq_sbe_v4_10.clearing_dataset_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_dataset_groups then
    local length = euronext_optiq_sbe_v4_10.clearing_dataset_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.clearing_dataset_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_dataset_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.clearing_dataset_groups.fields(buffer, offset, packet, parent)
end

-- Rfe Answer
euronext_optiq_sbe_v4_10.rfe_answer = {}

-- Size: Rfe Answer
euronext_optiq_sbe_v4_10.rfe_answer.size = 1

-- Display: Rfe Answer
euronext_optiq_sbe_v4_10.rfe_answer.display = function(value)
  return "Rfe Answer: "..value
end

-- Dissect: Rfe Answer
euronext_optiq_sbe_v4_10.rfe_answer.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.rfe_answer.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.rfe_answer.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfe_answer, range, value, display)

  return offset + length, value
end

-- Quotes Message
euronext_optiq_sbe_v4_10.quotes_message = {}

-- Calculate size of: Quotes Message
euronext_optiq_sbe_v4_10.quotes_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.trading_capacity.size

  index = index + euronext_optiq_sbe_v4_10.account_type.size

  index = index + euronext_optiq_sbe_v4_10.lp_role.size

  index = index + euronext_optiq_sbe_v4_10.mifid_indicators.size

  index = index + euronext_optiq_sbe_v4_10.rfe_answer.size

  index = index + euronext_optiq_sbe_v4_10.execution_instruction_optional.size

  index = index + euronext_optiq_sbe_v4_10.mifid_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.clearing_dataset_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.quotes_rep_groups.size(buffer, offset + index)

  return index
end

-- Display: Quotes Message
euronext_optiq_sbe_v4_10.quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Message
euronext_optiq_sbe_v4_10.quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = euronext_optiq_sbe_v4_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_sbe_v4_10.account_type.dissect(buffer, index, packet, parent)

  -- Lp Role: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, lp_role = euronext_optiq_sbe_v4_10.lp_role.dissect(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_sbe_v4_10.mifid_indicators.dissect(buffer, index, packet, parent)

  -- Rfe Answer: 1 Byte Unsigned Fixed Width Integer
  index, rfe_answer = euronext_optiq_sbe_v4_10.rfe_answer.dissect(buffer, index, packet, parent)

  -- Execution Instruction Optional: Struct of 8 fields
  index, execution_instruction_optional = euronext_optiq_sbe_v4_10.execution_instruction_optional.dissect(buffer, index, packet, parent)

  -- Mifid Short Codes Groups: Struct of 2 fields
  index, mifid_short_codes_groups = euronext_optiq_sbe_v4_10.mifid_short_codes_groups.dissect(buffer, index, packet, parent)

  -- Clearing Dataset Groups: Struct of 2 fields
  index, clearing_dataset_groups = euronext_optiq_sbe_v4_10.clearing_dataset_groups.dissect(buffer, index, packet, parent)

  -- Quotes Rep Groups: Struct of 2 fields
  index, quotes_rep_groups = euronext_optiq_sbe_v4_10.quotes_rep_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Message
euronext_optiq_sbe_v4_10.quotes_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_message then
    local length = euronext_optiq_sbe_v4_10.quotes_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.quotes_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.quotes_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.quotes_message.fields(buffer, offset, packet, parent)
end

-- Breached Collar Price
euronext_optiq_sbe_v4_10.breached_collar_price = {}

-- Size: Breached Collar Price
euronext_optiq_sbe_v4_10.breached_collar_price.size = 8

-- Display: Breached Collar Price
euronext_optiq_sbe_v4_10.breached_collar_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Breached Collar Price: No Value"
  end

  return "Breached Collar Price: "..value
end

-- Dissect: Breached Collar Price
euronext_optiq_sbe_v4_10.breached_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.breached_collar_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.breached_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.breached_collar_price, range, value, display)

  return offset + length, value
end

-- Collar Rej Type
euronext_optiq_sbe_v4_10.collar_rej_type = {}

-- Size: Collar Rej Type
euronext_optiq_sbe_v4_10.collar_rej_type.size = 1

-- Display: Collar Rej Type
euronext_optiq_sbe_v4_10.collar_rej_type.display = function(value)
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
euronext_optiq_sbe_v4_10.collar_rej_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.collar_rej_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.collar_rej_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.collar_rej_type, range, value, display)

  return offset + length, value
end

-- Collar Fields Group
euronext_optiq_sbe_v4_10.collar_fields_group = {}

-- Size: Collar Fields Group
euronext_optiq_sbe_v4_10.collar_fields_group.size =
  euronext_optiq_sbe_v4_10.collar_rej_type.size + 
  euronext_optiq_sbe_v4_10.breached_collar_price.size

-- Display: Collar Fields Group
euronext_optiq_sbe_v4_10.collar_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collar Fields Group
euronext_optiq_sbe_v4_10.collar_fields_group.fields = function(buffer, offset, packet, parent, collar_fields_group_index)
  local index = offset

  -- Implicit Collar Fields Group Index
  if collar_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.collar_fields_group_index, collar_fields_group_index)
    iteration:set_generated()
  end

  -- Collar Rej Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, collar_rej_type = euronext_optiq_sbe_v4_10.collar_rej_type.dissect(buffer, index, packet, parent)

  -- Breached Collar Price: 8 Byte Signed Fixed Width Integer Nullable
  index, breached_collar_price = euronext_optiq_sbe_v4_10.breached_collar_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Fields Group
euronext_optiq_sbe_v4_10.collar_fields_group.dissect = function(buffer, offset, packet, parent, collar_fields_group_index)
  if show.collar_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.collar_fields_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.collar_fields_group.fields(buffer, offset, packet, parent, collar_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.collar_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.collar_fields_group.fields(buffer, offset, packet, parent, collar_fields_group_index)
  end
end

-- Collar Fields Groups
euronext_optiq_sbe_v4_10.collar_fields_groups = {}

-- Calculate size of: Collar Fields Groups
euronext_optiq_sbe_v4_10.collar_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local collar_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + collar_fields_group_count * 9

  return index
end

-- Display: Collar Fields Groups
euronext_optiq_sbe_v4_10.collar_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collar Fields Groups
euronext_optiq_sbe_v4_10.collar_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Collar Fields Group
  for collar_fields_group_index = 1, num_in_group do
    index, collar_fields_group = euronext_optiq_sbe_v4_10.collar_fields_group.dissect(buffer, index, packet, parent, collar_fields_group_index)
  end

  return index
end

-- Dissect: Collar Fields Groups
euronext_optiq_sbe_v4_10.collar_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.collar_fields_groups then
    local length = euronext_optiq_sbe_v4_10.collar_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.collar_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.collar_fields_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.collar_fields_groups.fields(buffer, offset, packet, parent)
end

-- Firm Id Optional
euronext_optiq_sbe_v4_10.firm_id_optional = {}

-- Size: Firm Id Optional
euronext_optiq_sbe_v4_10.firm_id_optional.size = 8

-- Display: Firm Id Optional
euronext_optiq_sbe_v4_10.firm_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id Optional: No Value"
  end

  return "Firm Id Optional: "..value
end

-- Dissect: Firm Id Optional
euronext_optiq_sbe_v4_10.firm_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.firm_id_optional.size
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

  local display = euronext_optiq_sbe_v4_10.firm_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.firm_id_optional, range, value, display)

  return offset + length, value
end

-- Reject Message
euronext_optiq_sbe_v4_10.reject_message = {}

-- Calculate size of: Reject Message
euronext_optiq_sbe_v4_10.reject_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.sending_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_member.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size

  index = index + euronext_optiq_sbe_v4_10.book_in_optional.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index_optional.size

  index = index + euronext_optiq_sbe_v4_10.emm_optional.size

  index = index + euronext_optiq_sbe_v4_10.rejected_message.size

  index = index + euronext_optiq_sbe_v4_10.error_code.size

  index = index + euronext_optiq_sbe_v4_10.rejected_message_id.size

  index = index + euronext_optiq_sbe_v4_10.ack_qualifiers_optional.size

  index = index + euronext_optiq_sbe_v4_10.collar_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.mifid_fields_groups.size(buffer, offset + index)

  return index
end

-- Display: Reject Message
euronext_optiq_sbe_v4_10.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
euronext_optiq_sbe_v4_10.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id Optional: 8 Byte Ascii String Nullable
  index, firm_id_optional = euronext_optiq_sbe_v4_10.firm_id_optional.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_in_optional = euronext_optiq_sbe_v4_10.book_in_optional.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_sbe_v4_10.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_sbe_v4_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: 4 Byte Unsigned Fixed Width Integer Nullable
  index, symbol_index_optional = euronext_optiq_sbe_v4_10.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- Emm Optional: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, emm_optional = euronext_optiq_sbe_v4_10.emm_optional.dissect(buffer, index, packet, parent)

  -- Rejected Message: 1 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message = euronext_optiq_sbe_v4_10.rejected_message.dissect(buffer, index, packet, parent)

  -- Error Code: 2 Byte Unsigned Fixed Width Integer
  index, error_code = euronext_optiq_sbe_v4_10.error_code.dissect(buffer, index, packet, parent)

  -- Rejected Message Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, rejected_message_id = euronext_optiq_sbe_v4_10.rejected_message_id.dissect(buffer, index, packet, parent)

  -- Ack Qualifiers Optional: Struct of 8 fields
  index, ack_qualifiers_optional = euronext_optiq_sbe_v4_10.ack_qualifiers_optional.dissect(buffer, index, packet, parent)

  -- Collar Fields Groups: Struct of 2 fields
  index, collar_fields_groups = euronext_optiq_sbe_v4_10.collar_fields_groups.dissect(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_sbe_v4_10.mifid_fields_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
euronext_optiq_sbe_v4_10.reject_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.reject_message then
    local length = euronext_optiq_sbe_v4_10.reject_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.reject_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.reject_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.reject_message.fields(buffer, offset, packet, parent)
end

-- Additional Infos Group
euronext_optiq_sbe_v4_10.additional_infos_group = {}

-- Size: Additional Infos Group
euronext_optiq_sbe_v4_10.additional_infos_group.size =
  euronext_optiq_sbe_v4_10.long_client_id.size

-- Display: Additional Infos Group
euronext_optiq_sbe_v4_10.additional_infos_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Additional Infos Group
euronext_optiq_sbe_v4_10.additional_infos_group.fields = function(buffer, offset, packet, parent, additional_infos_group_index)
  local index = offset

  -- Implicit Additional Infos Group Index
  if additional_infos_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.additional_infos_group_index, additional_infos_group_index)
    iteration:set_generated()
  end

  -- Long Client Id: 16 Byte Ascii String Nullable
  index, long_client_id = euronext_optiq_sbe_v4_10.long_client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Additional Infos Group
euronext_optiq_sbe_v4_10.additional_infos_group.dissect = function(buffer, offset, packet, parent, additional_infos_group_index)
  if show.additional_infos_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.additional_infos_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.additional_infos_group.fields(buffer, offset, packet, parent, additional_infos_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.additional_infos_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.additional_infos_group.fields(buffer, offset, packet, parent, additional_infos_group_index)
  end
end

-- Additional Infos Groups
euronext_optiq_sbe_v4_10.additional_infos_groups = {}

-- Calculate size of: Additional Infos Groups
euronext_optiq_sbe_v4_10.additional_infos_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local additional_infos_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + additional_infos_group_count * 16

  return index
end

-- Display: Additional Infos Groups
euronext_optiq_sbe_v4_10.additional_infos_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Additional Infos Groups
euronext_optiq_sbe_v4_10.additional_infos_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Additional Infos Group
  for additional_infos_group_index = 1, num_in_group do
    index, additional_infos_group = euronext_optiq_sbe_v4_10.additional_infos_group.dissect(buffer, index, packet, parent, additional_infos_group_index)
  end

  return index
end

-- Dissect: Additional Infos Groups
euronext_optiq_sbe_v4_10.additional_infos_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.additional_infos_groups then
    local length = euronext_optiq_sbe_v4_10.additional_infos_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.additional_infos_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.additional_infos_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.additional_infos_groups.fields(buffer, offset, packet, parent)
end

-- Clearing Fields Group
euronext_optiq_sbe_v4_10.clearing_fields_group = {}

-- Size: Clearing Fields Group
euronext_optiq_sbe_v4_10.clearing_fields_group.size =
  euronext_optiq_sbe_v4_10.clearing_firm_id.size + 
  euronext_optiq_sbe_v4_10.client_id.size + 
  euronext_optiq_sbe_v4_10.account_number.size + 
  euronext_optiq_sbe_v4_10.technical_origin.size + 
  euronext_optiq_sbe_v4_10.open_close.size + 
  euronext_optiq_sbe_v4_10.clearing_instruction.size + 
  euronext_optiq_sbe_v4_10.account_type_cross.size

-- Display: Clearing Fields Group
euronext_optiq_sbe_v4_10.clearing_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Fields Group
euronext_optiq_sbe_v4_10.clearing_fields_group.fields = function(buffer, offset, packet, parent, clearing_fields_group_index)
  local index = offset

  -- Implicit Clearing Fields Group Index
  if clearing_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_group_index, clearing_fields_group_index)
    iteration:set_generated()
  end

  -- Clearing Firm Id: 8 Byte Ascii String Nullable
  index, clearing_firm_id = euronext_optiq_sbe_v4_10.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id: 8 Byte Ascii String Nullable
  index, client_id = euronext_optiq_sbe_v4_10.client_id.dissect(buffer, index, packet, parent)

  -- Account Number: 12 Byte Ascii String Nullable
  index, account_number = euronext_optiq_sbe_v4_10.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, technical_origin = euronext_optiq_sbe_v4_10.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_sbe_v4_10.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, clearing_instruction = euronext_optiq_sbe_v4_10.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type Cross: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_cross = euronext_optiq_sbe_v4_10.account_type_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Fields Group
euronext_optiq_sbe_v4_10.clearing_fields_group.dissect = function(buffer, offset, packet, parent, clearing_fields_group_index)
  if show.clearing_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.clearing_fields_group.fields(buffer, offset, packet, parent, clearing_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.clearing_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.clearing_fields_group.fields(buffer, offset, packet, parent, clearing_fields_group_index)
  end
end

-- Clearing Fields Groups
euronext_optiq_sbe_v4_10.clearing_fields_groups = {}

-- Calculate size of: Clearing Fields Groups
euronext_optiq_sbe_v4_10.clearing_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local clearing_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_fields_group_count * 34

  return index
end

-- Display: Clearing Fields Groups
euronext_optiq_sbe_v4_10.clearing_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Fields Groups
euronext_optiq_sbe_v4_10.clearing_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Clearing Fields Group
  for clearing_fields_group_index = 1, num_in_group do
    index, clearing_fields_group = euronext_optiq_sbe_v4_10.clearing_fields_group.dissect(buffer, index, packet, parent, clearing_fields_group_index)
  end

  return index
end

-- Dissect: Clearing Fields Groups
euronext_optiq_sbe_v4_10.clearing_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_fields_groups then
    local length = euronext_optiq_sbe_v4_10.clearing_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.clearing_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.clearing_fields_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.clearing_fields_groups.fields(buffer, offset, packet, parent)
end

-- Stop Triggered Time In Force
euronext_optiq_sbe_v4_10.stop_triggered_time_in_force = {}

-- Size: Stop Triggered Time In Force
euronext_optiq_sbe_v4_10.stop_triggered_time_in_force.size = 1

-- Display: Stop Triggered Time In Force
euronext_optiq_sbe_v4_10.stop_triggered_time_in_force.display = function(value)
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
euronext_optiq_sbe_v4_10.stop_triggered_time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.stop_triggered_time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.stop_triggered_time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.stop_triggered_time_in_force, range, value, display)

  return offset + length, value
end

-- Undisclosed Iceberg Type
euronext_optiq_sbe_v4_10.undisclosed_iceberg_type = {}

-- Size: Undisclosed Iceberg Type
euronext_optiq_sbe_v4_10.undisclosed_iceberg_type.size = 1

-- Display: Undisclosed Iceberg Type
euronext_optiq_sbe_v4_10.undisclosed_iceberg_type.display = function(value)
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
euronext_optiq_sbe_v4_10.undisclosed_iceberg_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.undisclosed_iceberg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.undisclosed_iceberg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.undisclosed_iceberg_type, range, value, display)

  return offset + length, value
end

-- Trading Session
euronext_optiq_sbe_v4_10.trading_session = {}

-- Size: Trading Session
euronext_optiq_sbe_v4_10.trading_session.size = 1

-- Display: Trading Session
euronext_optiq_sbe_v4_10.trading_session.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.trading_session.bits = function(buffer, offset, packet, parent)

  -- Reserved 3: 3 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_3, buffer(offset, 1))

  -- Session 4: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.session_4, buffer(offset, 1))

  -- Session 3: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.session_3, buffer(offset, 1))

  -- Session 2: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.session_2, buffer(offset, 1))

  -- Session 1: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.session_1, buffer(offset, 1))

  -- Reserved 1: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_1, buffer(offset, 1))
end

-- Dissect: Trading Session
euronext_optiq_sbe_v4_10.trading_session.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.trading_session.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.trading_session, range, display)

  if show.trading_session then
    euronext_optiq_sbe_v4_10.trading_session.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Peg Offset
euronext_optiq_sbe_v4_10.peg_offset = {}

-- Size: Peg Offset
euronext_optiq_sbe_v4_10.peg_offset.size = 1

-- Display: Peg Offset
euronext_optiq_sbe_v4_10.peg_offset.display = function(value)
  -- Check if field has value
  if value == -128 then
    return "Peg Offset: No Value"
  end

  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
euronext_optiq_sbe_v4_10.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.peg_offset.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_sbe_v4_10.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Order Expiration Date
euronext_optiq_sbe_v4_10.order_expiration_date = {}

-- Size: Order Expiration Date
euronext_optiq_sbe_v4_10.order_expiration_date.size = 2

-- Display: Order Expiration Date
euronext_optiq_sbe_v4_10.order_expiration_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Order Expiration Date: No Value"
  end

  return "Order Expiration Date: "..value
end

-- Dissect: Order Expiration Date
euronext_optiq_sbe_v4_10.order_expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.order_expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_expiration_date, range, value, display)

  return offset + length, value
end

-- Order Expiration Time
euronext_optiq_sbe_v4_10.order_expiration_time = {}

-- Size: Order Expiration Time
euronext_optiq_sbe_v4_10.order_expiration_time.size = 4

-- Display: Order Expiration Time
euronext_optiq_sbe_v4_10.order_expiration_time.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Expiration Time: No Value"
  end

  return "Order Expiration Time: "..value
end

-- Dissect: Order Expiration Time
euronext_optiq_sbe_v4_10.order_expiration_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_expiration_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.order_expiration_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_expiration_time, range, value, display)

  return offset + length, value
end

-- Quote Req Id Optional
euronext_optiq_sbe_v4_10.quote_req_id_optional = {}

-- Size: Quote Req Id Optional
euronext_optiq_sbe_v4_10.quote_req_id_optional.size = 8

-- Display: Quote Req Id Optional
euronext_optiq_sbe_v4_10.quote_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Req Id Optional: No Value"
  end

  return "Quote Req Id Optional: "..value
end

-- Dissect: Quote Req Id Optional
euronext_optiq_sbe_v4_10.quote_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.quote_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.quote_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.quote_req_id_optional, range, value, display)

  return offset + length, value
end

-- Disclosed Qty
euronext_optiq_sbe_v4_10.disclosed_qty = {}

-- Size: Disclosed Qty
euronext_optiq_sbe_v4_10.disclosed_qty.size = 8

-- Display: Disclosed Qty
euronext_optiq_sbe_v4_10.disclosed_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Disclosed Qty: No Value"
  end

  return "Disclosed Qty: "..value
end

-- Dissect: Disclosed Qty
euronext_optiq_sbe_v4_10.disclosed_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.disclosed_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.disclosed_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.disclosed_qty, range, value, display)

  return offset + length, value
end

-- Undisclosed Price
euronext_optiq_sbe_v4_10.undisclosed_price = {}

-- Size: Undisclosed Price
euronext_optiq_sbe_v4_10.undisclosed_price.size = 8

-- Display: Undisclosed Price
euronext_optiq_sbe_v4_10.undisclosed_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Undisclosed Price: No Value"
  end

  return "Undisclosed Price: "..value
end

-- Dissect: Undisclosed Price
euronext_optiq_sbe_v4_10.undisclosed_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.undisclosed_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.undisclosed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.undisclosed_price, range, value, display)

  return offset + length, value
end

-- Stop Px
euronext_optiq_sbe_v4_10.stop_px = {}

-- Size: Stop Px
euronext_optiq_sbe_v4_10.stop_px.size = 8

-- Display: Stop Px
euronext_optiq_sbe_v4_10.stop_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Dissect: Stop Px
euronext_optiq_sbe_v4_10.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.stop_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Optional Fields Group
euronext_optiq_sbe_v4_10.optional_fields_group = {}

-- Size: Optional Fields Group
euronext_optiq_sbe_v4_10.optional_fields_group.size =
  euronext_optiq_sbe_v4_10.stop_px.size + 
  euronext_optiq_sbe_v4_10.undisclosed_price.size + 
  euronext_optiq_sbe_v4_10.disclosed_qty.size + 
  euronext_optiq_sbe_v4_10.min_order_qty.size + 
  euronext_optiq_sbe_v4_10.quote_req_id_optional.size + 
  euronext_optiq_sbe_v4_10.order_expiration_time.size + 
  euronext_optiq_sbe_v4_10.order_expiration_date.size + 
  euronext_optiq_sbe_v4_10.peg_offset.size + 
  euronext_optiq_sbe_v4_10.trading_session.size + 
  euronext_optiq_sbe_v4_10.undisclosed_iceberg_type.size + 
  euronext_optiq_sbe_v4_10.stop_triggered_time_in_force.size

-- Display: Optional Fields Group
euronext_optiq_sbe_v4_10.optional_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Fields Group
euronext_optiq_sbe_v4_10.optional_fields_group.fields = function(buffer, offset, packet, parent, optional_fields_group_index)
  local index = offset

  -- Implicit Optional Fields Group Index
  if optional_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_group_index, optional_fields_group_index)
    iteration:set_generated()
  end

  -- Stop Px: 8 Byte Signed Fixed Width Integer Nullable
  index, stop_px = euronext_optiq_sbe_v4_10.stop_px.dissect(buffer, index, packet, parent)

  -- Undisclosed Price: 8 Byte Signed Fixed Width Integer Nullable
  index, undisclosed_price = euronext_optiq_sbe_v4_10.undisclosed_price.dissect(buffer, index, packet, parent)

  -- Disclosed Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, disclosed_qty = euronext_optiq_sbe_v4_10.disclosed_qty.dissect(buffer, index, packet, parent)

  -- Min Order Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, min_order_qty = euronext_optiq_sbe_v4_10.min_order_qty.dissect(buffer, index, packet, parent)

  -- Quote Req Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, quote_req_id_optional = euronext_optiq_sbe_v4_10.quote_req_id_optional.dissect(buffer, index, packet, parent)

  -- Order Expiration Time: 4 Byte Unsigned Fixed Width Integer Nullable
  index, order_expiration_time = euronext_optiq_sbe_v4_10.order_expiration_time.dissect(buffer, index, packet, parent)

  -- Order Expiration Date: 2 Byte Unsigned Fixed Width Integer Nullable
  index, order_expiration_date = euronext_optiq_sbe_v4_10.order_expiration_date.dissect(buffer, index, packet, parent)

  -- Peg Offset: 1 Byte Signed Fixed Width Integer Nullable
  index, peg_offset = euronext_optiq_sbe_v4_10.peg_offset.dissect(buffer, index, packet, parent)

  -- Trading Session: Struct of 6 fields
  index, trading_session = euronext_optiq_sbe_v4_10.trading_session.dissect(buffer, index, packet, parent)

  -- Undisclosed Iceberg Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, undisclosed_iceberg_type = euronext_optiq_sbe_v4_10.undisclosed_iceberg_type.dissect(buffer, index, packet, parent)

  -- Stop Triggered Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, stop_triggered_time_in_force = euronext_optiq_sbe_v4_10.stop_triggered_time_in_force.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Group
euronext_optiq_sbe_v4_10.optional_fields_group.dissect = function(buffer, offset, packet, parent, optional_fields_group_index)
  if show.optional_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.optional_fields_group.fields(buffer, offset, packet, parent, optional_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.optional_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.optional_fields_group.fields(buffer, offset, packet, parent, optional_fields_group_index)
  end
end

-- Optional Fields Groups
euronext_optiq_sbe_v4_10.optional_fields_groups = {}

-- Calculate size of: Optional Fields Groups
euronext_optiq_sbe_v4_10.optional_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local optional_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_group_count * 50

  return index
end

-- Display: Optional Fields Groups
euronext_optiq_sbe_v4_10.optional_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Fields Groups
euronext_optiq_sbe_v4_10.optional_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Optional Fields Group
  for optional_fields_group_index = 1, num_in_group do
    index, optional_fields_group = euronext_optiq_sbe_v4_10.optional_fields_group.dissect(buffer, index, packet, parent, optional_fields_group_index)
  end

  return index
end

-- Dissect: Optional Fields Groups
euronext_optiq_sbe_v4_10.optional_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_groups then
    local length = euronext_optiq_sbe_v4_10.optional_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.optional_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.optional_fields_groups.fields(buffer, offset, packet, parent)
end

-- Stpid
euronext_optiq_sbe_v4_10.stpid = {}

-- Size: Stpid
euronext_optiq_sbe_v4_10.stpid.size = 2

-- Display: Stpid
euronext_optiq_sbe_v4_10.stpid.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stpid: No Value"
  end

  return "Stpid: "..value
end

-- Dissect: Stpid
euronext_optiq_sbe_v4_10.stpid.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.stpid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.stpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.stpid, range, value, display)

  return offset + length, value
end

-- Execution Instruction
euronext_optiq_sbe_v4_10.execution_instruction = {}

-- Size: Execution Instruction
euronext_optiq_sbe_v4_10.execution_instruction.size = 1

-- Display: Execution Instruction
euronext_optiq_sbe_v4_10.execution_instruction.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.execution_instruction.bits = function(buffer, offset, packet, parent)

  -- Reserved 1: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.reserved_1, buffer(offset, 1))

  -- Conditional Order: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.conditional_order, buffer(offset, 1))

  -- Rfq Confirmation: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_confirmation, buffer(offset, 1))

  -- Rfq Answer: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.rfq_answer, buffer(offset, 1))

  -- Disabled Cancel On Disconnect Indicator: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.disabled_cancel_on_disconnect_indicator, buffer(offset, 1))

  -- Disclosed Quantity Randomization: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.disclosed_quantity_randomization, buffer(offset, 1))

  -- Stp Incoming Order: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.stp_incoming_order, buffer(offset, 1))

  -- Stp Resting Order: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.stp_resting_order, buffer(offset, 1))
end

-- Dissect: Execution Instruction
euronext_optiq_sbe_v4_10.execution_instruction.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.execution_instruction.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_instruction, range, display)

  if show.execution_instruction then
    euronext_optiq_sbe_v4_10.execution_instruction.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Time In Force
euronext_optiq_sbe_v4_10.time_in_force = {}

-- Size: Time In Force
euronext_optiq_sbe_v4_10.time_in_force.size = 1

-- Display: Time In Force
euronext_optiq_sbe_v4_10.time_in_force.display = function(value)
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
euronext_optiq_sbe_v4_10.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Order Px Optional
euronext_optiq_sbe_v4_10.order_px_optional = {}

-- Size: Order Px Optional
euronext_optiq_sbe_v4_10.order_px_optional.size = 8

-- Display: Order Px Optional
euronext_optiq_sbe_v4_10.order_px_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Px Optional: No Value"
  end

  return "Order Px Optional: "..value
end

-- Dissect: Order Px Optional
euronext_optiq_sbe_v4_10.order_px_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_px_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.order_px_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_px_optional, range, value, display)

  return offset + length, value
end

-- Cancel Replace Message
euronext_optiq_sbe_v4_10.cancel_replace_message = {}

-- Calculate size of: Cancel Replace Message
euronext_optiq_sbe_v4_10.cancel_replace_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.client_identification_shortcode.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.orig_client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.order_px_optional.size

  index = index + euronext_optiq_sbe_v4_10.order_qty.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.side.size

  index = index + euronext_optiq_sbe_v4_10.order_type.size

  index = index + euronext_optiq_sbe_v4_10.time_in_force.size

  index = index + euronext_optiq_sbe_v4_10.account_type_optional.size

  index = index + euronext_optiq_sbe_v4_10.lp_role_optional.size

  index = index + euronext_optiq_sbe_v4_10.execution_instruction.size

  index = index + euronext_optiq_sbe_v4_10.dark_execution_instruction.size

  index = index + euronext_optiq_sbe_v4_10.mifid_indicators.size

  index = index + euronext_optiq_sbe_v4_10.stpid.size

  index = index + euronext_optiq_sbe_v4_10.free_text_section_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.optional_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.clearing_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.not_used_group_2_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.additional_infos_groups.size(buffer, offset + index)

  return index
end

-- Display: Cancel Replace Message
euronext_optiq_sbe_v4_10.cancel_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Replace Message
euronext_optiq_sbe_v4_10.cancel_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: 4 Byte Signed Fixed Width Integer Nullable
  index, client_identification_shortcode = euronext_optiq_sbe_v4_10.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_sbe_v4_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_sbe_v4_10.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px_optional = euronext_optiq_sbe_v4_10.order_px_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_sbe_v4_10.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = euronext_optiq_sbe_v4_10.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, time_in_force = euronext_optiq_sbe_v4_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Account Type Optional: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, account_type_optional = euronext_optiq_sbe_v4_10.account_type_optional.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lp_role_optional = euronext_optiq_sbe_v4_10.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 8 fields
  index, execution_instruction = euronext_optiq_sbe_v4_10.execution_instruction.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_sbe_v4_10.dark_execution_instruction.dissect(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_sbe_v4_10.mifid_indicators.dissect(buffer, index, packet, parent)

  -- Stpid: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stpid = euronext_optiq_sbe_v4_10.stpid.dissect(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = euronext_optiq_sbe_v4_10.free_text_section_groups.dissect(buffer, index, packet, parent)

  -- Optional Fields Groups: Struct of 2 fields
  index, optional_fields_groups = euronext_optiq_sbe_v4_10.optional_fields_groups.dissect(buffer, index, packet, parent)

  -- Clearing Fields Groups: Struct of 2 fields
  index, clearing_fields_groups = euronext_optiq_sbe_v4_10.clearing_fields_groups.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_sbe_v4_10.not_used_group_2_groups.dissect(buffer, index, packet, parent)

  -- Additional Infos Groups: Struct of 2 fields
  index, additional_infos_groups = euronext_optiq_sbe_v4_10.additional_infos_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Replace Message
euronext_optiq_sbe_v4_10.cancel_replace_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cancel_replace_message then
    local length = euronext_optiq_sbe_v4_10.cancel_replace_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.cancel_replace_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.cancel_replace_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.cancel_replace_message.fields(buffer, offset, packet, parent)
end

-- Kill Reason
euronext_optiq_sbe_v4_10.kill_reason = {}

-- Size: Kill Reason
euronext_optiq_sbe_v4_10.kill_reason.size = 2

-- Display: Kill Reason
euronext_optiq_sbe_v4_10.kill_reason.display = function(value)
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
euronext_optiq_sbe_v4_10.kill_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.kill_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.kill_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.kill_reason, range, value, display)

  return offset + length, value
end

-- Kill Message
euronext_optiq_sbe_v4_10.kill_message = {}

-- Calculate size of: Kill Message
euronext_optiq_sbe_v4_10.kill_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_member.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size

  index = index + euronext_optiq_sbe_v4_10.book_in.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.orig_client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.order_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.kill_reason.size

  index = index + euronext_optiq_sbe_v4_10.ack_qualifiers_optional.size

  index = index + euronext_optiq_sbe_v4_10.mifid_fields_groups.size(buffer, offset + index)

  return index
end

-- Display: Kill Message
euronext_optiq_sbe_v4_10.kill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Kill Message
euronext_optiq_sbe_v4_10.kill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_sbe_v4_10.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_sbe_v4_10.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = euronext_optiq_sbe_v4_10.order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Kill Reason: 2 Byte Unsigned Fixed Width Integer Enum with 28 values
  index, kill_reason = euronext_optiq_sbe_v4_10.kill_reason.dissect(buffer, index, packet, parent)

  -- Ack Qualifiers Optional: Struct of 8 fields
  index, ack_qualifiers_optional = euronext_optiq_sbe_v4_10.ack_qualifiers_optional.dissect(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_sbe_v4_10.mifid_fields_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Kill Message
euronext_optiq_sbe_v4_10.kill_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.kill_message then
    local length = euronext_optiq_sbe_v4_10.kill_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.kill_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.kill_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.kill_message.fields(buffer, offset, packet, parent)
end

-- Final Execution Id
euronext_optiq_sbe_v4_10.final_execution_id = {}

-- Size: Final Execution Id
euronext_optiq_sbe_v4_10.final_execution_id.size = 4

-- Display: Final Execution Id
euronext_optiq_sbe_v4_10.final_execution_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Final Execution Id: No Value"
  end

  return "Final Execution Id: "..value
end

-- Dissect: Final Execution Id
euronext_optiq_sbe_v4_10.final_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.final_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.final_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.final_execution_id, range, value, display)

  return offset + length, value
end

-- Final Symbol Index
euronext_optiq_sbe_v4_10.final_symbol_index = {}

-- Size: Final Symbol Index
euronext_optiq_sbe_v4_10.final_symbol_index.size = 4

-- Display: Final Symbol Index
euronext_optiq_sbe_v4_10.final_symbol_index.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Final Symbol Index: No Value"
  end

  return "Final Symbol Index: "..value
end

-- Dissect: Final Symbol Index
euronext_optiq_sbe_v4_10.final_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.final_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.final_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.final_symbol_index, range, value, display)

  return offset + length, value
end

-- Evaluated Price
euronext_optiq_sbe_v4_10.evaluated_price = {}

-- Size: Evaluated Price
euronext_optiq_sbe_v4_10.evaluated_price.size = 8

-- Display: Evaluated Price
euronext_optiq_sbe_v4_10.evaluated_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Evaluated Price: No Value"
  end

  return "Evaluated Price: "..value
end

-- Dissect: Evaluated Price
euronext_optiq_sbe_v4_10.evaluated_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.evaluated_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.evaluated_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.evaluated_price, range, value, display)

  return offset + length, value
end

-- Optional Fields Derivatives Group
euronext_optiq_sbe_v4_10.optional_fields_derivatives_group = {}

-- Size: Optional Fields Derivatives Group
euronext_optiq_sbe_v4_10.optional_fields_derivatives_group.size =
  euronext_optiq_sbe_v4_10.evaluated_price.size + 
  euronext_optiq_sbe_v4_10.message_price_notation.size + 
  euronext_optiq_sbe_v4_10.final_symbol_index.size + 
  euronext_optiq_sbe_v4_10.final_execution_id.size

-- Display: Optional Fields Derivatives Group
euronext_optiq_sbe_v4_10.optional_fields_derivatives_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Fields Derivatives Group
euronext_optiq_sbe_v4_10.optional_fields_derivatives_group.fields = function(buffer, offset, packet, parent, optional_fields_derivatives_group_index)
  local index = offset

  -- Implicit Optional Fields Derivatives Group Index
  if optional_fields_derivatives_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_derivatives_group_index, optional_fields_derivatives_group_index)
    iteration:set_generated()
  end

  -- Evaluated Price: 8 Byte Signed Fixed Width Integer Nullable
  index, evaluated_price = euronext_optiq_sbe_v4_10.evaluated_price.dissect(buffer, index, packet, parent)

  -- Message Price Notation: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, message_price_notation = euronext_optiq_sbe_v4_10.message_price_notation.dissect(buffer, index, packet, parent)

  -- Final Symbol Index: 4 Byte Unsigned Fixed Width Integer Nullable
  index, final_symbol_index = euronext_optiq_sbe_v4_10.final_symbol_index.dissect(buffer, index, packet, parent)

  -- Final Execution Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, final_execution_id = euronext_optiq_sbe_v4_10.final_execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Derivatives Group
euronext_optiq_sbe_v4_10.optional_fields_derivatives_group.dissect = function(buffer, offset, packet, parent, optional_fields_derivatives_group_index)
  if show.optional_fields_derivatives_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_derivatives_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.optional_fields_derivatives_group.fields(buffer, offset, packet, parent, optional_fields_derivatives_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.optional_fields_derivatives_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.optional_fields_derivatives_group.fields(buffer, offset, packet, parent, optional_fields_derivatives_group_index)
  end
end

-- Optional Fields Derivatives Groups
euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups = {}

-- Calculate size of: Optional Fields Derivatives Groups
euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local optional_fields_derivatives_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_derivatives_group_count * 17

  return index
end

-- Display: Optional Fields Derivatives Groups
euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Fields Derivatives Groups
euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Optional Fields Derivatives Group
  for optional_fields_derivatives_group_index = 1, num_in_group do
    index, optional_fields_derivatives_group = euronext_optiq_sbe_v4_10.optional_fields_derivatives_group.dissect(buffer, index, packet, parent, optional_fields_derivatives_group_index)
  end

  return index
end

-- Dissect: Optional Fields Derivatives Groups
euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_derivatives_groups then
    local length = euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_derivatives_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.fields(buffer, offset, packet, parent)
end

-- Underlying Instrument Id
euronext_optiq_sbe_v4_10.underlying_instrument_id = {}

-- Size: Underlying Instrument Id
euronext_optiq_sbe_v4_10.underlying_instrument_id.size = 4

-- Display: Underlying Instrument Id
euronext_optiq_sbe_v4_10.underlying_instrument_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Instrument Id: No Value"
  end

  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
euronext_optiq_sbe_v4_10.underlying_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.underlying_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.underlying_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Package Id
euronext_optiq_sbe_v4_10.package_id = {}

-- Size: Package Id
euronext_optiq_sbe_v4_10.package_id.size = 12

-- Display: Package Id
euronext_optiq_sbe_v4_10.package_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Package Id: No Value"
  end

  return "Package Id: "..value
end

-- Dissect: Package Id
euronext_optiq_sbe_v4_10.package_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.package_id.size
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

  local display = euronext_optiq_sbe_v4_10.package_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.package_id, range, value, display)

  return offset + length, value
end

-- Other Leg Last Px
euronext_optiq_sbe_v4_10.other_leg_last_px = {}

-- Size: Other Leg Last Px
euronext_optiq_sbe_v4_10.other_leg_last_px.size = 8

-- Display: Other Leg Last Px
euronext_optiq_sbe_v4_10.other_leg_last_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Other Leg Last Px: No Value"
  end

  return "Other Leg Last Px: "..value
end

-- Dissect: Other Leg Last Px
euronext_optiq_sbe_v4_10.other_leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.other_leg_last_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_sbe_v4_10.other_leg_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.other_leg_last_px, range, value, display)

  return offset + length, value
end

-- Optional Fields Fill Group
euronext_optiq_sbe_v4_10.optional_fields_fill_group = {}

-- Size: Optional Fields Fill Group
euronext_optiq_sbe_v4_10.optional_fields_fill_group.size =
  euronext_optiq_sbe_v4_10.counterpart_firm_id.size + 
  euronext_optiq_sbe_v4_10.other_leg_last_px.size + 
  euronext_optiq_sbe_v4_10.package_id.size + 
  euronext_optiq_sbe_v4_10.underlying_instrument_id.size

-- Display: Optional Fields Fill Group
euronext_optiq_sbe_v4_10.optional_fields_fill_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Fields Fill Group
euronext_optiq_sbe_v4_10.optional_fields_fill_group.fields = function(buffer, offset, packet, parent, optional_fields_fill_group_index)
  local index = offset

  -- Implicit Optional Fields Fill Group Index
  if optional_fields_fill_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_fill_group_index, optional_fields_fill_group_index)
    iteration:set_generated()
  end

  -- Counterpart Firm Id: 8 Byte Ascii String Nullable
  index, counterpart_firm_id = euronext_optiq_sbe_v4_10.counterpart_firm_id.dissect(buffer, index, packet, parent)

  -- Other Leg Last Px: 8 Byte Signed Fixed Width Integer Nullable
  index, other_leg_last_px = euronext_optiq_sbe_v4_10.other_leg_last_px.dissect(buffer, index, packet, parent)

  -- Package Id: 12 Byte Ascii String Nullable
  index, package_id = euronext_optiq_sbe_v4_10.package_id.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, underlying_instrument_id = euronext_optiq_sbe_v4_10.underlying_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Fields Fill Group
euronext_optiq_sbe_v4_10.optional_fields_fill_group.dissect = function(buffer, offset, packet, parent, optional_fields_fill_group_index)
  if show.optional_fields_fill_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_fill_group, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.optional_fields_fill_group.fields(buffer, offset, packet, parent, optional_fields_fill_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.optional_fields_fill_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.optional_fields_fill_group.fields(buffer, offset, packet, parent, optional_fields_fill_group_index)
  end
end

-- Optional Fields Fill Groups
euronext_optiq_sbe_v4_10.optional_fields_fill_groups = {}

-- Calculate size of: Optional Fields Fill Groups
euronext_optiq_sbe_v4_10.optional_fields_fill_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.group_size_encoding.size

  -- Calculate field size from count
  local optional_fields_fill_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + optional_fields_fill_group_count * 32

  return index
end

-- Display: Optional Fields Fill Groups
euronext_optiq_sbe_v4_10.optional_fields_fill_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Fields Fill Groups
euronext_optiq_sbe_v4_10.optional_fields_fill_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_sbe_v4_10.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Optional Fields Fill Group
  for optional_fields_fill_group_index = 1, num_in_group do
    index, optional_fields_fill_group = euronext_optiq_sbe_v4_10.optional_fields_fill_group.dissect(buffer, index, packet, parent, optional_fields_fill_group_index)
  end

  return index
end

-- Dissect: Optional Fields Fill Groups
euronext_optiq_sbe_v4_10.optional_fields_fill_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.optional_fields_fill_groups then
    local length = euronext_optiq_sbe_v4_10.optional_fields_fill_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.optional_fields_fill_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.optional_fields_fill_groups, range, display)
  end

  return euronext_optiq_sbe_v4_10.optional_fields_fill_groups.fields(buffer, offset, packet, parent)
end

-- Execution Phase
euronext_optiq_sbe_v4_10.execution_phase = {}

-- Size: Execution Phase
euronext_optiq_sbe_v4_10.execution_phase.size = 1

-- Display: Execution Phase
euronext_optiq_sbe_v4_10.execution_phase.display = function(value)
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
euronext_optiq_sbe_v4_10.execution_phase.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.execution_phase.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.execution_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.execution_phase, range, value, display)

  return offset + length, value
end

-- Leaves Qty
euronext_optiq_sbe_v4_10.leaves_qty = {}

-- Size: Leaves Qty
euronext_optiq_sbe_v4_10.leaves_qty.size = 8

-- Display: Leaves Qty
euronext_optiq_sbe_v4_10.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
euronext_optiq_sbe_v4_10.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Trade Qualifier
euronext_optiq_sbe_v4_10.trade_qualifier = {}

-- Size: Trade Qualifier
euronext_optiq_sbe_v4_10.trade_qualifier.size = 1

-- Display: Trade Qualifier
euronext_optiq_sbe_v4_10.trade_qualifier.display = function(buffer, packet, parent)
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
euronext_optiq_sbe_v4_10.trade_qualifier.bits = function(buffer, offset, packet, parent)

  -- Deferred Publication: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.deferred_publication, buffer(offset, 1))

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.nav_trade_expressed_in_price_currency, buffer(offset, 1))

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.nav_trade_expressed_in_bps, buffer(offset, 1))

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.trade_creation_by_market_operations, buffer(offset, 1))

  -- Aggressive Order: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.aggressive_order, buffer(offset, 1))

  -- Passive Order: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.passive_order, buffer(offset, 1))

  -- First Trade Price: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.first_trade_price, buffer(offset, 1))

  -- Uncrossing Trade: 1 Bit
  parent:add(omi_euronext_optiq_sbe_v4_10.fields.uncrossing_trade, buffer(offset, 1))
end

-- Dissect: Trade Qualifier
euronext_optiq_sbe_v4_10.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.trade_qualifier.display(range, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.trade_qualifier, range, display)

  if show.trade_qualifier then
    euronext_optiq_sbe_v4_10.trade_qualifier.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Trade Type
euronext_optiq_sbe_v4_10.trade_type = {}

-- Size: Trade Type
euronext_optiq_sbe_v4_10.trade_type.size = 1

-- Display: Trade Type
euronext_optiq_sbe_v4_10.trade_type.display = function(value)
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
euronext_optiq_sbe_v4_10.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trade Time
euronext_optiq_sbe_v4_10.trade_time = {}

-- Size: Trade Time
euronext_optiq_sbe_v4_10.trade_time.size = 8

-- Display: Trade Time
euronext_optiq_sbe_v4_10.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
euronext_optiq_sbe_v4_10.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Fill Message
euronext_optiq_sbe_v4_10.fill_message = {}

-- Calculate size of: Fill Message
euronext_optiq_sbe_v4_10.fill_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.trade_time.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.side.size

  index = index + euronext_optiq_sbe_v4_10.trade_type.size

  index = index + euronext_optiq_sbe_v4_10.trade_qualifier.size

  index = index + euronext_optiq_sbe_v4_10.order_id.size

  index = index + euronext_optiq_sbe_v4_10.last_traded_px.size

  index = index + euronext_optiq_sbe_v4_10.last_shares.size

  index = index + euronext_optiq_sbe_v4_10.leaves_qty.size

  index = index + euronext_optiq_sbe_v4_10.execution_id.size

  index = index + euronext_optiq_sbe_v4_10.execution_phase.size

  index = index + euronext_optiq_sbe_v4_10.lis_transaction_id.size

  index = index + euronext_optiq_sbe_v4_10.escb_membership.size

  index = index + euronext_optiq_sbe_v4_10.optional_fields_fill_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.strategy_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.mifid_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.size(buffer, offset + index)

  return index
end

-- Display: Fill Message
euronext_optiq_sbe_v4_10.fill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fill Message
euronext_optiq_sbe_v4_10.fill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Trade Time: 8 Byte Unsigned Fixed Width Integer
  index, trade_time = euronext_optiq_sbe_v4_10.trade_time.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_sbe_v4_10.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Unsigned Fixed Width Integer Enum with 47 values
  index, trade_type = euronext_optiq_sbe_v4_10.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: Struct of 8 fields
  index, trade_qualifier = euronext_optiq_sbe_v4_10.trade_qualifier.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = euronext_optiq_sbe_v4_10.order_id.dissect(buffer, index, packet, parent)

  -- Last Traded Px: 8 Byte Signed Fixed Width Integer
  index, last_traded_px = euronext_optiq_sbe_v4_10.last_traded_px.dissect(buffer, index, packet, parent)

  -- Last Shares: 8 Byte Unsigned Fixed Width Integer
  index, last_shares = euronext_optiq_sbe_v4_10.last_shares.dissect(buffer, index, packet, parent)

  -- Leaves Qty: 8 Byte Unsigned Fixed Width Integer
  index, leaves_qty = euronext_optiq_sbe_v4_10.leaves_qty.dissect(buffer, index, packet, parent)

  -- Execution Id: 4 Byte Unsigned Fixed Width Integer
  index, execution_id = euronext_optiq_sbe_v4_10.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Phase: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, execution_phase = euronext_optiq_sbe_v4_10.execution_phase.dissect(buffer, index, packet, parent)

  -- Lis Transaction Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, lis_transaction_id = euronext_optiq_sbe_v4_10.lis_transaction_id.dissect(buffer, index, packet, parent)

  -- Escb Membership: 1 Byte Unsigned Fixed Width Integer Nullable
  index, escb_membership = euronext_optiq_sbe_v4_10.escb_membership.dissect(buffer, index, packet, parent)

  -- Optional Fields Fill Groups: Struct of 2 fields
  index, optional_fields_fill_groups = euronext_optiq_sbe_v4_10.optional_fields_fill_groups.dissect(buffer, index, packet, parent)

  -- Strategy Fields Groups: Struct of 2 fields
  index, strategy_fields_groups = euronext_optiq_sbe_v4_10.strategy_fields_groups.dissect(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_sbe_v4_10.mifid_fields_groups.dissect(buffer, index, packet, parent)

  -- Optional Fields Derivatives Groups: Struct of 2 fields
  index, optional_fields_derivatives_groups = euronext_optiq_sbe_v4_10.optional_fields_derivatives_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fill Message
euronext_optiq_sbe_v4_10.fill_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.fill_message then
    local length = euronext_optiq_sbe_v4_10.fill_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.fill_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.fill_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.fill_message.fields(buffer, offset, packet, parent)
end

-- Order Qty Optional
euronext_optiq_sbe_v4_10.order_qty_optional = {}

-- Size: Order Qty Optional
euronext_optiq_sbe_v4_10.order_qty_optional.size = 8

-- Display: Order Qty Optional
euronext_optiq_sbe_v4_10.order_qty_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Qty Optional: No Value"
  end

  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
euronext_optiq_sbe_v4_10.order_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.order_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- Order Priority
euronext_optiq_sbe_v4_10.order_priority = {}

-- Size: Order Priority
euronext_optiq_sbe_v4_10.order_priority.size = 8

-- Display: Order Priority
euronext_optiq_sbe_v4_10.order_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Priority: No Value"
  end

  return "Order Priority: "..value
end

-- Dissect: Order Priority
euronext_optiq_sbe_v4_10.order_priority.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.order_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_sbe_v4_10.order_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.order_priority, range, value, display)

  return offset + length, value
end

-- Ack Phase
euronext_optiq_sbe_v4_10.ack_phase = {}

-- Size: Ack Phase
euronext_optiq_sbe_v4_10.ack_phase.size = 1

-- Display: Ack Phase
euronext_optiq_sbe_v4_10.ack_phase.display = function(value)
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
euronext_optiq_sbe_v4_10.ack_phase.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ack_phase.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.ack_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ack_phase, range, value, display)

  return offset + length, value
end

-- Ack Type
euronext_optiq_sbe_v4_10.ack_type = {}

-- Size: Ack Type
euronext_optiq_sbe_v4_10.ack_type.size = 1

-- Display: Ack Type
euronext_optiq_sbe_v4_10.ack_type.display = function(value)
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
euronext_optiq_sbe_v4_10.ack_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Ack Message
euronext_optiq_sbe_v4_10.ack_message = {}

-- Calculate size of: Ack Message
euronext_optiq_sbe_v4_10.ack_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_member.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_time_to_me.size

  index = index + euronext_optiq_sbe_v4_10.book_in.size

  index = index + euronext_optiq_sbe_v4_10.book_out_time_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.size

  index = index + euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.orig_client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.side_optional.size

  index = index + euronext_optiq_sbe_v4_10.ack_type.size

  index = index + euronext_optiq_sbe_v4_10.ack_phase.size

  index = index + euronext_optiq_sbe_v4_10.order_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.order_priority.size

  index = index + euronext_optiq_sbe_v4_10.order_px_optional.size

  index = index + euronext_optiq_sbe_v4_10.order_qty_optional.size

  index = index + euronext_optiq_sbe_v4_10.ack_qualifiers.size

  index = index + euronext_optiq_sbe_v4_10.mifid_fields_groups.size(buffer, offset + index)

  return index
end

-- Display: Ack Message
euronext_optiq_sbe_v4_10.ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ack Message
euronext_optiq_sbe_v4_10.ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, msg_seq_num = euronext_optiq_sbe_v4_10.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, sending_time_optional = euronext_optiq_sbe_v4_10.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_member = euronext_optiq_sbe_v4_10.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_time_to_me = euronext_optiq_sbe_v4_10.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: 8 Byte Unsigned Fixed Width Integer
  index, book_in = euronext_optiq_sbe_v4_10.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, book_out_time_optional = euronext_optiq_sbe_v4_10.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_in_from_me_optional = euronext_optiq_sbe_v4_10.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, oeg_out_to_member_optional = euronext_optiq_sbe_v4_10.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, client_order_id_optional = euronext_optiq_sbe_v4_10.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: 8 Byte Signed Fixed Width Integer Nullable
  index, orig_client_order_id = euronext_optiq_sbe_v4_10.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side Optional: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side_optional = euronext_optiq_sbe_v4_10.side_optional.dissect(buffer, index, packet, parent)

  -- Ack Type: 1 Byte Unsigned Fixed Width Integer Enum with 20 values
  index, ack_type = euronext_optiq_sbe_v4_10.ack_type.dissect(buffer, index, packet, parent)

  -- Ack Phase: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, ack_phase = euronext_optiq_sbe_v4_10.ack_phase.dissect(buffer, index, packet, parent)

  -- Order Id Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_id_optional = euronext_optiq_sbe_v4_10.order_id_optional.dissect(buffer, index, packet, parent)

  -- Order Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_priority = euronext_optiq_sbe_v4_10.order_priority.dissect(buffer, index, packet, parent)

  -- Order Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px_optional = euronext_optiq_sbe_v4_10.order_px_optional.dissect(buffer, index, packet, parent)

  -- Order Qty Optional: 8 Byte Unsigned Fixed Width Integer Nullable
  index, order_qty_optional = euronext_optiq_sbe_v4_10.order_qty_optional.dissect(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = euronext_optiq_sbe_v4_10.ack_qualifiers.dissect(buffer, index, packet, parent)

  -- Mifid Fields Groups: Struct of 2 fields
  index, mifid_fields_groups = euronext_optiq_sbe_v4_10.mifid_fields_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ack Message
euronext_optiq_sbe_v4_10.ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.ack_message then
    local length = euronext_optiq_sbe_v4_10.ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.ack_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.ack_message.fields(buffer, offset, packet, parent)
end

-- New Order Message
euronext_optiq_sbe_v4_10.new_order_message = {}

-- Calculate size of: New Order Message
euronext_optiq_sbe_v4_10.new_order_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.cl_msg_seq_num.size

  index = index + euronext_optiq_sbe_v4_10.firm_id.size

  index = index + euronext_optiq_sbe_v4_10.sending_time.size

  index = index + euronext_optiq_sbe_v4_10.client_order_id.size

  index = index + euronext_optiq_sbe_v4_10.symbol_index.size

  index = index + euronext_optiq_sbe_v4_10.emm.size

  index = index + euronext_optiq_sbe_v4_10.side.size

  index = index + euronext_optiq_sbe_v4_10.order_type.size

  index = index + euronext_optiq_sbe_v4_10.time_in_force.size

  index = index + euronext_optiq_sbe_v4_10.order_px_optional.size

  index = index + euronext_optiq_sbe_v4_10.order_qty.size

  index = index + euronext_optiq_sbe_v4_10.execution_within_firm_short_code.size

  index = index + euronext_optiq_sbe_v4_10.trading_capacity.size

  index = index + euronext_optiq_sbe_v4_10.account_type.size

  index = index + euronext_optiq_sbe_v4_10.lp_role_optional.size

  index = index + euronext_optiq_sbe_v4_10.execution_instruction.size

  index = index + euronext_optiq_sbe_v4_10.dark_execution_instruction.size

  index = index + euronext_optiq_sbe_v4_10.mifid_indicators.size

  index = index + euronext_optiq_sbe_v4_10.stpid.size

  index = index + euronext_optiq_sbe_v4_10.non_executing_client_id.size

  index = index + euronext_optiq_sbe_v4_10.ioi_id_optional.size

  index = index + euronext_optiq_sbe_v4_10.free_text_section_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.mifid_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.optional_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.clearing_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.not_used_group_1_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.not_used_group_2_groups.size(buffer, offset + index)

  index = index + euronext_optiq_sbe_v4_10.additional_infos_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Message
euronext_optiq_sbe_v4_10.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
euronext_optiq_sbe_v4_10.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, cl_msg_seq_num = euronext_optiq_sbe_v4_10.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: 8 Byte Ascii String
  index, firm_id = euronext_optiq_sbe_v4_10.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: 8 Byte Unsigned Fixed Width Integer
  index, sending_time = euronext_optiq_sbe_v4_10.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: 8 Byte Signed Fixed Width Integer
  index, client_order_id = euronext_optiq_sbe_v4_10.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = euronext_optiq_sbe_v4_10.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, emm = euronext_optiq_sbe_v4_10.emm.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, side = euronext_optiq_sbe_v4_10.side.dissect(buffer, index, packet, parent)

  -- Order Type: 1 Byte Unsigned Fixed Width Integer Enum with 10 values
  index, order_type = euronext_optiq_sbe_v4_10.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, time_in_force = euronext_optiq_sbe_v4_10.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Px Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, order_px_optional = euronext_optiq_sbe_v4_10.order_px_optional.dissect(buffer, index, packet, parent)

  -- Order Qty: 8 Byte Unsigned Fixed Width Integer
  index, order_qty = euronext_optiq_sbe_v4_10.order_qty.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: 4 Byte Signed Fixed Width Integer
  index, execution_within_firm_short_code = euronext_optiq_sbe_v4_10.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Trading Capacity: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, trading_capacity = euronext_optiq_sbe_v4_10.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, account_type = euronext_optiq_sbe_v4_10.account_type.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, lp_role_optional = euronext_optiq_sbe_v4_10.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 8 fields
  index, execution_instruction = euronext_optiq_sbe_v4_10.execution_instruction.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_sbe_v4_10.dark_execution_instruction.dissect(buffer, index, packet, parent)

  -- Mifid Indicators: Struct of 7 fields
  index, mifid_indicators = euronext_optiq_sbe_v4_10.mifid_indicators.dissect(buffer, index, packet, parent)

  -- Stpid: 2 Byte Unsigned Fixed Width Integer Nullable
  index, stpid = euronext_optiq_sbe_v4_10.stpid.dissect(buffer, index, packet, parent)

  -- Non Executing Client Id: 2 Byte Unsigned Fixed Width Integer Nullable
  index, non_executing_client_id = euronext_optiq_sbe_v4_10.non_executing_client_id.dissect(buffer, index, packet, parent)

  -- Ioi Id Optional: 8 Byte Signed Fixed Width Integer Nullable
  index, ioi_id_optional = euronext_optiq_sbe_v4_10.ioi_id_optional.dissect(buffer, index, packet, parent)

  -- Free Text Section Groups: Struct of 2 fields
  index, free_text_section_groups = euronext_optiq_sbe_v4_10.free_text_section_groups.dissect(buffer, index, packet, parent)

  -- Mifid Short Codes Groups: Struct of 2 fields
  index, mifid_short_codes_groups = euronext_optiq_sbe_v4_10.mifid_short_codes_groups.dissect(buffer, index, packet, parent)

  -- Optional Fields Groups: Struct of 2 fields
  index, optional_fields_groups = euronext_optiq_sbe_v4_10.optional_fields_groups.dissect(buffer, index, packet, parent)

  -- Clearing Fields Groups: Struct of 2 fields
  index, clearing_fields_groups = euronext_optiq_sbe_v4_10.clearing_fields_groups.dissect(buffer, index, packet, parent)

  -- Not Used Group 1 Groups: Struct of 2 fields
  index, not_used_group_1_groups = euronext_optiq_sbe_v4_10.not_used_group_1_groups.dissect(buffer, index, packet, parent)

  -- Not Used Group 2 Groups: Struct of 2 fields
  index, not_used_group_2_groups = euronext_optiq_sbe_v4_10.not_used_group_2_groups.dissect(buffer, index, packet, parent)

  -- Additional Infos Groups: Struct of 2 fields
  index, additional_infos_groups = euronext_optiq_sbe_v4_10.additional_infos_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
euronext_optiq_sbe_v4_10.new_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_message then
    local length = euronext_optiq_sbe_v4_10.new_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.new_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.new_order_message, range, display)
  end

  return euronext_optiq_sbe_v4_10.new_order_message.fields(buffer, offset, packet, parent)
end

-- Payload
euronext_optiq_sbe_v4_10.payload = {}

-- Size: Payload
euronext_optiq_sbe_v4_10.payload.size = function(buffer, offset, template_id)
  -- Size of New Order Message
  if template_id == 1 then
    return euronext_optiq_sbe_v4_10.new_order_message.size(buffer, offset)
  end
  -- Size of Ack Message
  if template_id == 3 then
    return euronext_optiq_sbe_v4_10.ack_message.size(buffer, offset)
  end
  -- Size of Fill Message
  if template_id == 4 then
    return euronext_optiq_sbe_v4_10.fill_message.size(buffer, offset)
  end
  -- Size of Kill Message
  if template_id == 5 then
    return euronext_optiq_sbe_v4_10.kill_message.size(buffer, offset)
  end
  -- Size of Cancel Replace Message
  if template_id == 6 then
    return euronext_optiq_sbe_v4_10.cancel_replace_message.size(buffer, offset)
  end
  -- Size of Reject Message
  if template_id == 7 then
    return euronext_optiq_sbe_v4_10.reject_message.size(buffer, offset)
  end
  -- Size of Quotes Message
  if template_id == 8 then
    return euronext_optiq_sbe_v4_10.quotes_message.size(buffer, offset)
  end
  -- Size of Quote Ack Message
  if template_id == 9 then
    return euronext_optiq_sbe_v4_10.quote_ack_message.size(buffer, offset)
  end
  -- Size of Quote Request Message
  if template_id == 10 then
    return euronext_optiq_sbe_v4_10.quote_request_message.size
  end
  -- Size of Cancel Request Message
  if template_id == 12 then
    return euronext_optiq_sbe_v4_10.cancel_request_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Message
  if template_id == 13 then
    return euronext_optiq_sbe_v4_10.mass_cancel_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Ack Message
  if template_id == 14 then
    return euronext_optiq_sbe_v4_10.mass_cancel_ack_message.size(buffer, offset)
  end
  -- Size of Open Order Request Message
  if template_id == 15 then
    return euronext_optiq_sbe_v4_10.open_order_request_message.size
  end
  -- Size of Ownership Request Ack Message
  if template_id == 17 then
    return euronext_optiq_sbe_v4_10.ownership_request_ack_message.size
  end
  -- Size of Ownership Request Message
  if template_id == 18 then
    return euronext_optiq_sbe_v4_10.ownership_request_message.size
  end
  -- Size of Trade Bust Notification Message
  if template_id == 19 then
    return euronext_optiq_sbe_v4_10.trade_bust_notification_message.size
  end
  -- Size of Collar Breach Confirmation Message
  if template_id == 20 then
    return euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.size
  end
  -- Size of Price Input Message
  if template_id == 28 then
    return euronext_optiq_sbe_v4_10.price_input_message.size
  end
  -- Size of Liquidity Provider Command Message
  if template_id == 32 then
    return euronext_optiq_sbe_v4_10.liquidity_provider_command_message.size
  end
  -- Size of Ask For Quote Message
  if template_id == 33 then
    return euronext_optiq_sbe_v4_10.ask_for_quote_message.size
  end
  -- Size of Request For Execution Message
  if template_id == 34 then
    return euronext_optiq_sbe_v4_10.request_for_execution_message.size
  end
  -- Size of Rfq Notification Message
  if template_id == 35 then
    return euronext_optiq_sbe_v4_10.rfq_notification_message.size
  end
  -- Size of Rfq Matching Status Message
  if template_id == 36 then
    return euronext_optiq_sbe_v4_10.rfq_matching_status_message.size
  end
  -- Size of Rfqlp Matching Status Message
  if template_id == 37 then
    return euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.size
  end
  -- Size of User Notification Message
  if template_id == 39 then
    return euronext_optiq_sbe_v4_10.user_notification_message.size(buffer, offset)
  end
  -- Size of Mm Sign In Message
  if template_id == 47 then
    return euronext_optiq_sbe_v4_10.mm_sign_in_message.size
  end
  -- Size of Mm Sign In Ack Message
  if template_id == 48 then
    return euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.size
  end
  -- Size of Instrument Synchronization List Message
  if template_id == 50 then
    return euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.size(buffer, offset)
  end
  -- Size of Synchronization Time Message
  if template_id == 51 then
    return euronext_optiq_sbe_v4_10.synchronization_time_message.size
  end
  -- Size of Security Definition Request Message
  if template_id == 60 then
    return euronext_optiq_sbe_v4_10.security_definition_request_message.size(buffer, offset)
  end
  -- Size of Security Definition Ack Message
  if template_id == 61 then
    return euronext_optiq_sbe_v4_10.security_definition_ack_message.size
  end
  -- Size of Mm Protection Request Message
  if template_id == 62 then
    return euronext_optiq_sbe_v4_10.mm_protection_request_message.size(buffer, offset)
  end
  -- Size of Mm Protection Ack Message
  if template_id == 63 then
    return euronext_optiq_sbe_v4_10.mm_protection_ack_message.size(buffer, offset)
  end
  -- Size of New Wholesale Order Message
  if template_id == 64 then
    return euronext_optiq_sbe_v4_10.new_wholesale_order_message.size(buffer, offset)
  end
  -- Size of Wholesale Order Ack Message
  if template_id == 65 then
    return euronext_optiq_sbe_v4_10.wholesale_order_ack_message.size(buffer, offset)
  end
  -- Size of Request For Implied Execution Message
  if template_id == 66 then
    return euronext_optiq_sbe_v4_10.request_for_implied_execution_message.size
  end
  -- Size of Cross Order Message
  if template_id == 67 then
    return euronext_optiq_sbe_v4_10.cross_order_message.size(buffer, offset)
  end
  -- Size of Rfq Audit Message
  if template_id == 72 then
    return euronext_optiq_sbe_v4_10.rfq_audit_message.size(buffer, offset)
  end
  -- Size of Wave For Liquidity Message
  if template_id == 73 then
    return euronext_optiq_sbe_v4_10.wave_for_liquidity_message.size
  end
  -- Size of Wave For Liquidity Notification Message
  if template_id == 74 then
    return euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.size
  end
  -- Size of Logon Message
  if template_id == 100 then
    return euronext_optiq_sbe_v4_10.logon_message.size
  end
  -- Size of Logon Ack Message
  if template_id == 101 then
    return euronext_optiq_sbe_v4_10.logon_ack_message.size
  end
  -- Size of Logon Reject Message
  if template_id == 102 then
    return euronext_optiq_sbe_v4_10.logon_reject_message.size
  end
  -- Size of Logout Message
  if template_id == 103 then
    return euronext_optiq_sbe_v4_10.logout_message.size
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
    return euronext_optiq_sbe_v4_10.technical_reject_message.size
  end
  -- Size of Declaration Entry Message
  if template_id == 40 then
    return euronext_optiq_sbe_v4_10.declaration_entry_message.size(buffer, offset)
  end
  -- Size of Declaration Entry Ack Message
  if template_id == 41 then
    return euronext_optiq_sbe_v4_10.declaration_entry_ack_message.size(buffer, offset)
  end
  -- Size of Declaration Notice Message
  if template_id == 42 then
    return euronext_optiq_sbe_v4_10.declaration_notice_message.size(buffer, offset)
  end
  -- Size of Declaration Cancel And Refusal Message
  if template_id == 43 then
    return euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.size
  end
  -- Size of Fund Price Input Message
  if template_id == 44 then
    return euronext_optiq_sbe_v4_10.fund_price_input_message.size
  end
  -- Size of Fund Price Input Ack Message
  if template_id == 45 then
    return euronext_optiq_sbe_v4_10.fund_price_input_ack_message.size
  end
  -- Size of Declaration Entry Reject Message
  if template_id == 46 then
    return euronext_optiq_sbe_v4_10.declaration_entry_reject_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
euronext_optiq_sbe_v4_10.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
euronext_optiq_sbe_v4_10.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Message
  if template_id == 1 then
    return euronext_optiq_sbe_v4_10.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ack Message
  if template_id == 3 then
    return euronext_optiq_sbe_v4_10.ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fill Message
  if template_id == 4 then
    return euronext_optiq_sbe_v4_10.fill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Kill Message
  if template_id == 5 then
    return euronext_optiq_sbe_v4_10.kill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Replace Message
  if template_id == 6 then
    return euronext_optiq_sbe_v4_10.cancel_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if template_id == 7 then
    return euronext_optiq_sbe_v4_10.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quotes Message
  if template_id == 8 then
    return euronext_optiq_sbe_v4_10.quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Ack Message
  if template_id == 9 then
    return euronext_optiq_sbe_v4_10.quote_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if template_id == 10 then
    return euronext_optiq_sbe_v4_10.quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Request Message
  if template_id == 12 then
    return euronext_optiq_sbe_v4_10.cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Message
  if template_id == 13 then
    return euronext_optiq_sbe_v4_10.mass_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Ack Message
  if template_id == 14 then
    return euronext_optiq_sbe_v4_10.mass_cancel_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Order Request Message
  if template_id == 15 then
    return euronext_optiq_sbe_v4_10.open_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ownership Request Ack Message
  if template_id == 17 then
    return euronext_optiq_sbe_v4_10.ownership_request_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ownership Request Message
  if template_id == 18 then
    return euronext_optiq_sbe_v4_10.ownership_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Notification Message
  if template_id == 19 then
    return euronext_optiq_sbe_v4_10.trade_bust_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Collar Breach Confirmation Message
  if template_id == 20 then
    return euronext_optiq_sbe_v4_10.collar_breach_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Input Message
  if template_id == 28 then
    return euronext_optiq_sbe_v4_10.price_input_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Provider Command Message
  if template_id == 32 then
    return euronext_optiq_sbe_v4_10.liquidity_provider_command_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask For Quote Message
  if template_id == 33 then
    return euronext_optiq_sbe_v4_10.ask_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Execution Message
  if template_id == 34 then
    return euronext_optiq_sbe_v4_10.request_for_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Notification Message
  if template_id == 35 then
    return euronext_optiq_sbe_v4_10.rfq_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Matching Status Message
  if template_id == 36 then
    return euronext_optiq_sbe_v4_10.rfq_matching_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfqlp Matching Status Message
  if template_id == 37 then
    return euronext_optiq_sbe_v4_10.rfqlp_matching_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Notification Message
  if template_id == 39 then
    return euronext_optiq_sbe_v4_10.user_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Sign In Message
  if template_id == 47 then
    return euronext_optiq_sbe_v4_10.mm_sign_in_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Sign In Ack Message
  if template_id == 48 then
    return euronext_optiq_sbe_v4_10.mm_sign_in_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Synchronization List Message
  if template_id == 50 then
    return euronext_optiq_sbe_v4_10.instrument_synchronization_list_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Time Message
  if template_id == 51 then
    return euronext_optiq_sbe_v4_10.synchronization_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Request Message
  if template_id == 60 then
    return euronext_optiq_sbe_v4_10.security_definition_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Ack Message
  if template_id == 61 then
    return euronext_optiq_sbe_v4_10.security_definition_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Protection Request Message
  if template_id == 62 then
    return euronext_optiq_sbe_v4_10.mm_protection_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mm Protection Ack Message
  if template_id == 63 then
    return euronext_optiq_sbe_v4_10.mm_protection_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Wholesale Order Message
  if template_id == 64 then
    return euronext_optiq_sbe_v4_10.new_wholesale_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wholesale Order Ack Message
  if template_id == 65 then
    return euronext_optiq_sbe_v4_10.wholesale_order_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Implied Execution Message
  if template_id == 66 then
    return euronext_optiq_sbe_v4_10.request_for_implied_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Message
  if template_id == 67 then
    return euronext_optiq_sbe_v4_10.cross_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Audit Message
  if template_id == 72 then
    return euronext_optiq_sbe_v4_10.rfq_audit_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wave For Liquidity Message
  if template_id == 73 then
    return euronext_optiq_sbe_v4_10.wave_for_liquidity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Wave For Liquidity Notification Message
  if template_id == 74 then
    return euronext_optiq_sbe_v4_10.wave_for_liquidity_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if template_id == 100 then
    return euronext_optiq_sbe_v4_10.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Ack Message
  if template_id == 101 then
    return euronext_optiq_sbe_v4_10.logon_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Reject Message
  if template_id == 102 then
    return euronext_optiq_sbe_v4_10.logon_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 103 then
    return euronext_optiq_sbe_v4_10.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 106 then
  end
  -- Dissect Test Request Message
  if template_id == 107 then
  end
  -- Dissect Technical Reject Message
  if template_id == 108 then
    return euronext_optiq_sbe_v4_10.technical_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Message
  if template_id == 40 then
    return euronext_optiq_sbe_v4_10.declaration_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Ack Message
  if template_id == 41 then
    return euronext_optiq_sbe_v4_10.declaration_entry_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Notice Message
  if template_id == 42 then
    return euronext_optiq_sbe_v4_10.declaration_notice_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Cancel And Refusal Message
  if template_id == 43 then
    return euronext_optiq_sbe_v4_10.declaration_cancel_and_refusal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fund Price Input Message
  if template_id == 44 then
    return euronext_optiq_sbe_v4_10.fund_price_input_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fund Price Input Ack Message
  if template_id == 45 then
    return euronext_optiq_sbe_v4_10.fund_price_input_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Reject Message
  if template_id == 46 then
    return euronext_optiq_sbe_v4_10.declaration_entry_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
euronext_optiq_sbe_v4_10.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return euronext_optiq_sbe_v4_10.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = euronext_optiq_sbe_v4_10.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = euronext_optiq_sbe_v4_10.payload.display(buffer, packet, parent)
  local element = parent:add(omi_euronext_optiq_sbe_v4_10.fields.payload, range, display)

  return euronext_optiq_sbe_v4_10.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
euronext_optiq_sbe_v4_10.version = {}

-- Size: Version
euronext_optiq_sbe_v4_10.version.size = 2

-- Display: Version
euronext_optiq_sbe_v4_10.version.display = function(value)
  if value == 310 then
    return "Version: Version 4.10.0"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
euronext_optiq_sbe_v4_10.version.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
euronext_optiq_sbe_v4_10.schema_id = {}

-- Size: Schema Id
euronext_optiq_sbe_v4_10.schema_id.size = 2

-- Display: Schema Id
euronext_optiq_sbe_v4_10.schema_id.display = function(value)
  if value == 0 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
euronext_optiq_sbe_v4_10.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
euronext_optiq_sbe_v4_10.template_id = {}

-- Size: Template Id
euronext_optiq_sbe_v4_10.template_id.size = 2

-- Display: Template Id
euronext_optiq_sbe_v4_10.template_id.display = function(value)
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
euronext_optiq_sbe_v4_10.template_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
euronext_optiq_sbe_v4_10.block_length = {}

-- Size: Block Length
euronext_optiq_sbe_v4_10.block_length.size = 2

-- Display: Block Length
euronext_optiq_sbe_v4_10.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
euronext_optiq_sbe_v4_10.block_length.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.block_length, range, value, display)

  return offset + length, value
end

-- Message Header
euronext_optiq_sbe_v4_10.message_header = {}

-- Size: Message Header
euronext_optiq_sbe_v4_10.message_header.size =
  euronext_optiq_sbe_v4_10.block_length.size + 
  euronext_optiq_sbe_v4_10.template_id.size + 
  euronext_optiq_sbe_v4_10.schema_id.size + 
  euronext_optiq_sbe_v4_10.version.size

-- Display: Message Header
euronext_optiq_sbe_v4_10.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
euronext_optiq_sbe_v4_10.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: 2 Byte Unsigned Fixed Width Integer
  index, block_length = euronext_optiq_sbe_v4_10.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 54 values
  index, template_id = euronext_optiq_sbe_v4_10.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: 2 Byte Unsigned Fixed Width Integer Static
  index, schema_id = euronext_optiq_sbe_v4_10.schema_id.dissect(buffer, index, packet, parent)

  -- Version: 2 Byte Unsigned Fixed Width Integer Static
  index, version = euronext_optiq_sbe_v4_10.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
euronext_optiq_sbe_v4_10.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.message_header, buffer(offset, 0))
    local index = euronext_optiq_sbe_v4_10.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_sbe_v4_10.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_sbe_v4_10.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Frame
euronext_optiq_sbe_v4_10.frame = {}

-- Size: Frame
euronext_optiq_sbe_v4_10.frame.size = 2

-- Display: Frame
euronext_optiq_sbe_v4_10.frame.display = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
euronext_optiq_sbe_v4_10.frame.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_sbe_v4_10.frame.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_sbe_v4_10.frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_sbe_v4_10.fields.frame, range, value, display)

  return offset + length, value
end

-- Message
euronext_optiq_sbe_v4_10.message = {}

-- Calculate size of: Message
euronext_optiq_sbe_v4_10.message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_sbe_v4_10.frame.size

  index = index + euronext_optiq_sbe_v4_10.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + euronext_optiq_sbe_v4_10.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
euronext_optiq_sbe_v4_10.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
euronext_optiq_sbe_v4_10.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = euronext_optiq_sbe_v4_10.frame.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = euronext_optiq_sbe_v4_10.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 54 branches
  index = euronext_optiq_sbe_v4_10.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
euronext_optiq_sbe_v4_10.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = euronext_optiq_sbe_v4_10.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_sbe_v4_10.message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_sbe_v4_10.fields.message, range, display)
  end

  return euronext_optiq_sbe_v4_10.message.fields(buffer, offset, packet, parent)
end

-- Packet
euronext_optiq_sbe_v4_10.packet = {}

-- Dissect Packet
euronext_optiq_sbe_v4_10.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = euronext_optiq_sbe_v4_10.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_euronext_optiq_sbe_v4_10.init()
end

-- Dissector for Euronext Optiq OrderEntryGateway Sbe 4.10
function omi_euronext_optiq_sbe_v4_10.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_euronext_optiq_sbe_v4_10.name

  -- Dissect protocol
  local protocol = parent:add(omi_euronext_optiq_sbe_v4_10, buffer(), omi_euronext_optiq_sbe_v4_10.description, "("..buffer:len().." Bytes)")
  return euronext_optiq_sbe_v4_10.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_euronext_optiq_sbe_v4_10)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
euronext_optiq_sbe_v4_10.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
euronext_optiq_sbe_v4_10.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Verify Version Field
euronext_optiq_sbe_v4_10.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 310 then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq OrderEntryGateway Sbe 4.10
local function omi_euronext_optiq_sbe_v4_10_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not euronext_optiq_sbe_v4_10.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not euronext_optiq_sbe_v4_10.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not euronext_optiq_sbe_v4_10.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_euronext_optiq_sbe_v4_10
  omi_euronext_optiq_sbe_v4_10.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq OrderEntryGateway Sbe 4.10
omi_euronext_optiq_sbe_v4_10:register_heuristic("tcp", omi_euronext_optiq_sbe_v4_10_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 4.10
--   Date: Thursday, October 14, 2021
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
