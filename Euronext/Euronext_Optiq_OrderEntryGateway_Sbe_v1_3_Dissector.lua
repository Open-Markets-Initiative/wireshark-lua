-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 1.3 Protocol
local omi_euronext_optiq_orderentrygateway_sbe_v1_3 = Proto("Euronext.Optiq.OrderEntryGateway.Sbe.v1.3.Lua", "Euronext Optiq OrderEntryGateway Sbe 1.3")

-- Protocol table
local euronext_optiq_orderentrygateway_sbe_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Euronext Optiq OrderEntryGateway Sbe 1.3 Fields
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_number = ProtoField.new("Account Number", "euronext.optiq.orderentrygateway.sbe.v1.3.accountnumber", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_number_cross = ProtoField.new("Account Number Cross", "euronext.optiq.orderentrygateway.sbe.v1.3.accountnumbercross", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_type = ProtoField.new("Account Type", "euronext.optiq.orderentrygateway.sbe.v1.3.accounttype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_type_cross = ProtoField.new("Account Type Cross", "euronext.optiq.orderentrygateway.sbe.v1.3.accounttypecross", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_type_optional = ProtoField.new("Account Type Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.accounttypeoptional", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ack_phase = ProtoField.new("Ack Phase", "euronext.optiq.orderentrygateway.sbe.v1.3.ackphase", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ack_qualifiers = ProtoField.new("Ack Qualifiers", "euronext.optiq.orderentrygateway.sbe.v1.3.ackqualifiers", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ack_type = ProtoField.new("Ack Type", "euronext.optiq.orderentrygateway.sbe.v1.3.acktype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.action_type = ProtoField.new("Action Type", "euronext.optiq.orderentrygateway.sbe.v1.3.actiontype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.afq_reason = ProtoField.new("Afq Reason", "euronext.optiq.orderentrygateway.sbe.v1.3.afqreason", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.aggressive_order = ProtoField.new("Aggressive Order", "euronext.optiq.orderentrygateway.sbe.v1.3.aggressiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bid_error_code = ProtoField.new("Bid Error Code", "euronext.optiq.orderentrygateway.sbe.v1.3.biderrorcode", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bid_order_id = ProtoField.new("Bid Order Id", "euronext.optiq.orderentrygateway.sbe.v1.3.bidorderid", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bid_px = ProtoField.new("Bid Px", "euronext.optiq.orderentrygateway.sbe.v1.3.bidpx", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bid_size = ProtoField.new("Bid Size", "euronext.optiq.orderentrygateway.sbe.v1.3.bidsize", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.orderentrygateway.sbe.v1.3.blocklength", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.block_length_short = ProtoField.new("Block Length Short", "euronext.optiq.orderentrygateway.sbe.v1.3.blocklengthshort", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.book_in = ProtoField.new("Book In", "euronext.optiq.orderentrygateway.sbe.v1.3.bookin", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.book_in_optional = ProtoField.new("Book In Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.bookinoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.book_out_time = ProtoField.new("Book Out Time", "euronext.optiq.orderentrygateway.sbe.v1.3.bookouttime", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.book_out_time_optional = ProtoField.new("Book Out Time Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.bookouttimeoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.breached_collar_price = ProtoField.new("Breached Collar Price", "euronext.optiq.orderentrygateway.sbe.v1.3.breachedcollarprice", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.buy_revision_flag = ProtoField.new("Buy Revision Flag", "euronext.optiq.orderentrygateway.sbe.v1.3.buyrevisionflag", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bypass_indicator = ProtoField.new("Bypass Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.bypassindicator", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_clearing_fields_group = ProtoField.new("Cancel Replace Clearing Fields Group", "euronext.optiq.orderentrygateway.sbe.v1.3.cancelreplaceclearingfieldsgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_clearing_fields_groups = ProtoField.new("Cancel Replace Clearing Fields Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.cancelreplaceclearingfieldsgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_optional_field_group = ProtoField.new("Cancel Replace Optional Field Group", "euronext.optiq.orderentrygateway.sbe.v1.3.cancelreplaceoptionalfieldgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_optional_field_groups = ProtoField.new("Cancel Replace Optional Field Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.cancelreplaceoptionalfieldgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.centralisation_date = ProtoField.new("Centralisation Date", "euronext.optiq.orderentrygateway.sbe.v1.3.centralisationdate", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cl_msg_seq_num = ProtoField.new("Cl Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v1.3.clmsgseqnum", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_dataset_group = ProtoField.new("Clearing Dataset Group", "euronext.optiq.orderentrygateway.sbe.v1.3.clearingdatasetgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_dataset_groups = ProtoField.new("Clearing Dataset Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.clearingdatasetgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_firm_id = ProtoField.new("Clearing Firm Id", "euronext.optiq.orderentrygateway.sbe.v1.3.clearingfirmid", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_instruction = ProtoField.new("Clearing Instruction", "euronext.optiq.orderentrygateway.sbe.v1.3.clearinginstruction", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_id = ProtoField.new("Client Id", "euronext.optiq.orderentrygateway.sbe.v1.3.clientid", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_identification_short_code_cross = ProtoField.new("Client Identification Short Code Cross", "euronext.optiq.orderentrygateway.sbe.v1.3.clientidentificationshortcodecross", ftypes.INT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_identification_shortcode = ProtoField.new("Client Identification Shortcode", "euronext.optiq.orderentrygateway.sbe.v1.3.clientidentificationshortcode", ftypes.INT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_order_id = ProtoField.new("Client Order Id", "euronext.optiq.orderentrygateway.sbe.v1.3.clientorderid", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_order_id_optional = ProtoField.new("Client Order Id Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.clientorderidoptional", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_fields_group = ProtoField.new("Collar Fields Group", "euronext.optiq.orderentrygateway.sbe.v1.3.collarfieldsgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_fields_groups = ProtoField.new("Collar Fields Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.collarfieldsgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_rej_type = ProtoField.new("Collar Rej Type", "euronext.optiq.orderentrygateway.sbe.v1.3.collarrejtype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.commodity_derivative_indicator = ProtoField.new("Commodity Derivative Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.commodityderivativeindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.contract_id = ProtoField.new("Contract Id", "euronext.optiq.orderentrygateway.sbe.v1.3.contractid", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.counterpart_firm_id = ProtoField.new("Counterpart Firm Id", "euronext.optiq.orderentrygateway.sbe.v1.3.counterpartfirmid", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.dark_execution_instruction = ProtoField.new("Dark Execution Instruction", "euronext.optiq.orderentrygateway.sbe.v1.3.darkexecutioninstruction", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.dark_indicator = ProtoField.new("Dark Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.darkindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.dea_indicator = ProtoField.new("Dea Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.deaindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_id = ProtoField.new("Declaration Id", "euronext.optiq.orderentrygateway.sbe.v1.3.declarationid", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_id_optional = ProtoField.new("Declaration Id Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.declarationidoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_status = ProtoField.new("Declaration Status", "euronext.optiq.orderentrygateway.sbe.v1.3.declarationstatus", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.deferral_indicator = ProtoField.new("Deferral Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.deferralindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.deferred_trade_indicator = ProtoField.new("Deferred Trade Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.deferredtradeindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.disabled_cancel_on_disconnect_indicator = ProtoField.new("Disabled Cancel On Disconnect Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.disabledcancelondisconnectindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.disclosed_qty = ProtoField.new("Disclosed Qty", "euronext.optiq.orderentrygateway.sbe.v1.3.disclosedqty", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.disclosed_quantity_randomization = ProtoField.new("Disclosed Quantity Randomization", "euronext.optiq.orderentrygateway.sbe.v1.3.disclosedquantityrandomization", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.displayed_order_interaction = ProtoField.new("Displayed Order Interaction", "euronext.optiq.orderentrygateway.sbe.v1.3.displayedorderinteraction", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.emm = ProtoField.new("Emm", "euronext.optiq.orderentrygateway.sbe.v1.3.emm", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.emm_optional = ProtoField.new("Emm Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.emmoptional", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.end_client = ProtoField.new("End Client", "euronext.optiq.orderentrygateway.sbe.v1.3.endclient", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.end_time_vwap = ProtoField.new("End Time Vwap", "euronext.optiq.orderentrygateway.sbe.v1.3.endtimevwap", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.entering_counterparty = ProtoField.new("Entering Counterparty", "euronext.optiq.orderentrygateway.sbe.v1.3.enteringcounterparty", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.error_code = ProtoField.new("Error Code", "euronext.optiq.orderentrygateway.sbe.v1.3.errorcode", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.exchange_id = ProtoField.new("Exchange Id", "euronext.optiq.orderentrygateway.sbe.v1.3.exchangeid", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_algo_indicator = ProtoField.new("Execution Algo Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.executionalgoindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_id = ProtoField.new("Execution Id", "euronext.optiq.orderentrygateway.sbe.v1.3.executionid", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_instruction = ProtoField.new("Execution Instruction", "euronext.optiq.orderentrygateway.sbe.v1.3.executioninstruction", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_phase = ProtoField.new("Execution Phase", "euronext.optiq.orderentrygateway.sbe.v1.3.executionphase", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_within_firm_short_code = ProtoField.new("Execution Within Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v1.3.executionwithinfirmshortcode", ftypes.INT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_within_firm_short_code_optional = ProtoField.new("Execution Within Firm Short Code Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.executionwithinfirmshortcodeoptional", ftypes.INT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.family_id = ProtoField.new("Family Id", "euronext.optiq.orderentrygateway.sbe.v1.3.familyid", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.field_actively_used = ProtoField.new("Field Actively Used", "euronext.optiq.orderentrygateway.sbe.v1.3.fieldactivelyused", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_optional_field_group = ProtoField.new("Fill Optional Field Group", "euronext.optiq.orderentrygateway.sbe.v1.3.filloptionalfieldgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_optional_field_groups = ProtoField.new("Fill Optional Field Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.filloptionalfieldgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_strategy_field_group = ProtoField.new("Fill Strategy Field Group", "euronext.optiq.orderentrygateway.sbe.v1.3.fillstrategyfieldgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_strategy_field_groups = ProtoField.new("Fill Strategy Field Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.fillstrategyfieldgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.firm_id = ProtoField.new("Firm Id", "euronext.optiq.orderentrygateway.sbe.v1.3.firmid", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.firm_id_optional = ProtoField.new("Firm Id Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.firmidoptional", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.firm_id_publication = ProtoField.new("Firm Id Publication", "euronext.optiq.orderentrygateway.sbe.v1.3.firmidpublication", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.first_trade_price = ProtoField.new("First Trade Price", "euronext.optiq.orderentrygateway.sbe.v1.3.firsttradeprice", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.frame = ProtoField.new("Frame", "euronext.optiq.orderentrygateway.sbe.v1.3.frame", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.free_text = ProtoField.new("Free Text", "euronext.optiq.orderentrygateway.sbe.v1.3.freetext", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.free_text_cross = ProtoField.new("Free Text Cross", "euronext.optiq.orderentrygateway.sbe.v1.3.freetextcross", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.free_text_groups = ProtoField.new("Free Text Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.freetextgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.gross_trade_amount = ProtoField.new("Gross Trade Amount", "euronext.optiq.orderentrygateway.sbe.v1.3.grosstradeamount", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "euronext.optiq.orderentrygateway.sbe.v1.3.groupsizeencoding", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.guarantee_flag = ProtoField.new("Guarantee Flag", "euronext.optiq.orderentrygateway.sbe.v1.3.guaranteeflag", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.guarantee_flag_optional = ProtoField.new("Guarantee Flag Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.guaranteeflagoptional", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ilqd = ProtoField.new("Ilqd", "euronext.optiq.orderentrygateway.sbe.v1.3.ilqd", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.input_price_type = ProtoField.new("Input Price Type", "euronext.optiq.orderentrygateway.sbe.v1.3.inputpricetype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_group_code = ProtoField.new("Instrument Group Code", "euronext.optiq.orderentrygateway.sbe.v1.3.instrumentgroupcode", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_synchronization_group = ProtoField.new("Instrument Synchronization Group", "euronext.optiq.orderentrygateway.sbe.v1.3.instrumentsynchronizationgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_synchronization_groups = ProtoField.new("Instrument Synchronization Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.instrumentsynchronizationgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.investment_algo_indicator = ProtoField.new("Investment Algo Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.investmentalgoindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.investment_decision_w_firm_short_code = ProtoField.new("Investment Decision W Firm Short Code", "euronext.optiq.orderentrygateway.sbe.v1.3.investmentdecisionwfirmshortcode", ftypes.INT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.kill_reason = ProtoField.new("Kill Reason", "euronext.optiq.orderentrygateway.sbe.v1.3.killreason", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_book_in_time = ProtoField.new("Last Book In Time", "euronext.optiq.orderentrygateway.sbe.v1.3.lastbookintime", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_cl_msg_seq_num = ProtoField.new("Last Cl Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v1.3.lastclmsgseqnum", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_msg_seq_num = ProtoField.new("Last Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v1.3.lastmsgseqnum", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_msg_seq_num_optional = ProtoField.new("Last Msg Seq Num Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.lastmsgseqnumoptional", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_shares = ProtoField.new("Last Shares", "euronext.optiq.orderentrygateway.sbe.v1.3.lastshares", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_traded_px = ProtoField.new("Last Traded Px", "euronext.optiq.orderentrygateway.sbe.v1.3.lasttradedpx", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leaves_qty = ProtoField.new("Leaves Qty", "euronext.optiq.orderentrygateway.sbe.v1.3.leavesqty", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_1 = ProtoField.new("Leg 1", "euronext.optiq.orderentrygateway.sbe.v1.3.leg1", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_2 = ProtoField.new("Leg 2", "euronext.optiq.orderentrygateway.sbe.v1.3.leg2", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_3 = ProtoField.new("Leg 3", "euronext.optiq.orderentrygateway.sbe.v1.3.leg3", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_4 = ProtoField.new("Leg 4", "euronext.optiq.orderentrygateway.sbe.v1.3.leg4", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_5 = ProtoField.new("Leg 5", "euronext.optiq.orderentrygateway.sbe.v1.3.leg5", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_6 = ProtoField.new("Leg 6", "euronext.optiq.orderentrygateway.sbe.v1.3.leg6", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0040)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_7 = ProtoField.new("Leg 7", "euronext.optiq.orderentrygateway.sbe.v1.3.leg7", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0080)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_8 = ProtoField.new("Leg 8", "euronext.optiq.orderentrygateway.sbe.v1.3.leg8", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0100)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_9 = ProtoField.new("Leg 9", "euronext.optiq.orderentrygateway.sbe.v1.3.leg9", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0200)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "euronext.optiq.orderentrygateway.sbe.v1.3.leginstrumentid", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_last_px = ProtoField.new("Leg Last Px", "euronext.optiq.orderentrygateway.sbe.v1.3.leglastpx", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "euronext.optiq.orderentrygateway.sbe.v1.3.leglastqty", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_side = ProtoField.new("Leg Side", "euronext.optiq.orderentrygateway.sbe.v1.3.legside", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.log_out_reason_code = ProtoField.new("Log Out Reason Code", "euronext.optiq.orderentrygateway.sbe.v1.3.logoutreasoncode", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logical_access_id = ProtoField.new("Logical Access Id", "euronext.optiq.orderentrygateway.sbe.v1.3.logicalaccessid", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logon_reject_code = ProtoField.new("Logon Reject Code", "euronext.optiq.orderentrygateway.sbe.v1.3.logonrejectcode", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.lp_action_code = ProtoField.new("Lp Action Code", "euronext.optiq.orderentrygateway.sbe.v1.3.lpactioncode", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.lp_role = ProtoField.new("Lp Role", "euronext.optiq.orderentrygateway.sbe.v1.3.lprole", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.lp_role_optional = ProtoField.new("Lp Role Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.lproleoptional", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.lrgs = ProtoField.new("Lrgs", "euronext.optiq.orderentrygateway.sbe.v1.3.lrgs", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.maturity = ProtoField.new("Maturity", "euronext.optiq.orderentrygateway.sbe.v1.3.maturity", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.message = ProtoField.new("Message", "euronext.optiq.orderentrygateway.sbe.v1.3.message", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.orderentrygateway.sbe.v1.3.messageheader", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mi_cof_secondary_listing = ProtoField.new("Mi Cof Secondary Listing", "euronext.optiq.orderentrygateway.sbe.v1.3.micofsecondarylisting", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mi_fid_indicators = ProtoField.new("Mi Fid Indicators", "euronext.optiq.orderentrygateway.sbe.v1.3.mifidindicators", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mifid_short_codes_group = ProtoField.new("Mifid Short Codes Group", "euronext.optiq.orderentrygateway.sbe.v1.3.mifidshortcodesgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mifid_short_codes_groups = ProtoField.new("Mifid Short Codes Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.mifidshortcodesgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.min_order_qty = ProtoField.new("Min Order Qty", "euronext.optiq.orderentrygateway.sbe.v1.3.minorderqty", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.minimum_quantity_type = ProtoField.new("Minimum Quantity Type", "euronext.optiq.orderentrygateway.sbe.v1.3.minimumquantitytype", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.miscellaneous_fee_amount = ProtoField.new("Miscellaneous Fee Amount", "euronext.optiq.orderentrygateway.sbe.v1.3.miscellaneousfeeamount", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "euronext.optiq.orderentrygateway.sbe.v1.3.msgseqnum", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.nav_trade_expressed_in_bps = ProtoField.new("Nav Trade Expressed In Bps", "euronext.optiq.orderentrygateway.sbe.v1.3.navtradeexpressedinbps", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.nav_trade_expressed_in_price_currency = ProtoField.new("Nav Trade Expressed In Price Currency", "euronext.optiq.orderentrygateway.sbe.v1.3.navtradeexpressedinpricecurrency", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.new_order_message_free_text_section_group = ProtoField.new("New Order Message Free Text Section Group", "euronext.optiq.orderentrygateway.sbe.v1.3.newordermessagefreetextsectiongroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.nliq = ProtoField.new("Nliq", "euronext.optiq.orderentrygateway.sbe.v1.3.nliq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.non_executing_broker_short_code = ProtoField.new("Non Executing Broker Short Code", "euronext.optiq.orderentrygateway.sbe.v1.3.nonexecutingbrokershortcode", ftypes.INT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.num_in_group = ProtoField.new("Num In Group", "euronext.optiq.orderentrygateway.sbe.v1.3.numingroup", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.number_of_lps = ProtoField.new("Number Of Lps", "euronext.optiq.orderentrygateway.sbe.v1.3.numberoflps", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oe_partition_id = ProtoField.new("Oe Partition Id", "euronext.optiq.orderentrygateway.sbe.v1.3.oepartitionid", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oe_partition_id_optional = ProtoField.new("Oe Partition Id Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.oepartitionidoptional", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_in_from_me = ProtoField.new("Oeg In From Me", "euronext.optiq.orderentrygateway.sbe.v1.3.oeginfromme", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_in_from_me_optional = ProtoField.new("Oeg In From Me Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.oeginfrommeoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_in_from_member = ProtoField.new("Oeg In From Member", "euronext.optiq.orderentrygateway.sbe.v1.3.oeginfrommember", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_out_time_to_me = ProtoField.new("Oeg Out Time To Me", "euronext.optiq.orderentrygateway.sbe.v1.3.oegouttimetome", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_out_to_member = ProtoField.new("Oeg Out To Member", "euronext.optiq.orderentrygateway.sbe.v1.3.oegouttomember", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_out_to_member_optional = ProtoField.new("Oeg Out To Member Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.oegouttomemberoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.offer_error_code = ProtoField.new("Offer Error Code", "euronext.optiq.orderentrygateway.sbe.v1.3.offererrorcode", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.offer_order_id = ProtoField.new("Offer Order Id", "euronext.optiq.orderentrygateway.sbe.v1.3.offerorderid", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.offer_px = ProtoField.new("Offer Px", "euronext.optiq.orderentrygateway.sbe.v1.3.offerpx", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.offer_size = ProtoField.new("Offer Size", "euronext.optiq.orderentrygateway.sbe.v1.3.offersize", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oilq = ProtoField.new("Oilq", "euronext.optiq.orderentrygateway.sbe.v1.3.oilq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.omf = ProtoField.new("Omf", "euronext.optiq.orderentrygateway.sbe.v1.3.omf", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.open_close = ProtoField.new("Open Close", "euronext.optiq.orderentrygateway.sbe.v1.3.openclose", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.operation_type = ProtoField.new("Operation Type", "euronext.optiq.orderentrygateway.sbe.v1.3.operationtype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.option_type = ProtoField.new("Option Type", "euronext.optiq.orderentrygateway.sbe.v1.3.optiontype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_clearing_fields_group = ProtoField.new("Order Clearing Fields Group", "euronext.optiq.orderentrygateway.sbe.v1.3.orderclearingfieldsgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_clearing_fields_groups = ProtoField.new("Order Clearing Fields Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.orderclearingfieldsgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_expiration_date = ProtoField.new("Order Expiration Date", "euronext.optiq.orderentrygateway.sbe.v1.3.orderexpirationdate", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_expiration_time = ProtoField.new("Order Expiration Time", "euronext.optiq.orderentrygateway.sbe.v1.3.orderexpirationtime", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_id = ProtoField.new("Order Id", "euronext.optiq.orderentrygateway.sbe.v1.3.orderid", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_id_optional = ProtoField.new("Order Id Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.orderidoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_optional_fields_group = ProtoField.new("Order Optional Fields Group", "euronext.optiq.orderentrygateway.sbe.v1.3.orderoptionalfieldsgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_optional_fields_groups = ProtoField.new("Order Optional Fields Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.orderoptionalfieldsgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.orderentrygateway.sbe.v1.3.orderpriority", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.orderentrygateway.sbe.v1.3.orderpx", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_qty = ProtoField.new("Order Qty", "euronext.optiq.orderentrygateway.sbe.v1.3.orderqty", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_qty_optional = ProtoField.new("Order Qty Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.orderqtyoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.orderentrygateway.sbe.v1.3.ordertype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.orig_client_order_id = ProtoField.new("Orig Client Order Id", "euronext.optiq.orderentrygateway.sbe.v1.3.origclientorderid", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.other_leg_last_px = ProtoField.new("Other Leg Last Px", "euronext.optiq.orderentrygateway.sbe.v1.3.otherleglastpx", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.package_id = ProtoField.new("Package Id", "euronext.optiq.orderentrygateway.sbe.v1.3.packageid", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.packet = ProtoField.new("Packet", "euronext.optiq.orderentrygateway.sbe.v1.3.packet", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.passive_order = ProtoField.new("Passive Order", "euronext.optiq.orderentrygateway.sbe.v1.3.passiveorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.payload = ProtoField.new("Payload", "euronext.optiq.orderentrygateway.sbe.v1.3.payload", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.peg_offset = ProtoField.new("Peg Offset", "euronext.optiq.orderentrygateway.sbe.v1.3.pegoffset", ftypes.INT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.potential_matching_px = ProtoField.new("Potential Matching Px", "euronext.optiq.orderentrygateway.sbe.v1.3.potentialmatchingpx", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.potential_matching_qty = ProtoField.new("Potential Matching Qty", "euronext.optiq.orderentrygateway.sbe.v1.3.potentialmatchingqty", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.pre_matching_type = ProtoField.new("Pre Matching Type", "euronext.optiq.orderentrygateway.sbe.v1.3.prematchingtype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.previous_day_indicator = ProtoField.new("Previous Day Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.previousdayindicator", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.pric = ProtoField.new("Pric", "euronext.optiq.orderentrygateway.sbe.v1.3.pric", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.price = ProtoField.new("Price", "euronext.optiq.orderentrygateway.sbe.v1.3.price", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.price_optional = ProtoField.new("Price Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.priceoptional", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.principal_code = ProtoField.new("Principal Code", "euronext.optiq.orderentrygateway.sbe.v1.3.principalcode", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.principal_code_cross = ProtoField.new("Principal Code Cross", "euronext.optiq.orderentrygateway.sbe.v1.3.principalcodecross", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quantity = ProtoField.new("Quantity", "euronext.optiq.orderentrygateway.sbe.v1.3.quantity", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.queue_indicator = ProtoField.new("Queue Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.queueindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.queueing_indicator = ProtoField.new("Queueing Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.queueingindicator", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_acks_group = ProtoField.new("Quote Acks Group", "euronext.optiq.orderentrygateway.sbe.v1.3.quoteacksgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_acks_groups = ProtoField.new("Quote Acks Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.quoteacksgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_req_id = ProtoField.new("Quote Req Id", "euronext.optiq.orderentrygateway.sbe.v1.3.quotereqid", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_req_id_optional = ProtoField.new("Quote Req Id Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.quotereqidoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quotes_rep_group = ProtoField.new("Quotes Rep Group", "euronext.optiq.orderentrygateway.sbe.v1.3.quotesrepgroup", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quotes_rep_groups = ProtoField.new("Quotes Rep Groups", "euronext.optiq.orderentrygateway.sbe.v1.3.quotesrepgroups", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.recipient_type = ProtoField.new("Recipient Type", "euronext.optiq.orderentrygateway.sbe.v1.3.recipienttype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rejected_client_message_sequence_number = ProtoField.new("Rejected Client Message Sequence Number", "euronext.optiq.orderentrygateway.sbe.v1.3.rejectedclientmessagesequencenumber", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rejected_message = ProtoField.new("Rejected Message", "euronext.optiq.orderentrygateway.sbe.v1.3.rejectedmessage", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rejected_message_id = ProtoField.new("Rejected Message Id", "euronext.optiq.orderentrygateway.sbe.v1.3.rejectedmessageid", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_2 = ProtoField.new("Reserved 2", "euronext.optiq.orderentrygateway.sbe.v1.3.reserved2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_3 = ProtoField.new("Reserved 3", "euronext.optiq.orderentrygateway.sbe.v1.3.reserved3", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_4 = ProtoField.new("Reserved 4", "euronext.optiq.orderentrygateway.sbe.v1.3.reserved4", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_6 = ProtoField.new("Reserved 6", "euronext.optiq.orderentrygateway.sbe.v1.3.reserved6", ftypes.UINT16, nil, base.DEC, 0xFC00)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.resynchronization_id = ProtoField.new("Resynchronization Id", "euronext.optiq.orderentrygateway.sbe.v1.3.resynchronizationid", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfe_answer = ProtoField.new("Rfe Answer", "euronext.optiq.orderentrygateway.sbe.v1.3.rfeanswer", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfpt = ProtoField.new("Rfpt", "euronext.optiq.orderentrygateway.sbe.v1.3.rfpt", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_answer = ProtoField.new("Rfq Answer", "euronext.optiq.orderentrygateway.sbe.v1.3.rfqanswer", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_confirmation = ProtoField.new("Rfq Confirmation", "euronext.optiq.orderentrygateway.sbe.v1.3.rfqconfirmation", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_update_type = ProtoField.new("Rfq Update Type", "euronext.optiq.orderentrygateway.sbe.v1.3.rfqupdatetype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.orderentrygateway.sbe.v1.3.schemaid", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.sell_revision_flag = ProtoField.new("Sell Revision Flag", "euronext.optiq.orderentrygateway.sbe.v1.3.sellrevisionflag", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.sending_time = ProtoField.new("Sending Time", "euronext.optiq.orderentrygateway.sbe.v1.3.sendingtime", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.sending_time_optional = ProtoField.new("Sending Time Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.sendingtimeoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.session_1 = ProtoField.new("Session 1", "euronext.optiq.orderentrygateway.sbe.v1.3.session1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.session_2 = ProtoField.new("Session 2", "euronext.optiq.orderentrygateway.sbe.v1.3.session2", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x04)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.session_3 = ProtoField.new("Session 3", "euronext.optiq.orderentrygateway.sbe.v1.3.session3", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.settlement_flag = ProtoField.new("Settlement Flag", "euronext.optiq.orderentrygateway.sbe.v1.3.settlementflag", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.settlement_flag_optional = ProtoField.new("Settlement Flag Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.settlementflagoptional", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.settlement_period = ProtoField.new("Settlement Period", "euronext.optiq.orderentrygateway.sbe.v1.3.settlementperiod", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.settlement_period_optional = ProtoField.new("Settlement Period Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.settlementperiodoptional", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.side = ProtoField.new("Side", "euronext.optiq.orderentrygateway.sbe.v1.3.side", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.side_optional = ProtoField.new("Side Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.sideoptional", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.size = ProtoField.new("Size", "euronext.optiq.orderentrygateway.sbe.v1.3.size", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.software_provider = ProtoField.new("Software Provider", "euronext.optiq.orderentrygateway.sbe.v1.3.softwareprovider", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.start_time_vwap = ProtoField.new("Start Time Vwap", "euronext.optiq.orderentrygateway.sbe.v1.3.starttimevwap", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stop_px = ProtoField.new("Stop Px", "euronext.optiq.orderentrygateway.sbe.v1.3.stoppx", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stop_triggered_time_in_force = ProtoField.new("Stop Triggered Time In Force", "euronext.optiq.orderentrygateway.sbe.v1.3.stoptriggeredtimeinforce", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stp_incoming_order = ProtoField.new("Stp Incoming Order", "euronext.optiq.orderentrygateway.sbe.v1.3.stpincomingorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x02)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stp_resting_order = ProtoField.new("Stp Resting Order", "euronext.optiq.orderentrygateway.sbe.v1.3.stprestingorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stpid = ProtoField.new("Stpid", "euronext.optiq.orderentrygateway.sbe.v1.3.stpid", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.sweep_order_indicator = ProtoField.new("Sweep Order Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.sweeporderindicator", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x08)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.orderentrygateway.sbe.v1.3.symbolindex", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.symbol_index_optional = ProtoField.new("Symbol Index Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.symbolindexoptional", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.technical_origin = ProtoField.new("Technical Origin", "euronext.optiq.orderentrygateway.sbe.v1.3.technicalorigin", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.orderentrygateway.sbe.v1.3.templateid", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.time_in_force = ProtoField.new("Time In Force", "euronext.optiq.orderentrygateway.sbe.v1.3.timeinforce", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.total_affected_orders = ProtoField.new("Total Affected Orders", "euronext.optiq.orderentrygateway.sbe.v1.3.totalaffectedorders", ftypes.INT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_creation_by_market_operations = ProtoField.new("Trade Creation By Market Operations", "euronext.optiq.orderentrygateway.sbe.v1.3.tradecreationbymarketoperations", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_qualifier = ProtoField.new("Trade Qualifier", "euronext.optiq.orderentrygateway.sbe.v1.3.tradequalifier", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_time = ProtoField.new("Trade Time", "euronext.optiq.orderentrygateway.sbe.v1.3.tradetime", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_time_optional = ProtoField.new("Trade Time Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.tradetimeoptional", ftypes.UINT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.orderentrygateway.sbe.v1.3.tradetype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trading_capacity = ProtoField.new("Trading Capacity", "euronext.optiq.orderentrygateway.sbe.v1.3.tradingcapacity", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trading_capacity_cross = ProtoField.new("Trading Capacity Cross", "euronext.optiq.orderentrygateway.sbe.v1.3.tradingcapacitycross", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trading_capacity_optional = ProtoField.new("Trading Capacity Optional", "euronext.optiq.orderentrygateway.sbe.v1.3.tradingcapacityoptional", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "euronext.optiq.orderentrygateway.sbe.v1.3.tradingsession", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.transaction_price_type = ProtoField.new("Transaction Price Type", "euronext.optiq.orderentrygateway.sbe.v1.3.transactionpricetype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.uncrossing_trade = ProtoField.new("Uncrossing Trade", "euronext.optiq.orderentrygateway.sbe.v1.3.uncrossingtrade", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.underlying_instrument_id = ProtoField.new("Underlying Instrument Id", "euronext.optiq.orderentrygateway.sbe.v1.3.underlyinginstrumentid", ftypes.UINT32)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.undisclosed_iceberg_type = ProtoField.new("Undisclosed Iceberg Type", "euronext.optiq.orderentrygateway.sbe.v1.3.undisclosedicebergtype", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.undisclosed_price = ProtoField.new("Undisclosed Price", "euronext.optiq.orderentrygateway.sbe.v1.3.undisclosedprice", ftypes.INT64)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.unused_trade_qualifierset_7 = ProtoField.new("Unused Trade Qualifierset 7", "euronext.optiq.orderentrygateway.sbe.v1.3.unusedtradequalifierset7", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.unused_trading_session_validityset_0 = ProtoField.new("Unused Trading Session Validityset 0", "euronext.optiq.orderentrygateway.sbe.v1.3.unusedtradingsessionvalidityset0", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.user_status = ProtoField.new("User Status", "euronext.optiq.orderentrygateway.sbe.v1.3.userstatus", ftypes.UINT8)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.version = ProtoField.new("Version", "euronext.optiq.orderentrygateway.sbe.v1.3.version", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.waiver_indicator = ProtoField.new("Waiver Indicator", "euronext.optiq.orderentrygateway.sbe.v1.3.waiverindicator", ftypes.STRING)

-- Euronext Optiq Sbe OrderEntryGateway 1.3 Application Messages
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ack_message = ProtoField.new("Ack Message", "euronext.optiq.orderentrygateway.sbe.v1.3.ackmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ask_for_quote_message = ProtoField.new("Ask For Quote Message", "euronext.optiq.orderentrygateway.sbe.v1.3.askforquotemessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_message = ProtoField.new("Cancel Replace Message", "euronext.optiq.orderentrygateway.sbe.v1.3.cancelreplacemessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_request_message = ProtoField.new("Cancel Request Message", "euronext.optiq.orderentrygateway.sbe.v1.3.cancelrequestmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_breach_confirmation_message = ProtoField.new("Collar Breach Confirmation Message", "euronext.optiq.orderentrygateway.sbe.v1.3.collarbreachconfirmationmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_cancel_and_refusal_message = ProtoField.new("Declaration Cancel And Refusal Message", "euronext.optiq.orderentrygateway.sbe.v1.3.declarationcancelandrefusalmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_entry_ack_message = ProtoField.new("Declaration Entry Ack Message", "euronext.optiq.orderentrygateway.sbe.v1.3.declarationentryackmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_entry_message = ProtoField.new("Declaration Entry Message", "euronext.optiq.orderentrygateway.sbe.v1.3.declarationentrymessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_entry_reject_message = ProtoField.new("Declaration Entry Reject Message", "euronext.optiq.orderentrygateway.sbe.v1.3.declarationentryrejectmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_notice_message = ProtoField.new("Declaration Notice Message", "euronext.optiq.orderentrygateway.sbe.v1.3.declarationnoticemessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_message = ProtoField.new("Fill Message", "euronext.optiq.orderentrygateway.sbe.v1.3.fillmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fund_price_input_ack_message = ProtoField.new("Fund Price Input Ack Message", "euronext.optiq.orderentrygateway.sbe.v1.3.fundpriceinputackmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fund_price_input_message = ProtoField.new("Fund Price Input Message", "euronext.optiq.orderentrygateway.sbe.v1.3.fundpriceinputmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_synchronization_list_message = ProtoField.new("Instrument Synchronization List Message", "euronext.optiq.orderentrygateway.sbe.v1.3.instrumentsynchronizationlistmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.kill_message = ProtoField.new("Kill Message", "euronext.optiq.orderentrygateway.sbe.v1.3.killmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.liquidity_provider_command_message = ProtoField.new("Liquidity Provider Command Message", "euronext.optiq.orderentrygateway.sbe.v1.3.liquidityprovidercommandmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logon_ack_message = ProtoField.new("Logon Ack Message", "euronext.optiq.orderentrygateway.sbe.v1.3.logonackmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logon_message = ProtoField.new("Logon Message", "euronext.optiq.orderentrygateway.sbe.v1.3.logonmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logon_reject_message = ProtoField.new("Logon Reject Message", "euronext.optiq.orderentrygateway.sbe.v1.3.logonrejectmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logout_message = ProtoField.new("Logout Message", "euronext.optiq.orderentrygateway.sbe.v1.3.logoutmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mass_cancel_ack_message = ProtoField.new("Mass Cancel Ack Message", "euronext.optiq.orderentrygateway.sbe.v1.3.masscancelackmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "euronext.optiq.orderentrygateway.sbe.v1.3.masscancelmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.new_order_message = ProtoField.new("New Order Message", "euronext.optiq.orderentrygateway.sbe.v1.3.newordermessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.open_order_request_message = ProtoField.new("Open Order Request Message", "euronext.optiq.orderentrygateway.sbe.v1.3.openorderrequestmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ownership_request_ack_message = ProtoField.new("Ownership Request Ack Message", "euronext.optiq.orderentrygateway.sbe.v1.3.ownershiprequestackmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ownership_request_message = ProtoField.new("Ownership Request Message", "euronext.optiq.orderentrygateway.sbe.v1.3.ownershiprequestmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.price_input_message = ProtoField.new("Price Input Message", "euronext.optiq.orderentrygateway.sbe.v1.3.priceinputmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_ack_message = ProtoField.new("Quote Ack Message", "euronext.optiq.orderentrygateway.sbe.v1.3.quoteackmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_request_message = ProtoField.new("Quote Request Message", "euronext.optiq.orderentrygateway.sbe.v1.3.quoterequestmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quotes_message = ProtoField.new("Quotes Message", "euronext.optiq.orderentrygateway.sbe.v1.3.quotesmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reject_message = ProtoField.new("Reject Message", "euronext.optiq.orderentrygateway.sbe.v1.3.rejectmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.request_for_execution_message = ProtoField.new("Request For Execution Message", "euronext.optiq.orderentrygateway.sbe.v1.3.requestforexecutionmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_matching_status_message = ProtoField.new("Rfq Matching Status Message", "euronext.optiq.orderentrygateway.sbe.v1.3.rfqmatchingstatusmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_notification_message = ProtoField.new("Rfq Notification Message", "euronext.optiq.orderentrygateway.sbe.v1.3.rfqnotificationmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.synchronization_time_message = ProtoField.new("Synchronization Time Message", "euronext.optiq.orderentrygateway.sbe.v1.3.synchronizationtimemessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.technical_reject_message = ProtoField.new("Technical Reject Message", "euronext.optiq.orderentrygateway.sbe.v1.3.technicalrejectmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_bust_notification_message = ProtoField.new("Trade Bust Notification Message", "euronext.optiq.orderentrygateway.sbe.v1.3.tradebustnotificationmessage", ftypes.STRING)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.user_notification_message = ProtoField.new("User Notification Message", "euronext.optiq.orderentrygateway.sbe.v1.3.usernotificationmessage", ftypes.STRING)

-- Euronext Optiq OrderEntryGateway Sbe 1.3 generated fields
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_clearing_fields_group_index = ProtoField.new("Cancel Replace Clearing Fields Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.cancelreplaceclearingfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_optional_field_group_index = ProtoField.new("Cancel Replace Optional Field Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.cancelreplaceoptionalfieldgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_dataset_group_index = ProtoField.new("Clearing Dataset Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.clearingdatasetgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_fields_group_index = ProtoField.new("Collar Fields Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.collarfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_optional_field_group_index = ProtoField.new("Fill Optional Field Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.filloptionalfieldgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_strategy_field_group_index = ProtoField.new("Fill Strategy Field Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.fillstrategyfieldgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_synchronization_group_index = ProtoField.new("Instrument Synchronization Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.instrumentsynchronizationgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mifid_short_codes_group_index = ProtoField.new("Mifid Short Codes Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.mifidshortcodesgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.new_order_message_free_text_section_group_index = ProtoField.new("New Order Message Free Text Section Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.newordermessagefreetextsectiongroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_clearing_fields_group_index = ProtoField.new("Order Clearing Fields Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.orderclearingfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_optional_fields_group_index = ProtoField.new("Order Optional Fields Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.orderoptionalfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_acks_group_index = ProtoField.new("Quote Acks Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.quoteacksgroupindex", ftypes.UINT16)
omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quotes_rep_group_index = ProtoField.new("Quotes Rep Group Index", "euronext.optiq.orderentrygateway.sbe.v1.3.quotesrepgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Euronext Optiq OrderEntryGateway Sbe 1.3 Element Dissection Options
show.ack_message = true
show.ack_qualifiers = true
show.ask_for_quote_message = true
show.cancel_replace_clearing_fields_group = true
show.cancel_replace_clearing_fields_groups = true
show.cancel_replace_message = true
show.cancel_replace_optional_field_group = true
show.cancel_replace_optional_field_groups = true
show.cancel_request_message = true
show.clearing_dataset_group = true
show.clearing_dataset_groups = true
show.collar_breach_confirmation_message = true
show.collar_fields_group = true
show.collar_fields_groups = true
show.dark_execution_instruction = true
show.declaration_cancel_and_refusal_message = true
show.declaration_entry_ack_message = true
show.declaration_entry_message = true
show.declaration_entry_reject_message = true
show.declaration_notice_message = true
show.execution_instruction = true
show.fill_message = true
show.fill_optional_field_group = true
show.fill_optional_field_groups = true
show.fill_strategy_field_group = true
show.fill_strategy_field_groups = true
show.free_text_groups = true
show.fund_price_input_ack_message = true
show.fund_price_input_message = true
show.group_size_encoding = true
show.instrument_synchronization_group = true
show.instrument_synchronization_groups = true
show.instrument_synchronization_list_message = true
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
show.mi_fid_indicators = true
show.mifid_short_codes_group = true
show.mifid_short_codes_groups = true
show.new_order_message = true
show.new_order_message_free_text_section_group = true
show.open_close = true
show.open_order_request_message = true
show.order_clearing_fields_group = true
show.order_clearing_fields_groups = true
show.order_optional_fields_group = true
show.order_optional_fields_groups = true
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
show.rfq_matching_status_message = true
show.rfq_notification_message = true
show.synchronization_time_message = true
show.technical_reject_message = true
show.trade_bust_notification_message = true
show.trade_qualifier = true
show.trading_session = true
show.user_notification_message = true
show.waiver_indicator = true
show.payload = false

-- Register Euronext Optiq OrderEntryGateway Sbe 1.3 Show Options
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ack_message = Pref.bool("Show Ack Message", show.ack_message, "Parse and add Ack Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ack_qualifiers = Pref.bool("Show Ack Qualifiers", show.ack_qualifiers, "Parse and add Ack Qualifiers to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ask_for_quote_message = Pref.bool("Show Ask For Quote Message", show.ask_for_quote_message, "Parse and add Ask For Quote Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_clearing_fields_group = Pref.bool("Show Cancel Replace Clearing Fields Group", show.cancel_replace_clearing_fields_group, "Parse and add Cancel Replace Clearing Fields Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_clearing_fields_groups = Pref.bool("Show Cancel Replace Clearing Fields Groups", show.cancel_replace_clearing_fields_groups, "Parse and add Cancel Replace Clearing Fields Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_message = Pref.bool("Show Cancel Replace Message", show.cancel_replace_message, "Parse and add Cancel Replace Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_optional_field_group = Pref.bool("Show Cancel Replace Optional Field Group", show.cancel_replace_optional_field_group, "Parse and add Cancel Replace Optional Field Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_optional_field_groups = Pref.bool("Show Cancel Replace Optional Field Groups", show.cancel_replace_optional_field_groups, "Parse and add Cancel Replace Optional Field Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_request_message = Pref.bool("Show Cancel Request Message", show.cancel_request_message, "Parse and add Cancel Request Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_clearing_dataset_group = Pref.bool("Show Clearing Dataset Group", show.clearing_dataset_group, "Parse and add Clearing Dataset Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_clearing_dataset_groups = Pref.bool("Show Clearing Dataset Groups", show.clearing_dataset_groups, "Parse and add Clearing Dataset Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_breach_confirmation_message = Pref.bool("Show Collar Breach Confirmation Message", show.collar_breach_confirmation_message, "Parse and add Collar Breach Confirmation Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_fields_group = Pref.bool("Show Collar Fields Group", show.collar_fields_group, "Parse and add Collar Fields Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_fields_groups = Pref.bool("Show Collar Fields Groups", show.collar_fields_groups, "Parse and add Collar Fields Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_dark_execution_instruction = Pref.bool("Show Dark Execution Instruction", show.dark_execution_instruction, "Parse and add Dark Execution Instruction to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_cancel_and_refusal_message = Pref.bool("Show Declaration Cancel And Refusal Message", show.declaration_cancel_and_refusal_message, "Parse and add Declaration Cancel And Refusal Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_ack_message = Pref.bool("Show Declaration Entry Ack Message", show.declaration_entry_ack_message, "Parse and add Declaration Entry Ack Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_message = Pref.bool("Show Declaration Entry Message", show.declaration_entry_message, "Parse and add Declaration Entry Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_reject_message = Pref.bool("Show Declaration Entry Reject Message", show.declaration_entry_reject_message, "Parse and add Declaration Entry Reject Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_notice_message = Pref.bool("Show Declaration Notice Message", show.declaration_notice_message, "Parse and add Declaration Notice Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_execution_instruction = Pref.bool("Show Execution Instruction", show.execution_instruction, "Parse and add Execution Instruction to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_message = Pref.bool("Show Fill Message", show.fill_message, "Parse and add Fill Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_optional_field_group = Pref.bool("Show Fill Optional Field Group", show.fill_optional_field_group, "Parse and add Fill Optional Field Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_optional_field_groups = Pref.bool("Show Fill Optional Field Groups", show.fill_optional_field_groups, "Parse and add Fill Optional Field Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_strategy_field_group = Pref.bool("Show Fill Strategy Field Group", show.fill_strategy_field_group, "Parse and add Fill Strategy Field Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_strategy_field_groups = Pref.bool("Show Fill Strategy Field Groups", show.fill_strategy_field_groups, "Parse and add Fill Strategy Field Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_free_text_groups = Pref.bool("Show Free Text Groups", show.free_text_groups, "Parse and add Free Text Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fund_price_input_ack_message = Pref.bool("Show Fund Price Input Ack Message", show.fund_price_input_ack_message, "Parse and add Fund Price Input Ack Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fund_price_input_message = Pref.bool("Show Fund Price Input Message", show.fund_price_input_message, "Parse and add Fund Price Input Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_group = Pref.bool("Show Instrument Synchronization Group", show.instrument_synchronization_group, "Parse and add Instrument Synchronization Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_groups = Pref.bool("Show Instrument Synchronization Groups", show.instrument_synchronization_groups, "Parse and add Instrument Synchronization Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_list_message = Pref.bool("Show Instrument Synchronization List Message", show.instrument_synchronization_list_message, "Parse and add Instrument Synchronization List Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_kill_message = Pref.bool("Show Kill Message", show.kill_message, "Parse and add Kill Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_liquidity_provider_command_message = Pref.bool("Show Liquidity Provider Command Message", show.liquidity_provider_command_message, "Parse and add Liquidity Provider Command Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_ack_message = Pref.bool("Show Logon Ack Message", show.logon_ack_message, "Parse and add Logon Ack Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_message = Pref.bool("Show Logon Message", show.logon_message, "Parse and add Logon Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_reject_message = Pref.bool("Show Logon Reject Message", show.logon_reject_message, "Parse and add Logon Reject Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logout_message = Pref.bool("Show Logout Message", show.logout_message, "Parse and add Logout Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mass_cancel_ack_message = Pref.bool("Show Mass Cancel Ack Message", show.mass_cancel_ack_message, "Parse and add Mass Cancel Ack Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mass_cancel_message = Pref.bool("Show Mass Cancel Message", show.mass_cancel_message, "Parse and add Mass Cancel Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mi_fid_indicators = Pref.bool("Show Mi Fid Indicators", show.mi_fid_indicators, "Parse and add Mi Fid Indicators to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mifid_short_codes_group = Pref.bool("Show Mifid Short Codes Group", show.mifid_short_codes_group, "Parse and add Mifid Short Codes Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mifid_short_codes_groups = Pref.bool("Show Mifid Short Codes Groups", show.mifid_short_codes_groups, "Parse and add Mifid Short Codes Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_new_order_message_free_text_section_group = Pref.bool("Show New Order Message Free Text Section Group", show.new_order_message_free_text_section_group, "Parse and add New Order Message Free Text Section Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_open_close = Pref.bool("Show Open Close", show.open_close, "Parse and add Open Close to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_open_order_request_message = Pref.bool("Show Open Order Request Message", show.open_order_request_message, "Parse and add Open Order Request Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_clearing_fields_group = Pref.bool("Show Order Clearing Fields Group", show.order_clearing_fields_group, "Parse and add Order Clearing Fields Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_clearing_fields_groups = Pref.bool("Show Order Clearing Fields Groups", show.order_clearing_fields_groups, "Parse and add Order Clearing Fields Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_optional_fields_group = Pref.bool("Show Order Optional Fields Group", show.order_optional_fields_group, "Parse and add Order Optional Fields Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_optional_fields_groups = Pref.bool("Show Order Optional Fields Groups", show.order_optional_fields_groups, "Parse and add Order Optional Fields Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ownership_request_ack_message = Pref.bool("Show Ownership Request Ack Message", show.ownership_request_ack_message, "Parse and add Ownership Request Ack Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ownership_request_message = Pref.bool("Show Ownership Request Message", show.ownership_request_message, "Parse and add Ownership Request Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_price_input_message = Pref.bool("Show Price Input Message", show.price_input_message, "Parse and add Price Input Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_ack_message = Pref.bool("Show Quote Ack Message", show.quote_ack_message, "Parse and add Quote Ack Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_acks_group = Pref.bool("Show Quote Acks Group", show.quote_acks_group, "Parse and add Quote Acks Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_acks_groups = Pref.bool("Show Quote Acks Groups", show.quote_acks_groups, "Parse and add Quote Acks Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_request_message = Pref.bool("Show Quote Request Message", show.quote_request_message, "Parse and add Quote Request Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_message = Pref.bool("Show Quotes Message", show.quotes_message, "Parse and add Quotes Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_rep_group = Pref.bool("Show Quotes Rep Group", show.quotes_rep_group, "Parse and add Quotes Rep Group to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_rep_groups = Pref.bool("Show Quotes Rep Groups", show.quotes_rep_groups, "Parse and add Quotes Rep Groups to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_reject_message = Pref.bool("Show Reject Message", show.reject_message, "Parse and add Reject Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_request_for_execution_message = Pref.bool("Show Request For Execution Message", show.request_for_execution_message, "Parse and add Request For Execution Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_rfq_matching_status_message = Pref.bool("Show Rfq Matching Status Message", show.rfq_matching_status_message, "Parse and add Rfq Matching Status Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_rfq_notification_message = Pref.bool("Show Rfq Notification Message", show.rfq_notification_message, "Parse and add Rfq Notification Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_synchronization_time_message = Pref.bool("Show Synchronization Time Message", show.synchronization_time_message, "Parse and add Synchronization Time Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_technical_reject_message = Pref.bool("Show Technical Reject Message", show.technical_reject_message, "Parse and add Technical Reject Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trade_bust_notification_message = Pref.bool("Show Trade Bust Notification Message", show.trade_bust_notification_message, "Parse and add Trade Bust Notification Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trade_qualifier = Pref.bool("Show Trade Qualifier", show.trade_qualifier, "Parse and add Trade Qualifier to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trading_session = Pref.bool("Show Trading Session", show.trading_session, "Parse and add Trading Session to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_user_notification_message = Pref.bool("Show User Notification Message", show.user_notification_message, "Parse and add User Notification Message to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_waiver_indicator = Pref.bool("Show Waiver Indicator", show.waiver_indicator, "Parse and add Waiver Indicator to protocol tree")
omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.ack_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ack_message then
    show.ack_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ack_message
    changed = true
  end
  if show.ack_qualifiers ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ack_qualifiers then
    show.ack_qualifiers = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ack_qualifiers
    changed = true
  end
  if show.ask_for_quote_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ask_for_quote_message then
    show.ask_for_quote_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ask_for_quote_message
    changed = true
  end
  if show.cancel_replace_clearing_fields_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_clearing_fields_group then
    show.cancel_replace_clearing_fields_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_clearing_fields_group
    changed = true
  end
  if show.cancel_replace_clearing_fields_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_clearing_fields_groups then
    show.cancel_replace_clearing_fields_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_clearing_fields_groups
    changed = true
  end
  if show.cancel_replace_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_message then
    show.cancel_replace_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_message
    changed = true
  end
  if show.cancel_replace_optional_field_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_optional_field_group then
    show.cancel_replace_optional_field_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_optional_field_group
    changed = true
  end
  if show.cancel_replace_optional_field_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_optional_field_groups then
    show.cancel_replace_optional_field_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_replace_optional_field_groups
    changed = true
  end
  if show.cancel_request_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_request_message then
    show.cancel_request_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_cancel_request_message
    changed = true
  end
  if show.clearing_dataset_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_clearing_dataset_group then
    show.clearing_dataset_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_clearing_dataset_group
    changed = true
  end
  if show.clearing_dataset_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_clearing_dataset_groups then
    show.clearing_dataset_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_clearing_dataset_groups
    changed = true
  end
  if show.collar_breach_confirmation_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_breach_confirmation_message then
    show.collar_breach_confirmation_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_breach_confirmation_message
    changed = true
  end
  if show.collar_fields_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_fields_group then
    show.collar_fields_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_fields_group
    changed = true
  end
  if show.collar_fields_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_fields_groups then
    show.collar_fields_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_collar_fields_groups
    changed = true
  end
  if show.dark_execution_instruction ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_dark_execution_instruction then
    show.dark_execution_instruction = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_dark_execution_instruction
    changed = true
  end
  if show.declaration_cancel_and_refusal_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_cancel_and_refusal_message then
    show.declaration_cancel_and_refusal_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_cancel_and_refusal_message
    changed = true
  end
  if show.declaration_entry_ack_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_ack_message then
    show.declaration_entry_ack_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_ack_message
    changed = true
  end
  if show.declaration_entry_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_message then
    show.declaration_entry_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_message
    changed = true
  end
  if show.declaration_entry_reject_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_reject_message then
    show.declaration_entry_reject_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_entry_reject_message
    changed = true
  end
  if show.declaration_notice_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_notice_message then
    show.declaration_notice_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_declaration_notice_message
    changed = true
  end
  if show.execution_instruction ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_execution_instruction then
    show.execution_instruction = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_execution_instruction
    changed = true
  end
  if show.fill_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_message then
    show.fill_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_message
    changed = true
  end
  if show.fill_optional_field_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_optional_field_group then
    show.fill_optional_field_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_optional_field_group
    changed = true
  end
  if show.fill_optional_field_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_optional_field_groups then
    show.fill_optional_field_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_optional_field_groups
    changed = true
  end
  if show.fill_strategy_field_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_strategy_field_group then
    show.fill_strategy_field_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_strategy_field_group
    changed = true
  end
  if show.fill_strategy_field_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_strategy_field_groups then
    show.fill_strategy_field_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fill_strategy_field_groups
    changed = true
  end
  if show.free_text_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_free_text_groups then
    show.free_text_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_free_text_groups
    changed = true
  end
  if show.fund_price_input_ack_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fund_price_input_ack_message then
    show.fund_price_input_ack_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fund_price_input_ack_message
    changed = true
  end
  if show.fund_price_input_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fund_price_input_message then
    show.fund_price_input_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_fund_price_input_message
    changed = true
  end
  if show.group_size_encoding ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_group_size_encoding
    changed = true
  end
  if show.instrument_synchronization_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_group then
    show.instrument_synchronization_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_group
    changed = true
  end
  if show.instrument_synchronization_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_groups then
    show.instrument_synchronization_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_groups
    changed = true
  end
  if show.instrument_synchronization_list_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_list_message then
    show.instrument_synchronization_list_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_instrument_synchronization_list_message
    changed = true
  end
  if show.kill_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_kill_message then
    show.kill_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_kill_message
    changed = true
  end
  if show.liquidity_provider_command_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_liquidity_provider_command_message then
    show.liquidity_provider_command_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_liquidity_provider_command_message
    changed = true
  end
  if show.logon_ack_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_ack_message then
    show.logon_ack_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_ack_message
    changed = true
  end
  if show.logon_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_message then
    show.logon_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_message
    changed = true
  end
  if show.logon_reject_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_reject_message then
    show.logon_reject_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logon_reject_message
    changed = true
  end
  if show.logout_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logout_message then
    show.logout_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_logout_message
    changed = true
  end
  if show.mass_cancel_ack_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mass_cancel_ack_message then
    show.mass_cancel_ack_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mass_cancel_ack_message
    changed = true
  end
  if show.mass_cancel_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mass_cancel_message then
    show.mass_cancel_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mass_cancel_message
    changed = true
  end
  if show.message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_message then
    show.message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_message_header then
    show.message_header = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_message_header
    changed = true
  end
  if show.mi_fid_indicators ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mi_fid_indicators then
    show.mi_fid_indicators = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mi_fid_indicators
    changed = true
  end
  if show.mifid_short_codes_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mifid_short_codes_group then
    show.mifid_short_codes_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mifid_short_codes_group
    changed = true
  end
  if show.mifid_short_codes_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mifid_short_codes_groups then
    show.mifid_short_codes_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_mifid_short_codes_groups
    changed = true
  end
  if show.new_order_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_new_order_message then
    show.new_order_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_new_order_message
    changed = true
  end
  if show.new_order_message_free_text_section_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_new_order_message_free_text_section_group then
    show.new_order_message_free_text_section_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_new_order_message_free_text_section_group
    changed = true
  end
  if show.open_close ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_open_close then
    show.open_close = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_open_close
    changed = true
  end
  if show.open_order_request_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_open_order_request_message then
    show.open_order_request_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_open_order_request_message
    changed = true
  end
  if show.order_clearing_fields_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_clearing_fields_group then
    show.order_clearing_fields_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_clearing_fields_group
    changed = true
  end
  if show.order_clearing_fields_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_clearing_fields_groups then
    show.order_clearing_fields_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_clearing_fields_groups
    changed = true
  end
  if show.order_optional_fields_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_optional_fields_group then
    show.order_optional_fields_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_optional_fields_group
    changed = true
  end
  if show.order_optional_fields_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_optional_fields_groups then
    show.order_optional_fields_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_order_optional_fields_groups
    changed = true
  end
  if show.ownership_request_ack_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ownership_request_ack_message then
    show.ownership_request_ack_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ownership_request_ack_message
    changed = true
  end
  if show.ownership_request_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ownership_request_message then
    show.ownership_request_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_ownership_request_message
    changed = true
  end
  if show.packet ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_packet then
    show.packet = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.price_input_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_price_input_message then
    show.price_input_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_price_input_message
    changed = true
  end
  if show.quote_ack_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_ack_message then
    show.quote_ack_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_ack_message
    changed = true
  end
  if show.quote_acks_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_acks_group then
    show.quote_acks_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_acks_group
    changed = true
  end
  if show.quote_acks_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_acks_groups then
    show.quote_acks_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_acks_groups
    changed = true
  end
  if show.quote_request_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_request_message then
    show.quote_request_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quote_request_message
    changed = true
  end
  if show.quotes_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_message then
    show.quotes_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_message
    changed = true
  end
  if show.quotes_rep_group ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_rep_group then
    show.quotes_rep_group = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_rep_group
    changed = true
  end
  if show.quotes_rep_groups ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_rep_groups then
    show.quotes_rep_groups = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_quotes_rep_groups
    changed = true
  end
  if show.reject_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_reject_message then
    show.reject_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_reject_message
    changed = true
  end
  if show.request_for_execution_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_request_for_execution_message then
    show.request_for_execution_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_request_for_execution_message
    changed = true
  end
  if show.rfq_matching_status_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_rfq_matching_status_message then
    show.rfq_matching_status_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_rfq_matching_status_message
    changed = true
  end
  if show.rfq_notification_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_rfq_notification_message then
    show.rfq_notification_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_rfq_notification_message
    changed = true
  end
  if show.synchronization_time_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_synchronization_time_message then
    show.synchronization_time_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_synchronization_time_message
    changed = true
  end
  if show.technical_reject_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_technical_reject_message then
    show.technical_reject_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_technical_reject_message
    changed = true
  end
  if show.trade_bust_notification_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trade_bust_notification_message then
    show.trade_bust_notification_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trade_bust_notification_message
    changed = true
  end
  if show.trade_qualifier ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trade_qualifier then
    show.trade_qualifier = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trade_qualifier
    changed = true
  end
  if show.trading_session ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trading_session then
    show.trading_session = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_trading_session
    changed = true
  end
  if show.user_notification_message ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_user_notification_message then
    show.user_notification_message = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_user_notification_message
    changed = true
  end
  if show.waiver_indicator ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_waiver_indicator then
    show.waiver_indicator = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_waiver_indicator
    changed = true
  end
  if show.payload ~= omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_payload then
    show.payload = omi_euronext_optiq_orderentrygateway_sbe_v1_3.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq OrderEntryGateway Sbe 1.3
-----------------------------------------------------------------------

-- Rejected Message Id
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id = {}

-- Size: Rejected Message Id
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.size = 2

-- Display: Rejected Message Id
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Rejected Message Id: No Value"
  end

  return "Rejected Message Id: "..value
end

-- Dissect: Rejected Message Id
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rejected_message_id, range, value, display)

  return offset + length, value
end

-- Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.error_code = {}

-- Size: Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.error_code.size = 2

-- Display: Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.error_code, range, value, display)

  return offset + length, value
end

-- Rejected Message
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message = {}

-- Size: Rejected Message
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.size = 1

-- Display: Rejected Message
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Rejected Message: No Value"
  end

  return "Rejected Message: "..value
end

-- Dissect: Rejected Message
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rejected_message, range, value, display)

  return offset + length, value
end

-- Rejected Client Message Sequence Number
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_client_message_sequence_number = {}

-- Size: Rejected Client Message Sequence Number
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_client_message_sequence_number.size = 4

-- Display: Rejected Client Message Sequence Number
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_client_message_sequence_number.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Rejected Client Message Sequence Number: No Value"
  end

  return "Rejected Client Message Sequence Number: "..value
end

-- Dissect: Rejected Client Message Sequence Number
euronext_optiq_orderentrygateway_sbe_v1_3.rejected_client_message_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_client_message_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_client_message_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rejected_client_message_sequence_number, range, value, display)

  return offset + length, value
end

-- Oeg Out To Member Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional = {}

-- Size: Oeg Out To Member Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size = 8

-- Display: Oeg Out To Member Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg Out To Member Optional: No Value"
  end

  return "Oeg Out To Member Optional: "..value
end

-- Dissect: Oeg Out To Member Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_out_to_member_optional, range, value, display)

  return offset + length, value
end

-- Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message = {}

-- Size: Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.rejected_client_message_sequence_number.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.error_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.size

-- Display: Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Rejected Client Message Sequence Number: uint32_t
  index, rejected_client_message_sequence_number = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_client_message_sequence_number.dissect(buffer, index, packet, parent)

  -- Rejected Message: unsigned_char
  index, rejected_message = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.dissect(buffer, index, packet, parent)

  -- Error Code: uint16_t
  index, error_code = euronext_optiq_orderentrygateway_sbe_v1_3.error_code.dissect(buffer, index, packet, parent)

  -- Rejected Message Id: uint16_t
  index, rejected_message_id = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Technical Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.technical_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.technical_reject_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Log Out Reason Code
euronext_optiq_orderentrygateway_sbe_v1_3.log_out_reason_code = {}

-- Size: Log Out Reason Code
euronext_optiq_orderentrygateway_sbe_v1_3.log_out_reason_code.size = 1

-- Display: Log Out Reason Code
euronext_optiq_orderentrygateway_sbe_v1_3.log_out_reason_code.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.log_out_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.log_out_reason_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.log_out_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.log_out_reason_code, range, value, display)

  return offset + length, value
end

-- Logout Message
euronext_optiq_orderentrygateway_sbe_v1_3.logout_message = {}

-- Size: Logout Message
euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.log_out_reason_code.size

-- Display: Logout Message
euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Log Out Reason Code: LogOutReasonCode_enum
  index, log_out_reason_code = euronext_optiq_orderentrygateway_sbe_v1_3.log_out_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.dissect = function(buffer, offset, packet, parent)
  if show.logout_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logout_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num = {}

-- Size: Last Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num.size = 4

-- Display: Last Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num.display = function(value)
  return "Last Msg Seq Num: "..value
end

-- Dissect: Last Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Last Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num = {}

-- Size: Last Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.size = 4

-- Display: Last Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.display = function(value)
  return "Last Cl Msg Seq Num: "..value
end

-- Dissect: Last Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_cl_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Logon Reject Code
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_code = {}

-- Size: Logon Reject Code
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_code.size = 1

-- Display: Logon Reject Code
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_code.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logon_reject_code, range, value, display)

  return offset + length, value
end

-- Exchange Id
euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id = {}

-- Size: Exchange Id
euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.size = 8

-- Display: Exchange Id
euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Exchange Id: No Value"
  end

  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message = {}

-- Size: Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num.size

-- Display: Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: char8
  index, exchange_id = euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.dissect(buffer, index, packet, parent)

  -- Logon Reject Code: LogonRejectCode_enum
  index, logon_reject_code = euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_code.dissect(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: uint32_t
  index, last_cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Last Msg Seq Num: uint32_t
  index, last_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logon_reject_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message = {}

-- Size: Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.size

-- Display: Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: char8
  index, exchange_id = euronext_optiq_orderentrygateway_sbe_v1_3.exchange_id.dissect(buffer, index, packet, parent)

  -- Last Cl Msg Seq Num: uint32_t
  index, last_cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.last_cl_msg_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logon_ack_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Queueing Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.queueing_indicator = {}

-- Size: Queueing Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.queueing_indicator.size = 1

-- Display: Queueing Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.queueing_indicator.display = function(value)
  return "Queueing Indicator: "..value
end

-- Dissect: Queueing Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.queueing_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.queueing_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.queueing_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.queueing_indicator, range, value, display)

  return offset + length, value
end

-- Software Provider
euronext_optiq_orderentrygateway_sbe_v1_3.software_provider = {}

-- Size: Software Provider
euronext_optiq_orderentrygateway_sbe_v1_3.software_provider.size = 8

-- Display: Software Provider
euronext_optiq_orderentrygateway_sbe_v1_3.software_provider.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Software Provider: No Value"
  end

  return "Software Provider: "..value
end

-- Dissect: Software Provider
euronext_optiq_orderentrygateway_sbe_v1_3.software_provider.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.software_provider.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.software_provider.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.software_provider, range, value, display)

  return offset + length, value
end

-- Last Msg Seq Num Optional
euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num_optional = {}

-- Size: Last Msg Seq Num Optional
euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num_optional.size = 4

-- Display: Last Msg Seq Num Optional
euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Last Msg Seq Num Optional: No Value"
  end

  return "Last Msg Seq Num Optional: "..value
end

-- Dissect: Last Msg Seq Num Optional
euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_msg_seq_num_optional, range, value, display)

  return offset + length, value
end

-- Oe Partition Id
euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id = {}

-- Size: Oe Partition Id
euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id.size = 2

-- Display: Oe Partition Id
euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id.display = function(value)
  return "Oe Partition Id: "..value
end

-- Dissect: Oe Partition Id
euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oe_partition_id, range, value, display)

  return offset + length, value
end

-- Logical Access Id
euronext_optiq_orderentrygateway_sbe_v1_3.logical_access_id = {}

-- Size: Logical Access Id
euronext_optiq_orderentrygateway_sbe_v1_3.logical_access_id.size = 4

-- Display: Logical Access Id
euronext_optiq_orderentrygateway_sbe_v1_3.logical_access_id.display = function(value)
  return "Logical Access Id: "..value
end

-- Dissect: Logical Access Id
euronext_optiq_orderentrygateway_sbe_v1_3.logical_access_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.logical_access_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.logical_access_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logical_access_id, range, value, display)

  return offset + length, value
end

-- Logon Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_message = {}

-- Size: Logon Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.logical_access_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.software_provider.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.queueing_indicator.size

-- Display: Logon Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logical Access Id: uint32_t
  index, logical_access_id = euronext_optiq_orderentrygateway_sbe_v1_3.logical_access_id.dissect(buffer, index, packet, parent)

  -- Oe Partition Id: uint16_t
  index, oe_partition_id = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id.dissect(buffer, index, packet, parent)

  -- Last Msg Seq Num Optional: uint32_t
  index, last_msg_seq_num_optional = euronext_optiq_orderentrygateway_sbe_v1_3.last_msg_seq_num_optional.dissect(buffer, index, packet, parent)

  -- Software Provider: char8
  index, software_provider = euronext_optiq_orderentrygateway_sbe_v1_3.software_provider.dissect(buffer, index, packet, parent)

  -- Queueing Indicator: unsigned_char
  index, queueing_indicator = euronext_optiq_orderentrygateway_sbe_v1_3.queueing_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Message
euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.logon_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Book In Time
euronext_optiq_orderentrygateway_sbe_v1_3.last_book_in_time = {}

-- Size: Last Book In Time
euronext_optiq_orderentrygateway_sbe_v1_3.last_book_in_time.size = 8

-- Display: Last Book In Time
euronext_optiq_orderentrygateway_sbe_v1_3.last_book_in_time.display = function(value)
  return "Last Book In Time: "..value
end

-- Dissect: Last Book In Time
euronext_optiq_orderentrygateway_sbe_v1_3.last_book_in_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.last_book_in_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.last_book_in_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_book_in_time, range, value, display)

  return offset + length, value
end

-- Resynchronization Id
euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id = {}

-- Size: Resynchronization Id
euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.size = 2

-- Display: Resynchronization Id
euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.display = function(value)
  return "Resynchronization Id: "..value
end

-- Dissect: Resynchronization Id
euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.resynchronization_id, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num = {}

-- Size: Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size = 4

-- Display: Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message = {}

-- Size: Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.last_book_in_time.size

-- Display: Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Resynchronization Id: uint16_t
  index, resynchronization_id = euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.dissect(buffer, index, packet, parent)

  -- Last Book In Time: uint64_t
  index, last_book_in_time = euronext_optiq_orderentrygateway_sbe_v1_3.last_book_in_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Synchronization Time Message
euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.dissect = function(buffer, offset, packet, parent)
  if show.synchronization_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.synchronization_time_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Emm
euronext_optiq_orderentrygateway_sbe_v1_3.emm = {}

-- Size: Emm
euronext_optiq_orderentrygateway_sbe_v1_3.emm.size = 1

-- Display: Emm
euronext_optiq_orderentrygateway_sbe_v1_3.emm.display = function(value)
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
  if value == 99 then
    return "Emm: Not Applicable (99)"
  end

  return "Emm: Unknown("..value..")"
end

-- Dissect: Emm
euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.emm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.emm.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.emm, range, value, display)

  return offset + length, value
end

-- Symbol Index
euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index = {}

-- Size: Symbol Index
euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size = 4

-- Display: Symbol Index
euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Instrument Synchronization Group
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group = {}

-- Size: Instrument Synchronization Group
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size

-- Display: Instrument Synchronization Group
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Synchronization Group
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group.fields = function(buffer, offset, packet, parent, instrument_synchronization_group_index)
  local index = offset

  -- Implicit Instrument Synchronization Group Index
  if instrument_synchronization_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_synchronization_group_index, instrument_synchronization_group_index)
    iteration:set_generated()
  end

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization Group
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group.dissect = function(buffer, offset, packet, parent, instrument_synchronization_group_index)
  if show.instrument_synchronization_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_synchronization_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group.fields(buffer, offset, packet, parent, instrument_synchronization_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group.fields(buffer, offset, packet, parent, instrument_synchronization_group_index)
  end
end

-- Num In Group
euronext_optiq_orderentrygateway_sbe_v1_3.num_in_group = {}

-- Size: Num In Group
euronext_optiq_orderentrygateway_sbe_v1_3.num_in_group.size = 1

-- Display: Num In Group
euronext_optiq_orderentrygateway_sbe_v1_3.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
euronext_optiq_orderentrygateway_sbe_v1_3.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Block Length Short
euronext_optiq_orderentrygateway_sbe_v1_3.block_length_short = {}

-- Size: Block Length Short
euronext_optiq_orderentrygateway_sbe_v1_3.block_length_short.size = 1

-- Display: Block Length Short
euronext_optiq_orderentrygateway_sbe_v1_3.block_length_short.display = function(value)
  return "Block Length Short: "..value
end

-- Dissect: Block Length Short
euronext_optiq_orderentrygateway_sbe_v1_3.block_length_short.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.block_length_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.block_length_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.block_length_short, range, value, display)

  return offset + length, value
end

-- Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding = {}

-- Size: Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.block_length_short.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.num_in_group.size

-- Display: Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length Short: uint8
  index, block_length_short = euronext_optiq_orderentrygateway_sbe_v1_3.block_length_short.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = euronext_optiq_orderentrygateway_sbe_v1_3.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.group_size_encoding, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Synchronization Groups
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups = {}

-- Calculate size of: Instrument Synchronization Groups
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local instrument_synchronization_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + instrument_synchronization_group_count * 5

  return index
end

-- Display: Instrument Synchronization Groups
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Synchronization Groups
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Instrument Synchronization Group
  for instrument_synchronization_group_index = 1, num_in_group do
    index, instrument_synchronization_group = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_group.dissect(buffer, index, packet, parent, instrument_synchronization_group_index)
  end

  return index
end

-- Dissect: Instrument Synchronization Groups
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_synchronization_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_synchronization_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.fields(buffer, offset, packet, parent)
end

-- Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message = {}

-- Calculate size of: Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.size(buffer, offset + index)

  return index
end

-- Display: Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Resynchronization Id: uint16_t
  index, resynchronization_id = euronext_optiq_orderentrygateway_sbe_v1_3.resynchronization_id.dissect(buffer, index, packet, parent)

  -- Instrument Synchronization Groups: Struct of 2 fields
  index, instrument_synchronization_groups = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Synchronization List Message
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_synchronization_list_message then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_synchronization_list_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.fields(buffer, offset, packet, parent)
end

-- Operation Type
euronext_optiq_orderentrygateway_sbe_v1_3.operation_type = {}

-- Size: Operation Type
euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.size = 1

-- Display: Operation Type
euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Mi Cof Secondary Listing
euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing = {}

-- Size: Mi Cof Secondary Listing
euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.size = 4

-- Display: Mi Cof Secondary Listing
euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mi Cof Secondary Listing: No Value"
  end

  return "Mi Cof Secondary Listing: "..value
end

-- Dissect: Mi Cof Secondary Listing
euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mi_cof_secondary_listing, range, value, display)

  return offset + length, value
end

-- Emm Optional
euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional = {}

-- Size: Emm Optional
euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.size = 1

-- Display: Emm Optional
euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.display = function(value)
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
  if value == 99 then
    return "Emm Optional: Not Applicable (99)"
  end
  if value == 255 then
    return "Emm Optional: No Value"
  end

  return "Emm Optional: Unknown("..value..")"
end

-- Dissect: Emm Optional
euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.emm_optional, range, value, display)

  return offset + length, value
end

-- Client Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id = {}

-- Size: Client Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size = 8

-- Display: Client Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.display = function(value)
  return "Client Order Id: "..value
end

-- Dissect: Client Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_order_id, range, value, display)

  return offset + length, value
end

-- Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id = {}

-- Size: Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size = 8

-- Display: Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id: No Value"
  end

  return "Firm Id: "..value
end

-- Dissect: Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message = {}

-- Size: Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.error_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.size

-- Display: Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm Optional: EMM_enum
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.dissect(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: char4
  index, mi_cof_secondary_listing = euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.dissect(buffer, index, packet, parent)

  -- Error Code: uint16_t
  index, error_code = euronext_optiq_orderentrygateway_sbe_v1_3.error_code.dissect(buffer, index, packet, parent)

  -- Rejected Message: unsigned_char
  index, rejected_message = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.dissect(buffer, index, packet, parent)

  -- Rejected Message Id: uint16_t
  index, rejected_message_id = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.declaration_entry_reject_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_entry_reject_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Bypass Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator = {}

-- Size: Bypass Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.size = 1

-- Display: Bypass Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Bypass Indicator: No Value"
  end

  return "Bypass Indicator: "..value
end

-- Dissect: Bypass Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bypass_indicator, range, value, display)

  return offset + length, value
end

-- Price
euronext_optiq_orderentrygateway_sbe_v1_3.price = {}

-- Size: Price
euronext_optiq_orderentrygateway_sbe_v1_3.price.size = 8

-- Display: Price
euronext_optiq_orderentrygateway_sbe_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
euronext_optiq_orderentrygateway_sbe_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message = {}

-- Size: Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.price.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.size

-- Display: Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Price: int64_t
  index, price = euronext_optiq_orderentrygateway_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  -- Bypass Indicator: unsigned_char
  index, bypass_indicator = euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fund Price Input Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.fund_price_input_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fund_price_input_ack_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Sending Time
euronext_optiq_orderentrygateway_sbe_v1_3.sending_time = {}

-- Size: Sending Time
euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size = 8

-- Display: Sending Time
euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.display = function(value)
  -- Parse unix timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Sending Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Sending Time
euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.sending_time, range, value, display)

  return offset + length, value
end

-- Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num = {}

-- Size: Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size = 4

-- Display: Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.display = function(value)
  return "Cl Msg Seq Num: "..value
end

-- Dissect: Cl Msg Seq Num
euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cl_msg_seq_num, range, value, display)

  return offset + length, value
end

-- Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message = {}

-- Size: Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.price.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.size

-- Display: Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Price: int64_t
  index, price = euronext_optiq_orderentrygateway_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  -- Bypass Indicator: unsigned_char
  index, bypass_indicator = euronext_optiq_orderentrygateway_sbe_v1_3.bypass_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fund Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.dissect = function(buffer, offset, packet, parent)
  if show.fund_price_input_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fund_price_input_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.fields(buffer, offset, packet, parent)
  end
end

-- Action Type
euronext_optiq_orderentrygateway_sbe_v1_3.action_type = {}

-- Size: Action Type
euronext_optiq_orderentrygateway_sbe_v1_3.action_type.size = 1

-- Display: Action Type
euronext_optiq_orderentrygateway_sbe_v1_3.action_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.action_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.action_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.action_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.action_type, range, value, display)

  return offset + length, value
end

-- Declaration Id
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id = {}

-- Size: Declaration Id
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.size = 8

-- Display: Declaration Id
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.display = function(value)
  return "Declaration Id: "..value
end

-- Dissect: Declaration Id
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_id, range, value, display)

  return offset + length, value
end

-- Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message = {}

-- Size: Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.action_type.size

-- Display: Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.dissect(buffer, index, packet, parent)

  -- Action Type: ActionType_enum
  index, action_type = euronext_optiq_orderentrygateway_sbe_v1_3.action_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Cancel And Refusal Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.dissect = function(buffer, offset, packet, parent)
  if show.declaration_cancel_and_refusal_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_cancel_and_refusal_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.fields(buffer, offset, packet, parent)
  end
end

-- Miscellaneous Fee Amount
euronext_optiq_orderentrygateway_sbe_v1_3.miscellaneous_fee_amount = {}

-- Size: Miscellaneous Fee Amount
euronext_optiq_orderentrygateway_sbe_v1_3.miscellaneous_fee_amount.size = 8

-- Display: Miscellaneous Fee Amount
euronext_optiq_orderentrygateway_sbe_v1_3.miscellaneous_fee_amount.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Miscellaneous Fee Amount: No Value"
  end

  return "Miscellaneous Fee Amount: "..value
end

-- Dissect: Miscellaneous Fee Amount
euronext_optiq_orderentrygateway_sbe_v1_3.miscellaneous_fee_amount.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.miscellaneous_fee_amount.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.miscellaneous_fee_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.miscellaneous_fee_amount, range, value, display)

  return offset + length, value
end

-- Previous Day Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.previous_day_indicator = {}

-- Size: Previous Day Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.previous_day_indicator.size = 1

-- Display: Previous Day Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.previous_day_indicator.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Previous Day Indicator: No Value"
  end

  return "Previous Day Indicator: "..value
end

-- Dissect: Previous Day Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.previous_day_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.previous_day_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.previous_day_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.previous_day_indicator, range, value, display)

  return offset + length, value
end

-- Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator = {}

-- Size: Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.size = 1

-- Display: Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Lrgs flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Lrgs"
  end
  -- Is Rfpt flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Rfpt"
  end
  -- Is Nliq flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Nliq"
  end
  -- Is Oilq flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Oilq"
  end
  -- Is Pric flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Pric"
  end
  -- Is Size flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Size"
  end
  -- Is Ilqd flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Ilqd"
  end
  -- Is Omf flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Omf"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.bits = function(range, value, packet, parent)

  -- Lrgs: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.lrgs, range, value)

  -- Rfpt: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfpt, range, value)

  -- Nliq: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.nliq, range, value)

  -- Oilq: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oilq, range, value)

  -- Pric: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.pric, range, value)

  -- Size: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.size, range, value)

  -- Ilqd: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ilqd, range, value)

  -- Omf: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.omf, range, value)
end

-- Dissect: Waiver Indicator
euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.waiver_indicator, range, display)

  if show.waiver_indicator then
    euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Free Text Cross
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross = {}

-- Size: Free Text Cross
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.size = 18

-- Display: Free Text Cross
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text Cross: No Value"
  end

  return "Free Text Cross: "..value
end

-- Dissect: Free Text Cross
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.free_text_cross, range, value, display)

  return offset + length, value
end

-- Free Text
euronext_optiq_orderentrygateway_sbe_v1_3.free_text = {}

-- Size: Free Text
euronext_optiq_orderentrygateway_sbe_v1_3.free_text.size = 18

-- Display: Free Text
euronext_optiq_orderentrygateway_sbe_v1_3.free_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text: No Value"
  end

  return "Free Text: "..value
end

-- Dissect: Free Text
euronext_optiq_orderentrygateway_sbe_v1_3.free_text.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.free_text.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.free_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.free_text, range, value, display)

  return offset + length, value
end

-- Account Number Cross
euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross = {}

-- Size: Account Number Cross
euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.size = 12

-- Display: Account Number Cross
euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number Cross: No Value"
  end

  return "Account Number Cross: "..value
end

-- Dissect: Account Number Cross
euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_number_cross, range, value, display)

  return offset + length, value
end

-- Account Number
euronext_optiq_orderentrygateway_sbe_v1_3.account_number = {}

-- Size: Account Number
euronext_optiq_orderentrygateway_sbe_v1_3.account_number.size = 12

-- Display: Account Number
euronext_optiq_orderentrygateway_sbe_v1_3.account_number.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number: No Value"
  end

  return "Account Number: "..value
end

-- Dissect: Account Number
euronext_optiq_orderentrygateway_sbe_v1_3.account_number.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.account_number.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_number, range, value, display)

  return offset + length, value
end

-- Gross Trade Amount
euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount = {}

-- Size: Gross Trade Amount
euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.size = 8

-- Display: Gross Trade Amount
euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Gross Trade Amount: No Value"
  end

  return "Gross Trade Amount: "..value
end

-- Dissect: Gross Trade Amount
euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.gross_trade_amount, range, value, display)

  return offset + length, value
end

-- End Time Vwap
euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap = {}

-- Size: End Time Vwap
euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.size = 4

-- Display: End Time Vwap
euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "End Time Vwap: No Value"
  end

  return "End Time Vwap: "..value
end

-- Dissect: End Time Vwap
euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.end_time_vwap, range, value, display)

  return offset + length, value
end

-- Start Time Vwap
euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap = {}

-- Size: Start Time Vwap
euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.size = 4

-- Display: Start Time Vwap
euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Start Time Vwap: No Value"
  end

  return "Start Time Vwap: "..value
end

-- Dissect: Start Time Vwap
euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.start_time_vwap, range, value, display)

  return offset + length, value
end

-- Principal Code Cross
euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross = {}

-- Size: Principal Code Cross
euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.size = 8

-- Display: Principal Code Cross
euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code Cross: No Value"
  end

  return "Principal Code Cross: "..value
end

-- Dissect: Principal Code Cross
euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.principal_code_cross, range, value, display)

  return offset + length, value
end

-- Principal Code
euronext_optiq_orderentrygateway_sbe_v1_3.principal_code = {}

-- Size: Principal Code
euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.size = 8

-- Display: Principal Code
euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code: No Value"
  end

  return "Principal Code: "..value
end

-- Dissect: Principal Code
euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.principal_code, range, value, display)

  return offset + length, value
end

-- Transaction Price Type
euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type = {}

-- Size: Transaction Price Type
euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.size = 1

-- Display: Transaction Price Type
euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.transaction_price_type, range, value, display)

  return offset + length, value
end

-- Guarantee Flag Optional
euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag_optional = {}

-- Size: Guarantee Flag Optional
euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag_optional.size = 1

-- Display: Guarantee Flag Optional
euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag_optional.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.guarantee_flag_optional, range, value, display)

  return offset + length, value
end

-- Settlement Period Optional
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period_optional = {}

-- Size: Settlement Period Optional
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period_optional.size = 1

-- Display: Settlement Period Optional
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Settlement Period Optional: No Value"
  end

  return "Settlement Period Optional: "..value
end

-- Dissect: Settlement Period Optional
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.settlement_period_optional, range, value, display)

  return offset + length, value
end

-- Settlement Flag Optional
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag_optional = {}

-- Size: Settlement Flag Optional
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag_optional.size = 1

-- Display: Settlement Flag Optional
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Settlement Flag Optional: No Value"
  end

  return "Settlement Flag Optional: "..value
end

-- Dissect: Settlement Flag Optional
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.settlement_flag_optional, range, value, display)

  return offset + length, value
end

-- Trading Capacity Cross
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross = {}

-- Size: Trading Capacity Cross
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.size = 1

-- Display: Trading Capacity Cross
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trading_capacity_cross, range, value, display)

  return offset + length, value
end

-- Trading Capacity Optional
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_optional = {}

-- Size: Trading Capacity Optional
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_optional.size = 1

-- Display: Trading Capacity Optional
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_optional.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trading_capacity_optional, range, value, display)

  return offset + length, value
end

-- Account Type Cross
euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross = {}

-- Size: Account Type Cross
euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.size = 1

-- Display: Account Type Cross
euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.display = function(value)
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
  if value == 255 then
    return "Account Type Cross: No Value"
  end

  return "Account Type Cross: Unknown("..value..")"
end

-- Dissect: Account Type Cross
euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_type_cross, range, value, display)

  return offset + length, value
end

-- Account Type Optional
euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional = {}

-- Size: Account Type Optional
euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.size = 1

-- Display: Account Type Optional
euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.display = function(value)
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
  if value == 255 then
    return "Account Type Optional: No Value"
  end

  return "Account Type Optional: Unknown("..value..")"
end

-- Dissect: Account Type Optional
euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_type_optional, range, value, display)

  return offset + length, value
end

-- Clearing Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id = {}

-- Size: Clearing Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.size = 8

-- Display: Clearing Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm Id: No Value"
  end

  return "Clearing Firm Id: "..value
end

-- Dissect: Clearing Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_firm_id, range, value, display)

  return offset + length, value
end

-- Centralisation Date
euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date = {}

-- Size: Centralisation Date
euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.size = 10

-- Display: Centralisation Date
euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Centralisation Date: No Value"
  end

  return "Centralisation Date: "..value
end

-- Dissect: Centralisation Date
euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.centralisation_date, range, value, display)

  return offset + length, value
end

-- Trade Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.trade_time_optional = {}

-- Size: Trade Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.trade_time_optional.size = 8

-- Display: Trade Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.trade_time_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trade Time Optional: No Value"
  end

  return "Trade Time Optional: "..value
end

-- Dissect: Trade Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.trade_time_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.trade_time_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.trade_time_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_time_optional, range, value, display)

  return offset + length, value
end

-- Pre Matching Type
euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type = {}

-- Size: Pre Matching Type
euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.size = 1

-- Display: Pre Matching Type
euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.pre_matching_type, range, value, display)

  return offset + length, value
end

-- Price Optional
euronext_optiq_orderentrygateway_sbe_v1_3.price_optional = {}

-- Size: Price Optional
euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.size = 8

-- Display: Price Optional
euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price Optional: No Value"
  end

  return "Price Optional: "..value
end

-- Dissect: Price Optional
euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.price_optional, range, value, display)

  return offset + length, value
end

-- Quantity
euronext_optiq_orderentrygateway_sbe_v1_3.quantity = {}

-- Size: Quantity
euronext_optiq_orderentrygateway_sbe_v1_3.quantity.size = 8

-- Display: Quantity
euronext_optiq_orderentrygateway_sbe_v1_3.quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quantity: No Value"
  end

  return "Quantity: "..value
end

-- Dissect: Quantity
euronext_optiq_orderentrygateway_sbe_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Side Optional
euronext_optiq_orderentrygateway_sbe_v1_3.side_optional = {}

-- Size: Side Optional
euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.size = 1

-- Display: Side Optional
euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.side_optional, range, value, display)

  return offset + length, value
end

-- Entering Counterparty
euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty = {}

-- Size: Entering Counterparty
euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.size = 8

-- Display: Entering Counterparty
euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Entering Counterparty: No Value"
  end

  return "Entering Counterparty: "..value
end

-- Dissect: Entering Counterparty
euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.entering_counterparty, range, value, display)

  return offset + length, value
end

-- Declaration Status
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_status = {}

-- Size: Declaration Status
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_status.size = 1

-- Display: Declaration Status
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_status.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_status.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_status, range, value, display)

  return offset + length, value
end

-- Client Order Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional = {}

-- Size: Client Order Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.size = 8

-- Display: Client Order Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Client Order Id Optional: No Value"
  end

  return "Client Order Id Optional: "..value
end

-- Dissect: Client Order Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_order_id_optional, range, value, display)

  return offset + length, value
end

-- Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message = {}

-- Size: Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.declaration_status.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.quantity.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.trade_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_number.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.free_text.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.previous_day_indicator.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.miscellaneous_fee_amount.size

-- Display: Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: int64_t
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id.dissect(buffer, index, packet, parent)

  -- Declaration Status: DeclarationStatus_enum
  index, declaration_status = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_status.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Entering Counterparty: char8
  index, entering_counterparty = euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.dissect(buffer, index, packet, parent)

  -- Side Optional: MassCancelAckOrderSide_enum
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.dissect(buffer, index, packet, parent)

  -- Quantity: uint64_t
  index, quantity = euronext_optiq_orderentrygateway_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price Optional: int64_t
  index, price_optional = euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.dissect(buffer, index, packet, parent)

  -- Pre Matching Type: PreMatchingType_enum
  index, pre_matching_type = euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.dissect(buffer, index, packet, parent)

  -- Trade Time Optional: uint64_t
  index, trade_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.trade_time_optional.dissect(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: char4
  index, mi_cof_secondary_listing = euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.dissect(buffer, index, packet, parent)

  -- Centralisation Date: char10
  index, centralisation_date = euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.dissect(buffer, index, packet, parent)

  -- Clearing Firm Id: char8
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Account Type Optional: AccountType_enum
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.dissect(buffer, index, packet, parent)

  -- Account Type Cross: AccountTypeCross_enum
  index, account_type_cross = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.dissect(buffer, index, packet, parent)

  -- Trading Capacity Optional: TradingCapacity_enum
  index, trading_capacity_optional = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_optional.dissect(buffer, index, packet, parent)

  -- Trading Capacity Cross: TradingCapacityCross_enum
  index, trading_capacity_cross = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.dissect(buffer, index, packet, parent)

  -- Settlement Flag Optional: unsigned_char
  index, settlement_flag_optional = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag_optional.dissect(buffer, index, packet, parent)

  -- Settlement Period Optional: unsigned_char
  index, settlement_period_optional = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period_optional.dissect(buffer, index, packet, parent)

  -- Guarantee Flag Optional: GuaranteeFlag_enum
  index, guarantee_flag_optional = euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag_optional.dissect(buffer, index, packet, parent)

  -- Transaction Price Type: TransactionPriceType_enum
  index, transaction_price_type = euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.dissect(buffer, index, packet, parent)

  -- Principal Code: char8
  index, principal_code = euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.dissect(buffer, index, packet, parent)

  -- Principal Code Cross: char8
  index, principal_code_cross = euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.dissect(buffer, index, packet, parent)

  -- Start Time Vwap: uint32_t
  index, start_time_vwap = euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.dissect(buffer, index, packet, parent)

  -- End Time Vwap: uint32_t
  index, end_time_vwap = euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.dissect(buffer, index, packet, parent)

  -- Gross Trade Amount: int64_t
  index, gross_trade_amount = euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.dissect(buffer, index, packet, parent)

  -- Account Number: char12
  index, account_number = euronext_optiq_orderentrygateway_sbe_v1_3.account_number.dissect(buffer, index, packet, parent)

  -- Account Number Cross: char12
  index, account_number_cross = euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_orderentrygateway_sbe_v1_3.free_text.dissect(buffer, index, packet, parent)

  -- Free Text Cross: char18
  index, free_text_cross = euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.dissect(buffer, index, packet, parent)

  -- Waiver Indicator: Struct of 8 fields
  index, waiver_indicator = euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.dissect(buffer, index, packet, parent)

  -- Previous Day Indicator: unsigned_char
  index, previous_day_indicator = euronext_optiq_orderentrygateway_sbe_v1_3.previous_day_indicator.dissect(buffer, index, packet, parent)

  -- Miscellaneous Fee Amount: int64_t
  index, miscellaneous_fee_amount = euronext_optiq_orderentrygateway_sbe_v1_3.miscellaneous_fee_amount.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Notice Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.dissect = function(buffer, offset, packet, parent)
  if show.declaration_notice_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_notice_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.fields(buffer, offset, packet, parent)
  end
end

-- Declaration Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id_optional = {}

-- Size: Declaration Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id_optional.size = 8

-- Display: Declaration Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Declaration Id Optional: No Value"
  end

  return "Declaration Id Optional: "..value
end

-- Dissect: Declaration Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_id_optional, range, value, display)

  return offset + length, value
end

-- Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message = {}

-- Size: Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.size

-- Display: Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Declaration Id Optional: uint64_t
  index, declaration_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_id_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: char4
  index, mi_cof_secondary_listing = euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.dissect(buffer, index, packet, parent)

  -- Pre Matching Type: PreMatchingType_enum
  index, pre_matching_type = euronext_optiq_orderentrygateway_sbe_v1_3.pre_matching_type.dissect(buffer, index, packet, parent)

  -- Waiver Indicator: Struct of 8 fields
  index, waiver_indicator = euronext_optiq_orderentrygateway_sbe_v1_3.waiver_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.declaration_entry_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_entry_ack_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Client Identification Short Code Cross
euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_short_code_cross = {}

-- Size: Client Identification Short Code Cross
euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_short_code_cross.size = 4

-- Display: Client Identification Short Code Cross
euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_short_code_cross.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Client Identification Short Code Cross: No Value"
  end

  return "Client Identification Short Code Cross: "..value
end

-- Dissect: Client Identification Short Code Cross
euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_short_code_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_short_code_cross.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_short_code_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_identification_short_code_cross, range, value, display)

  return offset + length, value
end

-- Investment Decision W Firm Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code = {}

-- Size: Investment Decision W Firm Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.size = 4

-- Display: Investment Decision W Firm Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Investment Decision W Firm Short Code: No Value"
  end

  return "Investment Decision W Firm Short Code: "..value
end

-- Dissect: Investment Decision W Firm Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.investment_decision_w_firm_short_code, range, value, display)

  return offset + length, value
end

-- Mi Fid Indicators
euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators = {}

-- Size: Mi Fid Indicators
euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.size = 1

-- Display: Mi Fid Indicators
euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dea Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dea Indicator"
  end
  -- Is Investment Algo Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Investment Algo Indicator"
  end
  -- Is Execution Algo Indicator flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Execution Algo Indicator"
  end
  -- Is Commodity Derivative Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Commodity Derivative Indicator"
  end
  -- Is Deferral Indicator flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Deferral Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mi Fid Indicators
euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.bits = function(range, value, packet, parent)

  -- Dea Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.dea_indicator, range, value)

  -- Investment Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.investment_algo_indicator, range, value)

  -- Execution Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_algo_indicator, range, value)

  -- Commodity Derivative Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.commodity_derivative_indicator, range, value)

  -- Deferral Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.deferral_indicator, range, value)

  -- Reserved 3: 3 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_3, range, value)
end

-- Dissect: Mi Fid Indicators
euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mi_fid_indicators, range, display)

  if show.mi_fid_indicators then
    euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Guarantee Flag
euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag = {}

-- Size: Guarantee Flag
euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag.size = 1

-- Display: Guarantee Flag
euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag.display = function(value)
  if value == 1 then
    return "Guarantee Flag: Clearedbutnot Guaranteed (1)"
  end
  if value == 2 then
    return "Guarantee Flag: Clearedand Guaranteed (2)"
  end

  return "Guarantee Flag: Unknown("..value..")"
end

-- Dissect: Guarantee Flag
euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.guarantee_flag, range, value, display)

  return offset + length, value
end

-- Settlement Flag
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag = {}

-- Size: Settlement Flag
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag.size = 1

-- Display: Settlement Flag
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag.display = function(value)
  return "Settlement Flag: "..value
end

-- Dissect: Settlement Flag
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.settlement_flag, range, value, display)

  return offset + length, value
end

-- Settlement Period
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period = {}

-- Size: Settlement Period
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period.size = 1

-- Display: Settlement Period
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Trading Capacity
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity = {}

-- Size: Trading Capacity
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.size = 1

-- Display: Trading Capacity
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trading_capacity, range, value, display)

  return offset + length, value
end

-- Account Type
euronext_optiq_orderentrygateway_sbe_v1_3.account_type = {}

-- Size: Account Type
euronext_optiq_orderentrygateway_sbe_v1_3.account_type.size = 1

-- Display: Account Type
euronext_optiq_orderentrygateway_sbe_v1_3.account_type.display = function(value)
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

  return "Account Type: Unknown("..value..")"
end

-- Dissect: Account Type
euronext_optiq_orderentrygateway_sbe_v1_3.account_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.account_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.account_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.account_type, range, value, display)

  return offset + length, value
end

-- Client Identification Shortcode
euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode = {}

-- Size: Client Identification Shortcode
euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size = 4

-- Display: Client Identification Shortcode
euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Client Identification Shortcode: No Value"
  end

  return "Client Identification Shortcode: "..value
end

-- Dissect: Client Identification Shortcode
euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_identification_shortcode, range, value, display)

  return offset + length, value
end

-- Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code = {}

-- Size: Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size = 4

-- Display: Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.display = function(value)
  return "Execution Within Firm Short Code: "..value
end

-- Dissect: Execution Within Firm Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_within_firm_short_code, range, value, display)

  return offset + length, value
end

-- Side
euronext_optiq_orderentrygateway_sbe_v1_3.side = {}

-- Size: Side
euronext_optiq_orderentrygateway_sbe_v1_3.side.size = 1

-- Display: Side
euronext_optiq_orderentrygateway_sbe_v1_3.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
euronext_optiq_orderentrygateway_sbe_v1_3.side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.side, range, value, display)

  return offset + length, value
end

-- Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message = {}

-- Size: Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.quantity.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_number.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.free_text.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_short_code_cross.size

-- Display: Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_orderentrygateway_sbe_v1_3.operation_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Entering Counterparty: char8
  index, entering_counterparty = euronext_optiq_orderentrygateway_sbe_v1_3.entering_counterparty.dissect(buffer, index, packet, parent)

  -- Side: CancelReplaceOrderSide_enum
  index, side = euronext_optiq_orderentrygateway_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: uint64_t
  index, quantity = euronext_optiq_orderentrygateway_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price Optional: int64_t
  index, price_optional = euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Mi Cof Secondary Listing: char4
  index, mi_cof_secondary_listing = euronext_optiq_orderentrygateway_sbe_v1_3.mi_cof_secondary_listing.dissect(buffer, index, packet, parent)

  -- Centralisation Date: char10
  index, centralisation_date = euronext_optiq_orderentrygateway_sbe_v1_3.centralisation_date.dissect(buffer, index, packet, parent)

  -- Clearing Firm Id: char8
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType_enum
  index, account_type = euronext_optiq_orderentrygateway_sbe_v1_3.account_type.dissect(buffer, index, packet, parent)

  -- Account Type Cross: AccountTypeCross_enum
  index, account_type_cross = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacity_enum
  index, trading_capacity = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.dissect(buffer, index, packet, parent)

  -- Trading Capacity Cross: TradingCapacityCross_enum
  index, trading_capacity_cross = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity_cross.dissect(buffer, index, packet, parent)

  -- Settlement Period: unsigned_char
  index, settlement_period = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_period.dissect(buffer, index, packet, parent)

  -- Settlement Flag: unsigned_char
  index, settlement_flag = euronext_optiq_orderentrygateway_sbe_v1_3.settlement_flag.dissect(buffer, index, packet, parent)

  -- Guarantee Flag: GuaranteeFlag_enum
  index, guarantee_flag = euronext_optiq_orderentrygateway_sbe_v1_3.guarantee_flag.dissect(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 6 fields
  index, mi_fid_indicators = euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.dissect(buffer, index, packet, parent)

  -- Transaction Price Type: TransactionPriceType_enum
  index, transaction_price_type = euronext_optiq_orderentrygateway_sbe_v1_3.transaction_price_type.dissect(buffer, index, packet, parent)

  -- Principal Code: char8
  index, principal_code = euronext_optiq_orderentrygateway_sbe_v1_3.principal_code.dissect(buffer, index, packet, parent)

  -- Principal Code Cross: char8
  index, principal_code_cross = euronext_optiq_orderentrygateway_sbe_v1_3.principal_code_cross.dissect(buffer, index, packet, parent)

  -- Start Time Vwap: uint32_t
  index, start_time_vwap = euronext_optiq_orderentrygateway_sbe_v1_3.start_time_vwap.dissect(buffer, index, packet, parent)

  -- End Time Vwap: uint32_t
  index, end_time_vwap = euronext_optiq_orderentrygateway_sbe_v1_3.end_time_vwap.dissect(buffer, index, packet, parent)

  -- Gross Trade Amount: int64_t
  index, gross_trade_amount = euronext_optiq_orderentrygateway_sbe_v1_3.gross_trade_amount.dissect(buffer, index, packet, parent)

  -- Account Number: char12
  index, account_number = euronext_optiq_orderentrygateway_sbe_v1_3.account_number.dissect(buffer, index, packet, parent)

  -- Account Number Cross: char12
  index, account_number_cross = euronext_optiq_orderentrygateway_sbe_v1_3.account_number_cross.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_orderentrygateway_sbe_v1_3.free_text.dissect(buffer, index, packet, parent)

  -- Free Text Cross: char18
  index, free_text_cross = euronext_optiq_orderentrygateway_sbe_v1_3.free_text_cross.dissect(buffer, index, packet, parent)

  -- Investment Decision W Firm Short Code: int32_t
  index, investment_decision_w_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Short Code Cross: int32_t
  index, client_identification_short_code_cross = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_short_code_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Declaration Entry Message
euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.declaration_entry_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.declaration_entry_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- User Status
euronext_optiq_orderentrygateway_sbe_v1_3.user_status = {}

-- Size: User Status
euronext_optiq_orderentrygateway_sbe_v1_3.user_status.size = 1

-- Display: User Status
euronext_optiq_orderentrygateway_sbe_v1_3.user_status.display = function(value)
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

  return "User Status: Unknown("..value..")"
end

-- Dissect: User Status
euronext_optiq_orderentrygateway_sbe_v1_3.user_status.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.user_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.user_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.user_status, range, value, display)

  return offset + length, value
end

-- Symbol Index Optional
euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional = {}

-- Size: Symbol Index Optional
euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.size = 4

-- Display: Symbol Index Optional
euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Symbol Index Optional: No Value"
  end

  return "Symbol Index Optional: "..value
end

-- Dissect: Symbol Index Optional
euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.symbol_index_optional, range, value, display)

  return offset + length, value
end

-- Family Id
euronext_optiq_orderentrygateway_sbe_v1_3.family_id = {}

-- Size: Family Id
euronext_optiq_orderentrygateway_sbe_v1_3.family_id.size = 8

-- Display: Family Id
euronext_optiq_orderentrygateway_sbe_v1_3.family_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Family Id: No Value"
  end

  return "Family Id: "..value
end

-- Dissect: Family Id
euronext_optiq_orderentrygateway_sbe_v1_3.family_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.family_id.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.family_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.family_id, range, value, display)

  return offset + length, value
end

-- Execution Within Firm Short Code Optional
euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code_optional = {}

-- Size: Execution Within Firm Short Code Optional
euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code_optional.size = 4

-- Display: Execution Within Firm Short Code Optional
euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code_optional.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Execution Within Firm Short Code Optional: No Value"
  end

  return "Execution Within Firm Short Code Optional: "..value
end

-- Dissect: Execution Within Firm Short Code Optional
euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code_optional.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_within_firm_short_code_optional, range, value, display)

  return offset + length, value
end

-- User Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message = {}

-- Size: User Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.family_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.user_status.size

-- Display: User Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code Optional: int32_t
  index, execution_within_firm_short_code_optional = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code_optional.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Family Id: char8
  index, family_id = euronext_optiq_orderentrygateway_sbe_v1_3.family_id.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: uint32_t
  index, symbol_index_optional = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- User Status: UserStatus_enum
  index, user_status = euronext_optiq_orderentrygateway_sbe_v1_3.user_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.user_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.user_notification_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Recipient Type
euronext_optiq_orderentrygateway_sbe_v1_3.recipient_type = {}

-- Size: Recipient Type
euronext_optiq_orderentrygateway_sbe_v1_3.recipient_type.size = 1

-- Display: Recipient Type
euronext_optiq_orderentrygateway_sbe_v1_3.recipient_type.display = function(value)
  if value == 1 then
    return "Recipient Type: Rfq Issuer (1)"
  end
  if value == 2 then
    return "Recipient Type: Rf Qrecipient Lp (2)"
  end

  return "Recipient Type: Unknown("..value..")"
end

-- Dissect: Recipient Type
euronext_optiq_orderentrygateway_sbe_v1_3.recipient_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.recipient_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.recipient_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.recipient_type, range, value, display)

  return offset + length, value
end

-- Number Of Lps
euronext_optiq_orderentrygateway_sbe_v1_3.number_of_lps = {}

-- Size: Number Of Lps
euronext_optiq_orderentrygateway_sbe_v1_3.number_of_lps.size = 1

-- Display: Number Of Lps
euronext_optiq_orderentrygateway_sbe_v1_3.number_of_lps.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Number Of Lps: No Value"
  end

  return "Number Of Lps: "..value
end

-- Dissect: Number Of Lps
euronext_optiq_orderentrygateway_sbe_v1_3.number_of_lps.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.number_of_lps.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.number_of_lps.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.number_of_lps, range, value, display)

  return offset + length, value
end

-- Potential Matching Qty
euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_qty = {}

-- Size: Potential Matching Qty
euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_qty.size = 8

-- Display: Potential Matching Qty
euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_qty.display = function(value)
  return "Potential Matching Qty: "..value
end

-- Dissect: Potential Matching Qty
euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.potential_matching_qty, range, value, display)

  return offset + length, value
end

-- Potential Matching Px
euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_px = {}

-- Size: Potential Matching Px
euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_px.size = 8

-- Display: Potential Matching Px
euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Potential Matching Px: No Value"
  end

  return "Potential Matching Px: "..value
end

-- Dissect: Potential Matching Px
euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.potential_matching_px, range, value, display)

  return offset + length, value
end

-- Quote Req Id
euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id = {}

-- Size: Quote Req Id
euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.size = 8

-- Display: Quote Req Id
euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.display = function(value)
  return "Quote Req Id: "..value
end

-- Dissect: Quote Req Id
euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_req_id, range, value, display)

  return offset + length, value
end

-- Oeg In From Me Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional = {}

-- Size: Oeg In From Me Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size = 8

-- Display: Oeg In From Me Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg In From Me Optional: No Value"
  end

  return "Oeg In From Me Optional: "..value
end

-- Dissect: Oeg In From Me Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_in_from_me_optional, range, value, display)

  return offset + length, value
end

-- Book Out Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional = {}

-- Size: Book Out Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size = 8

-- Display: Book Out Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book Out Time Optional: No Value"
  end

  return "Book Out Time Optional: "..value
end

-- Dissect: Book Out Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.book_out_time_optional, range, value, display)

  return offset + length, value
end

-- Book In
euronext_optiq_orderentrygateway_sbe_v1_3.book_in = {}

-- Size: Book In
euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size = 8

-- Display: Book In
euronext_optiq_orderentrygateway_sbe_v1_3.book_in.display = function(value)
  return "Book In: "..value
end

-- Dissect: Book In
euronext_optiq_orderentrygateway_sbe_v1_3.book_in.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.book_in, range, value, display)

  return offset + length, value
end

-- Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message = {}

-- Size: Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_qty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.number_of_lps.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.recipient_type.size

-- Display: Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Book In: uint64_t
  index, book_in = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: uint64_t
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: uint64_t
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Quote Req Id: uint64_t
  index, quote_req_id = euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.dissect(buffer, index, packet, parent)

  -- Potential Matching Px: int64_t
  index, potential_matching_px = euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_px.dissect(buffer, index, packet, parent)

  -- Potential Matching Qty: uint64_t
  index, potential_matching_qty = euronext_optiq_orderentrygateway_sbe_v1_3.potential_matching_qty.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Side: CancelReplaceOrderSide_enum
  index, side = euronext_optiq_orderentrygateway_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Number Of Lps: unsigned_char
  index, number_of_lps = euronext_optiq_orderentrygateway_sbe_v1_3.number_of_lps.dissect(buffer, index, packet, parent)

  -- Recipient Type: RecipientType_enum
  index, recipient_type = euronext_optiq_orderentrygateway_sbe_v1_3.recipient_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Matching Status Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.dissect = function(buffer, offset, packet, parent)
  if show.rfq_matching_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_matching_status_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.fields(buffer, offset, packet, parent)
  end
end

-- End Client
euronext_optiq_orderentrygateway_sbe_v1_3.end_client = {}

-- Size: End Client
euronext_optiq_orderentrygateway_sbe_v1_3.end_client.size = 11

-- Display: End Client
euronext_optiq_orderentrygateway_sbe_v1_3.end_client.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "End Client: No Value"
  end

  return "End Client: "..value
end

-- Dissect: End Client
euronext_optiq_orderentrygateway_sbe_v1_3.end_client.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.end_client.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.end_client.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.end_client, range, value, display)

  return offset + length, value
end

-- Rfq Update Type
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_update_type = {}

-- Size: Rfq Update Type
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_update_type.size = 1

-- Display: Rfq Update Type
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_update_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_update_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.rfq_update_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.rfq_update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_update_type, range, value, display)

  return offset + length, value
end

-- Counterpart Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id = {}

-- Size: Counterpart Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.size = 8

-- Display: Counterpart Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Counterpart Firm Id: No Value"
  end

  return "Counterpart Firm Id: "..value
end

-- Dissect: Counterpart Firm Id
euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.counterpart_firm_id, range, value, display)

  return offset + length, value
end

-- Order Qty
euronext_optiq_orderentrygateway_sbe_v1_3.order_qty = {}

-- Size: Order Qty
euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.size = 8

-- Display: Order Qty
euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message = {}

-- Size: Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.rfq_update_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.end_client.size

-- Display: Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Book In: uint64_t
  index, book_in = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: uint64_t
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: uint64_t
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Quote Req Id: uint64_t
  index, quote_req_id = euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uint64_t
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.dissect(buffer, index, packet, parent)

  -- Counterpart Firm Id: char8
  index, counterpart_firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Rfq Update Type: RFQUpdateType_enum
  index, rfq_update_type = euronext_optiq_orderentrygateway_sbe_v1_3.rfq_update_type.dissect(buffer, index, packet, parent)

  -- Side Optional: MassCancelAckOrderSide_enum
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.dissect(buffer, index, packet, parent)

  -- End Client: char11
  index, end_client = euronext_optiq_orderentrygateway_sbe_v1_3.end_client.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.rfq_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_notification_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message = {}

-- Size: Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size

-- Display: Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Execution Message
euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.request_for_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.request_for_execution_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Afq Reason
euronext_optiq_orderentrygateway_sbe_v1_3.afq_reason = {}

-- Size: Afq Reason
euronext_optiq_orderentrygateway_sbe_v1_3.afq_reason.size = 1

-- Display: Afq Reason
euronext_optiq_orderentrygateway_sbe_v1_3.afq_reason.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.afq_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.afq_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.afq_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.afq_reason, range, value, display)

  return offset + length, value
end

-- Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message = {}

-- Size: Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.afq_reason.size

-- Display: Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Afq Reason: AFQReason_enum
  index, afq_reason = euronext_optiq_orderentrygateway_sbe_v1_3.afq_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ask For Quote Message
euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.ask_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ask_for_quote_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Lp Action Code
euronext_optiq_orderentrygateway_sbe_v1_3.lp_action_code = {}

-- Size: Lp Action Code
euronext_optiq_orderentrygateway_sbe_v1_3.lp_action_code.size = 1

-- Display: Lp Action Code
euronext_optiq_orderentrygateway_sbe_v1_3.lp_action_code.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.lp_action_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.lp_action_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.lp_action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.lp_action_code, range, value, display)

  return offset + length, value
end

-- Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message = {}

-- Size: Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.lp_action_code.size

-- Display: Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Lp Action Code: LPActionCode_enum
  index, lp_action_code = euronext_optiq_orderentrygateway_sbe_v1_3.lp_action_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Liquidity Provider Command Message
euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.dissect = function(buffer, offset, packet, parent)
  if show.liquidity_provider_command_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.liquidity_provider_command_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.fields(buffer, offset, packet, parent)
  end
end

-- Input Price Type
euronext_optiq_orderentrygateway_sbe_v1_3.input_price_type = {}

-- Size: Input Price Type
euronext_optiq_orderentrygateway_sbe_v1_3.input_price_type.size = 1

-- Display: Input Price Type
euronext_optiq_orderentrygateway_sbe_v1_3.input_price_type.display = function(value)
  if value == 1 then
    return "Input Price Type: Valuation Price (1)"
  end
  if value == 2 then
    return "Input Price Type: Alternative Indicative Price Aip (2)"
  end

  return "Input Price Type: Unknown("..value..")"
end

-- Dissect: Input Price Type
euronext_optiq_orderentrygateway_sbe_v1_3.input_price_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.input_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.input_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.input_price_type, range, value, display)

  return offset + length, value
end

-- Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message = {}

-- Size: Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.input_price_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.size

-- Display: Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Input Price Type: InputPriceType_enum
  index, input_price_type = euronext_optiq_orderentrygateway_sbe_v1_3.input_price_type.dissect(buffer, index, packet, parent)

  -- Price Optional: int64_t
  index, price_optional = euronext_optiq_orderentrygateway_sbe_v1_3.price_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Input Message
euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.dissect = function(buffer, offset, packet, parent)
  if show.price_input_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.price_input_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.fields(buffer, offset, packet, parent)
  end
end

-- Orig Client Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id = {}

-- Size: Orig Client Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size = 8

-- Display: Orig Client Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Orig Client Order Id: No Value"
  end

  return "Orig Client Order Id: "..value
end

-- Dissect: Orig Client Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.orig_client_order_id, range, value, display)

  return offset + length, value
end

-- Order Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional = {}

-- Size: Order Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size = 8

-- Display: Order Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Id Optional: No Value"
  end

  return "Order Id Optional: "..value
end

-- Dissect: Order Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_id_optional, range, value, display)

  return offset + length, value
end

-- Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message = {}

-- Size: Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size

-- Display: Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64_t
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: int64_t
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Breach Confirmation Message
euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.collar_breach_confirmation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_breach_confirmation_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Shares
euronext_optiq_orderentrygateway_sbe_v1_3.last_shares = {}

-- Size: Last Shares
euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.size = 8

-- Display: Last Shares
euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Last Traded Px
euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px = {}

-- Size: Last Traded Px
euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.size = 8

-- Display: Last Traded Px
euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.display = function(value)
  return "Last Traded Px: "..value
end

-- Dissect: Last Traded Px
euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.last_traded_px, range, value, display)

  return offset + length, value
end

-- Execution Id
euronext_optiq_orderentrygateway_sbe_v1_3.execution_id = {}

-- Size: Execution Id
euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.size = 4

-- Display: Execution Id
euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.display = function(value)
  return "Execution Id: "..value
end

-- Dissect: Execution Id
euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_id, range, value, display)

  return offset + length, value
end

-- Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message = {}

-- Size: Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.size

-- Display: Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Book In: uint64_t
  index, book_in = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: uint64_t
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: uint64_t
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Execution Id: uint32_t
  index, execution_id = euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.dissect(buffer, index, packet, parent)

  -- Last Traded Px: int64_t
  index, last_traded_px = euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.dissect(buffer, index, packet, parent)

  -- Last Shares: uint64_t
  index, last_shares = euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Bust Notification Message
euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_bust_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_bust_notification_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Oe Partition Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional = {}

-- Size: Oe Partition Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.size = 2

-- Display: Oe Partition Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Oe Partition Id Optional: No Value"
  end

  return "Oe Partition Id Optional: "..value
end

-- Dissect: Oe Partition Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oe_partition_id_optional, range, value, display)

  return offset + length, value
end

-- Lp Role Optional
euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional = {}

-- Size: Lp Role Optional
euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.size = 4

-- Display: Lp Role Optional
euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Lp Role Optional: No Value"
  end

  return "Lp Role Optional: "..value
end

-- Dissect: Lp Role Optional
euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.lp_role_optional, range, value, display)

  return offset + length, value
end

-- Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message = {}

-- Size: Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.size

-- Display: Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64_t
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: int64_t
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: uint32_t
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Oe Partition Id Optional: uint16_t
  index, oe_partition_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ownership Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.dissect = function(buffer, offset, packet, parent)
  if show.ownership_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ownership_request_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Affected Orders
euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders = {}

-- Size: Total Affected Orders
euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.size = 4

-- Display: Total Affected Orders
euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.display = function(value)
  return "Total Affected Orders: "..value
end

-- Dissect: Total Affected Orders
euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.total_affected_orders, range, value, display)

  return offset + length, value
end

-- Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message = {}

-- Size: Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.size

-- Display: Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64_t
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: uint32_t
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Oe Partition Id Optional: uint16_t
  index, oe_partition_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: int32_t
  index, total_affected_orders = euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ownership Request Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.ownership_request_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ownership_request_ack_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message = {}

-- Size: Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size

-- Display: Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64_t
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: int64_t
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Order Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.dissect = function(buffer, offset, packet, parent)
  if show.open_order_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.open_order_request_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Type
euronext_optiq_orderentrygateway_sbe_v1_3.option_type = {}

-- Size: Option Type
euronext_optiq_orderentrygateway_sbe_v1_3.option_type.size = 1

-- Display: Option Type
euronext_optiq_orderentrygateway_sbe_v1_3.option_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.option_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.option_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.option_type, range, value, display)

  return offset + length, value
end

-- Maturity
euronext_optiq_orderentrygateway_sbe_v1_3.maturity = {}

-- Size: Maturity
euronext_optiq_orderentrygateway_sbe_v1_3.maturity.size = 8

-- Display: Maturity
euronext_optiq_orderentrygateway_sbe_v1_3.maturity.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity: No Value"
  end

  return "Maturity: "..value
end

-- Dissect: Maturity
euronext_optiq_orderentrygateway_sbe_v1_3.maturity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.maturity.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.maturity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.maturity, range, value, display)

  return offset + length, value
end

-- Contract Id
euronext_optiq_orderentrygateway_sbe_v1_3.contract_id = {}

-- Size: Contract Id
euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.size = 4

-- Display: Contract Id
euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Contract Id: No Value"
  end

  return "Contract Id: "..value
end

-- Dissect: Contract Id
euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.contract_id, range, value, display)

  return offset + length, value
end

-- Instrument Group Code
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code = {}

-- Size: Instrument Group Code
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.size = 2

-- Display: Instrument Group Code
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Instrument Group Code: No Value"
  end

  return "Instrument Group Code: "..value
end

-- Dissect: Instrument Group Code
euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.instrument_group_code, range, value, display)

  return offset + length, value
end

-- Oeg Out To Member
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member = {}

-- Size: Oeg Out To Member
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member.size = 8

-- Display: Oeg Out To Member
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member.display = function(value)
  return "Oeg Out To Member: "..value
end

-- Dissect: Oeg Out To Member
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_out_to_member, range, value, display)

  return offset + length, value
end

-- Oeg In From Me
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me = {}

-- Size: Oeg In From Me
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me.size = 8

-- Display: Oeg In From Me
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me.display = function(value)
  return "Oeg In From Me: "..value
end

-- Dissect: Oeg In From Me
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_in_from_me, range, value, display)

  return offset + length, value
end

-- Book Out Time
euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time = {}

-- Size: Book Out Time
euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time.size = 8

-- Display: Book Out Time
euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time.display = function(value)
  return "Book Out Time: "..value
end

-- Dissect: Book Out Time
euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.book_out_time, range, value, display)

  return offset + length, value
end

-- Oeg Out Time To Me
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me = {}

-- Size: Oeg Out Time To Me
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.size = 8

-- Display: Oeg Out Time To Me
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg Out Time To Me: No Value"
  end

  return "Oeg Out Time To Me: "..value
end

-- Dissect: Oeg Out Time To Me
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_out_time_to_me, range, value, display)

  return offset + length, value
end

-- Oeg In From Member
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member = {}

-- Size: Oeg In From Member
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.size = 8

-- Display: Oeg In From Member
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oeg In From Member: No Value"
  end

  return "Oeg In From Member: "..value
end

-- Dissect: Oeg In From Member
euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.oeg_in_from_member, range, value, display)

  return offset + length, value
end

-- Sending Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional = {}

-- Size: Sending Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.size = 8

-- Display: Sending Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Sending Time Optional: No Value"
  end

  return "Sending Time Optional: "..value
end

-- Dissect: Sending Time Optional
euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.sending_time_optional, range, value, display)

  return offset + length, value
end

-- Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message = {}

-- Size: Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.maturity.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.option_type.size

-- Display: Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: uint64_t
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: uint64_t
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: uint64_t
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: uint64_t
  index, book_in = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time: uint64_t
  index, book_out_time = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time.dissect(buffer, index, packet, parent)

  -- Oeg In From Me: uint64_t
  index, oeg_in_from_me = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member: uint64_t
  index, oeg_out_to_member = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Total Affected Orders: int32_t
  index, total_affected_orders = euronext_optiq_orderentrygateway_sbe_v1_3.total_affected_orders.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: uint32_t
  index, symbol_index_optional = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- Emm Optional: EMM_enum
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: char2
  index, instrument_group_code = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Side Optional: MassCancelAckOrderSide_enum
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: uint32_t
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Oe Partition Id Optional: uint16_t
  index, oe_partition_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.dissect(buffer, index, packet, parent)

  -- Contract Id: uint32_t
  index, contract_id = euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.dissect(buffer, index, packet, parent)

  -- Maturity: char8
  index, maturity = euronext_optiq_orderentrygateway_sbe_v1_3.maturity.dissect(buffer, index, packet, parent)

  -- Account Type Optional: AccountType_enum
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.dissect(buffer, index, packet, parent)

  -- Option Type: OptionType_enum
  index, option_type = euronext_optiq_orderentrygateway_sbe_v1_3.option_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mass_cancel_ack_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message = {}

-- Size: Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.maturity.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.option_type.size

-- Display: Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: uint32_t
  index, symbol_index_optional = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- Emm Optional: EMM_enum
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.dissect(buffer, index, packet, parent)

  -- Instrument Group Code: char2
  index, instrument_group_code = euronext_optiq_orderentrygateway_sbe_v1_3.instrument_group_code.dissect(buffer, index, packet, parent)

  -- Side Optional: MassCancelAckOrderSide_enum
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: uint32_t
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Oe Partition Id Optional: uint16_t
  index, oe_partition_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oe_partition_id_optional.dissect(buffer, index, packet, parent)

  -- Contract Id: uint32_t
  index, contract_id = euronext_optiq_orderentrygateway_sbe_v1_3.contract_id.dissect(buffer, index, packet, parent)

  -- Maturity: char8
  index, maturity = euronext_optiq_orderentrygateway_sbe_v1_3.maturity.dissect(buffer, index, packet, parent)

  -- Account Type Optional: AccountType_enum
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.dissect(buffer, index, packet, parent)

  -- Option Type: OptionType_enum
  index, option_type = euronext_optiq_orderentrygateway_sbe_v1_3.option_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Message
euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mass_cancel_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Type
euronext_optiq_orderentrygateway_sbe_v1_3.order_type = {}

-- Size: Order Type
euronext_optiq_orderentrygateway_sbe_v1_3.order_type.size = 1

-- Display: Order Type
euronext_optiq_orderentrygateway_sbe_v1_3.order_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.order_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_type, range, value, display)

  return offset + length, value
end

-- Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message = {}

-- Size: Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_type.size

-- Display: Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64_t
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: int64_t
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Side: CancelReplaceOrderSide_enum
  index, side = euronext_optiq_orderentrygateway_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Order Type: OrderType_enum
  index, order_type = euronext_optiq_orderentrygateway_sbe_v1_3.order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_request_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Firm Id Publication
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_publication = {}

-- Size: Firm Id Publication
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_publication.size = 1

-- Display: Firm Id Publication
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_publication.display = function(value)
  return "Firm Id Publication: "..value
end

-- Dissect: Firm Id Publication
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_publication.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_publication.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_publication.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.firm_id_publication, range, value, display)

  return offset + length, value
end

-- Quote Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message = {}

-- Size: Quote Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_publication.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.end_client.size

-- Display: Quote Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uint64_t
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Side Optional: MassCancelAckOrderSide_enum
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.dissect(buffer, index, packet, parent)

  -- Firm Id Publication: unsigned_char
  index, firm_id_publication = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_publication.dissect(buffer, index, packet, parent)

  -- End Client: char11
  index, end_client = euronext_optiq_orderentrygateway_sbe_v1_3.end_client.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_request_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.offer_error_code = {}

-- Size: Offer Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.offer_error_code.size = 2

-- Display: Offer Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.offer_error_code.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Offer Error Code: No Value"
  end

  return "Offer Error Code: "..value
end

-- Dissect: Offer Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.offer_error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.offer_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.offer_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.offer_error_code, range, value, display)

  return offset + length, value
end

-- Bid Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.bid_error_code = {}

-- Size: Bid Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.bid_error_code.size = 2

-- Display: Bid Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.bid_error_code.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Bid Error Code: No Value"
  end

  return "Bid Error Code: "..value
end

-- Dissect: Bid Error Code
euronext_optiq_orderentrygateway_sbe_v1_3.bid_error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.bid_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.bid_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bid_error_code, range, value, display)

  return offset + length, value
end

-- Sell Revision Flag
euronext_optiq_orderentrygateway_sbe_v1_3.sell_revision_flag = {}

-- Size: Sell Revision Flag
euronext_optiq_orderentrygateway_sbe_v1_3.sell_revision_flag.size = 1

-- Display: Sell Revision Flag
euronext_optiq_orderentrygateway_sbe_v1_3.sell_revision_flag.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.sell_revision_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.sell_revision_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.sell_revision_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.sell_revision_flag, range, value, display)

  return offset + length, value
end

-- Buy Revision Flag
euronext_optiq_orderentrygateway_sbe_v1_3.buy_revision_flag = {}

-- Size: Buy Revision Flag
euronext_optiq_orderentrygateway_sbe_v1_3.buy_revision_flag.size = 1

-- Display: Buy Revision Flag
euronext_optiq_orderentrygateway_sbe_v1_3.buy_revision_flag.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.buy_revision_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.buy_revision_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.buy_revision_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.buy_revision_flag, range, value, display)

  return offset + length, value
end

-- Offer Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.offer_order_id = {}

-- Size: Offer Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.offer_order_id.size = 8

-- Display: Offer Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.offer_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Order Id: No Value"
  end

  return "Offer Order Id: "..value
end

-- Dissect: Offer Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.offer_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.offer_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.offer_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.offer_order_id, range, value, display)

  return offset + length, value
end

-- Bid Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.bid_order_id = {}

-- Size: Bid Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.bid_order_id.size = 8

-- Display: Bid Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.bid_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Order Id: No Value"
  end

  return "Bid Order Id: "..value
end

-- Dissect: Bid Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.bid_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.bid_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.bid_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bid_order_id, range, value, display)

  return offset + length, value
end

-- Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group = {}

-- Size: Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.bid_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.offer_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.buy_revision_flag.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sell_revision_flag.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.bid_error_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.offer_error_code.size

-- Display: Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group.fields = function(buffer, offset, packet, parent, quote_acks_group_index)
  local index = offset

  -- Implicit Quote Acks Group Index
  if quote_acks_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_acks_group_index, quote_acks_group_index)
    iteration:set_generated()
  end

  -- Bid Order Id: uint64_t
  index, bid_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.bid_order_id.dissect(buffer, index, packet, parent)

  -- Offer Order Id: uint64_t
  index, offer_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.offer_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Buy Revision Flag: BuyRevisionIndicator_enum
  index, buy_revision_flag = euronext_optiq_orderentrygateway_sbe_v1_3.buy_revision_flag.dissect(buffer, index, packet, parent)

  -- Sell Revision Flag: SellRevisionIndicator_enum
  index, sell_revision_flag = euronext_optiq_orderentrygateway_sbe_v1_3.sell_revision_flag.dissect(buffer, index, packet, parent)

  -- Bid Error Code: uint16_t
  index, bid_error_code = euronext_optiq_orderentrygateway_sbe_v1_3.bid_error_code.dissect(buffer, index, packet, parent)

  -- Offer Error Code: uint16_t
  index, offer_error_code = euronext_optiq_orderentrygateway_sbe_v1_3.offer_error_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Acks Group
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group.dissect = function(buffer, offset, packet, parent, quote_acks_group_index)
  if show.quote_acks_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_acks_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group.fields(buffer, offset, packet, parent, quote_acks_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group.fields(buffer, offset, packet, parent, quote_acks_group_index)
  end
end

-- Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups = {}

-- Calculate size of: Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local quote_acks_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_acks_group_count * 27

  return index
end

-- Display: Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Quote Acks Group
  for quote_acks_group_index = 1, num_in_group do
    index, quote_acks_group = euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_group.dissect(buffer, index, packet, parent, quote_acks_group_index)
  end

  return index
end

-- Dissect: Quote Acks Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_acks_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_acks_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.fields(buffer, offset, packet, parent)
end

-- Lp Role
euronext_optiq_orderentrygateway_sbe_v1_3.lp_role = {}

-- Size: Lp Role
euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.size = 1

-- Display: Lp Role
euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.display = function(value)
  if value == 1 then
    return "Lp Role: Liquidity Provideror Market Maker (1)"
  end
  if value == 3 then
    return "Lp Role: Retail Liquidity Provider (3)"
  end

  return "Lp Role: Unknown("..value..")"
end

-- Dissect: Lp Role
euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.lp_role, range, value, display)

  return offset + length, value
end

-- Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message = {}

-- Calculate size of: Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.account_type.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.size(buffer, offset + index)

  return index
end

-- Display: Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: uint64_t
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: uint64_t
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: uint64_t
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: uint64_t
  index, book_in = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: uint64_t
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: uint64_t
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType_enum
  index, account_type = euronext_optiq_orderentrygateway_sbe_v1_3.account_type.dissect(buffer, index, packet, parent)

  -- Lp Role: LPRole_enum
  index, lp_role = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.dissect(buffer, index, packet, parent)

  -- Quote Acks Groups: Struct of 2 fields
  index, quote_acks_groups = euronext_optiq_orderentrygateway_sbe_v1_3.quote_acks_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_ack_message then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_ack_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.fields(buffer, offset, packet, parent)
end

-- Offer Px
euronext_optiq_orderentrygateway_sbe_v1_3.offer_px = {}

-- Size: Offer Px
euronext_optiq_orderentrygateway_sbe_v1_3.offer_px.size = 8

-- Display: Offer Px
euronext_optiq_orderentrygateway_sbe_v1_3.offer_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Dissect: Offer Px
euronext_optiq_orderentrygateway_sbe_v1_3.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.offer_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.offer_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Offer Size
euronext_optiq_orderentrygateway_sbe_v1_3.offer_size = {}

-- Size: Offer Size
euronext_optiq_orderentrygateway_sbe_v1_3.offer_size.size = 8

-- Display: Offer Size
euronext_optiq_orderentrygateway_sbe_v1_3.offer_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
euronext_optiq_orderentrygateway_sbe_v1_3.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Bid Px
euronext_optiq_orderentrygateway_sbe_v1_3.bid_px = {}

-- Size: Bid Px
euronext_optiq_orderentrygateway_sbe_v1_3.bid_px.size = 8

-- Display: Bid Px
euronext_optiq_orderentrygateway_sbe_v1_3.bid_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Dissect: Bid Px
euronext_optiq_orderentrygateway_sbe_v1_3.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.bid_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.bid_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Bid Size
euronext_optiq_orderentrygateway_sbe_v1_3.bid_size = {}

-- Size: Bid Size
euronext_optiq_orderentrygateway_sbe_v1_3.bid_size.size = 8

-- Display: Bid Size
euronext_optiq_orderentrygateway_sbe_v1_3.bid_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
euronext_optiq_orderentrygateway_sbe_v1_3.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group = {}

-- Size: Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.bid_size.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.bid_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.offer_size.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.offer_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size

-- Display: Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group.fields = function(buffer, offset, packet, parent, quotes_rep_group_index)
  local index = offset

  -- Implicit Quotes Rep Group Index
  if quotes_rep_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quotes_rep_group_index, quotes_rep_group_index)
    iteration:set_generated()
  end

  -- Bid Size: uint64_t
  index, bid_size = euronext_optiq_orderentrygateway_sbe_v1_3.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Px: int64_t
  index, bid_px = euronext_optiq_orderentrygateway_sbe_v1_3.bid_px.dissect(buffer, index, packet, parent)

  -- Offer Size: uint64_t
  index, offer_size = euronext_optiq_orderentrygateway_sbe_v1_3.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Px: int64_t
  index, offer_px = euronext_optiq_orderentrygateway_sbe_v1_3.offer_px.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Rep Group
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group.dissect = function(buffer, offset, packet, parent, quotes_rep_group_index)
  if show.quotes_rep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quotes_rep_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group.fields(buffer, offset, packet, parent, quotes_rep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group.fields(buffer, offset, packet, parent, quotes_rep_group_index)
  end
end

-- Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups = {}

-- Calculate size of: Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local quotes_rep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quotes_rep_group_count * 37

  return index
end

-- Display: Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Quotes Rep Group
  for quotes_rep_group_index = 1, num_in_group do
    index, quotes_rep_group = euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_group.dissect(buffer, index, packet, parent, quotes_rep_group_index)
  end

  return index
end

-- Dissect: Quotes Rep Groups
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_rep_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quotes_rep_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.fields(buffer, offset, packet, parent)
end

-- Clearing Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction = {}

-- Size: Clearing Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.size = 2

-- Display: Clearing Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_instruction, range, value, display)

  return offset + length, value
end

-- Open Close
euronext_optiq_orderentrygateway_sbe_v1_3.open_close = {}

-- Size: Open Close
euronext_optiq_orderentrygateway_sbe_v1_3.open_close.size = 2

-- Display: Open Close
euronext_optiq_orderentrygateway_sbe_v1_3.open_close.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Field Actively Used flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Field Actively Used"
  end
  -- Is Leg 1 flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Leg 1"
  end
  -- Is Leg 2 flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Leg 2"
  end
  -- Is Leg 3 flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Leg 3"
  end
  -- Is Leg 4 flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Leg 4"
  end
  -- Is Leg 5 flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Leg 5"
  end
  -- Is Leg 6 flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Leg 6"
  end
  -- Is Leg 7 flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Leg 7"
  end
  -- Is Leg 8 flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Leg 8"
  end
  -- Is Leg 9 flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Leg 9"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Open Close
euronext_optiq_orderentrygateway_sbe_v1_3.open_close.bits = function(range, value, packet, parent)

  -- Field Actively Used: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.field_actively_used, range, value)

  -- Leg 1: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_1, range, value)

  -- Leg 2: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_2, range, value)

  -- Leg 3: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_3, range, value)

  -- Leg 4: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_4, range, value)

  -- Leg 5: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_5, range, value)

  -- Leg 6: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_6, range, value)

  -- Leg 7: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_7, range, value)

  -- Leg 8: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_8, range, value)

  -- Leg 9: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_9, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_6, range, value)
end

-- Dissect: Open Close
euronext_optiq_orderentrygateway_sbe_v1_3.open_close.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.open_close.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.open_close.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.open_close, range, display)

  if show.open_close then
    euronext_optiq_orderentrygateway_sbe_v1_3.open_close.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Technical Origin
euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin = {}

-- Size: Technical Origin
euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.size = 1

-- Display: Technical Origin
euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.technical_origin, range, value, display)

  return offset + length, value
end

-- Client Id
euronext_optiq_orderentrygateway_sbe_v1_3.client_id = {}

-- Size: Client Id
euronext_optiq_orderentrygateway_sbe_v1_3.client_id.size = 8

-- Display: Client Id
euronext_optiq_orderentrygateway_sbe_v1_3.client_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Id: No Value"
  end

  return "Client Id: "..value
end

-- Dissect: Client Id
euronext_optiq_orderentrygateway_sbe_v1_3.client_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.client_id.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.client_id, range, value, display)

  return offset + length, value
end

-- Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group = {}

-- Size: Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_number.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.open_close.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.free_text.size

-- Display: Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group.fields = function(buffer, offset, packet, parent, clearing_dataset_group_index)
  local index = offset

  -- Implicit Clearing Dataset Group Index
  if clearing_dataset_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_dataset_group_index, clearing_dataset_group_index)
    iteration:set_generated()
  end

  -- Clearing Firm Id: char8
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id: char8
  index, client_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_id.dissect(buffer, index, packet, parent)

  -- Account Number: char12
  index, account_number = euronext_optiq_orderentrygateway_sbe_v1_3.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: TechnicalOrigin_enum
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v1_3.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: ClearingInstruction_enum
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_orderentrygateway_sbe_v1_3.free_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clearing Dataset Group
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group.dissect = function(buffer, offset, packet, parent, clearing_dataset_group_index)
  if show.clearing_dataset_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_dataset_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group.fields(buffer, offset, packet, parent, clearing_dataset_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group.fields(buffer, offset, packet, parent, clearing_dataset_group_index)
  end
end

-- Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups = {}

-- Calculate size of: Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local clearing_dataset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + clearing_dataset_group_count * 51

  return index
end

-- Display: Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Clearing Dataset Group
  for clearing_dataset_group_index = 1, num_in_group do
    index, clearing_dataset_group = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_group.dissect(buffer, index, packet, parent, clearing_dataset_group_index)
  end

  return index
end

-- Dissect: Clearing Dataset Groups
euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.clearing_dataset_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.clearing_dataset_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.fields(buffer, offset, packet, parent)
end

-- Non Executing Broker Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.non_executing_broker_short_code = {}

-- Size: Non Executing Broker Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.non_executing_broker_short_code.size = 4

-- Display: Non Executing Broker Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.non_executing_broker_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Non Executing Broker Short Code: No Value"
  end

  return "Non Executing Broker Short Code: "..value
end

-- Dissect: Non Executing Broker Short Code
euronext_optiq_orderentrygateway_sbe_v1_3.non_executing_broker_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.non_executing_broker_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.non_executing_broker_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.non_executing_broker_short_code, range, value, display)

  return offset + length, value
end

-- Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group = {}

-- Size: Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.non_executing_broker_short_code.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size

-- Display: Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group.fields = function(buffer, offset, packet, parent, mifid_short_codes_group_index)
  local index = offset

  -- Implicit Mifid Short Codes Group Index
  if mifid_short_codes_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mifid_short_codes_group_index, mifid_short_codes_group_index)
    iteration:set_generated()
  end

  -- Investment Decision W Firm Short Code: int32_t
  index, investment_decision_w_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.investment_decision_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Non Executing Broker Short Code: int32_t
  index, non_executing_broker_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.non_executing_broker_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mifid Short Codes Group
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group.dissect = function(buffer, offset, packet, parent, mifid_short_codes_group_index)
  if show.mifid_short_codes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mifid_short_codes_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group.fields(buffer, offset, packet, parent, mifid_short_codes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group.fields(buffer, offset, packet, parent, mifid_short_codes_group_index)
  end
end

-- Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups = {}

-- Calculate size of: Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local mifid_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + mifid_short_codes_group_count * 12

  return index
end

-- Display: Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Mifid Short Codes Group
  for mifid_short_codes_group_index = 1, num_in_group do
    index, mifid_short_codes_group = euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_group.dissect(buffer, index, packet, parent, mifid_short_codes_group_index)
  end

  return index
end

-- Dissect: Mifid Short Codes Groups
euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mifid_short_codes_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.mifid_short_codes_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.fields(buffer, offset, packet, parent)
end

-- Rfe Answer
euronext_optiq_orderentrygateway_sbe_v1_3.rfe_answer = {}

-- Size: Rfe Answer
euronext_optiq_orderentrygateway_sbe_v1_3.rfe_answer.size = 1

-- Display: Rfe Answer
euronext_optiq_orderentrygateway_sbe_v1_3.rfe_answer.display = function(value)
  return "Rfe Answer: "..value
end

-- Dissect: Rfe Answer
euronext_optiq_orderentrygateway_sbe_v1_3.rfe_answer.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.rfe_answer.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.rfe_answer.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfe_answer, range, value, display)

  return offset + length, value
end

-- Quotes Message
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message = {}

-- Calculate size of: Quotes Message
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.account_type.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.rfe_answer.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.size(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.size(buffer, offset + index)

  return index
end

-- Display: Quotes Message
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quotes Message
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacity_enum
  index, trading_capacity = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType_enum
  index, account_type = euronext_optiq_orderentrygateway_sbe_v1_3.account_type.dissect(buffer, index, packet, parent)

  -- Lp Role: LPRole_enum
  index, lp_role = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role.dissect(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 6 fields
  index, mi_fid_indicators = euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.dissect(buffer, index, packet, parent)

  -- Rfe Answer: unsigned_char
  index, rfe_answer = euronext_optiq_orderentrygateway_sbe_v1_3.rfe_answer.dissect(buffer, index, packet, parent)

  -- Mifid Short Codes Groups: Struct of 2 fields
  index, mifid_short_codes_groups = euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.dissect(buffer, index, packet, parent)

  -- Clearing Dataset Groups: Struct of 2 fields
  index, clearing_dataset_groups = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_dataset_groups.dissect(buffer, index, packet, parent)

  -- Quotes Rep Groups: Struct of 2 fields
  index, quotes_rep_groups = euronext_optiq_orderentrygateway_sbe_v1_3.quotes_rep_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quotes Message
euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quotes_message then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quotes_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.fields(buffer, offset, packet, parent)
end

-- Breached Collar Price
euronext_optiq_orderentrygateway_sbe_v1_3.breached_collar_price = {}

-- Size: Breached Collar Price
euronext_optiq_orderentrygateway_sbe_v1_3.breached_collar_price.size = 8

-- Display: Breached Collar Price
euronext_optiq_orderentrygateway_sbe_v1_3.breached_collar_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Breached Collar Price: No Value"
  end

  return "Breached Collar Price: "..value
end

-- Dissect: Breached Collar Price
euronext_optiq_orderentrygateway_sbe_v1_3.breached_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.breached_collar_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.breached_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.breached_collar_price, range, value, display)

  return offset + length, value
end

-- Collar Rej Type
euronext_optiq_orderentrygateway_sbe_v1_3.collar_rej_type = {}

-- Size: Collar Rej Type
euronext_optiq_orderentrygateway_sbe_v1_3.collar_rej_type.size = 1

-- Display: Collar Rej Type
euronext_optiq_orderentrygateway_sbe_v1_3.collar_rej_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.collar_rej_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.collar_rej_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.collar_rej_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_rej_type, range, value, display)

  return offset + length, value
end

-- Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group = {}

-- Size: Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.collar_rej_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.breached_collar_price.size

-- Display: Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group.fields = function(buffer, offset, packet, parent, collar_fields_group_index)
  local index = offset

  -- Implicit Collar Fields Group Index
  if collar_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_fields_group_index, collar_fields_group_index)
    iteration:set_generated()
  end

  -- Collar Rej Type: CollarRejectionType_enum
  index, collar_rej_type = euronext_optiq_orderentrygateway_sbe_v1_3.collar_rej_type.dissect(buffer, index, packet, parent)

  -- Breached Collar Price: int64_t
  index, breached_collar_price = euronext_optiq_orderentrygateway_sbe_v1_3.breached_collar_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collar Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group.dissect = function(buffer, offset, packet, parent, collar_fields_group_index)
  if show.collar_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_fields_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group.fields(buffer, offset, packet, parent, collar_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group.fields(buffer, offset, packet, parent, collar_fields_group_index)
  end
end

-- Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups = {}

-- Calculate size of: Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local collar_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + collar_fields_group_count * 9

  return index
end

-- Display: Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Collar Fields Group
  for collar_fields_group_index = 1, num_in_group do
    index, collar_fields_group = euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_group.dissect(buffer, index, packet, parent, collar_fields_group_index)
  end

  return index
end

-- Dissect: Collar Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.collar_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.collar_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.fields(buffer, offset, packet, parent)
end

-- Book In Optional
euronext_optiq_orderentrygateway_sbe_v1_3.book_in_optional = {}

-- Size: Book In Optional
euronext_optiq_orderentrygateway_sbe_v1_3.book_in_optional.size = 8

-- Display: Book In Optional
euronext_optiq_orderentrygateway_sbe_v1_3.book_in_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book In Optional: No Value"
  end

  return "Book In Optional: "..value
end

-- Dissect: Book In Optional
euronext_optiq_orderentrygateway_sbe_v1_3.book_in_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.book_in_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.book_in_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.book_in_optional, range, value, display)

  return offset + length, value
end

-- Firm Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_optional = {}

-- Size: Firm Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_optional.size = 8

-- Display: Firm Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id Optional: No Value"
  end

  return "Firm Id Optional: "..value
end

-- Dissect: Firm Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_optional.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.firm_id_optional, range, value, display)

  return offset + length, value
end

-- Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.reject_message = {}

-- Calculate size of: Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.book_in_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.error_code.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.size(buffer, offset + index)

  return index
end

-- Display: Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id Optional: char8
  index, firm_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id_optional.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: uint64_t
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: uint64_t
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: uint64_t
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In Optional: uint64_t
  index, book_in_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_in_optional.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: uint64_t
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: uint64_t
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: int64_t
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64_t
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect(buffer, index, packet, parent)

  -- Symbol Index Optional: uint32_t
  index, symbol_index_optional = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index_optional.dissect(buffer, index, packet, parent)

  -- Emm Optional: EMM_enum
  index, emm_optional = euronext_optiq_orderentrygateway_sbe_v1_3.emm_optional.dissect(buffer, index, packet, parent)

  -- Rejected Message: unsigned_char
  index, rejected_message = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message.dissect(buffer, index, packet, parent)

  -- Error Code: uint16_t
  index, error_code = euronext_optiq_orderentrygateway_sbe_v1_3.error_code.dissect(buffer, index, packet, parent)

  -- Rejected Message Id: uint16_t
  index, rejected_message_id = euronext_optiq_orderentrygateway_sbe_v1_3.rejected_message_id.dissect(buffer, index, packet, parent)

  -- Collar Fields Groups: Struct of 2 fields
  index, collar_fields_groups = euronext_optiq_orderentrygateway_sbe_v1_3.collar_fields_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reject Message
euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.reject_message then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reject_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.fields(buffer, offset, packet, parent)
end

-- Cancel Replace Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group = {}

-- Size: Cancel Replace Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_number.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.open_close.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.size

-- Display: Cancel Replace Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Replace Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group.fields = function(buffer, offset, packet, parent, cancel_replace_clearing_fields_group_index)
  local index = offset

  -- Implicit Cancel Replace Clearing Fields Group Index
  if cancel_replace_clearing_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_clearing_fields_group_index, cancel_replace_clearing_fields_group_index)
    iteration:set_generated()
  end

  -- Clearing Firm Id: char8
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id: char8
  index, client_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_id.dissect(buffer, index, packet, parent)

  -- Account Number: char12
  index, account_number = euronext_optiq_orderentrygateway_sbe_v1_3.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: TechnicalOrigin_enum
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v1_3.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: ClearingInstruction_enum
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Replace Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group.dissect = function(buffer, offset, packet, parent, cancel_replace_clearing_fields_group_index)
  if show.cancel_replace_clearing_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_clearing_fields_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group.fields(buffer, offset, packet, parent, cancel_replace_clearing_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group.fields(buffer, offset, packet, parent, cancel_replace_clearing_fields_group_index)
  end
end

-- Cancel Replace Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups = {}

-- Calculate size of: Cancel Replace Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local cancel_replace_clearing_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + cancel_replace_clearing_fields_group_count * 33

  return index
end

-- Display: Cancel Replace Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Replace Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Cancel Replace Clearing Fields Group
  for cancel_replace_clearing_fields_group_index = 1, num_in_group do
    index, cancel_replace_clearing_fields_group = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_group.dissect(buffer, index, packet, parent, cancel_replace_clearing_fields_group_index)
  end

  return index
end

-- Dissect: Cancel Replace Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cancel_replace_clearing_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_clearing_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.fields(buffer, offset, packet, parent)
end

-- Undisclosed Iceberg Type
euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type = {}

-- Size: Undisclosed Iceberg Type
euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.size = 1

-- Display: Undisclosed Iceberg Type
euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.undisclosed_iceberg_type, range, value, display)

  return offset + length, value
end

-- Stop Triggered Time In Force
euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force = {}

-- Size: Stop Triggered Time In Force
euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.size = 1

-- Display: Stop Triggered Time In Force
euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stop_triggered_time_in_force, range, value, display)

  return offset + length, value
end

-- Trading Session
euronext_optiq_orderentrygateway_sbe_v1_3.trading_session = {}

-- Size: Trading Session
euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.size = 1

-- Display: Trading Session
euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Unused Trading Session Validityset 0 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Unused Trading Session Validityset 0"
  end
  -- Is Session 1 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Session 1"
  end
  -- Is Session 2 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Session 2"
  end
  -- Is Session 3 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Session 3"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trading Session
euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.bits = function(range, value, packet, parent)

  -- Unused Trading Session Validityset 0: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.unused_trading_session_validityset_0, range, value)

  -- Session 1: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.session_1, range, value)

  -- Session 2: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.session_2, range, value)

  -- Session 3: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.session_3, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_4, range, value)
end

-- Dissect: Trading Session
euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trading_session, range, display)

  if show.trading_session then
    euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Expiration Date
euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date = {}

-- Size: Order Expiration Date
euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.size = 2

-- Display: Order Expiration Date
euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Order Expiration Date: No Value"
  end

  return "Order Expiration Date: "..value
end

-- Dissect: Order Expiration Date
euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_expiration_date, range, value, display)

  return offset + length, value
end

-- Order Expiration Time
euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time = {}

-- Size: Order Expiration Time
euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.size = 4

-- Display: Order Expiration Time
euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Expiration Time: No Value"
  end

  return "Order Expiration Time: "..value
end

-- Dissect: Order Expiration Time
euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_expiration_time, range, value, display)

  return offset + length, value
end

-- Disclosed Qty
euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty = {}

-- Size: Disclosed Qty
euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.size = 8

-- Display: Disclosed Qty
euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Disclosed Qty: No Value"
  end

  return "Disclosed Qty: "..value
end

-- Dissect: Disclosed Qty
euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.disclosed_qty, range, value, display)

  return offset + length, value
end

-- Undisclosed Price
euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price = {}

-- Size: Undisclosed Price
euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.size = 8

-- Display: Undisclosed Price
euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Undisclosed Price: No Value"
  end

  return "Undisclosed Price: "..value
end

-- Dissect: Undisclosed Price
euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.undisclosed_price, range, value, display)

  return offset + length, value
end

-- Peg Offset
euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset = {}

-- Size: Peg Offset
euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.size = 1

-- Display: Peg Offset
euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.display = function(value)
  -- Check if field has value
  if value == -128 then
    return "Peg Offset: No Value"
  end

  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Stop Px
euronext_optiq_orderentrygateway_sbe_v1_3.stop_px = {}

-- Size: Stop Px
euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.size = 8

-- Display: Stop Px
euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Dissect: Stop Px
euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Cancel Replace Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group = {}

-- Size: Cancel Replace Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.size

-- Display: Cancel Replace Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Replace Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group.fields = function(buffer, offset, packet, parent, cancel_replace_optional_field_group_index)
  local index = offset

  -- Implicit Cancel Replace Optional Field Group Index
  if cancel_replace_optional_field_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_optional_field_group_index, cancel_replace_optional_field_group_index)
    iteration:set_generated()
  end

  -- Stop Px: int64_t
  index, stop_px = euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.dissect(buffer, index, packet, parent)

  -- Peg Offset: int8_t
  index, peg_offset = euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.dissect(buffer, index, packet, parent)

  -- Undisclosed Price: int64_t
  index, undisclosed_price = euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.dissect(buffer, index, packet, parent)

  -- Disclosed Qty: uint64_t
  index, disclosed_qty = euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.dissect(buffer, index, packet, parent)

  -- Order Expiration Time: uint32_t
  index, order_expiration_time = euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.dissect(buffer, index, packet, parent)

  -- Order Expiration Date: uint16_t
  index, order_expiration_date = euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.dissect(buffer, index, packet, parent)

  -- Trading Session: Struct of 5 fields
  index, trading_session = euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  -- Stop Triggered Time In Force: TriggeredStopTimeInForce_enum
  index, stop_triggered_time_in_force = euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.dissect(buffer, index, packet, parent)

  -- Undisclosed Iceberg Type: UndisclosedIcebergType_enum
  index, undisclosed_iceberg_type = euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Replace Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group.dissect = function(buffer, offset, packet, parent, cancel_replace_optional_field_group_index)
  if show.cancel_replace_optional_field_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_optional_field_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group.fields(buffer, offset, packet, parent, cancel_replace_optional_field_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group.fields(buffer, offset, packet, parent, cancel_replace_optional_field_group_index)
  end
end

-- Cancel Replace Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups = {}

-- Calculate size of: Cancel Replace Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local cancel_replace_optional_field_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + cancel_replace_optional_field_group_count * 34

  return index
end

-- Display: Cancel Replace Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Replace Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Cancel Replace Optional Field Group
  for cancel_replace_optional_field_group_index = 1, num_in_group do
    index, cancel_replace_optional_field_group = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_group.dissect(buffer, index, packet, parent, cancel_replace_optional_field_group_index)
  end

  return index
end

-- Dissect: Cancel Replace Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cancel_replace_optional_field_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_optional_field_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.fields(buffer, offset, packet, parent)
end

-- New Order Message Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group = {}

-- Size: New Order Message Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.free_text.size

-- Display: New Order Message Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group.fields = function(buffer, offset, packet, parent, new_order_message_free_text_section_group_index)
  local index = offset

  -- Implicit New Order Message Free Text Section Group Index
  if new_order_message_free_text_section_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.new_order_message_free_text_section_group_index, new_order_message_free_text_section_group_index)
    iteration:set_generated()
  end

  -- Free Text: char18
  index, free_text = euronext_optiq_orderentrygateway_sbe_v1_3.free_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message Free Text Section Group
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group.dissect = function(buffer, offset, packet, parent, new_order_message_free_text_section_group_index)
  if show.new_order_message_free_text_section_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.new_order_message_free_text_section_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group.fields(buffer, offset, packet, parent, new_order_message_free_text_section_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group.fields(buffer, offset, packet, parent, new_order_message_free_text_section_group_index)
  end
end

-- Free Text Groups
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups = {}

-- Calculate size of: Free Text Groups
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local new_order_message_free_text_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + new_order_message_free_text_section_group_count * 18

  return index
end

-- Display: Free Text Groups
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Free Text Groups
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: New Order Message Free Text Section Group
  for new_order_message_free_text_section_group_index = 1, num_in_group do
    index, new_order_message_free_text_section_group = euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message_free_text_section_group.dissect(buffer, index, packet, parent, new_order_message_free_text_section_group_index)
  end

  return index
end

-- Dissect: Free Text Groups
euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.free_text_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.free_text_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.fields(buffer, offset, packet, parent)
end

-- Stpid
euronext_optiq_orderentrygateway_sbe_v1_3.stpid = {}

-- Size: Stpid
euronext_optiq_orderentrygateway_sbe_v1_3.stpid.size = 2

-- Display: Stpid
euronext_optiq_orderentrygateway_sbe_v1_3.stpid.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stpid: No Value"
  end

  return "Stpid: "..value
end

-- Dissect: Stpid
euronext_optiq_orderentrygateway_sbe_v1_3.stpid.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.stpid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.stpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stpid, range, value, display)

  return offset + length, value
end

-- Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction = {}

-- Size: Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.size = 1

-- Display: Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dark Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dark Indicator"
  end
  -- Is Deferred Trade Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Deferred Trade Indicator"
  end
  -- Is Displayed Order Interaction flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Displayed Order Interaction"
  end
  -- Is Sweep Order Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Sweep Order Indicator"
  end
  -- Is Minimum Quantity Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Minimum Quantity Type"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.bits = function(range, value, packet, parent)

  -- Dark Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.dark_indicator, range, value)

  -- Deferred Trade Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.deferred_trade_indicator, range, value)

  -- Displayed Order Interaction: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.displayed_order_interaction, range, value)

  -- Sweep Order Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.sweep_order_indicator, range, value)

  -- Minimum Quantity Type: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.minimum_quantity_type, range, value)

  -- Reserved 3: 3 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_3, range, value)
end

-- Dissect: Dark Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.dark_execution_instruction, range, display)

  if show.dark_execution_instruction then
    euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction = {}

-- Size: Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.size = 1

-- Display: Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Stp Resting Order flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Stp Resting Order"
  end
  -- Is Stp Incoming Order flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Stp Incoming Order"
  end
  -- Is Disclosed Quantity Randomization flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Disclosed Quantity Randomization"
  end
  -- Is Disabled Cancel On Disconnect Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Disabled Cancel On Disconnect Indicator"
  end
  -- Is Rfq Answer flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Rfq Answer"
  end
  -- Is Rfq Confirmation flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Rfq Confirmation"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.bits = function(range, value, packet, parent)

  -- Stp Resting Order: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stp_resting_order, range, value)

  -- Stp Incoming Order: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.stp_incoming_order, range, value)

  -- Disclosed Quantity Randomization: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.disclosed_quantity_randomization, range, value)

  -- Disabled Cancel On Disconnect Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.disabled_cancel_on_disconnect_indicator, range, value)

  -- Rfq Answer: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_answer, range, value)

  -- Rfq Confirmation: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.rfq_confirmation, range, value)

  -- Reserved 2: 2 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_2, range, value)
end

-- Dissect: Execution Instruction
euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_instruction, range, display)

  if show.execution_instruction then
    euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Time In Force
euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force = {}

-- Size: Time In Force
euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.size = 1

-- Display: Time In Force
euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Order Px
euronext_optiq_orderentrygateway_sbe_v1_3.order_px = {}

-- Size: Order Px
euronext_optiq_orderentrygateway_sbe_v1_3.order_px.size = 8

-- Display: Order Px
euronext_optiq_orderentrygateway_sbe_v1_3.order_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Px: No Value"
  end

  return "Order Px: "..value
end

-- Dissect: Order Px
euronext_optiq_orderentrygateway_sbe_v1_3.order_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_px, range, value, display)

  return offset + length, value
end

-- Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message = {}

-- Calculate size of: Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_px.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.emm.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.side.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_type.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.stpid.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.size(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.size(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.size(buffer, offset + index)

  return index
end

-- Display: Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Client Identification Shortcode: int32_t
  index, client_identification_shortcode = euronext_optiq_orderentrygateway_sbe_v1_3.client_identification_shortcode.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64_t
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: int64_t
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Px: int64_t
  index, order_px = euronext_optiq_orderentrygateway_sbe_v1_3.order_px.dissect(buffer, index, packet, parent)

  -- Order Qty: uint64_t
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Side: CancelReplaceOrderSide_enum
  index, side = euronext_optiq_orderentrygateway_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Order Type: OrderType_enum
  index, order_type = euronext_optiq_orderentrygateway_sbe_v1_3.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce_enum
  index, time_in_force = euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Account Type Optional: AccountType_enum
  index, account_type_optional = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_optional.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: LPRole_enum
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 7 fields
  index, execution_instruction = euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.dissect(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 6 fields
  index, mi_fid_indicators = euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.dissect(buffer, index, packet, parent)

  -- Stpid: uint16_t
  index, stpid = euronext_optiq_orderentrygateway_sbe_v1_3.stpid.dissect(buffer, index, packet, parent)

  -- Free Text Groups: Struct of 2 fields
  index, free_text_groups = euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.dissect(buffer, index, packet, parent)

  -- Cancel Replace Optional Field Groups: Struct of 2 fields
  index, cancel_replace_optional_field_groups = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_optional_field_groups.dissect(buffer, index, packet, parent)

  -- Cancel Replace Clearing Fields Groups: Struct of 2 fields
  index, cancel_replace_clearing_fields_groups = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_clearing_fields_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Replace Message
euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cancel_replace_message then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.cancel_replace_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.fields(buffer, offset, packet, parent)
end

-- Kill Reason
euronext_optiq_orderentrygateway_sbe_v1_3.kill_reason = {}

-- Size: Kill Reason
euronext_optiq_orderentrygateway_sbe_v1_3.kill_reason.size = 2

-- Display: Kill Reason
euronext_optiq_orderentrygateway_sbe_v1_3.kill_reason.display = function(value)
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

  return "Kill Reason: Unknown("..value..")"
end

-- Dissect: Kill Reason
euronext_optiq_orderentrygateway_sbe_v1_3.kill_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.kill_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.kill_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.kill_reason, range, value, display)

  return offset + length, value
end

-- Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.order_id = {}

-- Size: Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.order_id.size = 8

-- Display: Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
euronext_optiq_orderentrygateway_sbe_v1_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Kill Message
euronext_optiq_orderentrygateway_sbe_v1_3.kill_message = {}

-- Size: Kill Message
euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.kill_reason.size

-- Display: Kill Message
euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Kill Message
euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: uint64_t
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: uint64_t
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: uint64_t
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: uint64_t
  index, book_in = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: uint64_t
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: uint64_t
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: int64_t
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: int64_t
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Order Id: uint64_t
  index, order_id = euronext_optiq_orderentrygateway_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Kill Reason: KillReason_enum
  index, kill_reason = euronext_optiq_orderentrygateway_sbe_v1_3.kill_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Kill Message
euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.dissect = function(buffer, offset, packet, parent)
  if show.kill_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.kill_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Side
euronext_optiq_orderentrygateway_sbe_v1_3.leg_side = {}

-- Size: Leg Side
euronext_optiq_orderentrygateway_sbe_v1_3.leg_side.size = 1

-- Display: Leg Side
euronext_optiq_orderentrygateway_sbe_v1_3.leg_side.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Instrument Id
euronext_optiq_orderentrygateway_sbe_v1_3.leg_instrument_id = {}

-- Size: Leg Instrument Id
euronext_optiq_orderentrygateway_sbe_v1_3.leg_instrument_id.size = 4

-- Display: Leg Instrument Id
euronext_optiq_orderentrygateway_sbe_v1_3.leg_instrument_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Instrument Id: No Value"
  end

  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
euronext_optiq_orderentrygateway_sbe_v1_3.leg_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.leg_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.leg_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg Last Qty
euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_qty = {}

-- Size: Leg Last Qty
euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_qty.size = 8

-- Display: Leg Last Qty
euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Leg Last Px
euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_px = {}

-- Size: Leg Last Px
euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_px.size = 8

-- Display: Leg Last Px
euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Dissect: Leg Last Px
euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Fill Strategy Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group = {}

-- Size: Fill Strategy Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_qty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.leg_instrument_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.leg_side.size

-- Display: Fill Strategy Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fill Strategy Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group.fields = function(buffer, offset, packet, parent, fill_strategy_field_group_index)
  local index = offset

  -- Implicit Fill Strategy Field Group Index
  if fill_strategy_field_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_strategy_field_group_index, fill_strategy_field_group_index)
    iteration:set_generated()
  end

  -- Leg Last Px: int64_t
  index, leg_last_px = euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: uint64_t
  index, leg_last_qty = euronext_optiq_orderentrygateway_sbe_v1_3.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: uint32_t
  index, leg_instrument_id = euronext_optiq_orderentrygateway_sbe_v1_3.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Side: LegSide_enum
  index, leg_side = euronext_optiq_orderentrygateway_sbe_v1_3.leg_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fill Strategy Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group.dissect = function(buffer, offset, packet, parent, fill_strategy_field_group_index)
  if show.fill_strategy_field_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_strategy_field_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group.fields(buffer, offset, packet, parent, fill_strategy_field_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group.fields(buffer, offset, packet, parent, fill_strategy_field_group_index)
  end
end

-- Fill Strategy Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups = {}

-- Calculate size of: Fill Strategy Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local fill_strategy_field_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + fill_strategy_field_group_count * 21

  return index
end

-- Display: Fill Strategy Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fill Strategy Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Fill Strategy Field Group
  for fill_strategy_field_group_index = 1, num_in_group do
    index, fill_strategy_field_group = euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_group.dissect(buffer, index, packet, parent, fill_strategy_field_group_index)
  end

  return index
end

-- Dissect: Fill Strategy Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.fill_strategy_field_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_strategy_field_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.fields(buffer, offset, packet, parent)
end

-- Underlying Instrument Id
euronext_optiq_orderentrygateway_sbe_v1_3.underlying_instrument_id = {}

-- Size: Underlying Instrument Id
euronext_optiq_orderentrygateway_sbe_v1_3.underlying_instrument_id.size = 4

-- Display: Underlying Instrument Id
euronext_optiq_orderentrygateway_sbe_v1_3.underlying_instrument_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Underlying Instrument Id: No Value"
  end

  return "Underlying Instrument Id: "..value
end

-- Dissect: Underlying Instrument Id
euronext_optiq_orderentrygateway_sbe_v1_3.underlying_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.underlying_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.underlying_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.underlying_instrument_id, range, value, display)

  return offset + length, value
end

-- Package Id
euronext_optiq_orderentrygateway_sbe_v1_3.package_id = {}

-- Size: Package Id
euronext_optiq_orderentrygateway_sbe_v1_3.package_id.size = 12

-- Display: Package Id
euronext_optiq_orderentrygateway_sbe_v1_3.package_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Package Id: No Value"
  end

  return "Package Id: "..value
end

-- Dissect: Package Id
euronext_optiq_orderentrygateway_sbe_v1_3.package_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.package_id.size
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

  local display = euronext_optiq_orderentrygateway_sbe_v1_3.package_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.package_id, range, value, display)

  return offset + length, value
end

-- Other Leg Last Px
euronext_optiq_orderentrygateway_sbe_v1_3.other_leg_last_px = {}

-- Size: Other Leg Last Px
euronext_optiq_orderentrygateway_sbe_v1_3.other_leg_last_px.size = 8

-- Display: Other Leg Last Px
euronext_optiq_orderentrygateway_sbe_v1_3.other_leg_last_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Other Leg Last Px: No Value"
  end

  return "Other Leg Last Px: "..value
end

-- Dissect: Other Leg Last Px
euronext_optiq_orderentrygateway_sbe_v1_3.other_leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.other_leg_last_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.other_leg_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.other_leg_last_px, range, value, display)

  return offset + length, value
end

-- Fill Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group = {}

-- Size: Fill Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.other_leg_last_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.package_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.underlying_instrument_id.size

-- Display: Fill Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fill Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group.fields = function(buffer, offset, packet, parent, fill_optional_field_group_index)
  local index = offset

  -- Implicit Fill Optional Field Group Index
  if fill_optional_field_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_optional_field_group_index, fill_optional_field_group_index)
    iteration:set_generated()
  end

  -- Counterpart Firm Id: char8
  index, counterpart_firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.counterpart_firm_id.dissect(buffer, index, packet, parent)

  -- Other Leg Last Px: int64_t
  index, other_leg_last_px = euronext_optiq_orderentrygateway_sbe_v1_3.other_leg_last_px.dissect(buffer, index, packet, parent)

  -- Package Id: char12
  index, package_id = euronext_optiq_orderentrygateway_sbe_v1_3.package_id.dissect(buffer, index, packet, parent)

  -- Underlying Instrument Id: uint32_t
  index, underlying_instrument_id = euronext_optiq_orderentrygateway_sbe_v1_3.underlying_instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fill Optional Field Group
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group.dissect = function(buffer, offset, packet, parent, fill_optional_field_group_index)
  if show.fill_optional_field_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_optional_field_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group.fields(buffer, offset, packet, parent, fill_optional_field_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group.fields(buffer, offset, packet, parent, fill_optional_field_group_index)
  end
end

-- Fill Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups = {}

-- Calculate size of: Fill Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local fill_optional_field_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + fill_optional_field_group_count * 32

  return index
end

-- Display: Fill Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fill Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Fill Optional Field Group
  for fill_optional_field_group_index = 1, num_in_group do
    index, fill_optional_field_group = euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_group.dissect(buffer, index, packet, parent, fill_optional_field_group_index)
  end

  return index
end

-- Dissect: Fill Optional Field Groups
euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.fill_optional_field_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_optional_field_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.fields(buffer, offset, packet, parent)
end

-- Execution Phase
euronext_optiq_orderentrygateway_sbe_v1_3.execution_phase = {}

-- Size: Execution Phase
euronext_optiq_orderentrygateway_sbe_v1_3.execution_phase.size = 1

-- Display: Execution Phase
euronext_optiq_orderentrygateway_sbe_v1_3.execution_phase.display = function(value)
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
euronext_optiq_orderentrygateway_sbe_v1_3.execution_phase.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.execution_phase.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.execution_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.execution_phase, range, value, display)

  return offset + length, value
end

-- Leaves Qty
euronext_optiq_orderentrygateway_sbe_v1_3.leaves_qty = {}

-- Size: Leaves Qty
euronext_optiq_orderentrygateway_sbe_v1_3.leaves_qty.size = 8

-- Display: Leaves Qty
euronext_optiq_orderentrygateway_sbe_v1_3.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
euronext_optiq_orderentrygateway_sbe_v1_3.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier = {}

-- Size: Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.size = 1

-- Display: Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Uncrossing Trade flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Uncrossing Trade"
  end
  -- Is First Trade Price flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "First Trade Price"
  end
  -- Is Passive Order flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Passive Order"
  end
  -- Is Aggressive Order flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Aggressive Order"
  end
  -- Is Trade Creation By Market Operations flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Creation By Market Operations"
  end
  -- Is Nav Trade Expressed In Bps flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Nav Trade Expressed In Bps"
  end
  -- Is Nav Trade Expressed In Price Currency flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Nav Trade Expressed In Price Currency"
  end
  -- Is Unused Trade Qualifierset 7 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Unused Trade Qualifierset 7"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.bits = function(range, value, packet, parent)

  -- Uncrossing Trade: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.uncrossing_trade, range, value)

  -- First Trade Price: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.first_trade_price, range, value)

  -- Passive Order: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.passive_order, range, value)

  -- Aggressive Order: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.aggressive_order, range, value)

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_creation_by_market_operations, range, value)

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.nav_trade_expressed_in_bps, range, value)

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.nav_trade_expressed_in_price_currency, range, value)

  -- Unused Trade Qualifierset 7: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.unused_trade_qualifierset_7, range, value)
end

-- Dissect: Trade Qualifier
euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_qualifier, range, display)

  if show.trade_qualifier then
    euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Type
euronext_optiq_orderentrygateway_sbe_v1_3.trade_type = {}

-- Size: Trade Type
euronext_optiq_orderentrygateway_sbe_v1_3.trade_type.size = 1

-- Display: Trade Type
euronext_optiq_orderentrygateway_sbe_v1_3.trade_type.display = function(value)
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

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
euronext_optiq_orderentrygateway_sbe_v1_3.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trade Time
euronext_optiq_orderentrygateway_sbe_v1_3.trade_time = {}

-- Size: Trade Time
euronext_optiq_orderentrygateway_sbe_v1_3.trade_time.size = 8

-- Display: Trade Time
euronext_optiq_orderentrygateway_sbe_v1_3.trade_time.display = function(value)
  return "Trade Time: "..value
end

-- Dissect: Trade Time
euronext_optiq_orderentrygateway_sbe_v1_3.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Fill Message
euronext_optiq_orderentrygateway_sbe_v1_3.fill_message = {}

-- Calculate size of: Fill Message
euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.trade_time.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.emm.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.side.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.trade_type.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.leaves_qty.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.execution_phase.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.size(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.size(buffer, offset + index)

  return index
end

-- Display: Fill Message
euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fill Message
euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Trade Time: uint64_t
  index, trade_time = euronext_optiq_orderentrygateway_sbe_v1_3.trade_time.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: uint64_t
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: uint64_t
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: int64_t
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Side: CancelReplaceOrderSide_enum
  index, side = euronext_optiq_orderentrygateway_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Trade Type: TradeType_enum
  index, trade_type = euronext_optiq_orderentrygateway_sbe_v1_3.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Qualifier: Struct of 8 fields
  index, trade_qualifier = euronext_optiq_orderentrygateway_sbe_v1_3.trade_qualifier.dissect(buffer, index, packet, parent)

  -- Order Id: uint64_t
  index, order_id = euronext_optiq_orderentrygateway_sbe_v1_3.order_id.dissect(buffer, index, packet, parent)

  -- Last Traded Px: int64_t
  index, last_traded_px = euronext_optiq_orderentrygateway_sbe_v1_3.last_traded_px.dissect(buffer, index, packet, parent)

  -- Last Shares: uint64_t
  index, last_shares = euronext_optiq_orderentrygateway_sbe_v1_3.last_shares.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint64_t
  index, leaves_qty = euronext_optiq_orderentrygateway_sbe_v1_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Execution Id: uint32_t
  index, execution_id = euronext_optiq_orderentrygateway_sbe_v1_3.execution_id.dissect(buffer, index, packet, parent)

  -- Execution Phase: ExecutionPhase_enum
  index, execution_phase = euronext_optiq_orderentrygateway_sbe_v1_3.execution_phase.dissect(buffer, index, packet, parent)

  -- Fill Optional Field Groups: Struct of 2 fields
  index, fill_optional_field_groups = euronext_optiq_orderentrygateway_sbe_v1_3.fill_optional_field_groups.dissect(buffer, index, packet, parent)

  -- Fill Strategy Field Groups: Struct of 2 fields
  index, fill_strategy_field_groups = euronext_optiq_orderentrygateway_sbe_v1_3.fill_strategy_field_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fill Message
euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.fill_message then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.fill_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.fields(buffer, offset, packet, parent)
end

-- Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers = {}

-- Size: Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.size = 1

-- Display: Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dark Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dark Indicator"
  end
  -- Is Queue Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Queue Indicator"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.bits = function(range, value, packet, parent)

  -- Dark Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.dark_indicator, range, value)

  -- Queue Indicator: 1 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.queue_indicator, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.reserved_6, range, value)
end

-- Dissect: Ack Qualifiers
euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ack_qualifiers, range, display)

  if show.ack_qualifiers then
    euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Qty Optional
euronext_optiq_orderentrygateway_sbe_v1_3.order_qty_optional = {}

-- Size: Order Qty Optional
euronext_optiq_orderentrygateway_sbe_v1_3.order_qty_optional.size = 8

-- Display: Order Qty Optional
euronext_optiq_orderentrygateway_sbe_v1_3.order_qty_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Qty Optional: No Value"
  end

  return "Order Qty Optional: "..value
end

-- Dissect: Order Qty Optional
euronext_optiq_orderentrygateway_sbe_v1_3.order_qty_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_qty_optional, range, value, display)

  return offset + length, value
end

-- Order Priority
euronext_optiq_orderentrygateway_sbe_v1_3.order_priority = {}

-- Size: Order Priority
euronext_optiq_orderentrygateway_sbe_v1_3.order_priority.size = 8

-- Display: Order Priority
euronext_optiq_orderentrygateway_sbe_v1_3.order_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Priority: No Value"
  end

  return "Order Priority: "..value
end

-- Dissect: Order Priority
euronext_optiq_orderentrygateway_sbe_v1_3.order_priority.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_priority, range, value, display)

  return offset + length, value
end

-- Ack Phase
euronext_optiq_orderentrygateway_sbe_v1_3.ack_phase = {}

-- Size: Ack Phase
euronext_optiq_orderentrygateway_sbe_v1_3.ack_phase.size = 1

-- Display: Ack Phase
euronext_optiq_orderentrygateway_sbe_v1_3.ack_phase.display = function(value)
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
  if value == 255 then
    return "Ack Phase: No Value"
  end

  return "Ack Phase: Unknown("..value..")"
end

-- Dissect: Ack Phase
euronext_optiq_orderentrygateway_sbe_v1_3.ack_phase.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.ack_phase.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.ack_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ack_phase, range, value, display)

  return offset + length, value
end

-- Ack Type
euronext_optiq_orderentrygateway_sbe_v1_3.ack_type = {}

-- Size: Ack Type
euronext_optiq_orderentrygateway_sbe_v1_3.ack_type.size = 1

-- Display: Ack Type
euronext_optiq_orderentrygateway_sbe_v1_3.ack_type.display = function(value)
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

  return "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
euronext_optiq_orderentrygateway_sbe_v1_3.ack_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ack_message = {}

-- Size: Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_in.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.emm.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.ack_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.ack_phase.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_priority.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_qty_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.size

-- Display: Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time Optional: uint64_t
  index, sending_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Member: uint64_t
  index, oeg_in_from_member = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_member.dissect(buffer, index, packet, parent)

  -- Oeg Out Time To Me: uint64_t
  index, oeg_out_time_to_me = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_time_to_me.dissect(buffer, index, packet, parent)

  -- Book In: uint64_t
  index, book_in = euronext_optiq_orderentrygateway_sbe_v1_3.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time Optional: uint64_t
  index, book_out_time_optional = euronext_optiq_orderentrygateway_sbe_v1_3.book_out_time_optional.dissect(buffer, index, packet, parent)

  -- Oeg In From Me Optional: uint64_t
  index, oeg_in_from_me_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_in_from_me_optional.dissect(buffer, index, packet, parent)

  -- Oeg Out To Member Optional: uint64_t
  index, oeg_out_to_member_optional = euronext_optiq_orderentrygateway_sbe_v1_3.oeg_out_to_member_optional.dissect(buffer, index, packet, parent)

  -- Client Order Id Optional: int64_t
  index, client_order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id_optional.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: int64_t
  index, orig_client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Side Optional: MassCancelAckOrderSide_enum
  index, side_optional = euronext_optiq_orderentrygateway_sbe_v1_3.side_optional.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType_enum
  index, ack_type = euronext_optiq_orderentrygateway_sbe_v1_3.ack_type.dissect(buffer, index, packet, parent)

  -- Ack Phase: AckPhase_enum
  index, ack_phase = euronext_optiq_orderentrygateway_sbe_v1_3.ack_phase.dissect(buffer, index, packet, parent)

  -- Order Id Optional: uint64_t
  index, order_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_id_optional.dissect(buffer, index, packet, parent)

  -- Order Priority: uint64_t
  index, order_priority = euronext_optiq_orderentrygateway_sbe_v1_3.order_priority.dissect(buffer, index, packet, parent)

  -- Order Px: int64_t
  index, order_px = euronext_optiq_orderentrygateway_sbe_v1_3.order_px.dissect(buffer, index, packet, parent)

  -- Order Qty Optional: uint64_t
  index, order_qty_optional = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty_optional.dissect(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 3 fields
  index, ack_qualifiers = euronext_optiq_orderentrygateway_sbe_v1_3.ack_qualifiers.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ack Message
euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.dissect = function(buffer, offset, packet, parent)
  if show.ack_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.ack_message, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group = {}

-- Size: Order Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.client_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_number.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.open_close.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.size

-- Display: Order Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group.fields = function(buffer, offset, packet, parent, order_clearing_fields_group_index)
  local index = offset

  -- Implicit Order Clearing Fields Group Index
  if order_clearing_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_clearing_fields_group_index, order_clearing_fields_group_index)
    iteration:set_generated()
  end

  -- Clearing Firm Id: char8
  index, clearing_firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id: char8
  index, client_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_id.dissect(buffer, index, packet, parent)

  -- Account Number: char12
  index, account_number = euronext_optiq_orderentrygateway_sbe_v1_3.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: TechnicalOrigin_enum
  index, technical_origin = euronext_optiq_orderentrygateway_sbe_v1_3.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_orderentrygateway_sbe_v1_3.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction: ClearingInstruction_enum
  index, clearing_instruction = euronext_optiq_orderentrygateway_sbe_v1_3.clearing_instruction.dissect(buffer, index, packet, parent)

  -- Account Type Cross: AccountTypeCross_enum
  index, account_type_cross = euronext_optiq_orderentrygateway_sbe_v1_3.account_type_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Clearing Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group.dissect = function(buffer, offset, packet, parent, order_clearing_fields_group_index)
  if show.order_clearing_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_clearing_fields_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group.fields(buffer, offset, packet, parent, order_clearing_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group.fields(buffer, offset, packet, parent, order_clearing_fields_group_index)
  end
end

-- Order Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups = {}

-- Calculate size of: Order Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local order_clearing_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + order_clearing_fields_group_count * 34

  return index
end

-- Display: Order Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Order Clearing Fields Group
  for order_clearing_fields_group_index = 1, num_in_group do
    index, order_clearing_fields_group = euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_group.dissect(buffer, index, packet, parent, order_clearing_fields_group_index)
  end

  return index
end

-- Dissect: Order Clearing Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_clearing_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_clearing_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.fields(buffer, offset, packet, parent)
end

-- Quote Req Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id_optional = {}

-- Size: Quote Req Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id_optional.size = 8

-- Display: Quote Req Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quote Req Id Optional: No Value"
  end

  return "Quote Req Id Optional: "..value
end

-- Dissect: Quote Req Id Optional
euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.quote_req_id_optional, range, value, display)

  return offset + length, value
end

-- Min Order Qty
euronext_optiq_orderentrygateway_sbe_v1_3.min_order_qty = {}

-- Size: Min Order Qty
euronext_optiq_orderentrygateway_sbe_v1_3.min_order_qty.size = 8

-- Display: Min Order Qty
euronext_optiq_orderentrygateway_sbe_v1_3.min_order_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Min Order Qty: No Value"
  end

  return "Min Order Qty: "..value
end

-- Dissect: Min Order Qty
euronext_optiq_orderentrygateway_sbe_v1_3.min_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.min_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.min_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.min_order_qty, range, value, display)

  return offset + length, value
end

-- Order Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group = {}

-- Size: Order Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.min_order_qty.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id_optional.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.size

-- Display: Order Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group.fields = function(buffer, offset, packet, parent, order_optional_fields_group_index)
  local index = offset

  -- Implicit Order Optional Fields Group Index
  if order_optional_fields_group_index ~= nil then
    local iteration = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_optional_fields_group_index, order_optional_fields_group_index)
    iteration:set_generated()
  end

  -- Stop Px: int64_t
  index, stop_px = euronext_optiq_orderentrygateway_sbe_v1_3.stop_px.dissect(buffer, index, packet, parent)

  -- Undisclosed Price: int64_t
  index, undisclosed_price = euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_price.dissect(buffer, index, packet, parent)

  -- Disclosed Qty: uint64_t
  index, disclosed_qty = euronext_optiq_orderentrygateway_sbe_v1_3.disclosed_qty.dissect(buffer, index, packet, parent)

  -- Min Order Qty: uint64_t
  index, min_order_qty = euronext_optiq_orderentrygateway_sbe_v1_3.min_order_qty.dissect(buffer, index, packet, parent)

  -- Quote Req Id Optional: uint64_t
  index, quote_req_id_optional = euronext_optiq_orderentrygateway_sbe_v1_3.quote_req_id_optional.dissect(buffer, index, packet, parent)

  -- Order Expiration Time: uint32_t
  index, order_expiration_time = euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_time.dissect(buffer, index, packet, parent)

  -- Order Expiration Date: uint16_t
  index, order_expiration_date = euronext_optiq_orderentrygateway_sbe_v1_3.order_expiration_date.dissect(buffer, index, packet, parent)

  -- Peg Offset: int8_t
  index, peg_offset = euronext_optiq_orderentrygateway_sbe_v1_3.peg_offset.dissect(buffer, index, packet, parent)

  -- Trading Session: Struct of 5 fields
  index, trading_session = euronext_optiq_orderentrygateway_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  -- Undisclosed Iceberg Type: UndisclosedIcebergType_enum
  index, undisclosed_iceberg_type = euronext_optiq_orderentrygateway_sbe_v1_3.undisclosed_iceberg_type.dissect(buffer, index, packet, parent)

  -- Stop Triggered Time In Force: TriggeredStopTimeInForce_enum
  index, stop_triggered_time_in_force = euronext_optiq_orderentrygateway_sbe_v1_3.stop_triggered_time_in_force.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Optional Fields Group
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group.dissect = function(buffer, offset, packet, parent, order_optional_fields_group_index)
  if show.order_optional_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_optional_fields_group, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group.fields(buffer, offset, packet, parent, order_optional_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group.fields(buffer, offset, packet, parent, order_optional_fields_group_index)
  end
end

-- Order Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups = {}

-- Calculate size of: Order Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.size

  -- Calculate field size from count
  local order_optional_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + order_optional_fields_group_count * 50

  return index
end

-- Display: Order Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_orderentrygateway_sbe_v1_3.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: Order Optional Fields Group
  for order_optional_fields_group_index = 1, num_in_group do
    index, order_optional_fields_group = euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_group.dissect(buffer, index, packet, parent, order_optional_fields_group_index)
  end

  return index
end

-- Dissect: Order Optional Fields Groups
euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.order_optional_fields_groups then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.order_optional_fields_groups, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.fields(buffer, offset, packet, parent)
end

-- New Order Message
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message = {}

-- Calculate size of: New Order Message
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.emm.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.side.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_type.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_px.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.account_type.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.stpid.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.size(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.size(buffer, offset + index)

  return index
end

-- Display: New Order Message
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Msg Seq Num: uint32_t
  index, cl_msg_seq_num = euronext_optiq_orderentrygateway_sbe_v1_3.cl_msg_seq_num.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_orderentrygateway_sbe_v1_3.firm_id.dissect(buffer, index, packet, parent)

  -- Sending Time: uint64_t
  index, sending_time = euronext_optiq_orderentrygateway_sbe_v1_3.sending_time.dissect(buffer, index, packet, parent)

  -- Client Order Id: int64_t
  index, client_order_id = euronext_optiq_orderentrygateway_sbe_v1_3.client_order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_orderentrygateway_sbe_v1_3.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_orderentrygateway_sbe_v1_3.emm.dissect(buffer, index, packet, parent)

  -- Side: CancelReplaceOrderSide_enum
  index, side = euronext_optiq_orderentrygateway_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Order Type: OrderType_enum
  index, order_type = euronext_optiq_orderentrygateway_sbe_v1_3.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force: TimeInForce_enum
  index, time_in_force = euronext_optiq_orderentrygateway_sbe_v1_3.time_in_force.dissect(buffer, index, packet, parent)

  -- Order Px: int64_t
  index, order_px = euronext_optiq_orderentrygateway_sbe_v1_3.order_px.dissect(buffer, index, packet, parent)

  -- Order Qty: uint64_t
  index, order_qty = euronext_optiq_orderentrygateway_sbe_v1_3.order_qty.dissect(buffer, index, packet, parent)

  -- Execution Within Firm Short Code: int32_t
  index, execution_within_firm_short_code = euronext_optiq_orderentrygateway_sbe_v1_3.execution_within_firm_short_code.dissect(buffer, index, packet, parent)

  -- Trading Capacity: TradingCapacity_enum
  index, trading_capacity = euronext_optiq_orderentrygateway_sbe_v1_3.trading_capacity.dissect(buffer, index, packet, parent)

  -- Account Type: AccountType_enum
  index, account_type = euronext_optiq_orderentrygateway_sbe_v1_3.account_type.dissect(buffer, index, packet, parent)

  -- Lp Role Optional: LPRole_enum
  index, lp_role_optional = euronext_optiq_orderentrygateway_sbe_v1_3.lp_role_optional.dissect(buffer, index, packet, parent)

  -- Execution Instruction: Struct of 7 fields
  index, execution_instruction = euronext_optiq_orderentrygateway_sbe_v1_3.execution_instruction.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_orderentrygateway_sbe_v1_3.dark_execution_instruction.dissect(buffer, index, packet, parent)

  -- Mi Fid Indicators: Struct of 6 fields
  index, mi_fid_indicators = euronext_optiq_orderentrygateway_sbe_v1_3.mi_fid_indicators.dissect(buffer, index, packet, parent)

  -- Stpid: uint16_t
  index, stpid = euronext_optiq_orderentrygateway_sbe_v1_3.stpid.dissect(buffer, index, packet, parent)

  -- Free Text Groups: Struct of 2 fields
  index, free_text_groups = euronext_optiq_orderentrygateway_sbe_v1_3.free_text_groups.dissect(buffer, index, packet, parent)

  -- Mifid Short Codes Groups: Struct of 2 fields
  index, mifid_short_codes_groups = euronext_optiq_orderentrygateway_sbe_v1_3.mifid_short_codes_groups.dissect(buffer, index, packet, parent)

  -- Order Optional Fields Groups: Struct of 2 fields
  index, order_optional_fields_groups = euronext_optiq_orderentrygateway_sbe_v1_3.order_optional_fields_groups.dissect(buffer, index, packet, parent)

  -- Order Clearing Fields Groups: Struct of 2 fields
  index, order_clearing_fields_groups = euronext_optiq_orderentrygateway_sbe_v1_3.order_clearing_fields_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_message then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.new_order_message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.fields(buffer, offset, packet, parent)
end

-- Payload
euronext_optiq_orderentrygateway_sbe_v1_3.payload = {}

-- Size: Payload
euronext_optiq_orderentrygateway_sbe_v1_3.payload.size = function(buffer, offset, template_id)
  -- Size of New Order Message
  if template_id == 1 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.size(buffer, offset)
  end
  -- Size of Ack Message
  if template_id == 3 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.size
  end
  -- Size of Fill Message
  if template_id == 4 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.size(buffer, offset)
  end
  -- Size of Kill Message
  if template_id == 5 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.size
  end
  -- Size of Cancel Replace Message
  if template_id == 6 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.size(buffer, offset)
  end
  -- Size of Reject Message
  if template_id == 7 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.size(buffer, offset)
  end
  -- Size of Quotes Message
  if template_id == 8 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.size(buffer, offset)
  end
  -- Size of Quote Ack Message
  if template_id == 9 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.size(buffer, offset)
  end
  -- Size of Quote Request Message
  if template_id == 10 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.size
  end
  -- Size of Cancel Request Message
  if template_id == 12 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.size
  end
  -- Size of Mass Cancel Message
  if template_id == 13 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.size
  end
  -- Size of Mass Cancel Ack Message
  if template_id == 14 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.size
  end
  -- Size of Open Order Request Message
  if template_id == 15 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.size
  end
  -- Size of Ownership Request Ack Message
  if template_id == 17 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.size
  end
  -- Size of Ownership Request Message
  if template_id == 18 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.size
  end
  -- Size of Trade Bust Notification Message
  if template_id == 19 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.size
  end
  -- Size of Collar Breach Confirmation Message
  if template_id == 20 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.size
  end
  -- Size of Price Input Message
  if template_id == 28 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.size
  end
  -- Size of Liquidity Provider Command Message
  if template_id == 32 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.size
  end
  -- Size of Ask For Quote Message
  if template_id == 33 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.size
  end
  -- Size of Request For Execution Message
  if template_id == 34 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.size
  end
  -- Size of Rfq Notification Message
  if template_id == 35 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.size
  end
  -- Size of Rfq Matching Status Message
  if template_id == 36 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.size
  end
  -- Size of User Notification Message
  if template_id == 39 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.size
  end
  -- Size of Declaration Entry Message
  if template_id == 40 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.size
  end
  -- Size of Declaration Entry Ack Message
  if template_id == 41 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.size
  end
  -- Size of Declaration Notice Message
  if template_id == 42 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.size
  end
  -- Size of Declaration Cancel And Refusal Message
  if template_id == 43 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.size
  end
  -- Size of Fund Price Input Message
  if template_id == 44 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.size
  end
  -- Size of Fund Price Input Ack Message
  if template_id == 45 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.size
  end
  -- Size of Declaration Entry Reject Message
  if template_id == 46 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.size
  end
  -- Size of Instrument Synchronization List Message
  if template_id == 50 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.size(buffer, offset)
  end
  -- Size of Synchronization Time Message
  if template_id == 51 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.size
  end
  -- Size of Logon Message
  if template_id == 100 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.size
  end
  -- Size of Logon Ack Message
  if template_id == 101 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.size
  end
  -- Size of Logon Reject Message
  if template_id == 102 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.size
  end
  -- Size of Logout Message
  if template_id == 103 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.size
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
    return euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.size
  end

  return 0
end

-- Display: Payload
euronext_optiq_orderentrygateway_sbe_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
euronext_optiq_orderentrygateway_sbe_v1_3.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect New Order Message
  if template_id == 1 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ack Message
  if template_id == 3 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fill Message
  if template_id == 4 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.fill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Kill Message
  if template_id == 5 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.kill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Replace Message
  if template_id == 6 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reject Message
  if template_id == 7 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quotes Message
  if template_id == 8 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Ack Message
  if template_id == 9 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.quote_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request Message
  if template_id == 10 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Request Message
  if template_id == 12 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.cancel_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Message
  if template_id == 13 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Ack Message
  if template_id == 14 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.mass_cancel_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Order Request Message
  if template_id == 15 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.open_order_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ownership Request Ack Message
  if template_id == 17 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ownership Request Message
  if template_id == 18 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.ownership_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Bust Notification Message
  if template_id == 19 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.trade_bust_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Collar Breach Confirmation Message
  if template_id == 20 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.collar_breach_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Input Message
  if template_id == 28 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.price_input_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Liquidity Provider Command Message
  if template_id == 32 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.liquidity_provider_command_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Ask For Quote Message
  if template_id == 33 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.ask_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Execution Message
  if template_id == 34 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.request_for_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Notification Message
  if template_id == 35 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.rfq_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Matching Status Message
  if template_id == 36 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.rfq_matching_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Notification Message
  if template_id == 39 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.user_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Message
  if template_id == 40 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Ack Message
  if template_id == 41 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Notice Message
  if template_id == 42 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_notice_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Cancel And Refusal Message
  if template_id == 43 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_cancel_and_refusal_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fund Price Input Message
  if template_id == 44 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fund Price Input Ack Message
  if template_id == 45 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.fund_price_input_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Declaration Entry Reject Message
  if template_id == 46 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.declaration_entry_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Synchronization List Message
  if template_id == 50 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.instrument_synchronization_list_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Synchronization Time Message
  if template_id == 51 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.synchronization_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Message
  if template_id == 100 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Ack Message
  if template_id == 101 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_ack_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logon Reject Message
  if template_id == 102 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.logon_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if template_id == 103 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if template_id == 106 then
  end
  -- Dissect Test Request Message
  if template_id == 107 then
  end
  -- Dissect Technical Reject Message
  if template_id == 108 then
    return euronext_optiq_orderentrygateway_sbe_v1_3.technical_reject_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
euronext_optiq_orderentrygateway_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return euronext_optiq_orderentrygateway_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = euronext_optiq_orderentrygateway_sbe_v1_3.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.payload, range, display)

  return euronext_optiq_orderentrygateway_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
euronext_optiq_orderentrygateway_sbe_v1_3.version = {}

-- Size: Version
euronext_optiq_orderentrygateway_sbe_v1_3.version.size = 2

-- Display: Version
euronext_optiq_orderentrygateway_sbe_v1_3.version.display = function(value)
  if value == 102 then
    return "Version: Version 1.3.2"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
euronext_optiq_orderentrygateway_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
euronext_optiq_orderentrygateway_sbe_v1_3.schema_id = {}

-- Size: Schema Id
euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.size = 2

-- Display: Schema Id
euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.display = function(value)
  if value == 0 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
euronext_optiq_orderentrygateway_sbe_v1_3.template_id = {}

-- Size: Template Id
euronext_optiq_orderentrygateway_sbe_v1_3.template_id.size = 2

-- Display: Template Id
euronext_optiq_orderentrygateway_sbe_v1_3.template_id.display = function(value)
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
  if value == 39 then
    return "Template Id: User Notification Message (39)"
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
  if value == 50 then
    return "Template Id: Instrument Synchronization List Message (50)"
  end
  if value == 51 then
    return "Template Id: Synchronization Time Message (51)"
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

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
euronext_optiq_orderentrygateway_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
euronext_optiq_orderentrygateway_sbe_v1_3.block_length = {}

-- Size: Block Length
euronext_optiq_orderentrygateway_sbe_v1_3.block_length.size = 2

-- Display: Block Length
euronext_optiq_orderentrygateway_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
euronext_optiq_orderentrygateway_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Message Header
euronext_optiq_orderentrygateway_sbe_v1_3.message_header = {}

-- Size: Message Header
euronext_optiq_orderentrygateway_sbe_v1_3.message_header.size =
  euronext_optiq_orderentrygateway_sbe_v1_3.block_length.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.template_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.size + 
  euronext_optiq_orderentrygateway_sbe_v1_3.version.size

-- Display: Message Header
euronext_optiq_orderentrygateway_sbe_v1_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
euronext_optiq_orderentrygateway_sbe_v1_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = euronext_optiq_orderentrygateway_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = euronext_optiq_orderentrygateway_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = euronext_optiq_orderentrygateway_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
euronext_optiq_orderentrygateway_sbe_v1_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.message_header, buffer(offset, 0))
    local index = euronext_optiq_orderentrygateway_sbe_v1_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_orderentrygateway_sbe_v1_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Frame
euronext_optiq_orderentrygateway_sbe_v1_3.frame = {}

-- Size: Frame
euronext_optiq_orderentrygateway_sbe_v1_3.frame.size = 2

-- Display: Frame
euronext_optiq_orderentrygateway_sbe_v1_3.frame.display = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
euronext_optiq_orderentrygateway_sbe_v1_3.frame.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_orderentrygateway_sbe_v1_3.frame.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_orderentrygateway_sbe_v1_3.frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.frame, range, value, display)

  return offset + length, value
end

-- Message
euronext_optiq_orderentrygateway_sbe_v1_3.message = {}

-- Calculate size of: Message
euronext_optiq_orderentrygateway_sbe_v1_3.message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.frame.size

  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + euronext_optiq_orderentrygateway_sbe_v1_3.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
euronext_optiq_orderentrygateway_sbe_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
euronext_optiq_orderentrygateway_sbe_v1_3.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = euronext_optiq_orderentrygateway_sbe_v1_3.frame.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = euronext_optiq_orderentrygateway_sbe_v1_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 40 branches
  index = euronext_optiq_orderentrygateway_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
euronext_optiq_orderentrygateway_sbe_v1_3.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = euronext_optiq_orderentrygateway_sbe_v1_3.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = euronext_optiq_orderentrygateway_sbe_v1_3.message.display(buffer, packet, parent)
    parent = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3.fields.message, range, display)
  end

  return euronext_optiq_orderentrygateway_sbe_v1_3.message.fields(buffer, offset, packet, parent)
end

-- Packet
euronext_optiq_orderentrygateway_sbe_v1_3.packet = {}

-- Dissect Packet
euronext_optiq_orderentrygateway_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  while index < end_of_payload do
    index, message = euronext_optiq_orderentrygateway_sbe_v1_3.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_euronext_optiq_orderentrygateway_sbe_v1_3.init()
end

-- Dissector for Euronext Optiq OrderEntryGateway Sbe 1.3
function omi_euronext_optiq_orderentrygateway_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_euronext_optiq_orderentrygateway_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_euronext_optiq_orderentrygateway_sbe_v1_3, buffer(), omi_euronext_optiq_orderentrygateway_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return euronext_optiq_orderentrygateway_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_euronext_optiq_orderentrygateway_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
euronext_optiq_orderentrygateway_sbe_v1_3.packet.requiredsize = function(buffer)

  return true
end

-- Verify Schema Id Field
euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Verify Version Field
euronext_optiq_orderentrygateway_sbe_v1_3.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 102 then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq OrderEntryGateway Sbe 1.3
local function omi_euronext_optiq_orderentrygateway_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not euronext_optiq_orderentrygateway_sbe_v1_3.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not euronext_optiq_orderentrygateway_sbe_v1_3.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not euronext_optiq_orderentrygateway_sbe_v1_3.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_euronext_optiq_orderentrygateway_sbe_v1_3
  omi_euronext_optiq_orderentrygateway_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq OrderEntryGateway Sbe 1.3
omi_euronext_optiq_orderentrygateway_sbe_v1_3:register_heuristic("tcp", omi_euronext_optiq_orderentrygateway_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: European New Exchange Technology
--   Version: 1.3
--   Date: Thursday, August 20, 2020
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
