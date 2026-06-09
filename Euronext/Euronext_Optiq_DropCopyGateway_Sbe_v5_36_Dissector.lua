-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Euronext Optiq DropCopyGateway Sbe 5.36 Protocol
local omi_euronext_optiq_dropcopygateway_sbe_v5_36 = Proto("Omi.Euronext.Optiq.DropCopyGateway.Sbe.v5.36", "Euronext Optiq DropCopyGateway Sbe 5.36")

-- Protocol table
local euronext_optiq_dropcopygateway_sbe_v5_36 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Euronext Optiq DropCopyGateway Sbe 5.36 Fields
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.access_flag = ProtoField.new("Access Flag", "euronext.optiq.dropcopygateway.sbe.v5.36.accessflag", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_number = ProtoField.new("Account Number", "euronext.optiq.dropcopygateway.sbe.v5.36.accountnumber", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_account_typeenum = ProtoField.new("Account Type Account Typeenum", "euronext.optiq.dropcopygateway.sbe.v5.36.accounttypeaccounttypeenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_account_typeenum_optional = ProtoField.new("Account Type Account Typeenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.accounttypeaccounttypeenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_cross = ProtoField.new("Account Type Cross", "euronext.optiq.dropcopygateway.sbe.v5.36.accounttypecross", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_internal_account_type_internalenum = ProtoField.new("Account Type Internal Account Type Internalenum", "euronext.optiq.dropcopygateway.sbe.v5.36.accounttypeinternalaccounttypeinternalenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_internal_account_type_internalenum_optional = ProtoField.new("Account Type Internal Account Type Internalenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.accounttypeinternalaccounttypeinternalenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.ack_phase = ProtoField.new("Ack Phase", "euronext.optiq.dropcopygateway.sbe.v5.36.ackphase", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.ack_qualifiers = ProtoField.new("Ack Qualifiers", "euronext.optiq.dropcopygateway.sbe.v5.36.ackqualifiers", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.ack_type = ProtoField.new("Ack Type", "euronext.optiq.dropcopygateway.sbe.v5.36.acktype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.afq_indicator = ProtoField.new("Afq Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.afqindicator", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.afq_reason = ProtoField.new("Afq Reason", "euronext.optiq.dropcopygateway.sbe.v5.36.afqreason", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.aggressive_order = ProtoField.new("Aggressive Order", "euronext.optiq.dropcopygateway.sbe.v5.36.aggressiveorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_error_code = ProtoField.new("Bid Error Code", "euronext.optiq.dropcopygateway.sbe.v5.36.biderrorcode", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_leaves_quantity = ProtoField.new("Bid Leaves Quantity", "euronext.optiq.dropcopygateway.sbe.v5.36.bidleavesquantity", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_oe_session_id = ProtoField.new("Bid Oe Session Id", "euronext.optiq.dropcopygateway.sbe.v5.36.bidoesessionid", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_order_id = ProtoField.new("Bid Order Id", "euronext.optiq.dropcopygateway.sbe.v5.36.bidorderid", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_previous_px = ProtoField.new("Bid Previous Px", "euronext.optiq.dropcopygateway.sbe.v5.36.bidpreviouspx", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_previous_size = ProtoField.new("Bid Previous Size", "euronext.optiq.dropcopygateway.sbe.v5.36.bidprevioussize", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_px = ProtoField.new("Bid Px", "euronext.optiq.dropcopygateway.sbe.v5.36.bidpx", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_quote_priority = ProtoField.new("Bid Quote Priority", "euronext.optiq.dropcopygateway.sbe.v5.36.bidquotepriority", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_size = ProtoField.new("Bid Size", "euronext.optiq.dropcopygateway.sbe.v5.36.bidsize", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.block_length = ProtoField.new("Block Length", "euronext.optiq.dropcopygateway.sbe.v5.36.blocklength", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.block_length_uint_8 = ProtoField.new("Block Length uint 8", "euronext.optiq.dropcopygateway.sbe.v5.36.blocklengthuint8", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_in = ProtoField.new("Book In", "euronext.optiq.dropcopygateway.sbe.v5.36.bookin", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_in_time = ProtoField.new("Book In Time", "euronext.optiq.dropcopygateway.sbe.v5.36.bookintime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_in_uint_64t = ProtoField.new("Book In uint 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.bookinuint64t", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_in_uint_64t_optional = ProtoField.new("Book In uint 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.bookinuint64toptional", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_out_time_uint_64t = ProtoField.new("Book Out Time uint 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.bookouttimeuint64t", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_out_time_uint_64t_optional = ProtoField.new("Book Out Time uint 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.bookouttimeuint64toptional", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_state = ProtoField.new("Book State", "euronext.optiq.dropcopygateway.sbe.v5.36.bookstate", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.breached_collar_price = ProtoField.new("Breached Collar Price", "euronext.optiq.dropcopygateway.sbe.v5.36.breachedcollarprice", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.buy_revision_flag = ProtoField.new("Buy Revision Flag", "euronext.optiq.dropcopygateway.sbe.v5.36.buyrevisionflag", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.call_bbo_only = ProtoField.new("Call Bbo Only", "euronext.optiq.dropcopygateway.sbe.v5.36.callbboonly", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.change_type = ProtoField.new("Change Type", "euronext.optiq.dropcopygateway.sbe.v5.36.changetype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_account = ProtoField.new("Clearing Account", "euronext.optiq.dropcopygateway.sbe.v5.36.clearingaccount", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_firm_i_d_char_8 = ProtoField.new("Clearing Firm I D char 8", "euronext.optiq.dropcopygateway.sbe.v5.36.clearingfirmidchar8", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_firm_i_d_char_8_optional = ProtoField.new("Clearing Firm I D char 8 optional", "euronext.optiq.dropcopygateway.sbe.v5.36.clearingfirmidchar8optional", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_instruction_clearing_instructionenum = ProtoField.new("Clearing Instruction Clearing Instructionenum", "euronext.optiq.dropcopygateway.sbe.v5.36.clearinginstructionclearinginstructionenum", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_instruction_clearing_instructionenum_optional = ProtoField.new("Clearing Instruction Clearing Instructionenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.clearinginstructionclearinginstructionenumoptional", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.client_id = ProtoField.new("Client Id", "euronext.optiq.dropcopygateway.sbe.v5.36.clientid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.client_order_i_d_int_64t = ProtoField.new("Client Order I D int 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.clientorderidint64t", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.client_order_i_d_int_64t_optional = ProtoField.new("Client Order I D int 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.clientorderidint64toptional", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.collar_rej_type = ProtoField.new("Collar Rej Type", "euronext.optiq.dropcopygateway.sbe.v5.36.collarrejtype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.commodity_derivative_indicator = ProtoField.new("Commodity Derivative Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.commodityderivativeindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.conditional_order = ProtoField.new("Conditional Order", "euronext.optiq.dropcopygateway.sbe.v5.36.conditionalorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.consume_time = ProtoField.new("Consume Time", "euronext.optiq.dropcopygateway.sbe.v5.36.consumetime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.contract_symbol_index = ProtoField.new("Contract Symbol Index", "euronext.optiq.dropcopygateway.sbe.v5.36.contractsymbolindex", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.counterpart_firm_id = ProtoField.new("Counterpart Firm Id", "euronext.optiq.dropcopygateway.sbe.v5.36.counterpartfirmid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.counterparty_reason_type = ProtoField.new("Counterparty Reason Type", "euronext.optiq.dropcopygateway.sbe.v5.36.counterpartyreasontype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.cross_order_indicator_unsignedchar = ProtoField.new("Cross Order Indicator unsignedchar", "euronext.optiq.dropcopygateway.sbe.v5.36.crossorderindicatorunsignedchar", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.cross_order_indicator_unsignedchar_optional = ProtoField.new("Cross Order Indicator unsignedchar optional", "euronext.optiq.dropcopygateway.sbe.v5.36.crossorderindicatorunsignedcharoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_additional_infos_group = ProtoField.new("D C Long Order Message Additional Infos Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageadditionalinfosgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_additional_infos_groups = ProtoField.new("D C Long Order Message Additional Infos Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageadditionalinfosgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_clearing_fields_group = ProtoField.new("D C Long Order Message Clearing Fields Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageclearingfieldsgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_clearing_fields_groups = ProtoField.new("D C Long Order Message Clearing Fields Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageclearingfieldsgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_commercial_fields_group = ProtoField.new("D C Long Order Message Commercial Fields Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagecommercialfieldsgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_commercial_fields_groups = ProtoField.new("D C Long Order Message Commercial Fields Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagecommercialfieldsgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_extended_clearing_account_group = ProtoField.new("D C Long Order Message Extended Clearing Account Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageextendedclearingaccountgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_extended_clearing_account_groups = ProtoField.new("D C Long Order Message Extended Clearing Account Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageextendedclearingaccountgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_free_text_section_group = ProtoField.new("D C Long Order Message Free Text Section Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagefreetextsectiongroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_free_text_section_groups = ProtoField.new("D C Long Order Message Free Text Section Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagefreetextsectiongroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_commercial_investor_field_group = ProtoField.new("D C Long Order Message Modifiable Commercial Investor Field Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagemodifiablecommercialinvestorfieldgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_commercial_investor_field_groups = ProtoField.new("D C Long Order Message Modifiable Commercial Investor Field Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagemodifiablecommercialinvestorfieldgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_short_codes_group = ProtoField.new("D C Long Order Message Modifiable Short Codes Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagemodifiableshortcodesgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_short_codes_groups = ProtoField.new("D C Long Order Message Modifiable Short Codes Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagemodifiableshortcodesgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_commercial_investor_field_group = ProtoField.new("D C Long Order Message Non Modifiable Commercial Investor Field Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiablecommercialinvestorfieldgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_commercial_investor_field_groups = ProtoField.new("D C Long Order Message Non Modifiable Commercial Investor Field Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiablecommercialinvestorfieldgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_opt_fields_group = ProtoField.new("D C Long Order Message Non Modifiable Opt Fields Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiableoptfieldsgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_opt_fields_groups = ProtoField.new("D C Long Order Message Non Modifiable Opt Fields Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiableoptfieldsgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_short_codes_group = ProtoField.new("D C Long Order Message Non Modifiable Short Codes Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiableshortcodesgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_short_codes_groups = ProtoField.new("D C Long Order Message Non Modifiable Short Codes Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiableshortcodesgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_derivatives_group = ProtoField.new("D C Long Order Message Optional Fields Derivatives Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageoptionalfieldsderivativesgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_derivatives_groups = ProtoField.new("D C Long Order Message Optional Fields Derivatives Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageoptionalfieldsderivativesgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_group = ProtoField.new("D C Long Order Message Optional Fields Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageoptionalfieldsgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_groups = ProtoField.new("D C Long Order Message Optional Fields Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageoptionalfieldsgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_modifiable_group = ProtoField.new("D C Long Order Message Short Codes Details Modifiable Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageshortcodesdetailsmodifiablegroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_modifiable_groups = ProtoField.new("D C Long Order Message Short Codes Details Modifiable Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageshortcodesdetailsmodifiablegroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_non_modifiable_group = ProtoField.new("D C Long Order Message Short Codes Details Non Modifiable Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageshortcodesdetailsnonmodifiablegroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_non_modifiable_groups = ProtoField.new("D C Long Order Message Short Codes Details Non Modifiable Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageshortcodesdetailsnonmodifiablegroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_strategy_fields_group = ProtoField.new("D C Long Order Message Strategy Fields Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagestrategyfieldsgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_strategy_fields_groups = ProtoField.new("D C Long Order Message Strategy Fields Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagestrategyfieldsgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_bid_quoterep_group = ProtoField.new("D C Quote Message Bid Quoterep Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagebidquoterepgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_bid_quoterep_groups = ProtoField.new("D C Quote Message Bid Quoterep Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagebidquoterepgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_clearing_dataset_group = ProtoField.new("D C Quote Message Clearing Dataset Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessageclearingdatasetgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_clearing_dataset_groups = ProtoField.new("D C Quote Message Clearing Dataset Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessageclearingdatasetgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_modifiable_short_codes_group = ProtoField.new("D C Quote Message Modifiable Short Codes Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagemodifiableshortcodesgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_modifiable_short_codes_groups = ProtoField.new("D C Quote Message Modifiable Short Codes Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagemodifiableshortcodesgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_non_modifiable_short_codes_group = ProtoField.new("D C Quote Message Non Modifiable Short Codes Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagenonmodifiableshortcodesgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_non_modifiable_short_codes_groups = ProtoField.new("D C Quote Message Non Modifiable Short Codes Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagenonmodifiableshortcodesgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_offer_quoterep_group = ProtoField.new("D C Quote Message Offer Quoterep Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessageofferquoterepgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_offer_quoterep_groups = ProtoField.new("D C Quote Message Offer Quoterep Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessageofferquoterepgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_non_modifiable_short_codes_group = ProtoField.new("D C Quote Request Message Non Modifiable Short Codes Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquoterequestmessagenonmodifiableshortcodesgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_non_modifiable_short_codes_groups = ProtoField.new("D C Quote Request Message Non Modifiable Short Codes Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquoterequestmessagenonmodifiableshortcodesgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_short_codes_details_non_modifiable_group = ProtoField.new("D C Quote Request Message Short Codes Details Non Modifiable Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquoterequestmessageshortcodesdetailsnonmodifiablegroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_short_codes_details_non_modifiable_groups = ProtoField.new("D C Quote Request Message Short Codes Details Non Modifiable Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquoterequestmessageshortcodesdetailsnonmodifiablegroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_modifiable_short_codes_group = ProtoField.new("D C Short Order Reject Message Modifiable Short Codes Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortorderrejectmessagemodifiableshortcodesgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_modifiable_short_codes_groups = ProtoField.new("D C Short Order Reject Message Modifiable Short Codes Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortorderrejectmessagemodifiableshortcodesgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_short_codes_details_modifiable_group = ProtoField.new("D C Short Order Reject Message Short Codes Details Modifiable Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortorderrejectmessageshortcodesdetailsmodifiablegroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_short_codes_details_modifiable_groups = ProtoField.new("D C Short Order Reject Message Short Codes Details Modifiable Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortorderrejectmessageshortcodesdetailsmodifiablegroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_trade_declaration_message_short_trade_declarations_group = ProtoField.new("D C Short Trade Declaration Message Short Trade Declarations Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshorttradedeclarationmessageshorttradedeclarationsgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_trade_declaration_message_short_trade_declarations_groups = ProtoField.new("D C Short Trade Declaration Message Short Trade Declarations Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshorttradedeclarationmessageshorttradedeclarationsgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_static_collars_message_static_collarsrep_group = ProtoField.new("D C Static Collars Message Static Collarsrep Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dcstaticcollarsmessagestaticcollarsrepgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_static_collars_message_static_collarsrep_groups = ProtoField.new("D C Static Collars Message Static Collarsrep Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dcstaticcollarsmessagestaticcollarsrepgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_modifiable_group = ProtoField.new("D C Trade Bust Notification Message Short Codes Details Modifiable Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dctradebustnotificationmessageshortcodesdetailsmodifiablegroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups = ProtoField.new("D C Trade Bust Notification Message Short Codes Details Modifiable Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dctradebustnotificationmessageshortcodesdetailsmodifiablegroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group = ProtoField.new("D C Trade Bust Notification Message Short Codes Details Non Modifiable Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dctradebustnotificationmessageshortcodesdetailsnonmodifiablegroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups = ProtoField.new("D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dctradebustnotificationmessageshortcodesdetailsnonmodifiablegroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_declarations_group = ProtoField.new("D C Trade Message Matched Declarations Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dctrademessagematcheddeclarationsgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_declarations_groups = ProtoField.new("D C Trade Message Matched Declarations Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dctrademessagematcheddeclarationsgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_orders_group = ProtoField.new("D C Trade Message Matched Orders Group", "euronext.optiq.dropcopygateway.sbe.v5.36.dctrademessagematchedordersgroup", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_orders_groups = ProtoField.new("D C Trade Message Matched Orders Groups", "euronext.optiq.dropcopygateway.sbe.v5.36.dctrademessagematchedordersgroups", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dark_execution_instruction = ProtoField.new("Dark Execution Instruction", "euronext.optiq.dropcopygateway.sbe.v5.36.darkexecutioninstruction", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dark_indicator = ProtoField.new("Dark Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.darkindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dea_indicator = ProtoField.new("Dea Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.deaindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.declaration_event_type = ProtoField.new("Declaration Event Type", "euronext.optiq.dropcopygateway.sbe.v5.36.declarationeventtype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.declaration_id = ProtoField.new("Declaration Id", "euronext.optiq.dropcopygateway.sbe.v5.36.declarationid", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.declaration_kill_reason = ProtoField.new("Declaration Kill Reason", "euronext.optiq.dropcopygateway.sbe.v5.36.declarationkillreason", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.declaration_status = ProtoField.new("Declaration Status", "euronext.optiq.dropcopygateway.sbe.v5.36.declarationstatus", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.deferral_indicator = ProtoField.new("Deferral Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.deferralindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.deferred_publication = ProtoField.new("Deferred Publication", "euronext.optiq.dropcopygateway.sbe.v5.36.deferredpublication", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.deferred_trade_indicator = ProtoField.new("Deferred Trade Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.deferredtradeindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.desk_id = ProtoField.new("Desk Id", "euronext.optiq.dropcopygateway.sbe.v5.36.deskid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.disabled_cancel_on_disconnect_indicator = ProtoField.new("Disabled Cancel On Disconnect Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.disabledcancelondisconnectindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.disclosed_qty = ProtoField.new("Disclosed Qty", "euronext.optiq.dropcopygateway.sbe.v5.36.disclosedqty", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.disclosed_quantity_randomization = ProtoField.new("Disclosed Quantity Randomization", "euronext.optiq.dropcopygateway.sbe.v5.36.disclosedquantityrandomization", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.displayed_order_interaction = ProtoField.new("Displayed Order Interaction", "euronext.optiq.dropcopygateway.sbe.v5.36.displayedorderinteraction", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.displayed_qty = ProtoField.new("Displayed Qty", "euronext.optiq.dropcopygateway.sbe.v5.36.displayedqty", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.emm = ProtoField.new("Emm", "euronext.optiq.dropcopygateway.sbe.v5.36.emm", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.end_client = ProtoField.new("End Client", "euronext.optiq.dropcopygateway.sbe.v5.36.endclient", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.entering_counterparty = ProtoField.new("Entering Counterparty", "euronext.optiq.dropcopygateway.sbe.v5.36.enteringcounterparty", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.error_code_uint_16t = ProtoField.new("Error Code uint 16t", "euronext.optiq.dropcopygateway.sbe.v5.36.errorcodeuint16t", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.error_code_uint_16t_optional = ProtoField.new("Error Code uint 16t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.errorcodeuint16toptional", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.escb_membership = ProtoField.new("Escb Membership", "euronext.optiq.dropcopygateway.sbe.v5.36.escbmembership", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.evaluated_price = ProtoField.new("Evaluated Price", "euronext.optiq.dropcopygateway.sbe.v5.36.evaluatedprice", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_client_id_short_code = ProtoField.new("Event Client Id Short Code", "euronext.optiq.dropcopygateway.sbe.v5.36.eventclientidshortcode", ftypes.INT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_exec_w_firm_short_code = ProtoField.new("Event Exec W Firm Short Code", "euronext.optiq.dropcopygateway.sbe.v5.36.eventexecwfirmshortcode", ftypes.INT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_id = ProtoField.new("Event Id", "euronext.optiq.dropcopygateway.sbe.v5.36.eventid", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_investor_id = ProtoField.new("Event Investor Id", "euronext.optiq.dropcopygateway.sbe.v5.36.eventinvestorid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_short_code_type = ProtoField.new("Event Short Code Type", "euronext.optiq.dropcopygateway.sbe.v5.36.eventshortcodetype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_time = ProtoField.new("Event Time", "euronext.optiq.dropcopygateway.sbe.v5.36.eventtime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.exceptional_market_conditions = ProtoField.new("Exceptional Market Conditions", "euronext.optiq.dropcopygateway.sbe.v5.36.exceptionalmarketconditions", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.exec_phase = ProtoField.new("Exec Phase", "euronext.optiq.dropcopygateway.sbe.v5.36.execphase", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.executed_upon_entry_flag = ProtoField.new("Executed Upon Entry Flag", "euronext.optiq.dropcopygateway.sbe.v5.36.executeduponentryflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_algo_indicator = ProtoField.new("Execution Algo Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.executionalgoindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_i_d_uint_32t = ProtoField.new("Execution I D uint 32t", "euronext.optiq.dropcopygateway.sbe.v5.36.executioniduint32t", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_i_d_uint_32t_optional = ProtoField.new("Execution I D uint 32t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.executioniduint32toptional", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_instruction_execution_instructionset = ProtoField.new("Execution Instruction Execution Instructionset", "euronext.optiq.dropcopygateway.sbe.v5.36.executioninstructionexecutioninstructionset", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_instruction_execution_instructionset_optional = ProtoField.new("Execution Instruction Execution Instructionset optional", "euronext.optiq.dropcopygateway.sbe.v5.36.executioninstructionexecutioninstructionsetoptional", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_phase_execution_phaseenum = ProtoField.new("Execution Phase Execution Phaseenum", "euronext.optiq.dropcopygateway.sbe.v5.36.executionphaseexecutionphaseenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_phase_execution_phaseenum_optional = ProtoField.new("Execution Phase Execution Phaseenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.executionphaseexecutionphaseenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_prevention_across_all_firms = ProtoField.new("Execution Prevention Across All Firms", "euronext.optiq.dropcopygateway.sbe.v5.36.executionpreventionacrossallfirms", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_upon_entry_flag_enabled = ProtoField.new("Execution Upon Entry Flag Enabled", "euronext.optiq.dropcopygateway.sbe.v5.36.executionuponentryflagenabled", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.field_actively_used = ProtoField.new("Field Actively Used", "euronext.optiq.dropcopygateway.sbe.v5.36.fieldactivelyused", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.final_execution_id = ProtoField.new("Final Execution Id", "euronext.optiq.dropcopygateway.sbe.v5.36.finalexecutionid", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.final_symbol_index = ProtoField.new("Final Symbol Index", "euronext.optiq.dropcopygateway.sbe.v5.36.finalsymbolindex", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.firm_id = ProtoField.new("Firm Id", "euronext.optiq.dropcopygateway.sbe.v5.36.firmid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.firm_id_publication = ProtoField.new("Firm Id Publication", "euronext.optiq.dropcopygateway.sbe.v5.36.firmidpublication", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.first_trade_price = ProtoField.new("First Trade Price", "euronext.optiq.dropcopygateway.sbe.v5.36.firsttradeprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.frame = ProtoField.new("Frame", "euronext.optiq.dropcopygateway.sbe.v5.36.frame", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.free_text = ProtoField.new("Free Text", "euronext.optiq.dropcopygateway.sbe.v5.36.freetext", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.frmaramplp = ProtoField.new("Frmaramplp", "euronext.optiq.dropcopygateway.sbe.v5.36.frmaramplp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.group_size_encoding = ProtoField.new("Group Size Encoding", "euronext.optiq.dropcopygateway.sbe.v5.36.groupsizeencoding", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.guarantee_flag_guarantee_flagenum = ProtoField.new("Guarantee Flag Guarantee Flagenum", "euronext.optiq.dropcopygateway.sbe.v5.36.guaranteeflagguaranteeflagenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.guarantee_flag_guarantee_flagenum_optional = ProtoField.new("Guarantee Flag Guarantee Flagenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.guaranteeflagguaranteeflagenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "euronext.optiq.dropcopygateway.sbe.v5.36.imbalanceqty", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.imbalance_qty_side = ProtoField.new("Imbalance Qty Side", "euronext.optiq.dropcopygateway.sbe.v5.36.imbalanceqtyside", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.indicative_auction_price = ProtoField.new("Indicative Auction Price", "euronext.optiq.dropcopygateway.sbe.v5.36.indicativeauctionprice", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.indicative_auction_volume = ProtoField.new("Indicative Auction Volume", "euronext.optiq.dropcopygateway.sbe.v5.36.indicativeauctionvolume", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.instrument_order_entry_qualifier = ProtoField.new("Instrument Order Entry Qualifier", "euronext.optiq.dropcopygateway.sbe.v5.36.instrumentorderentryqualifier", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.instrument_state = ProtoField.new("Instrument State", "euronext.optiq.dropcopygateway.sbe.v5.36.instrumentstate", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.internal_1 = ProtoField.new("Internal 1", "euronext.optiq.dropcopygateway.sbe.v5.36.internal1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.internal_2 = ProtoField.new("Internal 2", "euronext.optiq.dropcopygateway.sbe.v5.36.internal2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.investment_algo_indicator = ProtoField.new("Investment Algo Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.investmentalgoindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.investor_id = ProtoField.new("Investor Id", "euronext.optiq.dropcopygateway.sbe.v5.36.investorid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.kill_reason = ProtoField.new("Kill Reason", "euronext.optiq.dropcopygateway.sbe.v5.36.killreason", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.last_shares_uint_64t = ProtoField.new("Last Shares uint 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.lastsharesuint64t", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.last_shares_uint_64t_optional = ProtoField.new("Last Shares uint 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.lastsharesuint64toptional", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.last_traded_px_int_64t = ProtoField.new("Last Traded Px int 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.lasttradedpxint64t", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.last_traded_px_int_64t_optional = ProtoField.new("Last Traded Px int 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.lasttradedpxint64toptional", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leaves_qty = ProtoField.new("Leaves Qty", "euronext.optiq.dropcopygateway.sbe.v5.36.leavesqty", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_1 = ProtoField.new("Leg 1", "euronext.optiq.dropcopygateway.sbe.v5.36.leg1", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_2 = ProtoField.new("Leg 2", "euronext.optiq.dropcopygateway.sbe.v5.36.leg2", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_3 = ProtoField.new("Leg 3", "euronext.optiq.dropcopygateway.sbe.v5.36.leg3", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_4 = ProtoField.new("Leg 4", "euronext.optiq.dropcopygateway.sbe.v5.36.leg4", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_5 = ProtoField.new("Leg 5", "euronext.optiq.dropcopygateway.sbe.v5.36.leg5", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_6 = ProtoField.new("Leg 6", "euronext.optiq.dropcopygateway.sbe.v5.36.leg6", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_7 = ProtoField.new("Leg 7", "euronext.optiq.dropcopygateway.sbe.v5.36.leg7", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_8 = ProtoField.new("Leg 8", "euronext.optiq.dropcopygateway.sbe.v5.36.leg8", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_9 = ProtoField.new("Leg 9", "euronext.optiq.dropcopygateway.sbe.v5.36.leg9", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_instrument_id = ProtoField.new("Leg Instrument Id", "euronext.optiq.dropcopygateway.sbe.v5.36.leginstrumentid", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_last_px = ProtoField.new("Leg Last Px", "euronext.optiq.dropcopygateway.sbe.v5.36.leglastpx", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_last_qty = ProtoField.new("Leg Last Qty", "euronext.optiq.dropcopygateway.sbe.v5.36.leglastqty", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_side = ProtoField.new("Leg Side", "euronext.optiq.dropcopygateway.sbe.v5.36.legside", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.lis_transaction_id = ProtoField.new("Lis Transaction Id", "euronext.optiq.dropcopygateway.sbe.v5.36.listransactionid", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.logical_access_i_d_uint_32t = ProtoField.new("Logical Access I D uint 32t", "euronext.optiq.dropcopygateway.sbe.v5.36.logicalaccessiduint32t", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.logical_access_i_d_uint_32t_optional = ProtoField.new("Logical Access I D uint 32t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.logicalaccessiduint32toptional", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.long_client_id = ProtoField.new("Long Client Id", "euronext.optiq.dropcopygateway.sbe.v5.36.longclientid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.lp_role_lp_roleenum = ProtoField.new("Lp Role Lp Roleenum", "euronext.optiq.dropcopygateway.sbe.v5.36.lprolelproleenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.lp_role_lp_roleenum_optional = ProtoField.new("Lp Role Lp Roleenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.lprolelproleenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.margin_trading_flag = ProtoField.new("Margin Trading Flag", "euronext.optiq.dropcopygateway.sbe.v5.36.margintradingflag", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.market_phase_flag = ProtoField.new("Market Phase Flag", "euronext.optiq.dropcopygateway.sbe.v5.36.marketphaseflag", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.message = ProtoField.new("Message", "euronext.optiq.dropcopygateway.sbe.v5.36.message", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.message_header = ProtoField.new("Message Header", "euronext.optiq.dropcopygateway.sbe.v5.36.messageheader", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.message_price_notation = ProtoField.new("Message Price Notation", "euronext.optiq.dropcopygateway.sbe.v5.36.messagepricenotation", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.message_sending_time = ProtoField.new("Message Sending Time", "euronext.optiq.dropcopygateway.sbe.v5.36.messagesendingtime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.mi_fid_indicators_mi_fid_indicatorsset = ProtoField.new("Mi Fid Indicators Mi Fid Indicatorsset", "euronext.optiq.dropcopygateway.sbe.v5.36.mifidindicatorsmifidindicatorsset", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.mi_fid_indicators_mi_fid_indicatorsset_optional = ProtoField.new("Mi Fid Indicators Mi Fid Indicatorsset optional", "euronext.optiq.dropcopygateway.sbe.v5.36.mifidindicatorsmifidindicatorssetoptional", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.min_order_qty = ProtoField.new("Min Order Qty", "euronext.optiq.dropcopygateway.sbe.v5.36.minorderqty", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.minimum_order_quantity = ProtoField.new("Minimum Order Quantity", "euronext.optiq.dropcopygateway.sbe.v5.36.minimumorderquantity", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.minimum_quantity_type = ProtoField.new("Minimum Quantity Type", "euronext.optiq.dropcopygateway.sbe.v5.36.minimumquantitytype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "euronext.optiq.dropcopygateway.sbe.v5.36.msgseqnum", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.nav_trade_expressed_in_bps = ProtoField.new("Nav Trade Expressed In Bps", "euronext.optiq.dropcopygateway.sbe.v5.36.navtradeexpressedinbps", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.nav_trade_expressed_in_price_currency = ProtoField.new("Nav Trade Expressed In Price Currency", "euronext.optiq.dropcopygateway.sbe.v5.36.navtradeexpressedinpricecurrency", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.no_qualifier = ProtoField.new("No Qualifier", "euronext.optiq.dropcopygateway.sbe.v5.36.noqualifier", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.num_in_group = ProtoField.new("Num In Group", "euronext.optiq.dropcopygateway.sbe.v5.36.numingroup", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oe_partition_i_d_uint_16t = ProtoField.new("Oe Partition I D uint 16t", "euronext.optiq.dropcopygateway.sbe.v5.36.oepartitioniduint16t", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oe_partition_i_d_uint_16t_optional = ProtoField.new("Oe Partition I D uint 16t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.oepartitioniduint16toptional", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oe_session_i_d_uint_64t = ProtoField.new("Oe Session I D uint 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.oesessioniduint64t", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oe_session_i_d_uint_64t_optional = ProtoField.new("Oe Session I D uint 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.oesessioniduint64toptional", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oegin_from_member_uint_64t = ProtoField.new("Oegin From Member uint 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.oeginfrommemberuint64t", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oegin_from_member_uint_64t_optional = ProtoField.new("Oegin From Member uint 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.oeginfrommemberuint64toptional", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oegout_time_to_m_e_uint_64t = ProtoField.new("Oegout Time To M E uint 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.oegouttimetomeuint64t", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oegout_time_to_m_e_uint_64t_optional = ProtoField.new("Oegout Time To M E uint 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.oegouttimetomeuint64toptional", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_error_code = ProtoField.new("Offer Error Code", "euronext.optiq.dropcopygateway.sbe.v5.36.offererrorcode", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_leaves_quantity = ProtoField.new("Offer Leaves Quantity", "euronext.optiq.dropcopygateway.sbe.v5.36.offerleavesquantity", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_oe_session_id = ProtoField.new("Offer Oe Session Id", "euronext.optiq.dropcopygateway.sbe.v5.36.offeroesessionid", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_order_id = ProtoField.new("Offer Order Id", "euronext.optiq.dropcopygateway.sbe.v5.36.offerorderid", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_previous_px = ProtoField.new("Offer Previous Px", "euronext.optiq.dropcopygateway.sbe.v5.36.offerpreviouspx", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_previous_size = ProtoField.new("Offer Previous Size", "euronext.optiq.dropcopygateway.sbe.v5.36.offerprevioussize", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_px = ProtoField.new("Offer Px", "euronext.optiq.dropcopygateway.sbe.v5.36.offerpx", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_quote_priority = ProtoField.new("Offer Quote Priority", "euronext.optiq.dropcopygateway.sbe.v5.36.offerquotepriority", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_size = ProtoField.new("Offer Size", "euronext.optiq.dropcopygateway.sbe.v5.36.offersize", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.open_close = ProtoField.new("Open Close", "euronext.optiq.dropcopygateway.sbe.v5.36.openclose", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.operation_type = ProtoField.new("Operation Type", "euronext.optiq.dropcopygateway.sbe.v5.36.operationtype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_entry_qualifier = ProtoField.new("Order Entry Qualifier", "euronext.optiq.dropcopygateway.sbe.v5.36.orderentryqualifier", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_event_type = ProtoField.new("Order Event Type", "euronext.optiq.dropcopygateway.sbe.v5.36.ordereventtype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_expiration_date = ProtoField.new("Order Expiration Date", "euronext.optiq.dropcopygateway.sbe.v5.36.orderexpirationdate", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_expiration_time = ProtoField.new("Order Expiration Time", "euronext.optiq.dropcopygateway.sbe.v5.36.orderexpirationtime", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_id = ProtoField.new("Order Id", "euronext.optiq.dropcopygateway.sbe.v5.36.orderid", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_priority = ProtoField.new("Order Priority", "euronext.optiq.dropcopygateway.sbe.v5.36.orderpriority", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_px = ProtoField.new("Order Px", "euronext.optiq.dropcopygateway.sbe.v5.36.orderpx", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_qty = ProtoField.new("Order Qty", "euronext.optiq.dropcopygateway.sbe.v5.36.orderqty", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_side_order_sideenum = ProtoField.new("Order Side Order Sideenum", "euronext.optiq.dropcopygateway.sbe.v5.36.ordersideordersideenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_side_order_sideenum_optional = ProtoField.new("Order Side Order Sideenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.ordersideordersideenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_sweep_reason = ProtoField.new("Order Sweep Reason", "euronext.optiq.dropcopygateway.sbe.v5.36.ordersweepreason", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_tolerable_price = ProtoField.new("Order Tolerable Price", "euronext.optiq.dropcopygateway.sbe.v5.36.ordertolerableprice", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_type = ProtoField.new("Order Type", "euronext.optiq.dropcopygateway.sbe.v5.36.ordertype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.orig_client_order_id = ProtoField.new("Orig Client Order Id", "euronext.optiq.dropcopygateway.sbe.v5.36.origclientorderid", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_client_id_short_code = ProtoField.new("Original Client Id Short Code", "euronext.optiq.dropcopygateway.sbe.v5.36.originalclientidshortcode", ftypes.INT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_exec_w_firm_short_code = ProtoField.new("Original Exec W Firm Short Code", "euronext.optiq.dropcopygateway.sbe.v5.36.originalexecwfirmshortcode", ftypes.INT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_invest_decis_w_firm_short_code = ProtoField.new("Original Invest Decis W Firm Short Code", "euronext.optiq.dropcopygateway.sbe.v5.36.originalinvestdeciswfirmshortcode", ftypes.INT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_investor_id = ProtoField.new("Original Investor Id", "euronext.optiq.dropcopygateway.sbe.v5.36.originalinvestorid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_non_exec_broker_short_code = ProtoField.new("Original Non Exec Broker Short Code", "euronext.optiq.dropcopygateway.sbe.v5.36.originalnonexecbrokershortcode", ftypes.INT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_short_code_type = ProtoField.new("Original Short Code Type", "euronext.optiq.dropcopygateway.sbe.v5.36.originalshortcodetype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.packet = ProtoField.new("Packet", "euronext.optiq.dropcopygateway.sbe.v5.36.packet", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.parent_exec_id = ProtoField.new("Parent Exec Id", "euronext.optiq.dropcopygateway.sbe.v5.36.parentexecid", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.parent_symbol_index = ProtoField.new("Parent Symbol Index", "euronext.optiq.dropcopygateway.sbe.v5.36.parentsymbolindex", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.parent_trade_unique_identifier = ProtoField.new("Parent Trade Unique Identifier", "euronext.optiq.dropcopygateway.sbe.v5.36.parenttradeuniqueidentifier", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.passive_order = ProtoField.new("Passive Order", "euronext.optiq.dropcopygateway.sbe.v5.36.passiveorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.peg_offset = ProtoField.new("Peg Offset", "euronext.optiq.dropcopygateway.sbe.v5.36.pegoffset", ftypes.INT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.phase_id = ProtoField.new("Phase Id", "euronext.optiq.dropcopygateway.sbe.v5.36.phaseid", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.phase_qualifier = ProtoField.new("Phase Qualifier", "euronext.optiq.dropcopygateway.sbe.v5.36.phasequalifier", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.phase_time = ProtoField.new("Phase Time", "euronext.optiq.dropcopygateway.sbe.v5.36.phasetime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_improvement_only = ProtoField.new("Price Improvement Only", "euronext.optiq.dropcopygateway.sbe.v5.36.priceimprovementonly", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_int_64t = ProtoField.new("Price int 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.priceint64t", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_int_64t_optional = ProtoField.new("Price int 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.priceint64toptional", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_limit_style = ProtoField.new("Price Limit Style", "euronext.optiq.dropcopygateway.sbe.v5.36.pricelimitstyle", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_limits = ProtoField.new("Price Limits", "euronext.optiq.dropcopygateway.sbe.v5.36.pricelimits", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_type = ProtoField.new("Price Type", "euronext.optiq.dropcopygateway.sbe.v5.36.pricetype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.principal_code = ProtoField.new("Principal Code", "euronext.optiq.dropcopygateway.sbe.v5.36.principalcode", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.produce_time = ProtoField.new("Produce Time", "euronext.optiq.dropcopygateway.sbe.v5.36.producetime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.publication_time = ProtoField.new("Publication Time", "euronext.optiq.dropcopygateway.sbe.v5.36.publicationtime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quantity_uint_64t = ProtoField.new("Quantity uint 64t", "euronext.optiq.dropcopygateway.sbe.v5.36.quantityuint64t", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quantity_uint_64t_optional = ProtoField.new("Quantity uint 64t optional", "euronext.optiq.dropcopygateway.sbe.v5.36.quantityuint64toptional", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.queue_indicator = ProtoField.new("Queue Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.queueindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quote_indicator = ProtoField.new("Quote Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.quoteindicator", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quote_spread_multiplier = ProtoField.new("Quote Spread Multiplier", "euronext.optiq.dropcopygateway.sbe.v5.36.quotespreadmultiplier", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quoting_period = ProtoField.new("Quoting Period", "euronext.optiq.dropcopygateway.sbe.v5.36.quotingperiod", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.random_uncrossing = ProtoField.new("Random Uncrossing", "euronext.optiq.dropcopygateway.sbe.v5.36.randomuncrossing", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rejected_message = ProtoField.new("Rejected Message", "euronext.optiq.dropcopygateway.sbe.v5.36.rejectedmessage", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rejected_message_id = ProtoField.new("Rejected Message Id", "euronext.optiq.dropcopygateway.sbe.v5.36.rejectedmessageid", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.request_with_client_order_id = ProtoField.new("Request With Client Order Id", "euronext.optiq.dropcopygateway.sbe.v5.36.requestwithclientorderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_2 = ProtoField.new("Reserved 2", "euronext.optiq.dropcopygateway.sbe.v5.36.reserved2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_3 = ProtoField.new("Reserved 3", "euronext.optiq.dropcopygateway.sbe.v5.36.reserved3", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_5 = ProtoField.new("Reserved 5", "euronext.optiq.dropcopygateway.sbe.v5.36.reserved5", ftypes.UINT16, nil, base.DEC, 0xF800)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_6 = ProtoField.new("Reserved 6", "euronext.optiq.dropcopygateway.sbe.v5.36.reserved6", ftypes.UINT16, nil, base.DEC, 0xFC00)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfe_answer_unsignedchar = ProtoField.new("Rfe Answer unsignedchar", "euronext.optiq.dropcopygateway.sbe.v5.36.rfeanswerunsignedchar", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfe_answer_unsignedchar_optional = ProtoField.new("Rfe Answer unsignedchar optional", "euronext.optiq.dropcopygateway.sbe.v5.36.rfeanswerunsignedcharoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfq_answer = ProtoField.new("Rfq Answer", "euronext.optiq.dropcopygateway.sbe.v5.36.rfqanswer", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfq_confirmation = ProtoField.new("Rfq Confirmation", "euronext.optiq.dropcopygateway.sbe.v5.36.rfqconfirmation", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfq_status = ProtoField.new("Rfq Status", "euronext.optiq.dropcopygateway.sbe.v5.36.rfqstatus", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.scheduled_event = ProtoField.new("Scheduled Event", "euronext.optiq.dropcopygateway.sbe.v5.36.scheduledevent", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.scheduled_event_time = ProtoField.new("Scheduled Event Time", "euronext.optiq.dropcopygateway.sbe.v5.36.scheduledeventtime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.schema_id = ProtoField.new("Schema Id", "euronext.optiq.dropcopygateway.sbe.v5.36.schemaid", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.sell_revision_flag = ProtoField.new("Sell Revision Flag", "euronext.optiq.dropcopygateway.sbe.v5.36.sellrevisionflag", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.sender_location_id = ProtoField.new("Sender Location Id", "euronext.optiq.dropcopygateway.sbe.v5.36.senderlocationid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.sequence_time = ProtoField.new("Sequence Time", "euronext.optiq.dropcopygateway.sbe.v5.36.sequencetime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_1 = ProtoField.new("Session 1", "euronext.optiq.dropcopygateway.sbe.v5.36.session1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_2 = ProtoField.new("Session 2", "euronext.optiq.dropcopygateway.sbe.v5.36.session2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_3 = ProtoField.new("Session 3", "euronext.optiq.dropcopygateway.sbe.v5.36.session3", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_4 = ProtoField.new("Session 4", "euronext.optiq.dropcopygateway.sbe.v5.36.session4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_sessionenum = ProtoField.new("Session Sessionenum", "euronext.optiq.dropcopygateway.sbe.v5.36.sessionsessionenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_sessionenum_optional = ProtoField.new("Session Sessionenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.sessionsessionenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.settlement_flag_unsignedchar = ProtoField.new("Settlement Flag unsignedchar", "euronext.optiq.dropcopygateway.sbe.v5.36.settlementflagunsignedchar", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.settlement_flag_unsignedchar_optional = ProtoField.new("Settlement Flag unsignedchar optional", "euronext.optiq.dropcopygateway.sbe.v5.36.settlementflagunsignedcharoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.settlement_period_unsignedchar = ProtoField.new("Settlement Period unsignedchar", "euronext.optiq.dropcopygateway.sbe.v5.36.settlementperiodunsignedchar", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.settlement_period_unsignedchar_optional = ProtoField.new("Settlement Period unsignedchar optional", "euronext.optiq.dropcopygateway.sbe.v5.36.settlementperiodunsignedcharoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.short_code_role = ProtoField.new("Short Code Role", "euronext.optiq.dropcopygateway.sbe.v5.36.shortcoderole", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.short_code_role_qualifier = ProtoField.new("Short Code Role Qualifier", "euronext.optiq.dropcopygateway.sbe.v5.36.shortcoderolequalifier", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.side = ProtoField.new("Side", "euronext.optiq.dropcopygateway.sbe.v5.36.side", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.status_reason = ProtoField.new("Status Reason", "euronext.optiq.dropcopygateway.sbe.v5.36.statusreason", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stop_px = ProtoField.new("Stop Px", "euronext.optiq.dropcopygateway.sbe.v5.36.stoppx", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stop_queue_priority = ProtoField.new("Stop Queue Priority", "euronext.optiq.dropcopygateway.sbe.v5.36.stopqueuepriority", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stop_triggered_time_in_force = ProtoField.new("Stop Triggered Time In Force", "euronext.optiq.dropcopygateway.sbe.v5.36.stoptriggeredtimeinforce", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_both_orders = ProtoField.new("Stp Both Orders", "euronext.optiq.dropcopygateway.sbe.v5.36.stpbothorders", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_incoming_order = ProtoField.new("Stp Incoming Order", "euronext.optiq.dropcopygateway.sbe.v5.36.stpincomingorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_resting_order = ProtoField.new("Stp Resting Order", "euronext.optiq.dropcopygateway.sbe.v5.36.stprestingorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stpid = ProtoField.new("Stpid", "euronext.optiq.dropcopygateway.sbe.v5.36.stpid", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stressed_market_conditions = ProtoField.new("Stressed Market Conditions", "euronext.optiq.dropcopygateway.sbe.v5.36.stressedmarketconditions", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.suspended = ProtoField.new("Suspended", "euronext.optiq.dropcopygateway.sbe.v5.36.suspended", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.sweep_order_indicator = ProtoField.new("Sweep Order Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.sweeporderindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.symbol_index = ProtoField.new("Symbol Index", "euronext.optiq.dropcopygateway.sbe.v5.36.symbolindex", ftypes.UINT32)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.technical_origin = ProtoField.new("Technical Origin", "euronext.optiq.dropcopygateway.sbe.v5.36.technicalorigin", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.template_id = ProtoField.new("Template Id", "euronext.optiq.dropcopygateway.sbe.v5.36.templateid", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.time_in_force_time_in_forceenum = ProtoField.new("Time In Force Time In Forceenum", "euronext.optiq.dropcopygateway.sbe.v5.36.timeinforcetimeinforceenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.time_in_force_time_in_forceenum_optional = ProtoField.new("Time In Force Time In Forceenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.timeinforcetimeinforceenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_creation_by_market_operations = ProtoField.new("Trade Creation By Market Operations", "euronext.optiq.dropcopygateway.sbe.v5.36.tradecreationbymarketoperations", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_qualifier_trade_qualifierset = ProtoField.new("Trade Qualifier Trade Qualifierset", "euronext.optiq.dropcopygateway.sbe.v5.36.tradequalifiertradequalifierset", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_qualifier_trade_qualifierset_optional = ProtoField.new("Trade Qualifier Trade Qualifierset optional", "euronext.optiq.dropcopygateway.sbe.v5.36.tradequalifiertradequalifiersetoptional", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_time = ProtoField.new("Trade Time", "euronext.optiq.dropcopygateway.sbe.v5.36.tradetime", ftypes.UINT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_type = ProtoField.new("Trade Type", "euronext.optiq.dropcopygateway.sbe.v5.36.tradetype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_unique_identifier = ProtoField.new("Trade Unique Identifier", "euronext.optiq.dropcopygateway.sbe.v5.36.tradeuniqueidentifier", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trader_id = ProtoField.new("Trader Id", "euronext.optiq.dropcopygateway.sbe.v5.36.traderid", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_at_last = ProtoField.new("Trading At Last", "euronext.optiq.dropcopygateway.sbe.v5.36.tradingatlast", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_capacity_trading_capacityenum = ProtoField.new("Trading Capacity Trading Capacityenum", "euronext.optiq.dropcopygateway.sbe.v5.36.tradingcapacitytradingcapacityenum", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_capacity_trading_capacityenum_optional = ProtoField.new("Trading Capacity Trading Capacityenum optional", "euronext.optiq.dropcopygateway.sbe.v5.36.tradingcapacitytradingcapacityenumoptional", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_group_order_entry_qualifier = ProtoField.new("Trading Group Order Entry Qualifier", "euronext.optiq.dropcopygateway.sbe.v5.36.tradinggrouporderentryqualifier", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_group_state = ProtoField.new("Trading Group State", "euronext.optiq.dropcopygateway.sbe.v5.36.tradinggroupstate", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_period = ProtoField.new("Trading Period", "euronext.optiq.dropcopygateway.sbe.v5.36.tradingperiod", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_session = ProtoField.new("Trading Session", "euronext.optiq.dropcopygateway.sbe.v5.36.tradingsession", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_side = ProtoField.new("Trading Side", "euronext.optiq.dropcopygateway.sbe.v5.36.tradingside", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.transaction_price_type = ProtoField.new("Transaction Price Type", "euronext.optiq.dropcopygateway.sbe.v5.36.transactionpricetype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.transparency_indicator = ProtoField.new("Transparency Indicator", "euronext.optiq.dropcopygateway.sbe.v5.36.transparencyindicator", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.uncrossing_trade = ProtoField.new("Uncrossing Trade", "euronext.optiq.dropcopygateway.sbe.v5.36.uncrossingtrade", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.undisclosed_iceberg_type = ProtoField.new("Undisclosed Iceberg Type", "euronext.optiq.dropcopygateway.sbe.v5.36.undisclosedicebergtype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.undisclosed_price = ProtoField.new("Undisclosed Price", "euronext.optiq.dropcopygateway.sbe.v5.36.undisclosedprice", ftypes.INT64)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.unused_trading_session_validityset_0 = ProtoField.new("Unused Trading Session Validityset 0", "euronext.optiq.dropcopygateway.sbe.v5.36.unusedtradingsessionvalidityset0", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.update_type = ProtoField.new("Update Type", "euronext.optiq.dropcopygateway.sbe.v5.36.updatetype", ftypes.UINT8)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.use_of_cross_partition = ProtoField.new("Use Of Cross Partition", "euronext.optiq.dropcopygateway.sbe.v5.36.useofcrosspartition", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.version = ProtoField.new("Version", "euronext.optiq.dropcopygateway.sbe.v5.36.version", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.wholesale_allowed = ProtoField.new("Wholesale Allowed", "euronext.optiq.dropcopygateway.sbe.v5.36.wholesaleallowed", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.wholesale_trade_type = ProtoField.new("Wholesale Trade Type", "euronext.optiq.dropcopygateway.sbe.v5.36.wholesaletradetype", ftypes.UINT8)

-- Euronext Optiq Sbe DropCopyGateway 5.36 Application Messages
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_clear_book_message = ProtoField.new("Dc Clear Book Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcclearbookmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_declaration_new_message = ProtoField.new("Dc Declaration New Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcdeclarationnewmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_long_order_message = ProtoField.new("Dc Long Order Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_market_status_change_message = ProtoField.new("Dc Market Status Change Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcmarketstatuschangemessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_price_update_message = ProtoField.new("Dc Price Update Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcpriceupdatemessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_quote_message = ProtoField.new("Dc Quote Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_quote_request_message = ProtoField.new("Dc Quote Request Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquoterequestmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_declaration_cancel_message = ProtoField.new("Dc Short Declaration Cancel Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortdeclarationcancelmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_declaration_fill_message = ProtoField.new("Dc Short Declaration Fill Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortdeclarationfillmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_declaration_reject_message = ProtoField.new("Dc Short Declaration Reject Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortdeclarationrejectmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_order_reject_message = ProtoField.new("Dc Short Order Reject Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortorderrejectmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_trade_cancellation_message = ProtoField.new("Dc Short Trade Cancellation Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshorttradecancellationmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_trade_declaration_cancellation_message = ProtoField.new("Dc Short Trade Declaration Cancellation Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshorttradedeclarationcancellationmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_trade_declaration_message = ProtoField.new("Dc Short Trade Declaration Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshorttradedeclarationmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_static_collars_message = ProtoField.new("Dc Static Collars Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcstaticcollarsmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_trade_bust_declaration_message = ProtoField.new("Dc Trade Bust Declaration Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dctradebustdeclarationmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_trade_bust_notification_message = ProtoField.new("Dc Trade Bust Notification Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dctradebustnotificationmessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_trade_message = ProtoField.new("Dc Trade Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dctrademessage", ftypes.STRING)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dcafqrfe_message = ProtoField.new("Dcafqrfe Message", "euronext.optiq.dropcopygateway.sbe.v5.36.dcafqrfemessage", ftypes.STRING)

-- Euronext Optiq DropCopyGateway Sbe 5.36 generated fields
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_additional_infos_group_index = ProtoField.new("D C Long Order Message Additional Infos Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageadditionalinfosgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_clearing_fields_group_index = ProtoField.new("D C Long Order Message Clearing Fields Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageclearingfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_commercial_fields_group_index = ProtoField.new("D C Long Order Message Commercial Fields Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagecommercialfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_extended_clearing_account_group_index = ProtoField.new("D C Long Order Message Extended Clearing Account Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageextendedclearingaccountgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_free_text_section_group_index = ProtoField.new("D C Long Order Message Free Text Section Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagefreetextsectiongroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_commercial_investor_field_group_index = ProtoField.new("D C Long Order Message Modifiable Commercial Investor Field Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagemodifiablecommercialinvestorfieldgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_short_codes_group_index = ProtoField.new("D C Long Order Message Modifiable Short Codes Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagemodifiableshortcodesgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_commercial_investor_field_group_index = ProtoField.new("D C Long Order Message Non Modifiable Commercial Investor Field Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiablecommercialinvestorfieldgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_opt_fields_group_index = ProtoField.new("D C Long Order Message Non Modifiable Opt Fields Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiableoptfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_short_codes_group_index = ProtoField.new("D C Long Order Message Non Modifiable Short Codes Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagenonmodifiableshortcodesgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_derivatives_group_index = ProtoField.new("D C Long Order Message Optional Fields Derivatives Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageoptionalfieldsderivativesgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_group_index = ProtoField.new("D C Long Order Message Optional Fields Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageoptionalfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_modifiable_group_index = ProtoField.new("D C Long Order Message Short Codes Details Modifiable Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageshortcodesdetailsmodifiablegroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_non_modifiable_group_index = ProtoField.new("D C Long Order Message Short Codes Details Non Modifiable Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessageshortcodesdetailsnonmodifiablegroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_strategy_fields_group_index = ProtoField.new("D C Long Order Message Strategy Fields Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dclongordermessagestrategyfieldsgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_bid_quoterep_group_index = ProtoField.new("D C Quote Message Bid Quoterep Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagebidquoterepgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_clearing_dataset_group_index = ProtoField.new("D C Quote Message Clearing Dataset Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessageclearingdatasetgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_modifiable_short_codes_group_index = ProtoField.new("D C Quote Message Modifiable Short Codes Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagemodifiableshortcodesgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_non_modifiable_short_codes_group_index = ProtoField.new("D C Quote Message Non Modifiable Short Codes Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessagenonmodifiableshortcodesgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_offer_quoterep_group_index = ProtoField.new("D C Quote Message Offer Quoterep Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquotemessageofferquoterepgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_non_modifiable_short_codes_group_index = ProtoField.new("D C Quote Request Message Non Modifiable Short Codes Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquoterequestmessagenonmodifiableshortcodesgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_short_codes_details_non_modifiable_group_index = ProtoField.new("D C Quote Request Message Short Codes Details Non Modifiable Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcquoterequestmessageshortcodesdetailsnonmodifiablegroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_modifiable_short_codes_group_index = ProtoField.new("D C Short Order Reject Message Modifiable Short Codes Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortorderrejectmessagemodifiableshortcodesgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_short_codes_details_modifiable_group_index = ProtoField.new("D C Short Order Reject Message Short Codes Details Modifiable Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshortorderrejectmessageshortcodesdetailsmodifiablegroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_trade_declaration_message_short_trade_declarations_group_index = ProtoField.new("D C Short Trade Declaration Message Short Trade Declarations Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcshorttradedeclarationmessageshorttradedeclarationsgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_static_collars_message_static_collarsrep_group_index = ProtoField.new("D C Static Collars Message Static Collarsrep Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dcstaticcollarsmessagestaticcollarsrepgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index = ProtoField.new("D C Trade Bust Notification Message Short Codes Details Modifiable Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dctradebustnotificationmessageshortcodesdetailsmodifiablegroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index = ProtoField.new("D C Trade Bust Notification Message Short Codes Details Non Modifiable Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dctradebustnotificationmessageshortcodesdetailsnonmodifiablegroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_declarations_group_index = ProtoField.new("D C Trade Message Matched Declarations Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dctrademessagematcheddeclarationsgroupindex", ftypes.UINT16)
omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_orders_group_index = ProtoField.new("D C Trade Message Matched Orders Group Index", "euronext.optiq.dropcopygateway.sbe.v5.36.dctrademessagematchedordersgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Euronext Optiq DropCopyGateway Sbe 5.36 Element Dissection Options
show.ack_qualifiers = true
show.d_c_long_order_message_additional_infos_group = true
show.d_c_long_order_message_additional_infos_groups = true
show.d_c_long_order_message_clearing_fields_group = true
show.d_c_long_order_message_clearing_fields_groups = true
show.d_c_long_order_message_commercial_fields_group = true
show.d_c_long_order_message_commercial_fields_groups = true
show.d_c_long_order_message_extended_clearing_account_group = true
show.d_c_long_order_message_extended_clearing_account_groups = true
show.d_c_long_order_message_free_text_section_group = true
show.d_c_long_order_message_free_text_section_groups = true
show.d_c_long_order_message_modifiable_commercial_investor_field_group = true
show.d_c_long_order_message_modifiable_commercial_investor_field_groups = true
show.d_c_long_order_message_modifiable_short_codes_group = true
show.d_c_long_order_message_modifiable_short_codes_groups = true
show.d_c_long_order_message_non_modifiable_commercial_investor_field_group = true
show.d_c_long_order_message_non_modifiable_commercial_investor_field_groups = true
show.d_c_long_order_message_non_modifiable_opt_fields_group = true
show.d_c_long_order_message_non_modifiable_opt_fields_groups = true
show.d_c_long_order_message_non_modifiable_short_codes_group = true
show.d_c_long_order_message_non_modifiable_short_codes_groups = true
show.d_c_long_order_message_optional_fields_derivatives_group = true
show.d_c_long_order_message_optional_fields_derivatives_groups = true
show.d_c_long_order_message_optional_fields_group = true
show.d_c_long_order_message_optional_fields_groups = true
show.d_c_long_order_message_short_codes_details_modifiable_group = true
show.d_c_long_order_message_short_codes_details_modifiable_groups = true
show.d_c_long_order_message_short_codes_details_non_modifiable_group = true
show.d_c_long_order_message_short_codes_details_non_modifiable_groups = true
show.d_c_long_order_message_strategy_fields_group = true
show.d_c_long_order_message_strategy_fields_groups = true
show.d_c_quote_message_bid_quoterep_group = true
show.d_c_quote_message_bid_quoterep_groups = true
show.d_c_quote_message_clearing_dataset_group = true
show.d_c_quote_message_clearing_dataset_groups = true
show.d_c_quote_message_modifiable_short_codes_group = true
show.d_c_quote_message_modifiable_short_codes_groups = true
show.d_c_quote_message_non_modifiable_short_codes_group = true
show.d_c_quote_message_non_modifiable_short_codes_groups = true
show.d_c_quote_message_offer_quoterep_group = true
show.d_c_quote_message_offer_quoterep_groups = true
show.d_c_quote_request_message_non_modifiable_short_codes_group = true
show.d_c_quote_request_message_non_modifiable_short_codes_groups = true
show.d_c_quote_request_message_short_codes_details_non_modifiable_group = true
show.d_c_quote_request_message_short_codes_details_non_modifiable_groups = true
show.d_c_short_order_reject_message_modifiable_short_codes_group = true
show.d_c_short_order_reject_message_modifiable_short_codes_groups = true
show.d_c_short_order_reject_message_short_codes_details_modifiable_group = true
show.d_c_short_order_reject_message_short_codes_details_modifiable_groups = true
show.d_c_short_trade_declaration_message_short_trade_declarations_group = true
show.d_c_short_trade_declaration_message_short_trade_declarations_groups = true
show.d_c_static_collars_message_static_collarsrep_group = true
show.d_c_static_collars_message_static_collarsrep_groups = true
show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group = true
show.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups = true
show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group = true
show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups = true
show.d_c_trade_message_matched_declarations_group = true
show.d_c_trade_message_matched_declarations_groups = true
show.d_c_trade_message_matched_orders_group = true
show.d_c_trade_message_matched_orders_groups = true
show.dark_execution_instruction = true
show.application_messages = true
show.execution_instruction_execution_instructionset = true
show.execution_instruction_execution_instructionset_optional = true
show.group_size_encoding = true
show.message = true
show.message_header = true
show.mi_fid_indicators_mi_fid_indicatorsset = true
show.mi_fid_indicators_mi_fid_indicatorsset_optional = true
show.open_close = true
show.packet = true
show.phase_qualifier = true
show.trade_qualifier_trade_qualifierset = true
show.trade_qualifier_trade_qualifierset_optional = true
show.trading_session = true
show.d_c_long_order_message_free_text_section_group_index = true
show.d_c_long_order_message_optional_fields_group_index = true
show.d_c_long_order_message_clearing_fields_group_index = true
show.d_c_long_order_message_non_modifiable_opt_fields_group_index = true
show.d_c_long_order_message_non_modifiable_short_codes_group_index = true
show.d_c_long_order_message_modifiable_short_codes_group_index = true
show.d_c_long_order_message_commercial_fields_group_index = true
show.d_c_long_order_message_modifiable_commercial_investor_field_group_index = true
show.d_c_long_order_message_non_modifiable_commercial_investor_field_group_index = true
show.d_c_long_order_message_extended_clearing_account_group_index = true
show.d_c_long_order_message_strategy_fields_group_index = true
show.d_c_long_order_message_optional_fields_derivatives_group_index = true
show.d_c_long_order_message_additional_infos_group_index = true
show.d_c_long_order_message_short_codes_details_non_modifiable_group_index = true
show.d_c_long_order_message_short_codes_details_modifiable_group_index = true
show.d_c_short_order_reject_message_modifiable_short_codes_group_index = true
show.d_c_short_order_reject_message_short_codes_details_modifiable_group_index = true
show.d_c_static_collars_message_static_collarsrep_group_index = true
show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index = true
show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index = true
show.d_c_quote_message_bid_quoterep_group_index = true
show.d_c_quote_message_offer_quoterep_group_index = true
show.d_c_quote_message_clearing_dataset_group_index = true
show.d_c_quote_message_non_modifiable_short_codes_group_index = true
show.d_c_quote_message_modifiable_short_codes_group_index = true
show.d_c_short_trade_declaration_message_short_trade_declarations_group_index = true
show.d_c_trade_message_matched_orders_group_index = true
show.d_c_trade_message_matched_declarations_group_index = true
show.d_c_quote_request_message_non_modifiable_short_codes_group_index = true
show.d_c_quote_request_message_short_codes_details_non_modifiable_group_index = true

-- Register Euronext Optiq DropCopyGateway Sbe 5.36 Show Options
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_ack_qualifiers = Pref.bool("Show Ack Qualifiers", show.ack_qualifiers, "Parse and add Ack Qualifiers to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_group = Pref.bool("Show D C Long Order Message Additional Infos Group", show.d_c_long_order_message_additional_infos_group, "Parse and add D C Long Order Message Additional Infos Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_groups = Pref.bool("Show D C Long Order Message Additional Infos Groups", show.d_c_long_order_message_additional_infos_groups, "Parse and add D C Long Order Message Additional Infos Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_group = Pref.bool("Show D C Long Order Message Clearing Fields Group", show.d_c_long_order_message_clearing_fields_group, "Parse and add D C Long Order Message Clearing Fields Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_groups = Pref.bool("Show D C Long Order Message Clearing Fields Groups", show.d_c_long_order_message_clearing_fields_groups, "Parse and add D C Long Order Message Clearing Fields Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_group = Pref.bool("Show D C Long Order Message Commercial Fields Group", show.d_c_long_order_message_commercial_fields_group, "Parse and add D C Long Order Message Commercial Fields Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_groups = Pref.bool("Show D C Long Order Message Commercial Fields Groups", show.d_c_long_order_message_commercial_fields_groups, "Parse and add D C Long Order Message Commercial Fields Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_group = Pref.bool("Show D C Long Order Message Extended Clearing Account Group", show.d_c_long_order_message_extended_clearing_account_group, "Parse and add D C Long Order Message Extended Clearing Account Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_groups = Pref.bool("Show D C Long Order Message Extended Clearing Account Groups", show.d_c_long_order_message_extended_clearing_account_groups, "Parse and add D C Long Order Message Extended Clearing Account Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_group = Pref.bool("Show D C Long Order Message Free Text Section Group", show.d_c_long_order_message_free_text_section_group, "Parse and add D C Long Order Message Free Text Section Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_groups = Pref.bool("Show D C Long Order Message Free Text Section Groups", show.d_c_long_order_message_free_text_section_groups, "Parse and add D C Long Order Message Free Text Section Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_group = Pref.bool("Show D C Long Order Message Modifiable Commercial Investor Field Group", show.d_c_long_order_message_modifiable_commercial_investor_field_group, "Parse and add D C Long Order Message Modifiable Commercial Investor Field Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_groups = Pref.bool("Show D C Long Order Message Modifiable Commercial Investor Field Groups", show.d_c_long_order_message_modifiable_commercial_investor_field_groups, "Parse and add D C Long Order Message Modifiable Commercial Investor Field Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_group = Pref.bool("Show D C Long Order Message Modifiable Short Codes Group", show.d_c_long_order_message_modifiable_short_codes_group, "Parse and add D C Long Order Message Modifiable Short Codes Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_groups = Pref.bool("Show D C Long Order Message Modifiable Short Codes Groups", show.d_c_long_order_message_modifiable_short_codes_groups, "Parse and add D C Long Order Message Modifiable Short Codes Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_group = Pref.bool("Show D C Long Order Message Non Modifiable Commercial Investor Field Group", show.d_c_long_order_message_non_modifiable_commercial_investor_field_group, "Parse and add D C Long Order Message Non Modifiable Commercial Investor Field Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_groups = Pref.bool("Show D C Long Order Message Non Modifiable Commercial Investor Field Groups", show.d_c_long_order_message_non_modifiable_commercial_investor_field_groups, "Parse and add D C Long Order Message Non Modifiable Commercial Investor Field Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_group = Pref.bool("Show D C Long Order Message Non Modifiable Opt Fields Group", show.d_c_long_order_message_non_modifiable_opt_fields_group, "Parse and add D C Long Order Message Non Modifiable Opt Fields Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_groups = Pref.bool("Show D C Long Order Message Non Modifiable Opt Fields Groups", show.d_c_long_order_message_non_modifiable_opt_fields_groups, "Parse and add D C Long Order Message Non Modifiable Opt Fields Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_group = Pref.bool("Show D C Long Order Message Non Modifiable Short Codes Group", show.d_c_long_order_message_non_modifiable_short_codes_group, "Parse and add D C Long Order Message Non Modifiable Short Codes Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_groups = Pref.bool("Show D C Long Order Message Non Modifiable Short Codes Groups", show.d_c_long_order_message_non_modifiable_short_codes_groups, "Parse and add D C Long Order Message Non Modifiable Short Codes Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_group = Pref.bool("Show D C Long Order Message Optional Fields Derivatives Group", show.d_c_long_order_message_optional_fields_derivatives_group, "Parse and add D C Long Order Message Optional Fields Derivatives Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_groups = Pref.bool("Show D C Long Order Message Optional Fields Derivatives Groups", show.d_c_long_order_message_optional_fields_derivatives_groups, "Parse and add D C Long Order Message Optional Fields Derivatives Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_group = Pref.bool("Show D C Long Order Message Optional Fields Group", show.d_c_long_order_message_optional_fields_group, "Parse and add D C Long Order Message Optional Fields Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_groups = Pref.bool("Show D C Long Order Message Optional Fields Groups", show.d_c_long_order_message_optional_fields_groups, "Parse and add D C Long Order Message Optional Fields Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_group = Pref.bool("Show D C Long Order Message Short Codes Details Modifiable Group", show.d_c_long_order_message_short_codes_details_modifiable_group, "Parse and add D C Long Order Message Short Codes Details Modifiable Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_groups = Pref.bool("Show D C Long Order Message Short Codes Details Modifiable Groups", show.d_c_long_order_message_short_codes_details_modifiable_groups, "Parse and add D C Long Order Message Short Codes Details Modifiable Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_group = Pref.bool("Show D C Long Order Message Short Codes Details Non Modifiable Group", show.d_c_long_order_message_short_codes_details_non_modifiable_group, "Parse and add D C Long Order Message Short Codes Details Non Modifiable Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_groups = Pref.bool("Show D C Long Order Message Short Codes Details Non Modifiable Groups", show.d_c_long_order_message_short_codes_details_non_modifiable_groups, "Parse and add D C Long Order Message Short Codes Details Non Modifiable Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_group = Pref.bool("Show D C Long Order Message Strategy Fields Group", show.d_c_long_order_message_strategy_fields_group, "Parse and add D C Long Order Message Strategy Fields Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_groups = Pref.bool("Show D C Long Order Message Strategy Fields Groups", show.d_c_long_order_message_strategy_fields_groups, "Parse and add D C Long Order Message Strategy Fields Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_group = Pref.bool("Show D C Quote Message Bid Quoterep Group", show.d_c_quote_message_bid_quoterep_group, "Parse and add D C Quote Message Bid Quoterep Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_groups = Pref.bool("Show D C Quote Message Bid Quoterep Groups", show.d_c_quote_message_bid_quoterep_groups, "Parse and add D C Quote Message Bid Quoterep Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_group = Pref.bool("Show D C Quote Message Clearing Dataset Group", show.d_c_quote_message_clearing_dataset_group, "Parse and add D C Quote Message Clearing Dataset Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_groups = Pref.bool("Show D C Quote Message Clearing Dataset Groups", show.d_c_quote_message_clearing_dataset_groups, "Parse and add D C Quote Message Clearing Dataset Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_group = Pref.bool("Show D C Quote Message Modifiable Short Codes Group", show.d_c_quote_message_modifiable_short_codes_group, "Parse and add D C Quote Message Modifiable Short Codes Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_groups = Pref.bool("Show D C Quote Message Modifiable Short Codes Groups", show.d_c_quote_message_modifiable_short_codes_groups, "Parse and add D C Quote Message Modifiable Short Codes Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_group = Pref.bool("Show D C Quote Message Non Modifiable Short Codes Group", show.d_c_quote_message_non_modifiable_short_codes_group, "Parse and add D C Quote Message Non Modifiable Short Codes Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_groups = Pref.bool("Show D C Quote Message Non Modifiable Short Codes Groups", show.d_c_quote_message_non_modifiable_short_codes_groups, "Parse and add D C Quote Message Non Modifiable Short Codes Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_group = Pref.bool("Show D C Quote Message Offer Quoterep Group", show.d_c_quote_message_offer_quoterep_group, "Parse and add D C Quote Message Offer Quoterep Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_groups = Pref.bool("Show D C Quote Message Offer Quoterep Groups", show.d_c_quote_message_offer_quoterep_groups, "Parse and add D C Quote Message Offer Quoterep Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_group = Pref.bool("Show D C Quote Request Message Non Modifiable Short Codes Group", show.d_c_quote_request_message_non_modifiable_short_codes_group, "Parse and add D C Quote Request Message Non Modifiable Short Codes Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_groups = Pref.bool("Show D C Quote Request Message Non Modifiable Short Codes Groups", show.d_c_quote_request_message_non_modifiable_short_codes_groups, "Parse and add D C Quote Request Message Non Modifiable Short Codes Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_group = Pref.bool("Show D C Quote Request Message Short Codes Details Non Modifiable Group", show.d_c_quote_request_message_short_codes_details_non_modifiable_group, "Parse and add D C Quote Request Message Short Codes Details Non Modifiable Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_groups = Pref.bool("Show D C Quote Request Message Short Codes Details Non Modifiable Groups", show.d_c_quote_request_message_short_codes_details_non_modifiable_groups, "Parse and add D C Quote Request Message Short Codes Details Non Modifiable Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_group = Pref.bool("Show D C Short Order Reject Message Modifiable Short Codes Group", show.d_c_short_order_reject_message_modifiable_short_codes_group, "Parse and add D C Short Order Reject Message Modifiable Short Codes Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_groups = Pref.bool("Show D C Short Order Reject Message Modifiable Short Codes Groups", show.d_c_short_order_reject_message_modifiable_short_codes_groups, "Parse and add D C Short Order Reject Message Modifiable Short Codes Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_group = Pref.bool("Show D C Short Order Reject Message Short Codes Details Modifiable Group", show.d_c_short_order_reject_message_short_codes_details_modifiable_group, "Parse and add D C Short Order Reject Message Short Codes Details Modifiable Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_groups = Pref.bool("Show D C Short Order Reject Message Short Codes Details Modifiable Groups", show.d_c_short_order_reject_message_short_codes_details_modifiable_groups, "Parse and add D C Short Order Reject Message Short Codes Details Modifiable Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_group = Pref.bool("Show D C Short Trade Declaration Message Short Trade Declarations Group", show.d_c_short_trade_declaration_message_short_trade_declarations_group, "Parse and add D C Short Trade Declaration Message Short Trade Declarations Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_groups = Pref.bool("Show D C Short Trade Declaration Message Short Trade Declarations Groups", show.d_c_short_trade_declaration_message_short_trade_declarations_groups, "Parse and add D C Short Trade Declaration Message Short Trade Declarations Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_group = Pref.bool("Show D C Static Collars Message Static Collarsrep Group", show.d_c_static_collars_message_static_collarsrep_group, "Parse and add D C Static Collars Message Static Collarsrep Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_groups = Pref.bool("Show D C Static Collars Message Static Collarsrep Groups", show.d_c_static_collars_message_static_collarsrep_groups, "Parse and add D C Static Collars Message Static Collarsrep Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_group = Pref.bool("Show D C Trade Bust Notification Message Short Codes Details Modifiable Group", show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group, "Parse and add D C Trade Bust Notification Message Short Codes Details Modifiable Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_groups = Pref.bool("Show D C Trade Bust Notification Message Short Codes Details Modifiable Groups", show.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups, "Parse and add D C Trade Bust Notification Message Short Codes Details Modifiable Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group = Pref.bool("Show D C Trade Bust Notification Message Short Codes Details Non Modifiable Group", show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group, "Parse and add D C Trade Bust Notification Message Short Codes Details Non Modifiable Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups = Pref.bool("Show D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups", show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups, "Parse and add D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_group = Pref.bool("Show D C Trade Message Matched Declarations Group", show.d_c_trade_message_matched_declarations_group, "Parse and add D C Trade Message Matched Declarations Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_groups = Pref.bool("Show D C Trade Message Matched Declarations Groups", show.d_c_trade_message_matched_declarations_groups, "Parse and add D C Trade Message Matched Declarations Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_group = Pref.bool("Show D C Trade Message Matched Orders Group", show.d_c_trade_message_matched_orders_group, "Parse and add D C Trade Message Matched Orders Group to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_groups = Pref.bool("Show D C Trade Message Matched Orders Groups", show.d_c_trade_message_matched_orders_groups, "Parse and add D C Trade Message Matched Orders Groups to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_dark_execution_instruction = Pref.bool("Show Dark Execution Instruction", show.dark_execution_instruction, "Parse and add Dark Execution Instruction to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_execution_instruction_execution_instructionset = Pref.bool("Show Execution Instruction Execution Instructionset", show.execution_instruction_execution_instructionset, "Parse and add Execution Instruction Execution Instructionset to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_execution_instruction_execution_instructionset_optional = Pref.bool("Show Execution Instruction Execution Instructionset optional", show.execution_instruction_execution_instructionset_optional, "Parse and add Execution Instruction Execution Instructionset optional to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_group_size_encoding = Pref.bool("Show Group Size Encoding", show.group_size_encoding, "Parse and add Group Size Encoding to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_mi_fid_indicators_mi_fid_indicatorsset = Pref.bool("Show Mi Fid Indicators Mi Fid Indicatorsset", show.mi_fid_indicators_mi_fid_indicatorsset, "Parse and add Mi Fid Indicators Mi Fid Indicatorsset to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_mi_fid_indicators_mi_fid_indicatorsset_optional = Pref.bool("Show Mi Fid Indicators Mi Fid Indicatorsset optional", show.mi_fid_indicators_mi_fid_indicatorsset_optional, "Parse and add Mi Fid Indicators Mi Fid Indicatorsset optional to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_open_close = Pref.bool("Show Open Close", show.open_close, "Parse and add Open Close to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_phase_qualifier = Pref.bool("Show Phase Qualifier", show.phase_qualifier, "Parse and add Phase Qualifier to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trade_qualifier_trade_qualifierset = Pref.bool("Show Trade Qualifier Trade Qualifierset", show.trade_qualifier_trade_qualifierset, "Parse and add Trade Qualifier Trade Qualifierset to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trade_qualifier_trade_qualifierset_optional = Pref.bool("Show Trade Qualifier Trade Qualifierset optional", show.trade_qualifier_trade_qualifierset_optional, "Parse and add Trade Qualifier Trade Qualifierset optional to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trading_session = Pref.bool("Show Trading Session", show.trading_session, "Parse and add Trading Session to protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_group_index = Pref.bool("Show D C Long Order Message Free Text Section Group Index", show.d_c_long_order_message_free_text_section_group_index, "Show generated d c long order message free text section group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_group_index = Pref.bool("Show D C Long Order Message Optional Fields Group Index", show.d_c_long_order_message_optional_fields_group_index, "Show generated d c long order message optional fields group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_group_index = Pref.bool("Show D C Long Order Message Clearing Fields Group Index", show.d_c_long_order_message_clearing_fields_group_index, "Show generated d c long order message clearing fields group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_group_index = Pref.bool("Show D C Long Order Message Non Modifiable Opt Fields Group Index", show.d_c_long_order_message_non_modifiable_opt_fields_group_index, "Show generated d c long order message non modifiable opt fields group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_group_index = Pref.bool("Show D C Long Order Message Non Modifiable Short Codes Group Index", show.d_c_long_order_message_non_modifiable_short_codes_group_index, "Show generated d c long order message non modifiable short codes group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_group_index = Pref.bool("Show D C Long Order Message Modifiable Short Codes Group Index", show.d_c_long_order_message_modifiable_short_codes_group_index, "Show generated d c long order message modifiable short codes group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_group_index = Pref.bool("Show D C Long Order Message Commercial Fields Group Index", show.d_c_long_order_message_commercial_fields_group_index, "Show generated d c long order message commercial fields group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_group_index = Pref.bool("Show D C Long Order Message Modifiable Commercial Investor Field Group Index", show.d_c_long_order_message_modifiable_commercial_investor_field_group_index, "Show generated d c long order message modifiable commercial investor field group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_group_index = Pref.bool("Show D C Long Order Message Non Modifiable Commercial Investor Field Group Index", show.d_c_long_order_message_non_modifiable_commercial_investor_field_group_index, "Show generated d c long order message non modifiable commercial investor field group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_group_index = Pref.bool("Show D C Long Order Message Extended Clearing Account Group Index", show.d_c_long_order_message_extended_clearing_account_group_index, "Show generated d c long order message extended clearing account group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_group_index = Pref.bool("Show D C Long Order Message Strategy Fields Group Index", show.d_c_long_order_message_strategy_fields_group_index, "Show generated d c long order message strategy fields group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_group_index = Pref.bool("Show D C Long Order Message Optional Fields Derivatives Group Index", show.d_c_long_order_message_optional_fields_derivatives_group_index, "Show generated d c long order message optional fields derivatives group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_group_index = Pref.bool("Show D C Long Order Message Additional Infos Group Index", show.d_c_long_order_message_additional_infos_group_index, "Show generated d c long order message additional infos group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_group_index = Pref.bool("Show D C Long Order Message Short Codes Details Non Modifiable Group Index", show.d_c_long_order_message_short_codes_details_non_modifiable_group_index, "Show generated d c long order message short codes details non modifiable group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_group_index = Pref.bool("Show D C Long Order Message Short Codes Details Modifiable Group Index", show.d_c_long_order_message_short_codes_details_modifiable_group_index, "Show generated d c long order message short codes details modifiable group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_group_index = Pref.bool("Show D C Short Order Reject Message Modifiable Short Codes Group Index", show.d_c_short_order_reject_message_modifiable_short_codes_group_index, "Show generated d c short order reject message modifiable short codes group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_group_index = Pref.bool("Show D C Short Order Reject Message Short Codes Details Modifiable Group Index", show.d_c_short_order_reject_message_short_codes_details_modifiable_group_index, "Show generated d c short order reject message short codes details modifiable group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_group_index = Pref.bool("Show D C Static Collars Message Static Collarsrep Group Index", show.d_c_static_collars_message_static_collarsrep_group_index, "Show generated d c static collars message static collarsrep group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index = Pref.bool("Show D C Trade Bust Notification Message Short Codes Details Non Modifiable Group Index", show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index, "Show generated d c trade bust notification message short codes details non modifiable group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index = Pref.bool("Show D C Trade Bust Notification Message Short Codes Details Modifiable Group Index", show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index, "Show generated d c trade bust notification message short codes details modifiable group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_group_index = Pref.bool("Show D C Quote Message Bid Quoterep Group Index", show.d_c_quote_message_bid_quoterep_group_index, "Show generated d c quote message bid quoterep group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_group_index = Pref.bool("Show D C Quote Message Offer Quoterep Group Index", show.d_c_quote_message_offer_quoterep_group_index, "Show generated d c quote message offer quoterep group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_group_index = Pref.bool("Show D C Quote Message Clearing Dataset Group Index", show.d_c_quote_message_clearing_dataset_group_index, "Show generated d c quote message clearing dataset group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_group_index = Pref.bool("Show D C Quote Message Non Modifiable Short Codes Group Index", show.d_c_quote_message_non_modifiable_short_codes_group_index, "Show generated d c quote message non modifiable short codes group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_group_index = Pref.bool("Show D C Quote Message Modifiable Short Codes Group Index", show.d_c_quote_message_modifiable_short_codes_group_index, "Show generated d c quote message modifiable short codes group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_group_index = Pref.bool("Show D C Short Trade Declaration Message Short Trade Declarations Group Index", show.d_c_short_trade_declaration_message_short_trade_declarations_group_index, "Show generated d c short trade declaration message short trade declarations group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_group_index = Pref.bool("Show D C Trade Message Matched Orders Group Index", show.d_c_trade_message_matched_orders_group_index, "Show generated d c trade message matched orders group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_group_index = Pref.bool("Show D C Trade Message Matched Declarations Group Index", show.d_c_trade_message_matched_declarations_group_index, "Show generated d c trade message matched declarations group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_group_index = Pref.bool("Show D C Quote Request Message Non Modifiable Short Codes Group Index", show.d_c_quote_request_message_non_modifiable_short_codes_group_index, "Show generated d c quote request message non modifiable short codes group index in protocol tree")
omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_group_index = Pref.bool("Show D C Quote Request Message Short Codes Details Non Modifiable Group Index", show.d_c_quote_request_message_short_codes_details_non_modifiable_group_index, "Show generated d c quote request message short codes details non modifiable group index in protocol tree")


-- Handle changed preferences
function omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs_changed()

  -- Check if preferences have changed
  if show.ack_qualifiers ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_ack_qualifiers then
    show.ack_qualifiers = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_ack_qualifiers
  end
  if show.application_messages ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_application_messages then
    show.application_messages = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_application_messages
  end
  if show.d_c_long_order_message_additional_infos_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_group then
    show.d_c_long_order_message_additional_infos_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_group
  end
  if show.d_c_long_order_message_additional_infos_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_groups then
    show.d_c_long_order_message_additional_infos_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_groups
  end
  if show.d_c_long_order_message_clearing_fields_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_group then
    show.d_c_long_order_message_clearing_fields_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_group
  end
  if show.d_c_long_order_message_clearing_fields_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_groups then
    show.d_c_long_order_message_clearing_fields_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_groups
  end
  if show.d_c_long_order_message_commercial_fields_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_group then
    show.d_c_long_order_message_commercial_fields_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_group
  end
  if show.d_c_long_order_message_commercial_fields_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_groups then
    show.d_c_long_order_message_commercial_fields_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_groups
  end
  if show.d_c_long_order_message_extended_clearing_account_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_group then
    show.d_c_long_order_message_extended_clearing_account_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_group
  end
  if show.d_c_long_order_message_extended_clearing_account_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_groups then
    show.d_c_long_order_message_extended_clearing_account_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_groups
  end
  if show.d_c_long_order_message_free_text_section_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_group then
    show.d_c_long_order_message_free_text_section_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_group
  end
  if show.d_c_long_order_message_free_text_section_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_groups then
    show.d_c_long_order_message_free_text_section_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_groups
  end
  if show.d_c_long_order_message_modifiable_commercial_investor_field_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_group then
    show.d_c_long_order_message_modifiable_commercial_investor_field_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_group
  end
  if show.d_c_long_order_message_modifiable_commercial_investor_field_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_groups then
    show.d_c_long_order_message_modifiable_commercial_investor_field_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_groups
  end
  if show.d_c_long_order_message_modifiable_short_codes_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_group then
    show.d_c_long_order_message_modifiable_short_codes_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_group
  end
  if show.d_c_long_order_message_modifiable_short_codes_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_groups then
    show.d_c_long_order_message_modifiable_short_codes_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_groups
  end
  if show.d_c_long_order_message_non_modifiable_commercial_investor_field_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_group then
    show.d_c_long_order_message_non_modifiable_commercial_investor_field_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_group
  end
  if show.d_c_long_order_message_non_modifiable_commercial_investor_field_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_groups then
    show.d_c_long_order_message_non_modifiable_commercial_investor_field_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_groups
  end
  if show.d_c_long_order_message_non_modifiable_opt_fields_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_group then
    show.d_c_long_order_message_non_modifiable_opt_fields_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_group
  end
  if show.d_c_long_order_message_non_modifiable_opt_fields_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_groups then
    show.d_c_long_order_message_non_modifiable_opt_fields_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_groups
  end
  if show.d_c_long_order_message_non_modifiable_short_codes_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_group then
    show.d_c_long_order_message_non_modifiable_short_codes_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_group
  end
  if show.d_c_long_order_message_non_modifiable_short_codes_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_groups then
    show.d_c_long_order_message_non_modifiable_short_codes_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_groups
  end
  if show.d_c_long_order_message_optional_fields_derivatives_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_group then
    show.d_c_long_order_message_optional_fields_derivatives_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_group
  end
  if show.d_c_long_order_message_optional_fields_derivatives_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_groups then
    show.d_c_long_order_message_optional_fields_derivatives_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_groups
  end
  if show.d_c_long_order_message_optional_fields_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_group then
    show.d_c_long_order_message_optional_fields_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_group
  end
  if show.d_c_long_order_message_optional_fields_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_groups then
    show.d_c_long_order_message_optional_fields_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_groups
  end
  if show.d_c_long_order_message_short_codes_details_modifiable_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_group then
    show.d_c_long_order_message_short_codes_details_modifiable_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_group
  end
  if show.d_c_long_order_message_short_codes_details_modifiable_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_groups then
    show.d_c_long_order_message_short_codes_details_modifiable_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_groups
  end
  if show.d_c_long_order_message_short_codes_details_non_modifiable_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_group then
    show.d_c_long_order_message_short_codes_details_non_modifiable_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_group
  end
  if show.d_c_long_order_message_short_codes_details_non_modifiable_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_groups then
    show.d_c_long_order_message_short_codes_details_non_modifiable_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_groups
  end
  if show.d_c_long_order_message_strategy_fields_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_group then
    show.d_c_long_order_message_strategy_fields_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_group
  end
  if show.d_c_long_order_message_strategy_fields_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_groups then
    show.d_c_long_order_message_strategy_fields_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_groups
  end
  if show.d_c_quote_message_bid_quoterep_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_group then
    show.d_c_quote_message_bid_quoterep_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_group
  end
  if show.d_c_quote_message_bid_quoterep_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_groups then
    show.d_c_quote_message_bid_quoterep_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_groups
  end
  if show.d_c_quote_message_clearing_dataset_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_group then
    show.d_c_quote_message_clearing_dataset_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_group
  end
  if show.d_c_quote_message_clearing_dataset_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_groups then
    show.d_c_quote_message_clearing_dataset_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_groups
  end
  if show.d_c_quote_message_modifiable_short_codes_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_group then
    show.d_c_quote_message_modifiable_short_codes_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_group
  end
  if show.d_c_quote_message_modifiable_short_codes_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_groups then
    show.d_c_quote_message_modifiable_short_codes_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_groups
  end
  if show.d_c_quote_message_non_modifiable_short_codes_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_group then
    show.d_c_quote_message_non_modifiable_short_codes_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_group
  end
  if show.d_c_quote_message_non_modifiable_short_codes_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_groups then
    show.d_c_quote_message_non_modifiable_short_codes_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_groups
  end
  if show.d_c_quote_message_offer_quoterep_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_group then
    show.d_c_quote_message_offer_quoterep_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_group
  end
  if show.d_c_quote_message_offer_quoterep_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_groups then
    show.d_c_quote_message_offer_quoterep_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_groups
  end
  if show.d_c_quote_request_message_non_modifiable_short_codes_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_group then
    show.d_c_quote_request_message_non_modifiable_short_codes_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_group
  end
  if show.d_c_quote_request_message_non_modifiable_short_codes_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_groups then
    show.d_c_quote_request_message_non_modifiable_short_codes_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_groups
  end
  if show.d_c_quote_request_message_short_codes_details_non_modifiable_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_group then
    show.d_c_quote_request_message_short_codes_details_non_modifiable_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_group
  end
  if show.d_c_quote_request_message_short_codes_details_non_modifiable_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_groups then
    show.d_c_quote_request_message_short_codes_details_non_modifiable_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_groups
  end
  if show.d_c_short_order_reject_message_modifiable_short_codes_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_group then
    show.d_c_short_order_reject_message_modifiable_short_codes_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_group
  end
  if show.d_c_short_order_reject_message_modifiable_short_codes_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_groups then
    show.d_c_short_order_reject_message_modifiable_short_codes_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_groups
  end
  if show.d_c_short_order_reject_message_short_codes_details_modifiable_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_group then
    show.d_c_short_order_reject_message_short_codes_details_modifiable_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_group
  end
  if show.d_c_short_order_reject_message_short_codes_details_modifiable_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_groups then
    show.d_c_short_order_reject_message_short_codes_details_modifiable_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_groups
  end
  if show.d_c_short_trade_declaration_message_short_trade_declarations_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_group then
    show.d_c_short_trade_declaration_message_short_trade_declarations_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_group
  end
  if show.d_c_short_trade_declaration_message_short_trade_declarations_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_groups then
    show.d_c_short_trade_declaration_message_short_trade_declarations_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_groups
  end
  if show.d_c_static_collars_message_static_collarsrep_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_group then
    show.d_c_static_collars_message_static_collarsrep_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_group
  end
  if show.d_c_static_collars_message_static_collarsrep_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_groups then
    show.d_c_static_collars_message_static_collarsrep_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_groups
  end
  if show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_group then
    show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_group
  end
  if show.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_groups then
    show.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_groups
  end
  if show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group then
    show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group
  end
  if show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups then
    show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups
  end
  if show.d_c_trade_message_matched_declarations_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_group then
    show.d_c_trade_message_matched_declarations_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_group
  end
  if show.d_c_trade_message_matched_declarations_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_groups then
    show.d_c_trade_message_matched_declarations_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_groups
  end
  if show.d_c_trade_message_matched_orders_group ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_group then
    show.d_c_trade_message_matched_orders_group = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_group
  end
  if show.d_c_trade_message_matched_orders_groups ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_groups then
    show.d_c_trade_message_matched_orders_groups = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_groups
  end
  if show.dark_execution_instruction ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_dark_execution_instruction then
    show.dark_execution_instruction = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_dark_execution_instruction
  end
  if show.execution_instruction_execution_instructionset ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_execution_instruction_execution_instructionset then
    show.execution_instruction_execution_instructionset = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_execution_instruction_execution_instructionset
  end
  if show.execution_instruction_execution_instructionset_optional ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_execution_instruction_execution_instructionset_optional then
    show.execution_instruction_execution_instructionset_optional = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_execution_instruction_execution_instructionset_optional
  end
  if show.group_size_encoding ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_group_size_encoding then
    show.group_size_encoding = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_group_size_encoding
  end
  if show.message ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_message then
    show.message = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_message
  end
  if show.message_header ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_message_header then
    show.message_header = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_message_header
  end
  if show.mi_fid_indicators_mi_fid_indicatorsset ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_mi_fid_indicators_mi_fid_indicatorsset then
    show.mi_fid_indicators_mi_fid_indicatorsset = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_mi_fid_indicators_mi_fid_indicatorsset
  end
  if show.mi_fid_indicators_mi_fid_indicatorsset_optional ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_mi_fid_indicators_mi_fid_indicatorsset_optional then
    show.mi_fid_indicators_mi_fid_indicatorsset_optional = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_mi_fid_indicators_mi_fid_indicatorsset_optional
  end
  if show.open_close ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_open_close then
    show.open_close = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_open_close
  end
  if show.packet ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_packet then
    show.packet = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_packet
  end
  if show.phase_qualifier ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_phase_qualifier then
    show.phase_qualifier = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_phase_qualifier
  end
  if show.trade_qualifier_trade_qualifierset ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trade_qualifier_trade_qualifierset then
    show.trade_qualifier_trade_qualifierset = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trade_qualifier_trade_qualifierset
  end
  if show.trade_qualifier_trade_qualifierset_optional ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trade_qualifier_trade_qualifierset_optional then
    show.trade_qualifier_trade_qualifierset_optional = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trade_qualifier_trade_qualifierset_optional
  end
  if show.trading_session ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trading_session then
    show.trading_session = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_trading_session
  end
  if show.d_c_long_order_message_free_text_section_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_group_index then
    show.d_c_long_order_message_free_text_section_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_free_text_section_group_index
  end
  if show.d_c_long_order_message_optional_fields_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_group_index then
    show.d_c_long_order_message_optional_fields_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_group_index
  end
  if show.d_c_long_order_message_clearing_fields_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_group_index then
    show.d_c_long_order_message_clearing_fields_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_clearing_fields_group_index
  end
  if show.d_c_long_order_message_non_modifiable_opt_fields_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_group_index then
    show.d_c_long_order_message_non_modifiable_opt_fields_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_opt_fields_group_index
  end
  if show.d_c_long_order_message_non_modifiable_short_codes_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_group_index then
    show.d_c_long_order_message_non_modifiable_short_codes_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_short_codes_group_index
  end
  if show.d_c_long_order_message_modifiable_short_codes_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_group_index then
    show.d_c_long_order_message_modifiable_short_codes_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_short_codes_group_index
  end
  if show.d_c_long_order_message_commercial_fields_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_group_index then
    show.d_c_long_order_message_commercial_fields_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_commercial_fields_group_index
  end
  if show.d_c_long_order_message_modifiable_commercial_investor_field_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_group_index then
    show.d_c_long_order_message_modifiable_commercial_investor_field_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_modifiable_commercial_investor_field_group_index
  end
  if show.d_c_long_order_message_non_modifiable_commercial_investor_field_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_group_index then
    show.d_c_long_order_message_non_modifiable_commercial_investor_field_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_non_modifiable_commercial_investor_field_group_index
  end
  if show.d_c_long_order_message_extended_clearing_account_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_group_index then
    show.d_c_long_order_message_extended_clearing_account_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_extended_clearing_account_group_index
  end
  if show.d_c_long_order_message_strategy_fields_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_group_index then
    show.d_c_long_order_message_strategy_fields_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_strategy_fields_group_index
  end
  if show.d_c_long_order_message_optional_fields_derivatives_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_group_index then
    show.d_c_long_order_message_optional_fields_derivatives_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_optional_fields_derivatives_group_index
  end
  if show.d_c_long_order_message_additional_infos_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_group_index then
    show.d_c_long_order_message_additional_infos_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_additional_infos_group_index
  end
  if show.d_c_long_order_message_short_codes_details_non_modifiable_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_group_index then
    show.d_c_long_order_message_short_codes_details_non_modifiable_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_non_modifiable_group_index
  end
  if show.d_c_long_order_message_short_codes_details_modifiable_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_group_index then
    show.d_c_long_order_message_short_codes_details_modifiable_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_long_order_message_short_codes_details_modifiable_group_index
  end
  if show.d_c_short_order_reject_message_modifiable_short_codes_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_group_index then
    show.d_c_short_order_reject_message_modifiable_short_codes_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_modifiable_short_codes_group_index
  end
  if show.d_c_short_order_reject_message_short_codes_details_modifiable_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_group_index then
    show.d_c_short_order_reject_message_short_codes_details_modifiable_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_order_reject_message_short_codes_details_modifiable_group_index
  end
  if show.d_c_static_collars_message_static_collarsrep_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_group_index then
    show.d_c_static_collars_message_static_collarsrep_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_static_collars_message_static_collarsrep_group_index
  end
  if show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index then
    show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index
  end
  if show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index then
    show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index
  end
  if show.d_c_quote_message_bid_quoterep_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_group_index then
    show.d_c_quote_message_bid_quoterep_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_bid_quoterep_group_index
  end
  if show.d_c_quote_message_offer_quoterep_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_group_index then
    show.d_c_quote_message_offer_quoterep_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_offer_quoterep_group_index
  end
  if show.d_c_quote_message_clearing_dataset_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_group_index then
    show.d_c_quote_message_clearing_dataset_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_clearing_dataset_group_index
  end
  if show.d_c_quote_message_non_modifiable_short_codes_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_group_index then
    show.d_c_quote_message_non_modifiable_short_codes_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_non_modifiable_short_codes_group_index
  end
  if show.d_c_quote_message_modifiable_short_codes_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_group_index then
    show.d_c_quote_message_modifiable_short_codes_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_message_modifiable_short_codes_group_index
  end
  if show.d_c_short_trade_declaration_message_short_trade_declarations_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_group_index then
    show.d_c_short_trade_declaration_message_short_trade_declarations_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_short_trade_declaration_message_short_trade_declarations_group_index
  end
  if show.d_c_trade_message_matched_orders_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_group_index then
    show.d_c_trade_message_matched_orders_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_orders_group_index
  end
  if show.d_c_trade_message_matched_declarations_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_group_index then
    show.d_c_trade_message_matched_declarations_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_trade_message_matched_declarations_group_index
  end
  if show.d_c_quote_request_message_non_modifiable_short_codes_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_group_index then
    show.d_c_quote_request_message_non_modifiable_short_codes_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_non_modifiable_short_codes_group_index
  end
  if show.d_c_quote_request_message_short_codes_details_non_modifiable_group_index ~= omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_group_index then
    show.d_c_quote_request_message_short_codes_details_non_modifiable_group_index = omi_euronext_optiq_dropcopygateway_sbe_v5_36.prefs.show_d_c_quote_request_message_short_codes_details_non_modifiable_group_index
  end
end


-----------------------------------------------------------------------
-- Euronext Optiq DropCopyGateway Sbe 5.36 Fields
-----------------------------------------------------------------------

-- Access Flag
euronext_optiq_dropcopygateway_sbe_v5_36.access_flag = {}

-- Size: Access Flag
euronext_optiq_dropcopygateway_sbe_v5_36.access_flag.size = 1

-- Display: Access Flag
euronext_optiq_dropcopygateway_sbe_v5_36.access_flag.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Access Flag: No Value"
  end

  return "Access Flag: "..value
end

-- Dissect: Access Flag
euronext_optiq_dropcopygateway_sbe_v5_36.access_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.access_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.access_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.access_flag, range, value, display)

  return offset + length, value
end

-- Account Number
euronext_optiq_dropcopygateway_sbe_v5_36.account_number = {}

-- Size: Account Number
euronext_optiq_dropcopygateway_sbe_v5_36.account_number.size = 12

-- Display: Account Number
euronext_optiq_dropcopygateway_sbe_v5_36.account_number.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Account Number: No Value"
  end

  return "Account Number: "..value
end

-- Dissect: Account Number
euronext_optiq_dropcopygateway_sbe_v5_36.account_number.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.account_number.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_number, range, value, display)

  return offset + length, value
end

-- Account Type Account Typeenum
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum = {}

-- Size: Account Type Account Typeenum
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.size = 1

-- Display: Account Type Account Typeenum
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.display = function(value)
  if value == 1 then
    return "Account Type Account Typeenum: Client (1)"
  end
  if value == 2 then
    return "Account Type Account Typeenum: House (2)"
  end
  if value == 4 then
    return "Account Type Account Typeenum: Ro (4)"
  end
  if value == 5 then
    return "Account Type Account Typeenum: Assigned Broker (5)"
  end
  if value == 6 then
    return "Account Type Account Typeenum: Liquidity Provider (6)"
  end
  if value == 7 then
    return "Account Type Account Typeenum: Related Party (7)"
  end
  if value == 8 then
    return "Account Type Account Typeenum: Structured Product Market Maker (8)"
  end
  if value == 14 then
    return "Account Type Account Typeenum: Omega Client (14)"
  end
  if value == 15 then
    return "Account Type Account Typeenum: Ceres Client (15)"
  end

  return "Account Type Account Typeenum: Unknown("..value..")"
end

-- Dissect: Account Type Account Typeenum
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_account_typeenum, range, value, display)

  return offset + length, value
end

-- Account Type Account Typeenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum_optional = {}

-- Size: Account Type Account Typeenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum_optional.size = 1

-- Display: Account Type Account Typeenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum_optional.display = function(value)
  if value == 1 then
    return "Account Type Account Typeenum optional: Client (1)"
  end
  if value == 2 then
    return "Account Type Account Typeenum optional: House (2)"
  end
  if value == 4 then
    return "Account Type Account Typeenum optional: Ro (4)"
  end
  if value == 5 then
    return "Account Type Account Typeenum optional: Assigned Broker (5)"
  end
  if value == 6 then
    return "Account Type Account Typeenum optional: Liquidity Provider (6)"
  end
  if value == 7 then
    return "Account Type Account Typeenum optional: Related Party (7)"
  end
  if value == 8 then
    return "Account Type Account Typeenum optional: Structured Product Market Maker (8)"
  end
  if value == 14 then
    return "Account Type Account Typeenum optional: Omega Client (14)"
  end
  if value == 15 then
    return "Account Type Account Typeenum optional: Ceres Client (15)"
  end
  if value == 255 then
    return "Account Type Account Typeenum optional: No Value"
  end

  return "Account Type Account Typeenum optional: Unknown("..value..")"
end

-- Dissect: Account Type Account Typeenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_account_typeenum_optional, range, value, display)

  return offset + length, value
end

-- Account Type Cross
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_cross = {}

-- Size: Account Type Cross
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_cross.size = 1

-- Display: Account Type Cross
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_cross.display = function(value)
  if value == 1 then
    return "Account Type Cross: Client (1)"
  end
  if value == 2 then
    return "Account Type Cross: House (2)"
  end
  if value == 4 then
    return "Account Type Cross: Ro (4)"
  end
  if value == 5 then
    return "Account Type Cross: Assigned Broker (5)"
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
  if value == 9 then
    return "Account Type Cross: Managed Client (9)"
  end
  if value == 10 then
    return "Account Type Cross: Foreign (10)"
  end
  if value == 11 then
    return "Account Type Cross: Managed Foreign (11)"
  end
  if value == 12 then
    return "Account Type Cross: Liquidity Contract (12)"
  end
  if value == 13 then
    return "Account Type Cross: Undertakingfor Collective Investment (13)"
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
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_cross.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_cross.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_cross, range, value, display)

  return offset + length, value
end

-- Account Type Internal Account Type Internalenum
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum = {}

-- Size: Account Type Internal Account Type Internalenum
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum.size = 1

-- Display: Account Type Internal Account Type Internalenum
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum.display = function(value)
  if value == 1 then
    return "Account Type Internal Account Type Internalenum: Client (1)"
  end
  if value == 2 then
    return "Account Type Internal Account Type Internalenum: House (2)"
  end
  if value == 3 then
    return "Account Type Internal Account Type Internalenum: Retail Liquidity Provider (3)"
  end
  if value == 4 then
    return "Account Type Internal Account Type Internalenum: Ro (4)"
  end
  if value == 5 then
    return "Account Type Internal Account Type Internalenum: Assigned Broker (5)"
  end
  if value == 6 then
    return "Account Type Internal Account Type Internalenum: Liquidity Provider (6)"
  end
  if value == 7 then
    return "Account Type Internal Account Type Internalenum: Related Party (7)"
  end
  if value == 8 then
    return "Account Type Internal Account Type Internalenum: Structured Product Market Maker (8)"
  end
  if value == 9 then
    return "Account Type Internal Account Type Internalenum: Managed Client (9)"
  end
  if value == 10 then
    return "Account Type Internal Account Type Internalenum: Foreign (10)"
  end
  if value == 11 then
    return "Account Type Internal Account Type Internalenum: Managed Foreign (11)"
  end
  if value == 12 then
    return "Account Type Internal Account Type Internalenum: Liquidity Contract (12)"
  end
  if value == 13 then
    return "Account Type Internal Account Type Internalenum: Undertakingfor Collective Investment (13)"
  end
  if value == 14 then
    return "Account Type Internal Account Type Internalenum: Omega Client (14)"
  end
  if value == 15 then
    return "Account Type Internal Account Type Internalenum: Ceres Client (15)"
  end

  return "Account Type Internal Account Type Internalenum: Unknown("..value..")"
end

-- Dissect: Account Type Internal Account Type Internalenum
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_internal_account_type_internalenum, range, value, display)

  return offset + length, value
end

-- Account Type Internal Account Type Internalenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum_optional = {}

-- Size: Account Type Internal Account Type Internalenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum_optional.size = 1

-- Display: Account Type Internal Account Type Internalenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum_optional.display = function(value)
  if value == 1 then
    return "Account Type Internal Account Type Internalenum optional: Client (1)"
  end
  if value == 2 then
    return "Account Type Internal Account Type Internalenum optional: House (2)"
  end
  if value == 3 then
    return "Account Type Internal Account Type Internalenum optional: Retail Liquidity Provider (3)"
  end
  if value == 4 then
    return "Account Type Internal Account Type Internalenum optional: Ro (4)"
  end
  if value == 5 then
    return "Account Type Internal Account Type Internalenum optional: Assigned Broker (5)"
  end
  if value == 6 then
    return "Account Type Internal Account Type Internalenum optional: Liquidity Provider (6)"
  end
  if value == 7 then
    return "Account Type Internal Account Type Internalenum optional: Related Party (7)"
  end
  if value == 8 then
    return "Account Type Internal Account Type Internalenum optional: Structured Product Market Maker (8)"
  end
  if value == 9 then
    return "Account Type Internal Account Type Internalenum optional: Managed Client (9)"
  end
  if value == 10 then
    return "Account Type Internal Account Type Internalenum optional: Foreign (10)"
  end
  if value == 11 then
    return "Account Type Internal Account Type Internalenum optional: Managed Foreign (11)"
  end
  if value == 12 then
    return "Account Type Internal Account Type Internalenum optional: Liquidity Contract (12)"
  end
  if value == 13 then
    return "Account Type Internal Account Type Internalenum optional: Undertakingfor Collective Investment (13)"
  end
  if value == 14 then
    return "Account Type Internal Account Type Internalenum optional: Omega Client (14)"
  end
  if value == 15 then
    return "Account Type Internal Account Type Internalenum optional: Ceres Client (15)"
  end
  if value == 255 then
    return "Account Type Internal Account Type Internalenum optional: No Value"
  end

  return "Account Type Internal Account Type Internalenum optional: Unknown("..value..")"
end

-- Dissect: Account Type Internal Account Type Internalenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.account_type_internal_account_type_internalenum_optional, range, value, display)

  return offset + length, value
end

-- Ack Phase
euronext_optiq_dropcopygateway_sbe_v5_36.ack_phase = {}

-- Size: Ack Phase
euronext_optiq_dropcopygateway_sbe_v5_36.ack_phase.size = 1

-- Display: Ack Phase
euronext_optiq_dropcopygateway_sbe_v5_36.ack_phase.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.ack_phase.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.ack_phase.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.ack_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.ack_phase, range, value, display)

  return offset + length, value
end

-- Ack Type
euronext_optiq_dropcopygateway_sbe_v5_36.ack_type = {}

-- Size: Ack Type
euronext_optiq_dropcopygateway_sbe_v5_36.ack_type.size = 1

-- Display: Ack Type
euronext_optiq_dropcopygateway_sbe_v5_36.ack_type.display = function(value)
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
  if value == 18 then
    return "Ack Type: Reload Ack (18)"
  end
  if value == 21 then
    return "Ack Type: Rfie Ack (21)"
  end
  if value == 22 then
    return "Ack Type: Cross Order Ack (22)"
  end
  if value == 23 then
    return "Ack Type: Move Darkto Co Bas Limit (23)"
  end
  if value == 24 then
    return "Ack Type: Move Darkto Co Bas Market (24)"
  end
  if value == 255 then
    return "Ack Type: No Value"
  end

  return "Ack Type: Unknown("..value..")"
end

-- Dissect: Ack Type
euronext_optiq_dropcopygateway_sbe_v5_36.ack_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.ack_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.ack_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.ack_type, range, value, display)

  return offset + length, value
end

-- Afq Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.afq_indicator = {}

-- Size: Afq Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.afq_indicator.size = 1

-- Display: Afq Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.afq_indicator.display = function(value)
  return "Afq Indicator: "..value
end

-- Dissect: Afq Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.afq_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.afq_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.afq_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.afq_indicator, range, value, display)

  return offset + length, value
end

-- Afq Reason
euronext_optiq_dropcopygateway_sbe_v5_36.afq_reason = {}

-- Size: Afq Reason
euronext_optiq_dropcopygateway_sbe_v5_36.afq_reason.size = 1

-- Display: Afq Reason
euronext_optiq_dropcopygateway_sbe_v5_36.afq_reason.display = function(value)
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
  if value == 255 then
    return "Afq Reason: No Value"
  end

  return "Afq Reason: Unknown("..value..")"
end

-- Dissect: Afq Reason
euronext_optiq_dropcopygateway_sbe_v5_36.afq_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.afq_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.afq_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.afq_reason, range, value, display)

  return offset + length, value
end

-- Bid Error Code
euronext_optiq_dropcopygateway_sbe_v5_36.bid_error_code = {}

-- Size: Bid Error Code
euronext_optiq_dropcopygateway_sbe_v5_36.bid_error_code.size = 2

-- Display: Bid Error Code
euronext_optiq_dropcopygateway_sbe_v5_36.bid_error_code.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Bid Error Code: No Value"
  end

  return "Bid Error Code: "..value
end

-- Dissect: Bid Error Code
euronext_optiq_dropcopygateway_sbe_v5_36.bid_error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_error_code, range, value, display)

  return offset + length, value
end

-- Bid Leaves Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.bid_leaves_quantity = {}

-- Size: Bid Leaves Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.bid_leaves_quantity.size = 8

-- Display: Bid Leaves Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.bid_leaves_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Leaves Quantity: No Value"
  end

  return "Bid Leaves Quantity: "..value
end

-- Dissect: Bid Leaves Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.bid_leaves_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_leaves_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_leaves_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_leaves_quantity, range, value, display)

  return offset + length, value
end

-- Bid Oe Session Id
euronext_optiq_dropcopygateway_sbe_v5_36.bid_oe_session_id = {}

-- Size: Bid Oe Session Id
euronext_optiq_dropcopygateway_sbe_v5_36.bid_oe_session_id.size = 8

-- Display: Bid Oe Session Id
euronext_optiq_dropcopygateway_sbe_v5_36.bid_oe_session_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Oe Session Id: No Value"
  end

  return "Bid Oe Session Id: "..value
end

-- Dissect: Bid Oe Session Id
euronext_optiq_dropcopygateway_sbe_v5_36.bid_oe_session_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_oe_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_oe_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_oe_session_id, range, value, display)

  return offset + length, value
end

-- Bid Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.bid_order_id = {}

-- Size: Bid Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.bid_order_id.size = 8

-- Display: Bid Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.bid_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Order Id: No Value"
  end

  return "Bid Order Id: "..value
end

-- Dissect: Bid Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.bid_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_order_id, range, value, display)

  return offset + length, value
end

-- Bid Previous Px
euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_px = {}

-- Size: Bid Previous Px
euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_px.size = 8

-- Display: Bid Previous Px
euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Bid Previous Px: No Value"
  end

  return "Bid Previous Px: "..value
end

-- Dissect: Bid Previous Px
euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_previous_px, range, value, display)

  return offset + length, value
end

-- Bid Previous Size
euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_size = {}

-- Size: Bid Previous Size
euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_size.size = 8

-- Display: Bid Previous Size
euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Previous Size: No Value"
  end

  return "Bid Previous Size: "..value
end

-- Dissect: Bid Previous Size
euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_previous_size, range, value, display)

  return offset + length, value
end

-- Bid Px
euronext_optiq_dropcopygateway_sbe_v5_36.bid_px = {}

-- Size: Bid Px
euronext_optiq_dropcopygateway_sbe_v5_36.bid_px.size = 8

-- Display: Bid Px
euronext_optiq_dropcopygateway_sbe_v5_36.bid_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Dissect: Bid Px
euronext_optiq_dropcopygateway_sbe_v5_36.bid_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Bid Quote Priority
euronext_optiq_dropcopygateway_sbe_v5_36.bid_quote_priority = {}

-- Size: Bid Quote Priority
euronext_optiq_dropcopygateway_sbe_v5_36.bid_quote_priority.size = 8

-- Display: Bid Quote Priority
euronext_optiq_dropcopygateway_sbe_v5_36.bid_quote_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Quote Priority: No Value"
  end

  return "Bid Quote Priority: "..value
end

-- Dissect: Bid Quote Priority
euronext_optiq_dropcopygateway_sbe_v5_36.bid_quote_priority.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_quote_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_quote_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_quote_priority, range, value, display)

  return offset + length, value
end

-- Bid Size
euronext_optiq_dropcopygateway_sbe_v5_36.bid_size = {}

-- Size: Bid Size
euronext_optiq_dropcopygateway_sbe_v5_36.bid_size.size = 8

-- Display: Bid Size
euronext_optiq_dropcopygateway_sbe_v5_36.bid_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Dissect: Bid Size
euronext_optiq_dropcopygateway_sbe_v5_36.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Block Length
euronext_optiq_dropcopygateway_sbe_v5_36.block_length = {}

-- Size: Block Length
euronext_optiq_dropcopygateway_sbe_v5_36.block_length.size = 2

-- Display: Block Length
euronext_optiq_dropcopygateway_sbe_v5_36.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
euronext_optiq_dropcopygateway_sbe_v5_36.block_length.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.block_length, range, value, display)

  return offset + length, value
end

-- Block Length uint 8
euronext_optiq_dropcopygateway_sbe_v5_36.block_length_uint_8 = {}

-- Size: Block Length uint 8
euronext_optiq_dropcopygateway_sbe_v5_36.block_length_uint_8.size = 1

-- Display: Block Length uint 8
euronext_optiq_dropcopygateway_sbe_v5_36.block_length_uint_8.display = function(value)
  return "Block Length uint 8: "..value
end

-- Dissect: Block Length uint 8
euronext_optiq_dropcopygateway_sbe_v5_36.block_length_uint_8.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.block_length_uint_8.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.block_length_uint_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.block_length_uint_8, range, value, display)

  return offset + length, value
end

-- Book In
euronext_optiq_dropcopygateway_sbe_v5_36.book_in = {}

-- Size: Book In
euronext_optiq_dropcopygateway_sbe_v5_36.book_in.size = 8

-- Display: Book In
euronext_optiq_dropcopygateway_sbe_v5_36.book_in.display = function(value)
  return "Book In: "..value
end

-- Dissect: Book In
euronext_optiq_dropcopygateway_sbe_v5_36.book_in.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.book_in.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.book_in.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_in, range, value, display)

  return offset + length, value
end

-- Book In Time
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time = {}

-- Size: Book In Time
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.size = 8

-- Display: Book In Time
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.display = function(value)
  return "Book In Time: "..value
end

-- Dissect: Book In Time
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_in_time, range, value, display)

  return offset + length, value
end

-- Book In uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t = {}

-- Size: Book In uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size = 8

-- Display: Book In uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.display = function(value)
  return "Book In uint 64t: "..value
end

-- Dissect: Book In uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_in_uint_64t, range, value, display)

  return offset + length, value
end

-- Book In uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional = {}

-- Size: Book In uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.size = 8

-- Display: Book In uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book In uint 64t optional: No Value"
  end

  return "Book In uint 64t optional: "..value
end

-- Dissect: Book In uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_in_uint_64t_optional, range, value, display)

  return offset + length, value
end

-- Book Out Time uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t = {}

-- Size: Book Out Time uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size = 8

-- Display: Book Out Time uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.display = function(value)
  return "Book Out Time uint 64t: "..value
end

-- Dissect: Book Out Time uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_out_time_uint_64t, range, value, display)

  return offset + length, value
end

-- Book Out Time uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t_optional = {}

-- Size: Book Out Time uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t_optional.size = 8

-- Display: Book Out Time uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Book Out Time uint 64t optional: No Value"
  end

  return "Book Out Time uint 64t optional: "..value
end

-- Dissect: Book Out Time uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_out_time_uint_64t_optional, range, value, display)

  return offset + length, value
end

-- Book State
euronext_optiq_dropcopygateway_sbe_v5_36.book_state = {}

-- Size: Book State
euronext_optiq_dropcopygateway_sbe_v5_36.book_state.size = 1

-- Display: Book State
euronext_optiq_dropcopygateway_sbe_v5_36.book_state.display = function(value)
  if value == 1 then
    return "Book State: Inaccessible (1)"
  end
  if value == 2 then
    return "Book State: Closed (2)"
  end
  if value == 3 then
    return "Book State: Call (3)"
  end
  if value == 4 then
    return "Book State: Uncrossing (4)"
  end
  if value == 5 then
    return "Book State: Continuous (5)"
  end
  if value == 6 then
    return "Book State: Halted (6)"
  end
  if value == 7 then
    return "Book State: Continuous Uncrossing (7)"
  end
  if value == 8 then
    return "Book State: Suspended (8)"
  end
  if value == 9 then
    return "Book State: Reserved (9)"
  end
  if value == 10 then
    return "Book State: Random Uncrossing Period (10)"
  end

  return "Book State: Unknown("..value..")"
end

-- Dissect: Book State
euronext_optiq_dropcopygateway_sbe_v5_36.book_state.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.book_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.book_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.book_state, range, value, display)

  return offset + length, value
end

-- Breached Collar Price
euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price = {}

-- Size: Breached Collar Price
euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.size = 8

-- Display: Breached Collar Price
euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Breached Collar Price: No Value"
  end

  return "Breached Collar Price: "..value
end

-- Dissect: Breached Collar Price
euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.breached_collar_price, range, value, display)

  return offset + length, value
end

-- Buy Revision Flag
euronext_optiq_dropcopygateway_sbe_v5_36.buy_revision_flag = {}

-- Size: Buy Revision Flag
euronext_optiq_dropcopygateway_sbe_v5_36.buy_revision_flag.size = 1

-- Display: Buy Revision Flag
euronext_optiq_dropcopygateway_sbe_v5_36.buy_revision_flag.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.buy_revision_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.buy_revision_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.buy_revision_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.buy_revision_flag, range, value, display)

  return offset + length, value
end

-- Change Type
euronext_optiq_dropcopygateway_sbe_v5_36.change_type = {}

-- Size: Change Type
euronext_optiq_dropcopygateway_sbe_v5_36.change_type.size = 1

-- Display: Change Type
euronext_optiq_dropcopygateway_sbe_v5_36.change_type.display = function(value)
  if value == 0 then
    return "Change Type: Status Changes (0)"
  end
  if value == 1 then
    return "Change Type: Scheduled Event Notification (1)"
  end
  if value == 2 then
    return "Change Type: Status Changeand Scheduled Event Notification (2)"
  end

  return "Change Type: Unknown("..value..")"
end

-- Dissect: Change Type
euronext_optiq_dropcopygateway_sbe_v5_36.change_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.change_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.change_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.change_type, range, value, display)

  return offset + length, value
end

-- Clearing Account
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account = {}

-- Size: Clearing Account
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size = 16

-- Display: Clearing Account
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm I D char 8
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8 = {}

-- Size: Clearing Firm I D char 8
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8.size = 8

-- Display: Clearing Firm I D char 8
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm I D char 8: No Value"
  end

  return "Clearing Firm I D char 8: "..value
end

-- Dissect: Clearing Firm I D char 8
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_firm_i_d_char_8, range, value, display)

  return offset + length, value
end

-- Clearing Firm I D char 8 optional
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional = {}

-- Size: Clearing Firm I D char 8 optional
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size = 8

-- Display: Clearing Firm I D char 8 optional
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm I D char 8 optional: No Value"
  end

  return "Clearing Firm I D char 8 optional: "..value
end

-- Dissect: Clearing Firm I D char 8 optional
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_firm_i_d_char_8_optional, range, value, display)

  return offset + length, value
end

-- Clearing Instruction Clearing Instructionenum
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum = {}

-- Size: Clearing Instruction Clearing Instructionenum
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum.size = 2

-- Display: Clearing Instruction Clearing Instructionenum
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum.display = function(value)
  if value == 0 then
    return "Clearing Instruction Clearing Instructionenum: Processnormallyformerly Systematicposting (0)"
  end
  if value == 8 then
    return "Clearing Instruction Clearing Instructionenum: Manualmode (8)"
  end
  if value == 9 then
    return "Clearing Instruction Clearing Instructionenum: Automaticpostingmode (9)"
  end
  if value == 10 then
    return "Clearing Instruction Clearing Instructionenum: Automaticgiveupmode (10)"
  end
  if value == 4008 then
    return "Clearing Instruction Clearing Instructionenum: Automaticandaccountauthorization (4008)"
  end
  if value == 4009 then
    return "Clearing Instruction Clearing Instructionenum: Manualandaccountauthorization (4009)"
  end
  if value == 4010 then
    return "Clearing Instruction Clearing Instructionenum: Giveuptosinglefirm (4010)"
  end

  return "Clearing Instruction Clearing Instructionenum: Unknown("..value..")"
end

-- Dissect: Clearing Instruction Clearing Instructionenum
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_instruction_clearing_instructionenum, range, value, display)

  return offset + length, value
end

-- Clearing Instruction Clearing Instructionenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional = {}

-- Size: Clearing Instruction Clearing Instructionenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.size = 2

-- Display: Clearing Instruction Clearing Instructionenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.display = function(value)
  if value == 0 then
    return "Clearing Instruction Clearing Instructionenum optional: Processnormallyformerly Systematicposting (0)"
  end
  if value == 8 then
    return "Clearing Instruction Clearing Instructionenum optional: Manualmode (8)"
  end
  if value == 9 then
    return "Clearing Instruction Clearing Instructionenum optional: Automaticpostingmode (9)"
  end
  if value == 10 then
    return "Clearing Instruction Clearing Instructionenum optional: Automaticgiveupmode (10)"
  end
  if value == 4008 then
    return "Clearing Instruction Clearing Instructionenum optional: Automaticandaccountauthorization (4008)"
  end
  if value == 4009 then
    return "Clearing Instruction Clearing Instructionenum optional: Manualandaccountauthorization (4009)"
  end
  if value == 4010 then
    return "Clearing Instruction Clearing Instructionenum optional: Giveuptosinglefirm (4010)"
  end
  if value == 65535 then
    return "Clearing Instruction Clearing Instructionenum optional: No Value"
  end

  return "Clearing Instruction Clearing Instructionenum optional: Unknown("..value..")"
end

-- Dissect: Clearing Instruction Clearing Instructionenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.clearing_instruction_clearing_instructionenum_optional, range, value, display)

  return offset + length, value
end

-- Client Id
euronext_optiq_dropcopygateway_sbe_v5_36.client_id = {}

-- Size: Client Id
euronext_optiq_dropcopygateway_sbe_v5_36.client_id.size = 8

-- Display: Client Id
euronext_optiq_dropcopygateway_sbe_v5_36.client_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Client Id: No Value"
  end

  return "Client Id: "..value
end

-- Dissect: Client Id
euronext_optiq_dropcopygateway_sbe_v5_36.client_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.client_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.client_id, range, value, display)

  return offset + length, value
end

-- Client Order I D int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t = {}

-- Size: Client Order I D int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size = 8

-- Display: Client Order I D int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.display = function(value)
  return "Client Order I D int 64t: "..value
end

-- Dissect: Client Order I D int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.client_order_i_d_int_64t, range, value, display)

  return offset + length, value
end

-- Client Order I D int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t_optional = {}

-- Size: Client Order I D int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t_optional.size = 8

-- Display: Client Order I D int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Client Order I D int 64t optional: No Value"
  end

  return "Client Order I D int 64t optional: "..value
end

-- Dissect: Client Order I D int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.client_order_i_d_int_64t_optional, range, value, display)

  return offset + length, value
end

-- Collar Rej Type
euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type = {}

-- Size: Collar Rej Type
euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.size = 1

-- Display: Collar Rej Type
euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.collar_rej_type, range, value, display)

  return offset + length, value
end

-- Consume Time
euronext_optiq_dropcopygateway_sbe_v5_36.consume_time = {}

-- Size: Consume Time
euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size = 8

-- Display: Consume Time
euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.display = function(value)
  return "Consume Time: "..value
end

-- Dissect: Consume Time
euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.consume_time, range, value, display)

  return offset + length, value
end

-- Contract Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.contract_symbol_index = {}

-- Size: Contract Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.contract_symbol_index.size = 4

-- Display: Contract Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.contract_symbol_index.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Contract Symbol Index: No Value"
  end

  return "Contract Symbol Index: "..value
end

-- Dissect: Contract Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.contract_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.contract_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.contract_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.contract_symbol_index, range, value, display)

  return offset + length, value
end

-- Counterpart Firm Id
euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id = {}

-- Size: Counterpart Firm Id
euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.size = 8

-- Display: Counterpart Firm Id
euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Counterpart Firm Id: No Value"
  end

  return "Counterpart Firm Id: "..value
end

-- Dissect: Counterpart Firm Id
euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.counterpart_firm_id, range, value, display)

  return offset + length, value
end

-- Counterparty Reason Type
euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type = {}

-- Size: Counterparty Reason Type
euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.size = 1

-- Display: Counterparty Reason Type
euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.display = function(value)
  if value == 1 then
    return "Counterparty Reason Type: Internal Matching Service (1)"
  end
  if value == 2 then
    return "Counterparty Reason Type: Internal Clearing Service (2)"
  end
  if value == 3 then
    return "Counterparty Reason Type: Primary Market Modelandnotbroadcasttothe Clearing House (3)"
  end
  if value == 4 then
    return "Counterparty Reason Type: Public Auctions Market Vpu (4)"
  end
  if value == 5 then
    return "Counterparty Reason Type: Nonclearableinstrument (5)"
  end
  if value == 6 then
    return "Counterparty Reason Type: Firm Id Publication Rfq (6)"
  end
  if value == 7 then
    return "Counterparty Reason Type: Bilateral Settlement (7)"
  end
  if value == 255 then
    return "Counterparty Reason Type: No Value"
  end

  return "Counterparty Reason Type: Unknown("..value..")"
end

-- Dissect: Counterparty Reason Type
euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.counterparty_reason_type, range, value, display)

  return offset + length, value
end

-- Cross Order Indicator unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar = {}

-- Size: Cross Order Indicator unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.size = 1

-- Display: Cross Order Indicator unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.display = function(value)
  return "Cross Order Indicator unsignedchar: "..value
end

-- Dissect: Cross Order Indicator unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.cross_order_indicator_unsignedchar, range, value, display)

  return offset + length, value
end

-- Cross Order Indicator unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional = {}

-- Size: Cross Order Indicator unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.size = 1

-- Display: Cross Order Indicator unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Cross Order Indicator unsignedchar optional: No Value"
  end

  return "Cross Order Indicator unsignedchar optional: "..value
end

-- Dissect: Cross Order Indicator unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.cross_order_indicator_unsignedchar_optional, range, value, display)

  return offset + length, value
end

-- Declaration Event Type
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type = {}

-- Size: Declaration Event Type
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.size = 1

-- Display: Declaration Event Type
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.display = function(value)
  if value == 1 then
    return "Declaration Event Type: New (1)"
  end
  if value == 2 then
    return "Declaration Event Type: Confirmed (2)"
  end
  if value == 3 then
    return "Declaration Event Type: Canceled (3)"
  end
  if value == 4 then
    return "Declaration Event Type: Matched (4)"
  end
  if value == 5 then
    return "Declaration Event Type: Rejected (5)"
  end
  if value == 6 then
    return "Declaration Event Type: Refused (6)"
  end
  if value == 7 then
    return "Declaration Event Type: Expired (7)"
  end
  if value == 8 then
    return "Declaration Event Type: Eliminatedbythe System (8)"
  end
  if value == 9 then
    return "Declaration Event Type: Declaration Createdby Mo (9)"
  end
  if value == 10 then
    return "Declaration Event Type: Cancelled Upon Cs Drequest (10)"
  end

  return "Declaration Event Type: Unknown("..value..")"
end

-- Dissect: Declaration Event Type
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.declaration_event_type, range, value, display)

  return offset + length, value
end

-- Declaration Id
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id = {}

-- Size: Declaration Id
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size = 8

-- Display: Declaration Id
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.display = function(value)
  return "Declaration Id: "..value
end

-- Dissect: Declaration Id
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.declaration_id, range, value, display)

  return offset + length, value
end

-- Declaration Kill Reason
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_kill_reason = {}

-- Size: Declaration Kill Reason
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_kill_reason.size = 1

-- Display: Declaration Kill Reason
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_kill_reason.display = function(value)
  if value == 1 then
    return "Declaration Kill Reason: Canceledby Entering Firm (1)"
  end
  if value == 2 then
    return "Declaration Kill Reason: Refusedby Counterpart (2)"
  end
  if value == 3 then
    return "Declaration Kill Reason: Canceledby Mo (3)"
  end
  if value == 4 then
    return "Declaration Kill Reason: Expired (4)"
  end
  if value == 5 then
    return "Declaration Kill Reason: Eliminatedbythe System (5)"
  end
  if value == 6 then
    return "Declaration Kill Reason: Cancelled Upon Cs Drequest (6)"
  end

  return "Declaration Kill Reason: Unknown("..value..")"
end

-- Dissect: Declaration Kill Reason
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_kill_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_kill_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_kill_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.declaration_kill_reason, range, value, display)

  return offset + length, value
end

-- Declaration Status
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status = {}

-- Size: Declaration Status
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.size = 1

-- Display: Declaration Status
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.declaration_status, range, value, display)

  return offset + length, value
end

-- Desk Id
euronext_optiq_dropcopygateway_sbe_v5_36.desk_id = {}

-- Size: Desk Id
euronext_optiq_dropcopygateway_sbe_v5_36.desk_id.size = 11

-- Display: Desk Id
euronext_optiq_dropcopygateway_sbe_v5_36.desk_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Desk Id: No Value"
  end

  return "Desk Id: "..value
end

-- Dissect: Desk Id
euronext_optiq_dropcopygateway_sbe_v5_36.desk_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.desk_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.desk_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.desk_id, range, value, display)

  return offset + length, value
end

-- Disclosed Qty
euronext_optiq_dropcopygateway_sbe_v5_36.disclosed_qty = {}

-- Size: Disclosed Qty
euronext_optiq_dropcopygateway_sbe_v5_36.disclosed_qty.size = 8

-- Display: Disclosed Qty
euronext_optiq_dropcopygateway_sbe_v5_36.disclosed_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Disclosed Qty: No Value"
  end

  return "Disclosed Qty: "..value
end

-- Dissect: Disclosed Qty
euronext_optiq_dropcopygateway_sbe_v5_36.disclosed_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.disclosed_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.disclosed_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.disclosed_qty, range, value, display)

  return offset + length, value
end

-- Displayed Qty
euronext_optiq_dropcopygateway_sbe_v5_36.displayed_qty = {}

-- Size: Displayed Qty
euronext_optiq_dropcopygateway_sbe_v5_36.displayed_qty.size = 8

-- Display: Displayed Qty
euronext_optiq_dropcopygateway_sbe_v5_36.displayed_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Displayed Qty: No Value"
  end

  return "Displayed Qty: "..value
end

-- Dissect: Displayed Qty
euronext_optiq_dropcopygateway_sbe_v5_36.displayed_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.displayed_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.displayed_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.displayed_qty, range, value, display)

  return offset + length, value
end

-- Emm
euronext_optiq_dropcopygateway_sbe_v5_36.emm = {}

-- Size: Emm
euronext_optiq_dropcopygateway_sbe_v5_36.emm.size = 1

-- Display: Emm
euronext_optiq_dropcopygateway_sbe_v5_36.emm.display = function(value)
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
  if value == 14 then
    return "Emm: Quote Advertisement (14)"
  end
  if value == 15 then
    return "Emm: Delta Neutral Contingency Leg (15)"
  end
  if value == 17 then
    return "Emm: Ers (17)"
  end
  if value == 99 then
    return "Emm: Not Applicable (99)"
  end

  return "Emm: Unknown("..value..")"
end

-- Dissect: Emm
euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.emm.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.emm.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.emm, range, value, display)

  return offset + length, value
end

-- End Client
euronext_optiq_dropcopygateway_sbe_v5_36.end_client = {}

-- Size: End Client
euronext_optiq_dropcopygateway_sbe_v5_36.end_client.size = 11

-- Display: End Client
euronext_optiq_dropcopygateway_sbe_v5_36.end_client.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "End Client: No Value"
  end

  return "End Client: "..value
end

-- Dissect: End Client
euronext_optiq_dropcopygateway_sbe_v5_36.end_client.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.end_client.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.end_client.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.end_client, range, value, display)

  return offset + length, value
end

-- Entering Counterparty
euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty = {}

-- Size: Entering Counterparty
euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.size = 8

-- Display: Entering Counterparty
euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Entering Counterparty: No Value"
  end

  return "Entering Counterparty: "..value
end

-- Dissect: Entering Counterparty
euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.entering_counterparty, range, value, display)

  return offset + length, value
end

-- Error Code uint 16t
euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t = {}

-- Size: Error Code uint 16t
euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.size = 2

-- Display: Error Code uint 16t
euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.display = function(value)
  return "Error Code uint 16t: "..value
end

-- Dissect: Error Code uint 16t
euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.error_code_uint_16t, range, value, display)

  return offset + length, value
end

-- Error Code uint 16t optional
euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t_optional = {}

-- Size: Error Code uint 16t optional
euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t_optional.size = 2

-- Display: Error Code uint 16t optional
euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t_optional.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Error Code uint 16t optional: No Value"
  end

  return "Error Code uint 16t optional: "..value
end

-- Dissect: Error Code uint 16t optional
euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.error_code_uint_16t_optional, range, value, display)

  return offset + length, value
end

-- Escb Membership
euronext_optiq_dropcopygateway_sbe_v5_36.escb_membership = {}

-- Size: Escb Membership
euronext_optiq_dropcopygateway_sbe_v5_36.escb_membership.size = 1

-- Display: Escb Membership
euronext_optiq_dropcopygateway_sbe_v5_36.escb_membership.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Escb Membership: No Value"
  end

  return "Escb Membership: "..value
end

-- Dissect: Escb Membership
euronext_optiq_dropcopygateway_sbe_v5_36.escb_membership.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.escb_membership.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.escb_membership.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.escb_membership, range, value, display)

  return offset + length, value
end

-- Evaluated Price
euronext_optiq_dropcopygateway_sbe_v5_36.evaluated_price = {}

-- Size: Evaluated Price
euronext_optiq_dropcopygateway_sbe_v5_36.evaluated_price.size = 8

-- Display: Evaluated Price
euronext_optiq_dropcopygateway_sbe_v5_36.evaluated_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Evaluated Price: No Value"
  end

  return "Evaluated Price: "..value
end

-- Dissect: Evaluated Price
euronext_optiq_dropcopygateway_sbe_v5_36.evaluated_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.evaluated_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.evaluated_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.evaluated_price, range, value, display)

  return offset + length, value
end

-- Event Client Id Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code = {}

-- Size: Event Client Id Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.size = 4

-- Display: Event Client Id Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Event Client Id Short Code: No Value"
  end

  return "Event Client Id Short Code: "..value
end

-- Dissect: Event Client Id Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_client_id_short_code, range, value, display)

  return offset + length, value
end

-- Event Exec W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code = {}

-- Size: Event Exec W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.size = 4

-- Display: Event Exec W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Event Exec W Firm Short Code: No Value"
  end

  return "Event Exec W Firm Short Code: "..value
end

-- Dissect: Event Exec W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_exec_w_firm_short_code, range, value, display)

  return offset + length, value
end

-- Event Id
euronext_optiq_dropcopygateway_sbe_v5_36.event_id = {}

-- Size: Event Id
euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size = 8

-- Display: Event Id
euronext_optiq_dropcopygateway_sbe_v5_36.event_id.display = function(value)
  return "Event Id: "..value
end

-- Dissect: Event Id
euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_id, range, value, display)

  return offset + length, value
end

-- Event Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.event_investor_id = {}

-- Size: Event Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.event_investor_id.size = 16

-- Display: Event Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.event_investor_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Event Investor Id: No Value"
  end

  return "Event Investor Id: "..value
end

-- Dissect: Event Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.event_investor_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.event_investor_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.event_investor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_investor_id, range, value, display)

  return offset + length, value
end

-- Event Short Code Type
euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type = {}

-- Size: Event Short Code Type
euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.size = 1

-- Display: Event Short Code Type
euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.display = function(value)
  if value == 1 then
    return "Event Short Code Type: Event Ewfsc (1)"
  end
  if value == 2 then
    return "Event Short Code Type: Event Cisc (2)"
  end
  if value == 255 then
    return "Event Short Code Type: No Value"
  end

  return "Event Short Code Type: Unknown("..value..")"
end

-- Dissect: Event Short Code Type
euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_short_code_type, range, value, display)

  return offset + length, value
end

-- Event Time
euronext_optiq_dropcopygateway_sbe_v5_36.event_time = {}

-- Size: Event Time
euronext_optiq_dropcopygateway_sbe_v5_36.event_time.size = 8

-- Display: Event Time
euronext_optiq_dropcopygateway_sbe_v5_36.event_time.display = function(value)
  return "Event Time: "..value
end

-- Dissect: Event Time
euronext_optiq_dropcopygateway_sbe_v5_36.event_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.event_time, range, value, display)

  return offset + length, value
end

-- Exec Phase
euronext_optiq_dropcopygateway_sbe_v5_36.exec_phase = {}

-- Size: Exec Phase
euronext_optiq_dropcopygateway_sbe_v5_36.exec_phase.size = 1

-- Display: Exec Phase
euronext_optiq_dropcopygateway_sbe_v5_36.exec_phase.display = function(value)
  if value == 1 then
    return "Exec Phase: Continuous Trading Phase (1)"
  end
  if value == 2 then
    return "Exec Phase: Uncrossing Phase (2)"
  end
  if value == 3 then
    return "Exec Phase: Trading At Last Phase (3)"
  end
  if value == 4 then
    return "Exec Phase: Continuous Uncrossing Phase (4)"
  end
  if value == 5 then
    return "Exec Phase: Ipo (5)"
  end
  if value == 255 then
    return "Exec Phase: No Value"
  end

  return "Exec Phase: Unknown("..value..")"
end

-- Dissect: Exec Phase
euronext_optiq_dropcopygateway_sbe_v5_36.exec_phase.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.exec_phase.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.exec_phase.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.exec_phase, range, value, display)

  return offset + length, value
end

-- Execution I D uint 32t
euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t = {}

-- Size: Execution I D uint 32t
euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.size = 4

-- Display: Execution I D uint 32t
euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.display = function(value)
  return "Execution I D uint 32t: "..value
end

-- Dissect: Execution I D uint 32t
euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_i_d_uint_32t, range, value, display)

  return offset + length, value
end

-- Execution I D uint 32t optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional = {}

-- Size: Execution I D uint 32t optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.size = 4

-- Display: Execution I D uint 32t optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Execution I D uint 32t optional: No Value"
  end

  return "Execution I D uint 32t optional: "..value
end

-- Dissect: Execution I D uint 32t optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_i_d_uint_32t_optional, range, value, display)

  return offset + length, value
end

-- Execution Phase Execution Phaseenum
euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum = {}

-- Size: Execution Phase Execution Phaseenum
euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum.size = 1

-- Display: Execution Phase Execution Phaseenum
euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum.display = function(value)
  if value == 1 then
    return "Execution Phase Execution Phaseenum: Continuous Trading Phase (1)"
  end
  if value == 2 then
    return "Execution Phase Execution Phaseenum: Uncrossing Phase (2)"
  end
  if value == 3 then
    return "Execution Phase Execution Phaseenum: Trading At Last Phase (3)"
  end
  if value == 4 then
    return "Execution Phase Execution Phaseenum: Continuous Uncrossing Phase (4)"
  end
  if value == 5 then
    return "Execution Phase Execution Phaseenum: Ipo (5)"
  end

  return "Execution Phase Execution Phaseenum: Unknown("..value..")"
end

-- Dissect: Execution Phase Execution Phaseenum
euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_phase_execution_phaseenum, range, value, display)

  return offset + length, value
end

-- Execution Phase Execution Phaseenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum_optional = {}

-- Size: Execution Phase Execution Phaseenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum_optional.size = 1

-- Display: Execution Phase Execution Phaseenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum_optional.display = function(value)
  if value == 1 then
    return "Execution Phase Execution Phaseenum optional: Continuous Trading Phase (1)"
  end
  if value == 2 then
    return "Execution Phase Execution Phaseenum optional: Uncrossing Phase (2)"
  end
  if value == 3 then
    return "Execution Phase Execution Phaseenum optional: Trading At Last Phase (3)"
  end
  if value == 4 then
    return "Execution Phase Execution Phaseenum optional: Continuous Uncrossing Phase (4)"
  end
  if value == 5 then
    return "Execution Phase Execution Phaseenum optional: Ipo (5)"
  end
  if value == 255 then
    return "Execution Phase Execution Phaseenum optional: No Value"
  end

  return "Execution Phase Execution Phaseenum optional: Unknown("..value..")"
end

-- Dissect: Execution Phase Execution Phaseenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_phase_execution_phaseenum_optional, range, value, display)

  return offset + length, value
end

-- Final Execution Id
euronext_optiq_dropcopygateway_sbe_v5_36.final_execution_id = {}

-- Size: Final Execution Id
euronext_optiq_dropcopygateway_sbe_v5_36.final_execution_id.size = 4

-- Display: Final Execution Id
euronext_optiq_dropcopygateway_sbe_v5_36.final_execution_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Final Execution Id: No Value"
  end

  return "Final Execution Id: "..value
end

-- Dissect: Final Execution Id
euronext_optiq_dropcopygateway_sbe_v5_36.final_execution_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.final_execution_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.final_execution_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.final_execution_id, range, value, display)

  return offset + length, value
end

-- Final Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.final_symbol_index = {}

-- Size: Final Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.final_symbol_index.size = 4

-- Display: Final Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.final_symbol_index.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Final Symbol Index: No Value"
  end

  return "Final Symbol Index: "..value
end

-- Dissect: Final Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.final_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.final_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.final_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.final_symbol_index, range, value, display)

  return offset + length, value
end

-- Firm Id
euronext_optiq_dropcopygateway_sbe_v5_36.firm_id = {}

-- Size: Firm Id
euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size = 8

-- Display: Firm Id
euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Firm Id: No Value"
  end

  return "Firm Id: "..value
end

-- Dissect: Firm Id
euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Firm Id Publication
euronext_optiq_dropcopygateway_sbe_v5_36.firm_id_publication = {}

-- Size: Firm Id Publication
euronext_optiq_dropcopygateway_sbe_v5_36.firm_id_publication.size = 1

-- Display: Firm Id Publication
euronext_optiq_dropcopygateway_sbe_v5_36.firm_id_publication.display = function(value)
  return "Firm Id Publication: "..value
end

-- Dissect: Firm Id Publication
euronext_optiq_dropcopygateway_sbe_v5_36.firm_id_publication.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id_publication.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id_publication.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.firm_id_publication, range, value, display)

  return offset + length, value
end

-- Frame
euronext_optiq_dropcopygateway_sbe_v5_36.frame = {}

-- Size: Frame
euronext_optiq_dropcopygateway_sbe_v5_36.frame.size = 2

-- Display: Frame
euronext_optiq_dropcopygateway_sbe_v5_36.frame.display = function(value)
  return "Frame: "..value
end

-- Dissect: Frame
euronext_optiq_dropcopygateway_sbe_v5_36.frame.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.frame.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.frame, range, value, display)

  return offset + length, value
end

-- Free Text
euronext_optiq_dropcopygateway_sbe_v5_36.free_text = {}

-- Size: Free Text
euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size = 18

-- Display: Free Text
euronext_optiq_dropcopygateway_sbe_v5_36.free_text.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Free Text: No Value"
  end

  return "Free Text: "..value
end

-- Dissect: Free Text
euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.free_text, range, value, display)

  return offset + length, value
end

-- Guarantee Flag Guarantee Flagenum
euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum = {}

-- Size: Guarantee Flag Guarantee Flagenum
euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum.size = 1

-- Display: Guarantee Flag Guarantee Flagenum
euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum.display = function(value)
  if value == 1 then
    return "Guarantee Flag Guarantee Flagenum: Clearedbutnot Guaranteed (1)"
  end
  if value == 2 then
    return "Guarantee Flag Guarantee Flagenum: Clearedand Guaranteed (2)"
  end

  return "Guarantee Flag Guarantee Flagenum: Unknown("..value..")"
end

-- Dissect: Guarantee Flag Guarantee Flagenum
euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.guarantee_flag_guarantee_flagenum, range, value, display)

  return offset + length, value
end

-- Guarantee Flag Guarantee Flagenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional = {}

-- Size: Guarantee Flag Guarantee Flagenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.size = 1

-- Display: Guarantee Flag Guarantee Flagenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.display = function(value)
  if value == 1 then
    return "Guarantee Flag Guarantee Flagenum optional: Clearedbutnot Guaranteed (1)"
  end
  if value == 2 then
    return "Guarantee Flag Guarantee Flagenum optional: Clearedand Guaranteed (2)"
  end
  if value == 255 then
    return "Guarantee Flag Guarantee Flagenum optional: No Value"
  end

  return "Guarantee Flag Guarantee Flagenum optional: Unknown("..value..")"
end

-- Dissect: Guarantee Flag Guarantee Flagenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.guarantee_flag_guarantee_flagenum_optional, range, value, display)

  return offset + length, value
end

-- Imbalance Qty
euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty = {}

-- Size: Imbalance Qty
euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty.size = 8

-- Display: Imbalance Qty
euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Imbalance Qty: No Value"
  end

  return "Imbalance Qty: "..value
end

-- Dissect: Imbalance Qty
euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.imbalance_qty, range, value, display)

  return offset + length, value
end

-- Imbalance Qty Side
euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty_side = {}

-- Size: Imbalance Qty Side
euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty_side.size = 1

-- Display: Imbalance Qty Side
euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty_side.display = function(value)
  if value == 0 then
    return "Imbalance Qty Side: Noimbalance (0)"
  end
  if value == 1 then
    return "Imbalance Qty Side: Buy (1)"
  end
  if value == 2 then
    return "Imbalance Qty Side: Sell (2)"
  end
  if value == 255 then
    return "Imbalance Qty Side: No Value"
  end

  return "Imbalance Qty Side: Unknown("..value..")"
end

-- Dissect: Imbalance Qty Side
euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.imbalance_qty_side, range, value, display)

  return offset + length, value
end

-- Indicative Auction Price
euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_price = {}

-- Size: Indicative Auction Price
euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_price.size = 8

-- Display: Indicative Auction Price
euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Indicative Auction Price: No Value"
  end

  return "Indicative Auction Price: "..value
end

-- Dissect: Indicative Auction Price
euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.indicative_auction_price, range, value, display)

  return offset + length, value
end

-- Indicative Auction Volume
euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_volume = {}

-- Size: Indicative Auction Volume
euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_volume.size = 8

-- Display: Indicative Auction Volume
euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_volume.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Indicative Auction Volume: No Value"
  end

  return "Indicative Auction Volume: "..value
end

-- Dissect: Indicative Auction Volume
euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_volume.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.indicative_auction_volume, range, value, display)

  return offset + length, value
end

-- Instrument Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.instrument_order_entry_qualifier = {}

-- Size: Instrument Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.instrument_order_entry_qualifier.size = 1

-- Display: Instrument Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.instrument_order_entry_qualifier.display = function(value)
  if value == 0 then
    return "Instrument Order Entry Qualifier: Order Entry Cancel Modify Disabled (0)"
  end
  if value == 1 then
    return "Instrument Order Entry Qualifier: Order Entry Cancel Modify Enabled (1)"
  end
  if value == 2 then
    return "Instrument Order Entry Qualifier: Canceland Modify Only (2)"
  end
  if value == 3 then
    return "Instrument Order Entry Qualifier: Cancel Only (3)"
  end
  if value == 255 then
    return "Instrument Order Entry Qualifier: No Value"
  end

  return "Instrument Order Entry Qualifier: Unknown("..value..")"
end

-- Dissect: Instrument Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.instrument_order_entry_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.instrument_order_entry_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.instrument_order_entry_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.instrument_order_entry_qualifier, range, value, display)

  return offset + length, value
end

-- Instrument State
euronext_optiq_dropcopygateway_sbe_v5_36.instrument_state = {}

-- Size: Instrument State
euronext_optiq_dropcopygateway_sbe_v5_36.instrument_state.size = 1

-- Display: Instrument State
euronext_optiq_dropcopygateway_sbe_v5_36.instrument_state.display = function(value)
  if value == 1 then
    return "Instrument State: Scheduled (1)"
  end
  if value == 2 then
    return "Instrument State: Suspendeddueto Underlying (2)"
  end
  if value == 3 then
    return "Instrument State: Suspended Kobi (3)"
  end
  if value == 4 then
    return "Instrument State: Suspended Kobe (4)"
  end
  if value == 5 then
    return "Instrument State: Suspended New Listing (5)"
  end
  if value == 6 then
    return "Instrument State: Suspendedby Mo (6)"
  end
  if value == 7 then
    return "Instrument State: Suspended Technical (7)"
  end
  if value == 8 then
    return "Instrument State: Reserved Dynamic Collars (8)"
  end
  if value == 9 then
    return "Instrument State: Reserved Static Collars (9)"
  end
  if value == 10 then
    return "Instrument State: Reserved Waiting For Lp (10)"
  end
  if value == 11 then
    return "Instrument State: Reserved Lp Limit (11)"
  end
  if value == 12 then
    return "Instrument State: Instrument Deletion (12)"
  end
  if value == 13 then
    return "Instrument State: Suspended Waitingfor Bbo (13)"
  end
  if value == 14 then
    return "Instrument State: Suspended Waitingfor Tradable State (14)"
  end
  if value == 15 then
    return "Instrument State: Random Uncrossing Period (15)"
  end
  if value == 16 then
    return "Instrument State: Expired (16)"
  end
  if value == 17 then
    return "Instrument State: Uncrossing (17)"
  end
  if value == 18 then
    return "Instrument State: Reserveddueto Leg (18)"
  end
  if value == 19 then
    return "Instrument State: Suspendeddueto Leg (19)"
  end
  if value == 20 then
    return "Instrument State: Reserved Waitingfor Valid Assigned Broker Price (20)"
  end
  if value == 21 then
    return "Instrument State: Reserved Future Limit Interruption Protection (21)"
  end
  if value == 22 then
    return "Instrument State: Suspended Waiting For Market Operations (22)"
  end

  return "Instrument State: Unknown("..value..")"
end

-- Dissect: Instrument State
euronext_optiq_dropcopygateway_sbe_v5_36.instrument_state.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.instrument_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.instrument_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.instrument_state, range, value, display)

  return offset + length, value
end

-- Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.investor_id = {}

-- Size: Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.size = 16

-- Display: Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Investor Id: No Value"
  end

  return "Investor Id: "..value
end

-- Dissect: Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.investor_id, range, value, display)

  return offset + length, value
end

-- Kill Reason
euronext_optiq_dropcopygateway_sbe_v5_36.kill_reason = {}

-- Size: Kill Reason
euronext_optiq_dropcopygateway_sbe_v5_36.kill_reason.size = 2

-- Display: Kill Reason
euronext_optiq_dropcopygateway_sbe_v5_36.kill_reason.display = function(value)
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
  if value == 18 then
    return "Kill Reason: Ordercancelleddueto Static Collars (18)"
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
  if value == 31 then
    return "Kill Reason: Order Cancelledduetobreachof Ownership Limit (31)"
  end
  if value == 32 then
    return "Kill Reason: Order Cancelledduetobreachof Credit Limit (32)"
  end
  if value == 33 then
    return "Kill Reason: Order Cancelledupon Cs Drequest (33)"
  end
  if value == 34 then
    return "Kill Reason: Order Cancelledduetobreachof Short Selling Limit (34)"
  end
  if value == 35 then
    return "Kill Reason: Order Cancelleddueto Instrumentnotbeing Eligiblefor Margin (35)"
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
  if value == 39 then
    return "Kill Reason: Order Cancelleddueto Instrumentnot Eligiblefor Short Selling (39)"
  end
  if value == 40 then
    return "Kill Reason: Order Cancelledduetobreachof Short Sell Price Check (40)"
  end
  if value == 41 then
    return "Kill Reason: Ordercancelleddueto Order Price Control Collarbreach (41)"
  end
  if value == 42 then
    return "Kill Reason: Ordercancelleddueto Execution Prevention Across All Firms (42)"
  end
  if value == 43 then
    return "Kill Reason: Cancelleddueto Breachof Me Psetbyaclearingriskmanager (43)"
  end
  if value == 44 then
    return "Kill Reason: Cancelleddueto Breachof Me Psetbyamemberriskmanager (44)"
  end
  if value == 65535 then
    return "Kill Reason: No Value"
  end

  return "Kill Reason: Unknown("..value..")"
end

-- Dissect: Kill Reason
euronext_optiq_dropcopygateway_sbe_v5_36.kill_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.kill_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.kill_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.kill_reason, range, value, display)

  return offset + length, value
end

-- Last Shares uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t = {}

-- Size: Last Shares uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.size = 8

-- Display: Last Shares uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.display = function(value)
  return "Last Shares uint 64t: "..value
end

-- Dissect: Last Shares uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.last_shares_uint_64t, range, value, display)

  return offset + length, value
end

-- Last Shares uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t_optional = {}

-- Size: Last Shares uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t_optional.size = 8

-- Display: Last Shares uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Shares uint 64t optional: No Value"
  end

  return "Last Shares uint 64t optional: "..value
end

-- Dissect: Last Shares uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.last_shares_uint_64t_optional, range, value, display)

  return offset + length, value
end

-- Last Traded Px int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t = {}

-- Size: Last Traded Px int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.size = 8

-- Display: Last Traded Px int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.display = function(value)
  return "Last Traded Px int 64t: "..value
end

-- Dissect: Last Traded Px int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.last_traded_px_int_64t, range, value, display)

  return offset + length, value
end

-- Last Traded Px int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t_optional = {}

-- Size: Last Traded Px int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t_optional.size = 8

-- Display: Last Traded Px int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Last Traded Px int 64t optional: No Value"
  end

  return "Last Traded Px int 64t optional: "..value
end

-- Dissect: Last Traded Px int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.last_traded_px_int_64t_optional, range, value, display)

  return offset + length, value
end

-- Leaves Qty
euronext_optiq_dropcopygateway_sbe_v5_36.leaves_qty = {}

-- Size: Leaves Qty
euronext_optiq_dropcopygateway_sbe_v5_36.leaves_qty.size = 8

-- Display: Leaves Qty
euronext_optiq_dropcopygateway_sbe_v5_36.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
euronext_optiq_dropcopygateway_sbe_v5_36.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Leg Instrument Id
euronext_optiq_dropcopygateway_sbe_v5_36.leg_instrument_id = {}

-- Size: Leg Instrument Id
euronext_optiq_dropcopygateway_sbe_v5_36.leg_instrument_id.size = 4

-- Display: Leg Instrument Id
euronext_optiq_dropcopygateway_sbe_v5_36.leg_instrument_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Leg Instrument Id: No Value"
  end

  return "Leg Instrument Id: "..value
end

-- Dissect: Leg Instrument Id
euronext_optiq_dropcopygateway_sbe_v5_36.leg_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.leg_instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.leg_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_instrument_id, range, value, display)

  return offset + length, value
end

-- Leg Last Px
euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_px = {}

-- Size: Leg Last Px
euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_px.size = 8

-- Display: Leg Last Px
euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Last Px: No Value"
  end

  return "Leg Last Px: "..value
end

-- Dissect: Leg Last Px
euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_last_px, range, value, display)

  return offset + length, value
end

-- Leg Last Qty
euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_qty = {}

-- Size: Leg Last Qty
euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_qty.size = 8

-- Display: Leg Last Qty
euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Leg Last Qty: No Value"
  end

  return "Leg Last Qty: "..value
end

-- Dissect: Leg Last Qty
euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_last_qty, range, value, display)

  return offset + length, value
end

-- Leg Side
euronext_optiq_dropcopygateway_sbe_v5_36.leg_side = {}

-- Size: Leg Side
euronext_optiq_dropcopygateway_sbe_v5_36.leg_side.size = 1

-- Display: Leg Side
euronext_optiq_dropcopygateway_sbe_v5_36.leg_side.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.leg_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Lis Transaction Id
euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id = {}

-- Size: Lis Transaction Id
euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.size = 4

-- Display: Lis Transaction Id
euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Lis Transaction Id: No Value"
  end

  return "Lis Transaction Id: "..value
end

-- Dissect: Lis Transaction Id
euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.lis_transaction_id, range, value, display)

  return offset + length, value
end

-- Logical Access I D uint 32t
euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t = {}

-- Size: Logical Access I D uint 32t
euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.size = 4

-- Display: Logical Access I D uint 32t
euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.display = function(value)
  return "Logical Access I D uint 32t: "..value
end

-- Dissect: Logical Access I D uint 32t
euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.logical_access_i_d_uint_32t, range, value, display)

  return offset + length, value
end

-- Logical Access I D uint 32t optional
euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional = {}

-- Size: Logical Access I D uint 32t optional
euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.size = 4

-- Display: Logical Access I D uint 32t optional
euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Logical Access I D uint 32t optional: No Value"
  end

  return "Logical Access I D uint 32t optional: "..value
end

-- Dissect: Logical Access I D uint 32t optional
euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.logical_access_i_d_uint_32t_optional, range, value, display)

  return offset + length, value
end

-- Long Client Id
euronext_optiq_dropcopygateway_sbe_v5_36.long_client_id = {}

-- Size: Long Client Id
euronext_optiq_dropcopygateway_sbe_v5_36.long_client_id.size = 16

-- Display: Long Client Id
euronext_optiq_dropcopygateway_sbe_v5_36.long_client_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Long Client Id: No Value"
  end

  return "Long Client Id: "..value
end

-- Dissect: Long Client Id
euronext_optiq_dropcopygateway_sbe_v5_36.long_client_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.long_client_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.long_client_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.long_client_id, range, value, display)

  return offset + length, value
end

-- Lp Role Lp Roleenum
euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum = {}

-- Size: Lp Role Lp Roleenum
euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum.size = 1

-- Display: Lp Role Lp Roleenum
euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum.display = function(value)
  if value == 1 then
    return "Lp Role Lp Roleenum: Liquidity Provideror Market Maker (1)"
  end
  if value == 3 then
    return "Lp Role Lp Roleenum: Retail Liquidity Provider (3)"
  end
  if value == 12 then
    return "Lp Role Lp Roleenum: Rfq Liquidity Provider (12)"
  end

  return "Lp Role Lp Roleenum: Unknown("..value..")"
end

-- Dissect: Lp Role Lp Roleenum
euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.lp_role_lp_roleenum, range, value, display)

  return offset + length, value
end

-- Lp Role Lp Roleenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional = {}

-- Size: Lp Role Lp Roleenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.size = 1

-- Display: Lp Role Lp Roleenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.display = function(value)
  if value == 1 then
    return "Lp Role Lp Roleenum optional: Liquidity Provideror Market Maker (1)"
  end
  if value == 3 then
    return "Lp Role Lp Roleenum optional: Retail Liquidity Provider (3)"
  end
  if value == 12 then
    return "Lp Role Lp Roleenum optional: Rfq Liquidity Provider (12)"
  end
  if value == 255 then
    return "Lp Role Lp Roleenum optional: No Value"
  end

  return "Lp Role Lp Roleenum optional: Unknown("..value..")"
end

-- Dissect: Lp Role Lp Roleenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.lp_role_lp_roleenum_optional, range, value, display)

  return offset + length, value
end

-- Margin Trading Flag
euronext_optiq_dropcopygateway_sbe_v5_36.margin_trading_flag = {}

-- Size: Margin Trading Flag
euronext_optiq_dropcopygateway_sbe_v5_36.margin_trading_flag.size = 1

-- Display: Margin Trading Flag
euronext_optiq_dropcopygateway_sbe_v5_36.margin_trading_flag.display = function(value)
  if value == 0 then
    return "Margin Trading Flag: False (0)"
  end
  if value == 1 then
    return "Margin Trading Flag: True (1)"
  end
  if value == 255 then
    return "Margin Trading Flag: No Value"
  end

  return "Margin Trading Flag: Unknown("..value..")"
end

-- Dissect: Margin Trading Flag
euronext_optiq_dropcopygateway_sbe_v5_36.margin_trading_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.margin_trading_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.margin_trading_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.margin_trading_flag, range, value, display)

  return offset + length, value
end

-- Market Phase Flag
euronext_optiq_dropcopygateway_sbe_v5_36.market_phase_flag = {}

-- Size: Market Phase Flag
euronext_optiq_dropcopygateway_sbe_v5_36.market_phase_flag.size = 1

-- Display: Market Phase Flag
euronext_optiq_dropcopygateway_sbe_v5_36.market_phase_flag.display = function(value)
  if value == 1 then
    return "Market Phase Flag: Continuoustradingonlydefault (1)"
  end
  if value == 2 then
    return "Market Phase Flag: Trading At Last Ta Ltradingonly (2)"
  end
  if value == 3 then
    return "Market Phase Flag: Both (3)"
  end
  if value == 255 then
    return "Market Phase Flag: No Value"
  end

  return "Market Phase Flag: Unknown("..value..")"
end

-- Dissect: Market Phase Flag
euronext_optiq_dropcopygateway_sbe_v5_36.market_phase_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.market_phase_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.market_phase_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.market_phase_flag, range, value, display)

  return offset + length, value
end

-- Message Price Notation
euronext_optiq_dropcopygateway_sbe_v5_36.message_price_notation = {}

-- Size: Message Price Notation
euronext_optiq_dropcopygateway_sbe_v5_36.message_price_notation.size = 1

-- Display: Message Price Notation
euronext_optiq_dropcopygateway_sbe_v5_36.message_price_notation.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.message_price_notation.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.message_price_notation.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.message_price_notation.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.message_price_notation, range, value, display)

  return offset + length, value
end

-- Message Sending Time
euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time = {}

-- Size: Message Sending Time
euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.size = 8

-- Display: Message Sending Time
euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.display = function(value)
  return "Message Sending Time: "..value
end

-- Dissect: Message Sending Time
euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.message_sending_time, range, value, display)

  return offset + length, value
end

-- Min Order Qty
euronext_optiq_dropcopygateway_sbe_v5_36.min_order_qty = {}

-- Size: Min Order Qty
euronext_optiq_dropcopygateway_sbe_v5_36.min_order_qty.size = 8

-- Display: Min Order Qty
euronext_optiq_dropcopygateway_sbe_v5_36.min_order_qty.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Min Order Qty: No Value"
  end

  return "Min Order Qty: "..value
end

-- Dissect: Min Order Qty
euronext_optiq_dropcopygateway_sbe_v5_36.min_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.min_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.min_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.min_order_qty, range, value, display)

  return offset + length, value
end

-- Minimum Order Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.minimum_order_quantity = {}

-- Size: Minimum Order Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.minimum_order_quantity.size = 8

-- Display: Minimum Order Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.minimum_order_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Minimum Order Quantity: No Value"
  end

  return "Minimum Order Quantity: "..value
end

-- Dissect: Minimum Order Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.minimum_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.minimum_order_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.minimum_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.minimum_order_quantity, range, value, display)

  return offset + length, value
end

-- Msg Seq Num
euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num = {}

-- Size: Msg Seq Num
euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size = 4

-- Display: Msg Seq Num
euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.display = function(value)
  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Num In Group
euronext_optiq_dropcopygateway_sbe_v5_36.num_in_group = {}

-- Size: Num In Group
euronext_optiq_dropcopygateway_sbe_v5_36.num_in_group.size = 1

-- Display: Num In Group
euronext_optiq_dropcopygateway_sbe_v5_36.num_in_group.display = function(value)
  return "Num In Group: "..value
end

-- Dissect: Num In Group
euronext_optiq_dropcopygateway_sbe_v5_36.num_in_group.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.num_in_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.num_in_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.num_in_group, range, value, display)

  return offset + length, value
end

-- Oe Partition I D uint 16t
euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t = {}

-- Size: Oe Partition I D uint 16t
euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.size = 2

-- Display: Oe Partition I D uint 16t
euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.display = function(value)
  return "Oe Partition I D uint 16t: "..value
end

-- Dissect: Oe Partition I D uint 16t
euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oe_partition_i_d_uint_16t, range, value, display)

  return offset + length, value
end

-- Oe Partition I D uint 16t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional = {}

-- Size: Oe Partition I D uint 16t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.size = 2

-- Display: Oe Partition I D uint 16t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Oe Partition I D uint 16t optional: No Value"
  end

  return "Oe Partition I D uint 16t optional: "..value
end

-- Dissect: Oe Partition I D uint 16t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oe_partition_i_d_uint_16t_optional, range, value, display)

  return offset + length, value
end

-- Oe Session I D uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t = {}

-- Size: Oe Session I D uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size = 8

-- Display: Oe Session I D uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.display = function(value)
  return "Oe Session I D uint 64t: "..value
end

-- Dissect: Oe Session I D uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oe_session_i_d_uint_64t, range, value, display)

  return offset + length, value
end

-- Oe Session I D uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t_optional = {}

-- Size: Oe Session I D uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t_optional.size = 8

-- Display: Oe Session I D uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oe Session I D uint 64t optional: No Value"
  end

  return "Oe Session I D uint 64t optional: "..value
end

-- Dissect: Oe Session I D uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oe_session_i_d_uint_64t_optional, range, value, display)

  return offset + length, value
end

-- Oegin From Member uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t = {}

-- Size: Oegin From Member uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size = 8

-- Display: Oegin From Member uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.display = function(value)
  return "Oegin From Member uint 64t: "..value
end

-- Dissect: Oegin From Member uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oegin_from_member_uint_64t, range, value, display)

  return offset + length, value
end

-- Oegin From Member uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional = {}

-- Size: Oegin From Member uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.size = 8

-- Display: Oegin From Member uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oegin From Member uint 64t optional: No Value"
  end

  return "Oegin From Member uint 64t optional: "..value
end

-- Dissect: Oegin From Member uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oegin_from_member_uint_64t_optional, range, value, display)

  return offset + length, value
end

-- Oegout Time To M E uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t = {}

-- Size: Oegout Time To M E uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size = 8

-- Display: Oegout Time To M E uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.display = function(value)
  return "Oegout Time To M E uint 64t: "..value
end

-- Dissect: Oegout Time To M E uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oegout_time_to_m_e_uint_64t, range, value, display)

  return offset + length, value
end

-- Oegout Time To M E uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t_optional = {}

-- Size: Oegout Time To M E uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t_optional.size = 8

-- Display: Oegout Time To M E uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Oegout Time To M E uint 64t optional: No Value"
  end

  return "Oegout Time To M E uint 64t optional: "..value
end

-- Dissect: Oegout Time To M E uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.oegout_time_to_m_e_uint_64t_optional, range, value, display)

  return offset + length, value
end

-- Offer Error Code
euronext_optiq_dropcopygateway_sbe_v5_36.offer_error_code = {}

-- Size: Offer Error Code
euronext_optiq_dropcopygateway_sbe_v5_36.offer_error_code.size = 2

-- Display: Offer Error Code
euronext_optiq_dropcopygateway_sbe_v5_36.offer_error_code.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Offer Error Code: No Value"
  end

  return "Offer Error Code: "..value
end

-- Dissect: Offer Error Code
euronext_optiq_dropcopygateway_sbe_v5_36.offer_error_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_error_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_error_code, range, value, display)

  return offset + length, value
end

-- Offer Leaves Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.offer_leaves_quantity = {}

-- Size: Offer Leaves Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.offer_leaves_quantity.size = 8

-- Display: Offer Leaves Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.offer_leaves_quantity.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Leaves Quantity: No Value"
  end

  return "Offer Leaves Quantity: "..value
end

-- Dissect: Offer Leaves Quantity
euronext_optiq_dropcopygateway_sbe_v5_36.offer_leaves_quantity.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_leaves_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_leaves_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_leaves_quantity, range, value, display)

  return offset + length, value
end

-- Offer Oe Session Id
euronext_optiq_dropcopygateway_sbe_v5_36.offer_oe_session_id = {}

-- Size: Offer Oe Session Id
euronext_optiq_dropcopygateway_sbe_v5_36.offer_oe_session_id.size = 8

-- Display: Offer Oe Session Id
euronext_optiq_dropcopygateway_sbe_v5_36.offer_oe_session_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Oe Session Id: No Value"
  end

  return "Offer Oe Session Id: "..value
end

-- Dissect: Offer Oe Session Id
euronext_optiq_dropcopygateway_sbe_v5_36.offer_oe_session_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_oe_session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_oe_session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_oe_session_id, range, value, display)

  return offset + length, value
end

-- Offer Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.offer_order_id = {}

-- Size: Offer Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.offer_order_id.size = 8

-- Display: Offer Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.offer_order_id.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Order Id: No Value"
  end

  return "Offer Order Id: "..value
end

-- Dissect: Offer Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.offer_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_order_id, range, value, display)

  return offset + length, value
end

-- Offer Previous Px
euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_px = {}

-- Size: Offer Previous Px
euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_px.size = 8

-- Display: Offer Previous Px
euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Offer Previous Px: No Value"
  end

  return "Offer Previous Px: "..value
end

-- Dissect: Offer Previous Px
euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_previous_px, range, value, display)

  return offset + length, value
end

-- Offer Previous Size
euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_size = {}

-- Size: Offer Previous Size
euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_size.size = 8

-- Display: Offer Previous Size
euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Previous Size: No Value"
  end

  return "Offer Previous Size: "..value
end

-- Dissect: Offer Previous Size
euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_previous_size, range, value, display)

  return offset + length, value
end

-- Offer Px
euronext_optiq_dropcopygateway_sbe_v5_36.offer_px = {}

-- Size: Offer Px
euronext_optiq_dropcopygateway_sbe_v5_36.offer_px.size = 8

-- Display: Offer Px
euronext_optiq_dropcopygateway_sbe_v5_36.offer_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Dissect: Offer Px
euronext_optiq_dropcopygateway_sbe_v5_36.offer_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Offer Quote Priority
euronext_optiq_dropcopygateway_sbe_v5_36.offer_quote_priority = {}

-- Size: Offer Quote Priority
euronext_optiq_dropcopygateway_sbe_v5_36.offer_quote_priority.size = 8

-- Display: Offer Quote Priority
euronext_optiq_dropcopygateway_sbe_v5_36.offer_quote_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Quote Priority: No Value"
  end

  return "Offer Quote Priority: "..value
end

-- Dissect: Offer Quote Priority
euronext_optiq_dropcopygateway_sbe_v5_36.offer_quote_priority.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_quote_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_quote_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_quote_priority, range, value, display)

  return offset + length, value
end

-- Offer Size
euronext_optiq_dropcopygateway_sbe_v5_36.offer_size = {}

-- Size: Offer Size
euronext_optiq_dropcopygateway_sbe_v5_36.offer_size.size = 8

-- Display: Offer Size
euronext_optiq_dropcopygateway_sbe_v5_36.offer_size.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Dissect: Offer Size
euronext_optiq_dropcopygateway_sbe_v5_36.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.offer_size.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Operation Type
euronext_optiq_dropcopygateway_sbe_v5_36.operation_type = {}

-- Size: Operation Type
euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.size = 1

-- Display: Operation Type
euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.operation_type, range, value, display)

  return offset + length, value
end

-- Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.order_entry_qualifier = {}

-- Size: Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.order_entry_qualifier.size = 1

-- Display: Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.order_entry_qualifier.display = function(value)
  if value == 0 then
    return "Order Entry Qualifier: Order Entry Cancel Modify Disabled (0)"
  end
  if value == 1 then
    return "Order Entry Qualifier: Order Entry Cancel Modify Enabled (1)"
  end
  if value == 2 then
    return "Order Entry Qualifier: Canceland Modify Only (2)"
  end
  if value == 3 then
    return "Order Entry Qualifier: Cancel Only (3)"
  end
  if value == 255 then
    return "Order Entry Qualifier: No Value"
  end

  return "Order Entry Qualifier: Unknown("..value..")"
end

-- Dissect: Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.order_entry_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_entry_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_entry_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_entry_qualifier, range, value, display)

  return offset + length, value
end

-- Order Event Type
euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type = {}

-- Size: Order Event Type
euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.size = 1

-- Display: Order Event Type
euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.display = function(value)
  if value == 1 then
    return "Order Event Type: New (1)"
  end
  if value == 2 then
    return "Order Event Type: Modify (2)"
  end
  if value == 3 then
    return "Order Event Type: Fill (3)"
  end
  if value == 4 then
    return "Order Event Type: Cancel (4)"
  end
  if value == 5 then
    return "Order Event Type: Reject (5)"
  end
  if value == 6 then
    return "Order Event Type: Trigger (6)"
  end
  if value == 7 then
    return "Order Event Type: Refill (7)"
  end
  if value == 8 then
    return "Order Event Type: Mtl (8)"
  end
  if value == 9 then
    return "Order Event Type: Vfa Vfc (9)"
  end
  if value == 10 then
    return "Order Event Type: Collar Breach (10)"
  end
  if value == 11 then
    return "Order Event Type: Gtcgtd Reload (11)"
  end
  if value == 12 then
    return "Order Event Type: Open Order Request (12)"
  end
  if value == 13 then
    return "Order Event Type: Expired Reload (13)"
  end
  if value == 14 then
    return "Order Event Type: Killedby Corporate Event Reload (14)"
  end
  if value == 15 then
    return "Order Event Type: Ownership Request (15)"
  end
  if value == 18 then
    return "Order Event Type: Implicit (18)"
  end
  if value == 19 then
    return "Order Event Type: Routed (19)"
  end
  if value == 20 then
    return "Order Event Type: Routed New (20)"
  end
  if value == 21 then
    return "Order Event Type: Routed Fill (21)"
  end
  if value == 22 then
    return "Order Event Type: Routed Cancel (22)"
  end
  if value == 23 then
    return "Order Event Type: Move Darkto Cob (23)"
  end

  return "Order Event Type: Unknown("..value..")"
end

-- Dissect: Order Event Type
euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_event_type, range, value, display)

  return offset + length, value
end

-- Order Expiration Date
euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_date = {}

-- Size: Order Expiration Date
euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_date.size = 2

-- Display: Order Expiration Date
euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_date.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Order Expiration Date: No Value"
  end

  return "Order Expiration Date: "..value
end

-- Dissect: Order Expiration Date
euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_expiration_date, range, value, display)

  return offset + length, value
end

-- Order Expiration Time
euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_time = {}

-- Size: Order Expiration Time
euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_time.size = 4

-- Display: Order Expiration Time
euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_time.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Order Expiration Time: No Value"
  end

  return "Order Expiration Time: "..value
end

-- Dissect: Order Expiration Time
euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_expiration_time, range, value, display)

  return offset + length, value
end

-- Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.order_id = {}

-- Size: Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.order_id.size = 8

-- Display: Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Priority
euronext_optiq_dropcopygateway_sbe_v5_36.order_priority = {}

-- Size: Order Priority
euronext_optiq_dropcopygateway_sbe_v5_36.order_priority.size = 8

-- Display: Order Priority
euronext_optiq_dropcopygateway_sbe_v5_36.order_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Order Priority: No Value"
  end

  return "Order Priority: "..value
end

-- Dissect: Order Priority
euronext_optiq_dropcopygateway_sbe_v5_36.order_priority.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_priority, range, value, display)

  return offset + length, value
end

-- Order Px
euronext_optiq_dropcopygateway_sbe_v5_36.order_px = {}

-- Size: Order Px
euronext_optiq_dropcopygateway_sbe_v5_36.order_px.size = 8

-- Display: Order Px
euronext_optiq_dropcopygateway_sbe_v5_36.order_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Px: No Value"
  end

  return "Order Px: "..value
end

-- Dissect: Order Px
euronext_optiq_dropcopygateway_sbe_v5_36.order_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_px, range, value, display)

  return offset + length, value
end

-- Order Qty
euronext_optiq_dropcopygateway_sbe_v5_36.order_qty = {}

-- Size: Order Qty
euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.size = 8

-- Display: Order Qty
euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Side Order Sideenum
euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum = {}

-- Size: Order Side Order Sideenum
euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.size = 1

-- Display: Order Side Order Sideenum
euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.display = function(value)
  if value == 1 then
    return "Order Side Order Sideenum: Buy (1)"
  end
  if value == 2 then
    return "Order Side Order Sideenum: Sell (2)"
  end
  if value == 3 then
    return "Order Side Order Sideenum: Cross (3)"
  end

  return "Order Side Order Sideenum: Unknown("..value..")"
end

-- Dissect: Order Side Order Sideenum
euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_side_order_sideenum, range, value, display)

  return offset + length, value
end

-- Order Side Order Sideenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional = {}

-- Size: Order Side Order Sideenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.size = 1

-- Display: Order Side Order Sideenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.display = function(value)
  if value == 1 then
    return "Order Side Order Sideenum optional: Buy (1)"
  end
  if value == 2 then
    return "Order Side Order Sideenum optional: Sell (2)"
  end
  if value == 3 then
    return "Order Side Order Sideenum optional: Cross (3)"
  end
  if value == 255 then
    return "Order Side Order Sideenum optional: No Value"
  end

  return "Order Side Order Sideenum optional: Unknown("..value..")"
end

-- Dissect: Order Side Order Sideenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_side_order_sideenum_optional, range, value, display)

  return offset + length, value
end

-- Order Sweep Reason
euronext_optiq_dropcopygateway_sbe_v5_36.order_sweep_reason = {}

-- Size: Order Sweep Reason
euronext_optiq_dropcopygateway_sbe_v5_36.order_sweep_reason.size = 1

-- Display: Order Sweep Reason
euronext_optiq_dropcopygateway_sbe_v5_36.order_sweep_reason.display = function(value)
  if value == 1 then
    return "Order Sweep Reason: Dvc Breached (1)"
  end
  if value == 255 then
    return "Order Sweep Reason: No Value"
  end

  return "Order Sweep Reason: Unknown("..value..")"
end

-- Dissect: Order Sweep Reason
euronext_optiq_dropcopygateway_sbe_v5_36.order_sweep_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_sweep_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_sweep_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_sweep_reason, range, value, display)

  return offset + length, value
end

-- Order Tolerable Price
euronext_optiq_dropcopygateway_sbe_v5_36.order_tolerable_price = {}

-- Size: Order Tolerable Price
euronext_optiq_dropcopygateway_sbe_v5_36.order_tolerable_price.size = 8

-- Display: Order Tolerable Price
euronext_optiq_dropcopygateway_sbe_v5_36.order_tolerable_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Order Tolerable Price: No Value"
  end

  return "Order Tolerable Price: "..value
end

-- Dissect: Order Tolerable Price
euronext_optiq_dropcopygateway_sbe_v5_36.order_tolerable_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_tolerable_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_tolerable_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_tolerable_price, range, value, display)

  return offset + length, value
end

-- Order Type
euronext_optiq_dropcopygateway_sbe_v5_36.order_type = {}

-- Size: Order Type
euronext_optiq_dropcopygateway_sbe_v5_36.order_type.size = 1

-- Display: Order Type
euronext_optiq_dropcopygateway_sbe_v5_36.order_type.display = function(value)
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
  if value == 12 then
    return "Order Type: Implied (12)"
  end
  if value == 13 then
    return "Order Type: Posttrade Implied (13)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
euronext_optiq_dropcopygateway_sbe_v5_36.order_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.order_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.order_type, range, value, display)

  return offset + length, value
end

-- Orig Client Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.orig_client_order_id = {}

-- Size: Orig Client Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.orig_client_order_id.size = 8

-- Display: Orig Client Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.orig_client_order_id.display = function(value)
  return "Orig Client Order Id: "..value
end

-- Dissect: Orig Client Order Id
euronext_optiq_dropcopygateway_sbe_v5_36.orig_client_order_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.orig_client_order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.orig_client_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.orig_client_order_id, range, value, display)

  return offset + length, value
end

-- Original Client Id Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code = {}

-- Size: Original Client Id Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.size = 4

-- Display: Original Client Id Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Original Client Id Short Code: No Value"
  end

  return "Original Client Id Short Code: "..value
end

-- Dissect: Original Client Id Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_client_id_short_code, range, value, display)

  return offset + length, value
end

-- Original Exec W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code = {}

-- Size: Original Exec W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.size = 4

-- Display: Original Exec W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Original Exec W Firm Short Code: No Value"
  end

  return "Original Exec W Firm Short Code: "..value
end

-- Dissect: Original Exec W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_exec_w_firm_short_code, range, value, display)

  return offset + length, value
end

-- Original Invest Decis W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code = {}

-- Size: Original Invest Decis W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.size = 4

-- Display: Original Invest Decis W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Original Invest Decis W Firm Short Code: No Value"
  end

  return "Original Invest Decis W Firm Short Code: "..value
end

-- Dissect: Original Invest Decis W Firm Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_invest_decis_w_firm_short_code, range, value, display)

  return offset + length, value
end

-- Original Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id = {}

-- Size: Original Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.size = 16

-- Display: Original Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Original Investor Id: No Value"
  end

  return "Original Investor Id: "..value
end

-- Dissect: Original Investor Id
euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_investor_id, range, value, display)

  return offset + length, value
end

-- Original Non Exec Broker Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code = {}

-- Size: Original Non Exec Broker Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.size = 4

-- Display: Original Non Exec Broker Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.display = function(value)
  -- Check if field has value
  if value == -2147483648 then
    return "Original Non Exec Broker Short Code: No Value"
  end

  return "Original Non Exec Broker Short Code: "..value
end

-- Dissect: Original Non Exec Broker Short Code
euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_non_exec_broker_short_code, range, value, display)

  return offset + length, value
end

-- Original Short Code Type
euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type = {}

-- Size: Original Short Code Type
euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.size = 1

-- Display: Original Short Code Type
euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.display = function(value)
  if value == 1 then
    return "Original Short Code Type: Original Ewfsc (1)"
  end
  if value == 2 then
    return "Original Short Code Type: Original Cisc (2)"
  end
  if value == 3 then
    return "Original Short Code Type: Original Invsc (3)"
  end
  if value == 4 then
    return "Original Short Code Type: Original Nbsc (4)"
  end
  if value == 255 then
    return "Original Short Code Type: No Value"
  end

  return "Original Short Code Type: Unknown("..value..")"
end

-- Dissect: Original Short Code Type
euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.original_short_code_type, range, value, display)

  return offset + length, value
end

-- Parent Exec Id
euronext_optiq_dropcopygateway_sbe_v5_36.parent_exec_id = {}

-- Size: Parent Exec Id
euronext_optiq_dropcopygateway_sbe_v5_36.parent_exec_id.size = 4

-- Display: Parent Exec Id
euronext_optiq_dropcopygateway_sbe_v5_36.parent_exec_id.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Parent Exec Id: No Value"
  end

  return "Parent Exec Id: "..value
end

-- Dissect: Parent Exec Id
euronext_optiq_dropcopygateway_sbe_v5_36.parent_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.parent_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.parent_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.parent_exec_id, range, value, display)

  return offset + length, value
end

-- Parent Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.parent_symbol_index = {}

-- Size: Parent Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.parent_symbol_index.size = 4

-- Display: Parent Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.parent_symbol_index.display = function(value)
  -- Check if field has value
  if value == 4294967295 then
    return "Parent Symbol Index: No Value"
  end

  return "Parent Symbol Index: "..value
end

-- Dissect: Parent Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.parent_symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.parent_symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.parent_symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.parent_symbol_index, range, value, display)

  return offset + length, value
end

-- Parent Trade Unique Identifier
euronext_optiq_dropcopygateway_sbe_v5_36.parent_trade_unique_identifier = {}

-- Size: Parent Trade Unique Identifier
euronext_optiq_dropcopygateway_sbe_v5_36.parent_trade_unique_identifier.size = 16

-- Display: Parent Trade Unique Identifier
euronext_optiq_dropcopygateway_sbe_v5_36.parent_trade_unique_identifier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Parent Trade Unique Identifier: No Value"
  end

  return "Parent Trade Unique Identifier: "..value
end

-- Dissect: Parent Trade Unique Identifier
euronext_optiq_dropcopygateway_sbe_v5_36.parent_trade_unique_identifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.parent_trade_unique_identifier.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.parent_trade_unique_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.parent_trade_unique_identifier, range, value, display)

  return offset + length, value
end

-- Peg Offset
euronext_optiq_dropcopygateway_sbe_v5_36.peg_offset = {}

-- Size: Peg Offset
euronext_optiq_dropcopygateway_sbe_v5_36.peg_offset.size = 1

-- Display: Peg Offset
euronext_optiq_dropcopygateway_sbe_v5_36.peg_offset.display = function(value)
  -- Check if field has value
  if value == -128 then
    return "Peg Offset: No Value"
  end

  return "Peg Offset: "..value
end

-- Dissect: Peg Offset
euronext_optiq_dropcopygateway_sbe_v5_36.peg_offset.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.peg_offset.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.peg_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.peg_offset, range, value, display)

  return offset + length, value
end

-- Phase Id
euronext_optiq_dropcopygateway_sbe_v5_36.phase_id = {}

-- Size: Phase Id
euronext_optiq_dropcopygateway_sbe_v5_36.phase_id.size = 1

-- Display: Phase Id
euronext_optiq_dropcopygateway_sbe_v5_36.phase_id.display = function(value)
  if value == 1 then
    return "Phase Id: Inaccessible (1)"
  end
  if value == 2 then
    return "Phase Id: Closed (2)"
  end
  if value == 3 then
    return "Phase Id: Call (3)"
  end
  if value == 4 then
    return "Phase Id: Uncrossing (4)"
  end
  if value == 5 then
    return "Phase Id: Continuous (5)"
  end
  if value == 7 then
    return "Phase Id: Continuous Uncrossing (7)"
  end

  return "Phase Id: Unknown("..value..")"
end

-- Dissect: Phase Id
euronext_optiq_dropcopygateway_sbe_v5_36.phase_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.phase_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.phase_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.phase_id, range, value, display)

  return offset + length, value
end

-- Phase Time
euronext_optiq_dropcopygateway_sbe_v5_36.phase_time = {}

-- Size: Phase Time
euronext_optiq_dropcopygateway_sbe_v5_36.phase_time.size = 8

-- Display: Phase Time
euronext_optiq_dropcopygateway_sbe_v5_36.phase_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Phase Time: No Value"
  end

  return "Phase Time: "..value
end

-- Dissect: Phase Time
euronext_optiq_dropcopygateway_sbe_v5_36.phase_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.phase_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.phase_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.phase_time, range, value, display)

  return offset + length, value
end

-- Price int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t = {}

-- Size: Price int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.size = 8

-- Display: Price int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.display = function(value)
  return "Price int 64t: "..value
end

-- Dissect: Price int 64t
euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_int_64t, range, value, display)

  return offset + length, value
end

-- Price int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional = {}

-- Size: Price int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.size = 8

-- Display: Price int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Price int 64t optional: No Value"
  end

  return "Price int 64t optional: "..value
end

-- Dissect: Price int 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_int_64t_optional, range, value, display)

  return offset + length, value
end

-- Price Limit Style
euronext_optiq_dropcopygateway_sbe_v5_36.price_limit_style = {}

-- Size: Price Limit Style
euronext_optiq_dropcopygateway_sbe_v5_36.price_limit_style.size = 1

-- Display: Price Limit Style
euronext_optiq_dropcopygateway_sbe_v5_36.price_limit_style.display = function(value)
  if value == 0 then
    return "Price Limit Style: Opening Call Price (0)"
  end
  if value == 1 then
    return "Price Limit Style: Fair Value (1)"
  end
  if value == 2 then
    return "Price Limit Style: Future Market Price (2)"
  end
  if value == 3 then
    return "Price Limit Style: Option Market Price (3)"
  end
  if value == 255 then
    return "Price Limit Style: No Value"
  end

  return "Price Limit Style: Unknown("..value..")"
end

-- Dissect: Price Limit Style
euronext_optiq_dropcopygateway_sbe_v5_36.price_limit_style.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.price_limit_style.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.price_limit_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_limit_style, range, value, display)

  return offset + length, value
end

-- Price Limits
euronext_optiq_dropcopygateway_sbe_v5_36.price_limits = {}

-- Size: Price Limits
euronext_optiq_dropcopygateway_sbe_v5_36.price_limits.size = 1

-- Display: Price Limits
euronext_optiq_dropcopygateway_sbe_v5_36.price_limits.display = function(value)
  if value == 1 then
    return "Price Limits: Price Limits Enabled Normal (1)"
  end
  if value == 2 then
    return "Price Limits: Price Limits Enabled Wide (2)"
  end
  if value == 3 then
    return "Price Limits: Price Limits Enabled Widest (3)"
  end
  if value == 4 then
    return "Price Limits: Price Limits Disabled (4)"
  end
  if value == 255 then
    return "Price Limits: No Value"
  end

  return "Price Limits: Unknown("..value..")"
end

-- Dissect: Price Limits
euronext_optiq_dropcopygateway_sbe_v5_36.price_limits.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.price_limits.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.price_limits.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_limits, range, value, display)

  return offset + length, value
end

-- Price Type
euronext_optiq_dropcopygateway_sbe_v5_36.price_type = {}

-- Size: Price Type
euronext_optiq_dropcopygateway_sbe_v5_36.price_type.size = 1

-- Display: Price Type
euronext_optiq_dropcopygateway_sbe_v5_36.price_type.display = function(value)
  if value == 2 then
    return "Price Type: Official Daily (2)"
  end
  if value == 4 then
    return "Price Type: Official Market Close (4)"
  end
  if value == 6 then
    return "Price Type: Official Expiry (6)"
  end
  if value == 7 then
    return "Price Type: Provisional Intraday (7)"
  end
  if value == 8 then
    return "Price Type: Official Intraday (8)"
  end
  if value == 9 then
    return "Price Type: Official Ydsp (9)"
  end
  if value == 10 then
    return "Price Type: Na Vfortheinstrumentseligibletothe Nav Trading Facility (10)"
  end
  if value == 12 then
    return "Price Type: Adjusted Closing Price (12)"
  end
  if value == 13 then
    return "Price Type: Subscription Price (13)"
  end
  if value == 14 then
    return "Price Type: Indicative Matching Price (14)"
  end
  if value == 19 then
    return "Price Type: Min Price Outof Session Trades (19)"
  end
  if value == 20 then
    return "Price Type: Max Price Outof Session Trades (20)"
  end
  if value == 21 then
    return "Price Type: Min Price Outof Session Block Trades (21)"
  end
  if value == 22 then
    return "Price Type: Max Price Outof Session Block Trades (22)"
  end
  if value == 23 then
    return "Price Type: Valuation Price (23)"
  end
  if value == 24 then
    return "Price Type: Fund Subscription (24)"
  end
  if value == 25 then
    return "Price Type: Fund Redemption (25)"
  end
  if value == 26 then
    return "Price Type: Uncrossing Price (26)"
  end
  if value == 27 then
    return "Price Type: Last Traded Price (27)"
  end
  if value == 28 then
    return "Price Type: Aip (28)"
  end
  if value == 30 then
    return "Price Type: Net Asset Value (30)"
  end
  if value == 31 then
    return "Price Type: External Reference Price (31)"
  end
  if value == 33 then
    return "Price Type: Closing Price (33)"
  end
  if value == 34 then
    return "Price Type: Life Time Lowest Price (34)"
  end
  if value == 35 then
    return "Price Type: Life Time Highest Price (35)"
  end
  if value == 36 then
    return "Price Type: Daily Lowest Price (36)"
  end
  if value == 37 then
    return "Price Type: Daily Highest Price (37)"
  end
  if value == 38 then
    return "Price Type: Breached Dynamic Collar (38)"
  end
  if value == 39 then
    return "Price Type: Breached Static Collar (39)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
euronext_optiq_dropcopygateway_sbe_v5_36.price_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_type, range, value, display)

  return offset + length, value
end

-- Principal Code
euronext_optiq_dropcopygateway_sbe_v5_36.principal_code = {}

-- Size: Principal Code
euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.size = 8

-- Display: Principal Code
euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Principal Code: No Value"
  end

  return "Principal Code: "..value
end

-- Dissect: Principal Code
euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.principal_code, range, value, display)

  return offset + length, value
end

-- Produce Time
euronext_optiq_dropcopygateway_sbe_v5_36.produce_time = {}

-- Size: Produce Time
euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size = 8

-- Display: Produce Time
euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.display = function(value)
  return "Produce Time: "..value
end

-- Dissect: Produce Time
euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.produce_time, range, value, display)

  return offset + length, value
end

-- Publication Time
euronext_optiq_dropcopygateway_sbe_v5_36.publication_time = {}

-- Size: Publication Time
euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.size = 8

-- Display: Publication Time
euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Publication Time: No Value"
  end

  return "Publication Time: "..value
end

-- Dissect: Publication Time
euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.publication_time, range, value, display)

  return offset + length, value
end

-- Quantity uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t = {}

-- Size: Quantity uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.size = 8

-- Display: Quantity uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.display = function(value)
  return "Quantity uint 64t: "..value
end

-- Dissect: Quantity uint 64t
euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quantity_uint_64t, range, value, display)

  return offset + length, value
end

-- Quantity uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional = {}

-- Size: Quantity uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.size = 8

-- Display: Quantity uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Quantity uint 64t optional: No Value"
  end

  return "Quantity uint 64t optional: "..value
end

-- Dissect: Quantity uint 64t optional
euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quantity_uint_64t_optional, range, value, display)

  return offset + length, value
end

-- Quote Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.quote_indicator = {}

-- Size: Quote Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.quote_indicator.size = 1

-- Display: Quote Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.quote_indicator.display = function(value)
  return "Quote Indicator: "..value
end

-- Dissect: Quote Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.quote_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.quote_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.quote_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quote_indicator, range, value, display)

  return offset + length, value
end

-- Quote Spread Multiplier
euronext_optiq_dropcopygateway_sbe_v5_36.quote_spread_multiplier = {}

-- Size: Quote Spread Multiplier
euronext_optiq_dropcopygateway_sbe_v5_36.quote_spread_multiplier.size = 1

-- Display: Quote Spread Multiplier
euronext_optiq_dropcopygateway_sbe_v5_36.quote_spread_multiplier.display = function(value)
  if value == 1 then
    return "Quote Spread Multiplier: Quote Spread Multiplier 1 (1)"
  end
  if value == 2 then
    return "Quote Spread Multiplier: Quote Spread Multiplier 2 (2)"
  end
  if value == 3 then
    return "Quote Spread Multiplier: Quote Spread Multiplier 3 (3)"
  end
  if value == 255 then
    return "Quote Spread Multiplier: No Value"
  end

  return "Quote Spread Multiplier: Unknown("..value..")"
end

-- Dissect: Quote Spread Multiplier
euronext_optiq_dropcopygateway_sbe_v5_36.quote_spread_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.quote_spread_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.quote_spread_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quote_spread_multiplier, range, value, display)

  return offset + length, value
end

-- Rejected Message
euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message = {}

-- Size: Rejected Message
euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.size = 1

-- Display: Rejected Message
euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Rejected Message: No Value"
  end

  return "Rejected Message: "..value
end

-- Dissect: Rejected Message
euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rejected_message, range, value, display)

  return offset + length, value
end

-- Rejected Message Id
euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message_id = {}

-- Size: Rejected Message Id
euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message_id.size = 2

-- Display: Rejected Message Id
euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message_id.display = function(value)
  return "Rejected Message Id: "..value
end

-- Dissect: Rejected Message Id
euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rejected_message_id, range, value, display)

  return offset + length, value
end

-- Rfe Answer unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar = {}

-- Size: Rfe Answer unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar.size = 1

-- Display: Rfe Answer unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar.display = function(value)
  return "Rfe Answer unsignedchar: "..value
end

-- Dissect: Rfe Answer unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfe_answer_unsignedchar, range, value, display)

  return offset + length, value
end

-- Rfe Answer unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional = {}

-- Size: Rfe Answer unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.size = 1

-- Display: Rfe Answer unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Rfe Answer unsignedchar optional: No Value"
  end

  return "Rfe Answer unsignedchar optional: "..value
end

-- Dissect: Rfe Answer unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfe_answer_unsignedchar_optional, range, value, display)

  return offset + length, value
end

-- Rfq Status
euronext_optiq_dropcopygateway_sbe_v5_36.rfq_status = {}

-- Size: Rfq Status
euronext_optiq_dropcopygateway_sbe_v5_36.rfq_status.size = 1

-- Display: Rfq Status
euronext_optiq_dropcopygateway_sbe_v5_36.rfq_status.display = function(value)
  if value == 0 then
    return "Rfq Status: Alive (0)"
  end
  if value == 1 then
    return "Rfq Status: Confirmed (1)"
  end
  if value == 2 then
    return "Rfq Status: Canceled (2)"
  end
  if value == 3 then
    return "Rfq Status: Expired (3)"
  end

  return "Rfq Status: Unknown("..value..")"
end

-- Dissect: Rfq Status
euronext_optiq_dropcopygateway_sbe_v5_36.rfq_status.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.rfq_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.rfq_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfq_status, range, value, display)

  return offset + length, value
end

-- Scheduled Event
euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event = {}

-- Size: Scheduled Event
euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event.size = 1

-- Display: Scheduled Event
euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event.display = function(value)
  if value == 0 then
    return "Scheduled Event: Cancel Previously Scheduled Event (0)"
  end
  if value == 1 then
    return "Scheduled Event: Reopening (1)"
  end
  if value == 3 then
    return "Scheduled Event: Resumptionoftrading (3)"
  end
  if value == 4 then
    return "Scheduled Event: Closed (4)"
  end
  if value == 5 then
    return "Scheduled Event: Expiry (5)"
  end
  if value == 6 then
    return "Scheduled Event: Wholesale Largein Scale Li Stradesopenextension (6)"
  end
  if value == 7 then
    return "Scheduled Event: Wholesale Basistradesopenextension (7)"
  end
  if value == 8 then
    return "Scheduled Event: Wholesale Against Actualstradesopenextension (8)"
  end
  if value == 9 then
    return "Scheduled Event: Wholesale Largein Scale Li S Packagetradesopenextension (9)"
  end
  if value == 10 then
    return "Scheduled Event: Wholesale Exchange For Swapstradesopenextension (10)"
  end
  if value == 11 then
    return "Scheduled Event: Wholesale Trades Open Extension (11)"
  end
  if value == 12 then
    return "Scheduled Event: Suspension (12)"
  end
  if value == 13 then
    return "Scheduled Event: Collars Normal (13)"
  end
  if value == 14 then
    return "Scheduled Event: Collars Wide (14)"
  end
  if value == 15 then
    return "Scheduled Event: Pre Expiry (15)"
  end
  if value == 16 then
    return "Scheduled Event: Closing Price (16)"
  end
  if value == 255 then
    return "Scheduled Event: No Value"
  end

  return "Scheduled Event: Unknown("..value..")"
end

-- Dissect: Scheduled Event
euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.scheduled_event, range, value, display)

  return offset + length, value
end

-- Scheduled Event Time
euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event_time = {}

-- Size: Scheduled Event Time
euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event_time.size = 8

-- Display: Scheduled Event Time
euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Scheduled Event Time: No Value"
  end

  return "Scheduled Event Time: "..value
end

-- Dissect: Scheduled Event Time
euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.scheduled_event_time, range, value, display)

  return offset + length, value
end

-- Schema Id
euronext_optiq_dropcopygateway_sbe_v5_36.schema_id = {}

-- Size: Schema Id
euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.size = 2

-- Display: Schema Id
euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.display = function(value)
  if value == 0 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Sell Revision Flag
euronext_optiq_dropcopygateway_sbe_v5_36.sell_revision_flag = {}

-- Size: Sell Revision Flag
euronext_optiq_dropcopygateway_sbe_v5_36.sell_revision_flag.size = 1

-- Display: Sell Revision Flag
euronext_optiq_dropcopygateway_sbe_v5_36.sell_revision_flag.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.sell_revision_flag.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.sell_revision_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.sell_revision_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.sell_revision_flag, range, value, display)

  return offset + length, value
end

-- Sender Location Id
euronext_optiq_dropcopygateway_sbe_v5_36.sender_location_id = {}

-- Size: Sender Location Id
euronext_optiq_dropcopygateway_sbe_v5_36.sender_location_id.size = 11

-- Display: Sender Location Id
euronext_optiq_dropcopygateway_sbe_v5_36.sender_location_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Sender Location Id: No Value"
  end

  return "Sender Location Id: "..value
end

-- Dissect: Sender Location Id
euronext_optiq_dropcopygateway_sbe_v5_36.sender_location_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.sender_location_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.sender_location_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.sender_location_id, range, value, display)

  return offset + length, value
end

-- Sequence Time
euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time = {}

-- Size: Sequence Time
euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.size = 8

-- Display: Sequence Time
euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Sequence Time: No Value"
  end

  return "Sequence Time: "..value
end

-- Dissect: Sequence Time
euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.sequence_time, range, value, display)

  return offset + length, value
end

-- Session Sessionenum
euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum = {}

-- Size: Session Sessionenum
euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum.size = 1

-- Display: Session Sessionenum
euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum.display = function(value)
  if value == 0 then
    return "Session Sessionenum: Session 0 (0)"
  end
  if value == 1 then
    return "Session Sessionenum: Session 1 (1)"
  end
  if value == 2 then
    return "Session Sessionenum: Session 2 (2)"
  end
  if value == 3 then
    return "Session Sessionenum: Session 3 (3)"
  end
  if value == 4 then
    return "Session Sessionenum: Session 4 (4)"
  end
  if value == 5 then
    return "Session Sessionenum: Session 5 (5)"
  end
  if value == 6 then
    return "Session Sessionenum: Session 6 (6)"
  end
  if value == 7 then
    return "Session Sessionenum: Session 7 (7)"
  end
  if value == 8 then
    return "Session Sessionenum: Session 8 (8)"
  end
  if value == 9 then
    return "Session Sessionenum: Session 9 (9)"
  end

  return "Session Sessionenum: Unknown("..value..")"
end

-- Dissect: Session Sessionenum
euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_sessionenum, range, value, display)

  return offset + length, value
end

-- Session Sessionenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional = {}

-- Size: Session Sessionenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.size = 1

-- Display: Session Sessionenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.display = function(value)
  if value == 0 then
    return "Session Sessionenum optional: Session 0 (0)"
  end
  if value == 1 then
    return "Session Sessionenum optional: Session 1 (1)"
  end
  if value == 2 then
    return "Session Sessionenum optional: Session 2 (2)"
  end
  if value == 3 then
    return "Session Sessionenum optional: Session 3 (3)"
  end
  if value == 4 then
    return "Session Sessionenum optional: Session 4 (4)"
  end
  if value == 5 then
    return "Session Sessionenum optional: Session 5 (5)"
  end
  if value == 6 then
    return "Session Sessionenum optional: Session 6 (6)"
  end
  if value == 7 then
    return "Session Sessionenum optional: Session 7 (7)"
  end
  if value == 8 then
    return "Session Sessionenum optional: Session 8 (8)"
  end
  if value == 9 then
    return "Session Sessionenum optional: Session 9 (9)"
  end
  if value == 255 then
    return "Session Sessionenum optional: No Value"
  end

  return "Session Sessionenum optional: Unknown("..value..")"
end

-- Dissect: Session Sessionenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_sessionenum_optional, range, value, display)

  return offset + length, value
end

-- Settlement Flag unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar = {}

-- Size: Settlement Flag unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar.size = 1

-- Display: Settlement Flag unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar.display = function(value)
  return "Settlement Flag unsignedchar: "..value
end

-- Dissect: Settlement Flag unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.settlement_flag_unsignedchar, range, value, display)

  return offset + length, value
end

-- Settlement Flag unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional = {}

-- Size: Settlement Flag unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.size = 1

-- Display: Settlement Flag unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Settlement Flag unsignedchar optional: No Value"
  end

  return "Settlement Flag unsignedchar optional: "..value
end

-- Dissect: Settlement Flag unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.settlement_flag_unsignedchar_optional, range, value, display)

  return offset + length, value
end

-- Settlement Period unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar = {}

-- Size: Settlement Period unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar.size = 1

-- Display: Settlement Period unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar.display = function(value)
  return "Settlement Period unsignedchar: "..value
end

-- Dissect: Settlement Period unsignedchar
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.settlement_period_unsignedchar, range, value, display)

  return offset + length, value
end

-- Settlement Period unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional = {}

-- Size: Settlement Period unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.size = 1

-- Display: Settlement Period unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.display = function(value)
  -- Check if field has value
  if value == 255 then
    return "Settlement Period unsignedchar optional: No Value"
  end

  return "Settlement Period unsignedchar optional: "..value
end

-- Dissect: Settlement Period unsignedchar optional
euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.settlement_period_unsignedchar_optional, range, value, display)

  return offset + length, value
end

-- Short Code Role
euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role = {}

-- Size: Short Code Role
euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.size = 1

-- Display: Short Code Role
euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.display = function(value)
  if value == 1 then
    return "Short Code Role: Executing Firm (1)"
  end
  if value == 3 then
    return "Short Code Role: Client Id (3)"
  end
  if value == 12 then
    return "Short Code Role: Executing Trader (12)"
  end
  if value == 17 then
    return "Short Code Role: Contra Firm (17)"
  end
  if value == 26 then
    return "Short Code Role: Correspondent Broker (26)"
  end
  if value == 122 then
    return "Short Code Role: Investment Decision Maker (122)"
  end
  if value == 255 then
    return "Short Code Role: No Value"
  end

  return "Short Code Role: Unknown("..value..")"
end

-- Dissect: Short Code Role
euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.short_code_role, range, value, display)

  return offset + length, value
end

-- Short Code Role Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier = {}

-- Size: Short Code Role Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.size = 1

-- Display: Short Code Role Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.display = function(value)
  if value == 22 then
    return "Short Code Role Qualifier: Algorithm (22)"
  end
  if value == 23 then
    return "Short Code Role Qualifier: Firmor Legal Entity (23)"
  end
  if value == 24 then
    return "Short Code Role Qualifier: Natural Person (24)"
  end
  if value == 255 then
    return "Short Code Role Qualifier: No Value"
  end

  return "Short Code Role Qualifier: Unknown("..value..")"
end

-- Dissect: Short Code Role Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.short_code_role_qualifier, range, value, display)

  return offset + length, value
end

-- Side
euronext_optiq_dropcopygateway_sbe_v5_36.side = {}

-- Size: Side
euronext_optiq_dropcopygateway_sbe_v5_36.side.size = 1

-- Display: Side
euronext_optiq_dropcopygateway_sbe_v5_36.side.display = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 3 then
    return "Side: Cross (3)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
euronext_optiq_dropcopygateway_sbe_v5_36.side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.side, range, value, display)

  return offset + length, value
end

-- Status Reason
euronext_optiq_dropcopygateway_sbe_v5_36.status_reason = {}

-- Size: Status Reason
euronext_optiq_dropcopygateway_sbe_v5_36.status_reason.size = 1

-- Display: Status Reason
euronext_optiq_dropcopygateway_sbe_v5_36.status_reason.display = function(value)
  if value == 0 then
    return "Status Reason: Scheduled (0)"
  end
  if value == 4 then
    return "Status Reason: Collars Breach (4)"
  end
  if value == 7 then
    return "Status Reason: Automatic Reopening (7)"
  end
  if value == 8 then
    return "Status Reason: No Liquidity Provider (8)"
  end
  if value == 11 then
    return "Status Reason: Knock Inby Issuer (11)"
  end
  if value == 12 then
    return "Status Reason: Knock Outby Exchange (12)"
  end
  if value == 13 then
    return "Status Reason: Knock Outby Issuer (13)"
  end
  if value == 15 then
    return "Status Reason: Actionby Market Operations (15)"
  end
  if value == 16 then
    return "Status Reason: Waitingfor Tradable State (16)"
  end
  if value == 20 then
    return "Status Reason: New Listing (20)"
  end
  if value == 21 then
    return "Status Reason: Dueto Underlying (21)"
  end
  if value == 22 then
    return "Status Reason: Outsideof L Pquotes (22)"
  end
  if value == 23 then
    return "Status Reason: Technical (23)"
  end
  if value == 24 then
    return "Status Reason: Dueto Leg (24)"
  end
  if value == 25 then
    return "Status Reason: Dueto Main Market (25)"
  end

  return "Status Reason: Unknown("..value..")"
end

-- Dissect: Status Reason
euronext_optiq_dropcopygateway_sbe_v5_36.status_reason.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.status_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.status_reason, range, value, display)

  return offset + length, value
end

-- Stop Px
euronext_optiq_dropcopygateway_sbe_v5_36.stop_px = {}

-- Size: Stop Px
euronext_optiq_dropcopygateway_sbe_v5_36.stop_px.size = 8

-- Display: Stop Px
euronext_optiq_dropcopygateway_sbe_v5_36.stop_px.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Stop Px: No Value"
  end

  return "Stop Px: "..value
end

-- Dissect: Stop Px
euronext_optiq_dropcopygateway_sbe_v5_36.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.stop_px.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Stop Queue Priority
euronext_optiq_dropcopygateway_sbe_v5_36.stop_queue_priority = {}

-- Size: Stop Queue Priority
euronext_optiq_dropcopygateway_sbe_v5_36.stop_queue_priority.size = 8

-- Display: Stop Queue Priority
euronext_optiq_dropcopygateway_sbe_v5_36.stop_queue_priority.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Stop Queue Priority: No Value"
  end

  return "Stop Queue Priority: "..value
end

-- Dissect: Stop Queue Priority
euronext_optiq_dropcopygateway_sbe_v5_36.stop_queue_priority.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.stop_queue_priority.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.stop_queue_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stop_queue_priority, range, value, display)

  return offset + length, value
end

-- Stop Triggered Time In Force
euronext_optiq_dropcopygateway_sbe_v5_36.stop_triggered_time_in_force = {}

-- Size: Stop Triggered Time In Force
euronext_optiq_dropcopygateway_sbe_v5_36.stop_triggered_time_in_force.size = 1

-- Display: Stop Triggered Time In Force
euronext_optiq_dropcopygateway_sbe_v5_36.stop_triggered_time_in_force.display = function(value)
  if value == 0 then
    return "Stop Triggered Time In Force: Day (0)"
  end
  if value == 1 then
    return "Stop Triggered Time In Force: Good Till Cancel (1)"
  end
  if value == 3 then
    return "Stop Triggered Time In Force: Immediateor Cancel (3)"
  end
  if value == 6 then
    return "Stop Triggered Time In Force: Goodtill Date (6)"
  end
  if value == 10 then
    return "Stop Triggered Time In Force: Good Till Month Gtm (10)"
  end
  if value == 255 then
    return "Stop Triggered Time In Force: No Value"
  end

  return "Stop Triggered Time In Force: Unknown("..value..")"
end

-- Dissect: Stop Triggered Time In Force
euronext_optiq_dropcopygateway_sbe_v5_36.stop_triggered_time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.stop_triggered_time_in_force.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.stop_triggered_time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stop_triggered_time_in_force, range, value, display)

  return offset + length, value
end

-- Stpid
euronext_optiq_dropcopygateway_sbe_v5_36.stpid = {}

-- Size: Stpid
euronext_optiq_dropcopygateway_sbe_v5_36.stpid.size = 2

-- Display: Stpid
euronext_optiq_dropcopygateway_sbe_v5_36.stpid.display = function(value)
  -- Check if field has value
  if value == 65535 then
    return "Stpid: No Value"
  end

  return "Stpid: "..value
end

-- Dissect: Stpid
euronext_optiq_dropcopygateway_sbe_v5_36.stpid.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.stpid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.stpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stpid, range, value, display)

  return offset + length, value
end

-- Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index = {}

-- Size: Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size = 4

-- Display: Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Technical Origin
euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin = {}

-- Size: Technical Origin
euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.size = 1

-- Display: Technical Origin
euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.technical_origin, range, value, display)

  return offset + length, value
end

-- Template Id
euronext_optiq_dropcopygateway_sbe_v5_36.template_id = {}

-- Size: Template Id
euronext_optiq_dropcopygateway_sbe_v5_36.template_id.size = 2

-- Display: Template Id
euronext_optiq_dropcopygateway_sbe_v5_36.template_id.display = function(value)
  if value == 16001 then
    return "Template Id: Dc Market Status Change Message (16001)"
  end
  if value == 16003 then
    return "Template Id: Dc Price Update Message (16003)"
  end
  if value == 16006 then
    return "Template Id: Dc Long Order Message (16006)"
  end
  if value == 16010 then
    return "Template Id: Dc Short Order Reject Message (16010)"
  end
  if value == 16016 then
    return "Template Id: Dc Short Trade Cancellation Message (16016)"
  end
  if value == 16018 then
    return "Template Id: Dc Static Collars Message (16018)"
  end
  if value == 16021 then
    return "Template Id: Dc Trade Bust Notification Message (16021)"
  end
  if value == 16050 then
    return "Template Id: Dc Quote Message (16050)"
  end
  if value == 16051 then
    return "Template Id: Dcafqrfe Message (16051)"
  end
  if value == 16052 then
    return "Template Id: Dc Declaration New Message (16052)"
  end
  if value == 16053 then
    return "Template Id: Dc Short Declaration Reject Message (16053)"
  end
  if value == 16054 then
    return "Template Id: Dc Short Declaration Cancel Message (16054)"
  end
  if value == 16055 then
    return "Template Id: Dc Short Trade Declaration Message (16055)"
  end
  if value == 16056 then
    return "Template Id: Dc Short Trade Declaration Cancellation Message (16056)"
  end
  if value == 16057 then
    return "Template Id: Dc Trade Bust Declaration Message (16057)"
  end
  if value == 16058 then
    return "Template Id: Dc Trade Message (16058)"
  end
  if value == 16059 then
    return "Template Id: Dc Short Declaration Fill Message (16059)"
  end
  if value == 16060 then
    return "Template Id: Dc Quote Request Message (16060)"
  end
  if value == 16061 then
    return "Template Id: Dc Clear Book Message (16061)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
euronext_optiq_dropcopygateway_sbe_v5_36.template_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.template_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.template_id, range, value, display)

  return offset + length, value
end

-- Time In Force Time In Forceenum
euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum = {}

-- Size: Time In Force Time In Forceenum
euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.size = 1

-- Display: Time In Force Time In Forceenum
euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.display = function(value)
  if value == 0 then
    return "Time In Force Time In Forceenum: Day (0)"
  end
  if value == 1 then
    return "Time In Force Time In Forceenum: Good Till Cancel (1)"
  end
  if value == 2 then
    return "Time In Force Time In Forceenum: Validfor Uncrossing (2)"
  end
  if value == 3 then
    return "Time In Force Time In Forceenum: Immediateor Cancel (3)"
  end
  if value == 4 then
    return "Time In Force Time In Forceenum: Fillor Kill (4)"
  end
  if value == 5 then
    return "Time In Force Time In Forceenum: Goodtill Time (5)"
  end
  if value == 6 then
    return "Time In Force Time In Forceenum: Goodtill Date (6)"
  end
  if value == 7 then
    return "Time In Force Time In Forceenum: Validfor Closing Uncrossing (7)"
  end
  if value == 8 then
    return "Time In Force Time In Forceenum: Validfor Session (8)"
  end
  if value == 10 then
    return "Time In Force Time In Forceenum: Good Till Month Gtm (10)"
  end

  return "Time In Force Time In Forceenum: Unknown("..value..")"
end

-- Dissect: Time In Force Time In Forceenum
euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.time_in_force_time_in_forceenum, range, value, display)

  return offset + length, value
end

-- Time In Force Time In Forceenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional = {}

-- Size: Time In Force Time In Forceenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.size = 1

-- Display: Time In Force Time In Forceenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.display = function(value)
  if value == 0 then
    return "Time In Force Time In Forceenum optional: Day (0)"
  end
  if value == 1 then
    return "Time In Force Time In Forceenum optional: Good Till Cancel (1)"
  end
  if value == 2 then
    return "Time In Force Time In Forceenum optional: Validfor Uncrossing (2)"
  end
  if value == 3 then
    return "Time In Force Time In Forceenum optional: Immediateor Cancel (3)"
  end
  if value == 4 then
    return "Time In Force Time In Forceenum optional: Fillor Kill (4)"
  end
  if value == 5 then
    return "Time In Force Time In Forceenum optional: Goodtill Time (5)"
  end
  if value == 6 then
    return "Time In Force Time In Forceenum optional: Goodtill Date (6)"
  end
  if value == 7 then
    return "Time In Force Time In Forceenum optional: Validfor Closing Uncrossing (7)"
  end
  if value == 8 then
    return "Time In Force Time In Forceenum optional: Validfor Session (8)"
  end
  if value == 10 then
    return "Time In Force Time In Forceenum optional: Good Till Month Gtm (10)"
  end
  if value == 255 then
    return "Time In Force Time In Forceenum optional: No Value"
  end

  return "Time In Force Time In Forceenum optional: Unknown("..value..")"
end

-- Dissect: Time In Force Time In Forceenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.time_in_force_time_in_forceenum_optional, range, value, display)

  return offset + length, value
end

-- Trade Time
euronext_optiq_dropcopygateway_sbe_v5_36.trade_time = {}

-- Size: Trade Time
euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.size = 8

-- Display: Trade Time
euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.display = function(value)
  -- Check if field has value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trade Time: No Value"
  end

  return "Trade Time: "..value
end

-- Dissect: Trade Time
euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_time, range, value, display)

  return offset + length, value
end

-- Trade Type
euronext_optiq_dropcopygateway_sbe_v5_36.trade_type = {}

-- Size: Trade Type
euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.size = 1

-- Display: Trade Type
euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.display = function(value)
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
  if value == 45 then
    return "Trade Type: Trade Reversal (45)"
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
  if value == 103 then
    return "Trade Type: Issuing Or Tender Offer Trade (103)"
  end
  if value == 104 then
    return "Trade Type: Rfq Trade (104)"
  end
  if value == 255 then
    return "Trade Type: No Value"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Trade Unique Identifier
euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier = {}

-- Size: Trade Unique Identifier
euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.size = 16

-- Display: Trade Unique Identifier
euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trade Unique Identifier: No Value"
  end

  return "Trade Unique Identifier: "..value
end

-- Dissect: Trade Unique Identifier
euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_unique_identifier, range, value, display)

  return offset + length, value
end

-- Trader Id
euronext_optiq_dropcopygateway_sbe_v5_36.trader_id = {}

-- Size: Trader Id
euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size = 16

-- Display: Trader Id
euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Trader Id: No Value"
  end

  return "Trader Id: "..value
end

-- Dissect: Trader Id
euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size
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

  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trading Capacity Trading Capacityenum
euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum = {}

-- Size: Trading Capacity Trading Capacityenum
euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.size = 1

-- Display: Trading Capacity Trading Capacityenum
euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.display = function(value)
  if value == 1 then
    return "Trading Capacity Trading Capacityenum: Dealingonownaccount (1)"
  end
  if value == 2 then
    return "Trading Capacity Trading Capacityenum: Matchedprincipal (2)"
  end
  if value == 3 then
    return "Trading Capacity Trading Capacityenum: Anyothercapacity (3)"
  end

  return "Trading Capacity Trading Capacityenum: Unknown("..value..")"
end

-- Dissect: Trading Capacity Trading Capacityenum
euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_capacity_trading_capacityenum, range, value, display)

  return offset + length, value
end

-- Trading Capacity Trading Capacityenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum_optional = {}

-- Size: Trading Capacity Trading Capacityenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum_optional.size = 1

-- Display: Trading Capacity Trading Capacityenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum_optional.display = function(value)
  if value == 1 then
    return "Trading Capacity Trading Capacityenum optional: Dealingonownaccount (1)"
  end
  if value == 2 then
    return "Trading Capacity Trading Capacityenum optional: Matchedprincipal (2)"
  end
  if value == 3 then
    return "Trading Capacity Trading Capacityenum optional: Anyothercapacity (3)"
  end
  if value == 255 then
    return "Trading Capacity Trading Capacityenum optional: No Value"
  end

  return "Trading Capacity Trading Capacityenum optional: Unknown("..value..")"
end

-- Dissect: Trading Capacity Trading Capacityenum optional
euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum_optional.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum_optional.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum_optional.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_capacity_trading_capacityenum_optional, range, value, display)

  return offset + length, value
end

-- Trading Group Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_order_entry_qualifier = {}

-- Size: Trading Group Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_order_entry_qualifier.size = 1

-- Display: Trading Group Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_order_entry_qualifier.display = function(value)
  if value == 0 then
    return "Trading Group Order Entry Qualifier: Order Entry Cancel Modify Disabled (0)"
  end
  if value == 1 then
    return "Trading Group Order Entry Qualifier: Order Entry Cancel Modify Enabled (1)"
  end
  if value == 2 then
    return "Trading Group Order Entry Qualifier: Canceland Modify Only (2)"
  end
  if value == 3 then
    return "Trading Group Order Entry Qualifier: Cancel Only (3)"
  end
  if value == 255 then
    return "Trading Group Order Entry Qualifier: No Value"
  end

  return "Trading Group Order Entry Qualifier: Unknown("..value..")"
end

-- Dissect: Trading Group Order Entry Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_order_entry_qualifier.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_order_entry_qualifier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_order_entry_qualifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_group_order_entry_qualifier, range, value, display)

  return offset + length, value
end

-- Trading Group State
euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_state = {}

-- Size: Trading Group State
euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_state.size = 1

-- Display: Trading Group State
euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_state.display = function(value)
  if value == 0 then
    return "Trading Group State: Scheduled (0)"
  end
  if value == 1 then
    return "Trading Group State: Halted (1)"
  end

  return "Trading Group State: Unknown("..value..")"
end

-- Dissect: Trading Group State
euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_state.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_group_state, range, value, display)

  return offset + length, value
end

-- Trading Period
euronext_optiq_dropcopygateway_sbe_v5_36.trading_period = {}

-- Size: Trading Period
euronext_optiq_dropcopygateway_sbe_v5_36.trading_period.size = 1

-- Display: Trading Period
euronext_optiq_dropcopygateway_sbe_v5_36.trading_period.display = function(value)
  if value == 1 then
    return "Trading Period: Opening (1)"
  end
  if value == 2 then
    return "Trading Period: Standard (2)"
  end
  if value == 3 then
    return "Trading Period: Closing (3)"
  end
  if value == 255 then
    return "Trading Period: No Value"
  end

  return "Trading Period: Unknown("..value..")"
end

-- Dissect: Trading Period
euronext_optiq_dropcopygateway_sbe_v5_36.trading_period.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trading_period.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trading_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_period, range, value, display)

  return offset + length, value
end

-- Trading Side
euronext_optiq_dropcopygateway_sbe_v5_36.trading_side = {}

-- Size: Trading Side
euronext_optiq_dropcopygateway_sbe_v5_36.trading_side.size = 1

-- Display: Trading Side
euronext_optiq_dropcopygateway_sbe_v5_36.trading_side.display = function(value)
  if value == 1 then
    return "Trading Side: Bid Only (1)"
  end
  if value == 2 then
    return "Trading Side: Offer Only (2)"
  end
  if value == 3 then
    return "Trading Side: Pako (3)"
  end
  if value == 4 then
    return "Trading Side: Both Sides (4)"
  end
  if value == 255 then
    return "Trading Side: No Value"
  end

  return "Trading Side: Unknown("..value..")"
end

-- Dissect: Trading Side
euronext_optiq_dropcopygateway_sbe_v5_36.trading_side.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.trading_side.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trading_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_side, range, value, display)

  return offset + length, value
end

-- Transaction Price Type
euronext_optiq_dropcopygateway_sbe_v5_36.transaction_price_type = {}

-- Size: Transaction Price Type
euronext_optiq_dropcopygateway_sbe_v5_36.transaction_price_type.size = 1

-- Display: Transaction Price Type
euronext_optiq_dropcopygateway_sbe_v5_36.transaction_price_type.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.transaction_price_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.transaction_price_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.transaction_price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.transaction_price_type, range, value, display)

  return offset + length, value
end

-- Transparency Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.transparency_indicator = {}

-- Size: Transparency Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.transparency_indicator.size = 1

-- Display: Transparency Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.transparency_indicator.display = function(value)
  if value == 0 then
    return "Transparency Indicator: Lit Regular Trade (0)"
  end
  if value == 1 then
    return "Transparency Indicator: Dark Tradeand Immediate Publication (1)"
  end
  if value == 2 then
    return "Transparency Indicator: Dark Tradeand Deferred Publication (2)"
  end
  if value == 255 then
    return "Transparency Indicator: No Value"
  end

  return "Transparency Indicator: Unknown("..value..")"
end

-- Dissect: Transparency Indicator
euronext_optiq_dropcopygateway_sbe_v5_36.transparency_indicator.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.transparency_indicator.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.transparency_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.transparency_indicator, range, value, display)

  return offset + length, value
end

-- Undisclosed Iceberg Type
euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_iceberg_type = {}

-- Size: Undisclosed Iceberg Type
euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_iceberg_type.size = 1

-- Display: Undisclosed Iceberg Type
euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_iceberg_type.display = function(value)
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
euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_iceberg_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_iceberg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_iceberg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.undisclosed_iceberg_type, range, value, display)

  return offset + length, value
end

-- Undisclosed Price
euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_price = {}

-- Size: Undisclosed Price
euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_price.size = 8

-- Display: Undisclosed Price
euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_price.display = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Undisclosed Price: No Value"
  end

  return "Undisclosed Price: "..value
end

-- Dissect: Undisclosed Price
euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_price.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.undisclosed_price, range, value, display)

  return offset + length, value
end

-- Update Type
euronext_optiq_dropcopygateway_sbe_v5_36.update_type = {}

-- Size: Update Type
euronext_optiq_dropcopygateway_sbe_v5_36.update_type.size = 1

-- Display: Update Type
euronext_optiq_dropcopygateway_sbe_v5_36.update_type.display = function(value)
  if value == 1 then
    return "Update Type: Best Bid (1)"
  end
  if value == 2 then
    return "Update Type: Best Offer (2)"
  end
  if value == 3 then
    return "Update Type: New Bid (3)"
  end
  if value == 4 then
    return "Update Type: New Offer (4)"
  end
  if value == 5 then
    return "Update Type: Updated Bid (5)"
  end
  if value == 6 then
    return "Update Type: Updated Offer (6)"
  end
  if value == 7 then
    return "Update Type: Total Traded Volume (7)"
  end
  if value == 8 then
    return "Update Type: Implied Bid (8)"
  end
  if value == 9 then
    return "Update Type: Implied Offer (9)"
  end
  if value == 10 then
    return "Update Type: Requestfor Quote (10)"
  end
  if value == 11 then
    return "Update Type: Requestfor Quote Bid (11)"
  end
  if value == 12 then
    return "Update Type: Requestfor Size (12)"
  end
  if value == 13 then
    return "Update Type: Requestfor Quote Offer (13)"
  end
  if value == 14 then
    return "Update Type: High Dynamic Collar (14)"
  end
  if value == 15 then
    return "Update Type: Low Dynamic Collar (15)"
  end
  if value == 16 then
    return "Update Type: New Bid Rlp (16)"
  end
  if value == 17 then
    return "Update Type: New Offer Rlp (17)"
  end
  if value == 18 then
    return "Update Type: Updated Bid Rlp (18)"
  end
  if value == 19 then
    return "Update Type: Updated Offer Rlp (19)"
  end
  if value == 24 then
    return "Update Type: Conventional Trade (24)"
  end
  if value == 25 then
    return "Update Type: Requestfor Cross Rfc Queued (25)"
  end
  if value == 26 then
    return "Update Type: Requestfor Cross Rfc (26)"
  end
  if value == 27 then
    return "Update Type: Largein Scale Li S Trade (27)"
  end
  if value == 28 then
    return "Update Type: Basis Trade (28)"
  end
  if value == 29 then
    return "Update Type: Largein Scale Li S Package Trade (29)"
  end
  if value == 30 then
    return "Update Type: Guaranteed Cross Trade (30)"
  end
  if value == 31 then
    return "Update Type: Against Actual Trade (31)"
  end
  if value == 32 then
    return "Update Type: Asset Allocation Trade (32)"
  end
  if value == 34 then
    return "Update Type: Exchangefor Swap Trade (34)"
  end
  if value == 35 then
    return "Update Type: Dark Trade (35)"
  end
  if value == 36 then
    return "Update Type: Exchangefor Physical Trade Cash Leg (36)"
  end
  if value == 37 then
    return "Update Type: Strategy Leg Conventional Trade (37)"
  end
  if value == 38 then
    return "Update Type: Strategy Leg Largein Scale Li S Trade (38)"
  end
  if value == 39 then
    return "Update Type: Strategy Leg Basis Trade (39)"
  end
  if value == 40 then
    return "Update Type: Strategy Leg Guaranteed Cross Trade (40)"
  end
  if value == 41 then
    return "Update Type: Strategy Leg Against Actual Trade (41)"
  end
  if value == 42 then
    return "Update Type: Strategy Leg Asset Allocation Trade (42)"
  end
  if value == 44 then
    return "Update Type: Strategy Leg Exchange For Swap Trade (44)"
  end
  if value == 45 then
    return "Update Type: Strategy Leg Exchange For Physical Trade (45)"
  end
  if value == 46 then
    return "Update Type: Bo B Trade (46)"
  end
  if value == 48 then
    return "Update Type: Atom X Trade (48)"
  end
  if value == 50 then
    return "Update Type: Trade Cancellation (50)"
  end
  if value == 51 then
    return "Update Type: Outof Market Trade (51)"
  end
  if value == 52 then
    return "Update Type: Delta Neutral Trade Underlying Cash Leg (52)"
  end
  if value == 53 then
    return "Update Type: Delta Neutral Trade Underlying Future Leg (53)"
  end
  if value == 54 then
    return "Update Type: Euronext Fund Service Trade (54)"
  end
  if value == 55 then
    return "Update Type: Secondary Listing Trade (55)"
  end
  if value == 56 then
    return "Update Type: Requestfor Cross Trade (56)"
  end
  if value == 57 then
    return "Update Type: Requestfor Cross Strategy Leg Trade (57)"
  end
  if value == 58 then
    return "Update Type: New Bid With Liquidity Provider (58)"
  end
  if value == 59 then
    return "Update Type: New Offer With Liquidity Provider (59)"
  end
  if value == 60 then
    return "Update Type: Updated Bid With Liquidity Provider (60)"
  end
  if value == 61 then
    return "Update Type: Updated Offer With Liquidity Provider (61)"
  end
  if value == 63 then
    return "Update Type: Low Static Collar (63)"
  end
  if value == 64 then
    return "Update Type: High Static Collar (64)"
  end
  if value == 65 then
    return "Update Type: Market Vwap Operation Trade (65)"
  end
  if value == 66 then
    return "Update Type: Requestfor Size Bid (66)"
  end
  if value == 67 then
    return "Update Type: Requestfor Size Offer (67)"
  end
  if value == 70 then
    return "Update Type: Low Lp Collar (70)"
  end
  if value == 71 then
    return "Update Type: High Lp Collar (71)"
  end
  if value == 72 then
    return "Update Type: Etfmtfnav Tradepriceinbp (72)"
  end
  if value == 73 then
    return "Update Type: Etfmtfnav Dark Tradepriceinbp (73)"
  end
  if value == 74 then
    return "Update Type: New Bidon Wholesale Rfc (74)"
  end
  if value == 75 then
    return "Update Type: New Offeron Wholesale Rfc (75)"
  end
  if value == 76 then
    return "Update Type: Updated Bidon Wholesale Rfc (76)"
  end
  if value == 77 then
    return "Update Type: Updated Offeron Wholesale Rfc (77)"
  end
  if value == 78 then
    return "Update Type: Clear Wholesale Rfc (78)"
  end
  if value == 79 then
    return "Update Type: Guaranteed Cross Negotiateddeal Nliq (79)"
  end
  if value == 80 then
    return "Update Type: Guaranteed Cross Negotiateddeal Oilq (80)"
  end
  if value == 81 then
    return "Update Type: Largein Scale Trade (81)"
  end
  if value == 82 then
    return "Update Type: Largein Scale Tradeinbasispoints (82)"
  end
  if value == 83 then
    return "Update Type: Largein Scale Package Tradeinbasispoints (83)"
  end
  if value == 84 then
    return "Update Type: Strategy Leg Largein Scale Tradeinbasispoints (84)"
  end
  if value == 86 then
    return "Update Type: New Bid Rfq Answer (86)"
  end
  if value == 87 then
    return "Update Type: New Offer Rfq Answer (87)"
  end
  if value == 88 then
    return "Update Type: Updated Bid Rfq Answer (88)"
  end
  if value == 89 then
    return "Update Type: Updated Offer Rfq Answer (89)"
  end
  if value == 90 then
    return "Update Type: Bid Execution Summary (90)"
  end
  if value == 91 then
    return "Update Type: Aqs Expansion Factor (91)"
  end
  if value == 92 then
    return "Update Type: Collars Expansion Factor (92)"
  end
  if value == 93 then
    return "Update Type: Collars Enabled (93)"
  end
  if value == 94 then
    return "Update Type: Collars Disabled (94)"
  end
  if value == 95 then
    return "Update Type: Dcrp Inter Month Spread (95)"
  end
  if value == 96 then
    return "Update Type: Fsp Reference Price (96)"
  end
  if value == 97 then
    return "Update Type: Offer Execution Summary (97)"
  end
  if value == 98 then
    return "Update Type: Fsp Triggered (98)"
  end
  if value == 99 then
    return "Update Type: Mid Point Bbo (99)"
  end
  if value == 100 then
    return "Update Type: Conventional Trade Provisionalprice (100)"
  end
  if value == 101 then
    return "Update Type: High Order Price Control Collar (101)"
  end
  if value == 102 then
    return "Update Type: Low Order Price Control Collar (102)"
  end
  if value == 103 then
    return "Update Type: Order Price Control Collar Reference Price (103)"
  end
  if value == 104 then
    return "Update Type: Issuing Or Tender Offer Trade (104)"
  end
  if value == 105 then
    return "Update Type: Rfq Trade (105)"
  end
  if value == 106 then
    return "Update Type: Flip Spread (106)"
  end
  if value == 107 then
    return "Update Type: Flip Reference Price (107)"
  end
  if value == 252 then
    return "Update Type: Static Collar Reference Price (252)"
  end
  if value == 253 then
    return "Update Type: Dynamic Collar Reference Price (253)"
  end
  if value == 254 then
    return "Update Type: Clear Book (254)"
  end

  return "Update Type: Unknown("..value..")"
end

-- Dissect: Update Type
euronext_optiq_dropcopygateway_sbe_v5_36.update_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.update_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.update_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.update_type, range, value, display)

  return offset + length, value
end

-- Version
euronext_optiq_dropcopygateway_sbe_v5_36.version = {}

-- Size: Version
euronext_optiq_dropcopygateway_sbe_v5_36.version.size = 2

-- Display: Version
euronext_optiq_dropcopygateway_sbe_v5_36.version.display = function(value)
  if value == 336 then
    return "Version: Version 36.0.1"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
euronext_optiq_dropcopygateway_sbe_v5_36.version.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.version.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.version, range, value, display)

  return offset + length, value
end

-- Wholesale Trade Type
euronext_optiq_dropcopygateway_sbe_v5_36.wholesale_trade_type = {}

-- Size: Wholesale Trade Type
euronext_optiq_dropcopygateway_sbe_v5_36.wholesale_trade_type.size = 1

-- Display: Wholesale Trade Type
euronext_optiq_dropcopygateway_sbe_v5_36.wholesale_trade_type.display = function(value)
  if value == 0 then
    return "Wholesale Trade Type: Largein Scale Trade Formerly Block Trade (0)"
  end
  if value == 1 then
    return "Wholesale Trade Type: Against Actual (1)"
  end
  if value == 2 then
    return "Wholesale Trade Type: Exchange For Swaps (2)"
  end
  if value == 255 then
    return "Wholesale Trade Type: No Value"
  end

  return "Wholesale Trade Type: Unknown("..value..")"
end

-- Dissect: Wholesale Trade Type
euronext_optiq_dropcopygateway_sbe_v5_36.wholesale_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = euronext_optiq_dropcopygateway_sbe_v5_36.wholesale_trade_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.wholesale_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.wholesale_trade_type, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Euronext Optiq DropCopyGateway Sbe 5.36
-----------------------------------------------------------------------

-- Dc Clear Book Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message = {}

-- Size: Dc Clear Book Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

-- Display: Dc Clear Book Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Clear Book Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Sequence Time: uint64_t
  index, sequence_time = euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.dissect(buffer, index, packet, parent)

  -- Book In Time: uint64_t
  index, book_in_time = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Clear Book Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_clear_book_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- D C Quote Request Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group = {}

-- Size: D C Quote Request Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.size

-- Display: D C Quote Request Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Request Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group.fields = function(buffer, offset, packet, parent, d_c_quote_request_message_short_codes_details_non_modifiable_group_index)
  local index = offset

  -- Implicit D C Quote Request Message Short Codes Details Non Modifiable Group Index
  if d_c_quote_request_message_short_codes_details_non_modifiable_group_index ~= nil and show.d_c_quote_request_message_short_codes_details_non_modifiable_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_short_codes_details_non_modifiable_group_index, d_c_quote_request_message_short_codes_details_non_modifiable_group_index)
    iteration:set_generated()
  end

  -- Original Short Code Type: OriginalShortCodeType_enum
  index, original_short_code_type = euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.dissect(buffer, index, packet, parent)

  -- Short Code Role: ShortCodeRole_enum
  index, short_code_role = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.dissect(buffer, index, packet, parent)

  -- Short Code Role Qualifier: ShortCodeRoleQualifier_enum
  index, short_code_role_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Quote Request Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group.dissect = function(buffer, offset, packet, parent, d_c_quote_request_message_short_codes_details_non_modifiable_group_index)
  if show.d_c_quote_request_message_short_codes_details_non_modifiable_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_short_codes_details_non_modifiable_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group.fields(buffer, offset, packet, parent, d_c_quote_request_message_short_codes_details_non_modifiable_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group.fields(buffer, offset, packet, parent, d_c_quote_request_message_short_codes_details_non_modifiable_group_index)
  end
end

-- Group Size Encoding
euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding = {}

-- Size: Group Size Encoding
euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.block_length_uint_8.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.num_in_group.size

-- Display: Group Size Encoding
euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Size Encoding
euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length uint 8: uint8
  index, block_length_uint_8 = euronext_optiq_dropcopygateway_sbe_v5_36.block_length_uint_8.dissect(buffer, index, packet, parent)

  -- Num In Group: uint8
  index, num_in_group = euronext_optiq_dropcopygateway_sbe_v5_36.num_in_group.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Size Encoding
euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect = function(buffer, offset, packet, parent)
  if show.group_size_encoding then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.group_size_encoding, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.fields(buffer, offset, packet, parent)
  end
end

-- D C Quote Request Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups = {}

-- Calculate size of: D C Quote Request Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_quote_request_message_short_codes_details_non_modifiable_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_quote_request_message_short_codes_details_non_modifiable_group_count * 3

  return index
end

-- Display: D C Quote Request Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Request Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Quote Request Message Short Codes Details Non Modifiable Group
  for d_c_quote_request_message_short_codes_details_non_modifiable_group_index = 1, num_in_group do
    index, d_c_quote_request_message_short_codes_details_non_modifiable_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_group.dissect(buffer, index, packet, parent, d_c_quote_request_message_short_codes_details_non_modifiable_group_index)
  end

  return index
end

-- Dissect: D C Quote Request Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_quote_request_message_short_codes_details_non_modifiable_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_short_codes_details_non_modifiable_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Quote Request Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group = {}

-- Size: D C Quote Request Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.size

-- Display: D C Quote Request Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Request Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group.fields = function(buffer, offset, packet, parent, d_c_quote_request_message_non_modifiable_short_codes_group_index)
  local index = offset

  -- Implicit D C Quote Request Message Non Modifiable Short Codes Group Index
  if d_c_quote_request_message_non_modifiable_short_codes_group_index ~= nil and show.d_c_quote_request_message_non_modifiable_short_codes_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_non_modifiable_short_codes_group_index, d_c_quote_request_message_non_modifiable_short_codes_group_index)
    iteration:set_generated()
  end

  -- Original Client Id Short Code: int32_t
  index, original_client_id_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.dissect(buffer, index, packet, parent)

  -- Original Exec W Firm Short Code: int32_t
  index, original_exec_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Original Invest Decis W Firm Short Code: int32_t
  index, original_invest_decis_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Original Non Exec Broker Short Code: int32_t
  index, original_non_exec_broker_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Quote Request Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group.dissect = function(buffer, offset, packet, parent, d_c_quote_request_message_non_modifiable_short_codes_group_index)
  if show.d_c_quote_request_message_non_modifiable_short_codes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_non_modifiable_short_codes_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_quote_request_message_non_modifiable_short_codes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_quote_request_message_non_modifiable_short_codes_group_index)
  end
end

-- D C Quote Request Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups = {}

-- Calculate size of: D C Quote Request Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_quote_request_message_non_modifiable_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_quote_request_message_non_modifiable_short_codes_group_count * 16

  return index
end

-- Display: D C Quote Request Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Request Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Quote Request Message Non Modifiable Short Codes Group
  for d_c_quote_request_message_non_modifiable_short_codes_group_index = 1, num_in_group do
    index, d_c_quote_request_message_non_modifiable_short_codes_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_group.dissect(buffer, index, packet, parent, d_c_quote_request_message_non_modifiable_short_codes_group_index)
  end

  return index
end

-- Dissect: D C Quote Request Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_quote_request_message_non_modifiable_short_codes_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_request_message_non_modifiable_short_codes_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
  end
end

-- Dark Execution Instruction
euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction = {}

-- Size: Dark Execution Instruction
euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.size = 1

-- Display: Dark Execution Instruction
euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.display = function(range, value, packet, parent)
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
euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.bits = function(range, value, packet, parent)

  -- Dark Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dark_indicator, range, value)

  -- Deferred Trade Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.deferred_trade_indicator, range, value)

  -- Displayed Order Interaction: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.displayed_order_interaction, range, value)

  -- Sweep Order Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.sweep_order_indicator, range, value)

  -- Minimum Quantity Type: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.minimum_quantity_type, range, value)

  -- Reserved 3: 3 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_3, range, value)
end

-- Dissect: Dark Execution Instruction
euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dark_execution_instruction, range, display)

  if show.dark_execution_instruction then
    euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Dc Quote Request Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message = {}

-- Calculate size of: Dc Quote Request Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_in.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.end_client.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.firm_id_publication.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.rfq_status.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.min_order_qty.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.size(buffer, offset + index)

  return index
end

-- Display: Dc Quote Request Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Quote Request Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Book In: uint64_t
  index, book_in = euronext_optiq_dropcopygateway_sbe_v5_36.book_in.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- End Client: char11
  index, end_client = euronext_optiq_dropcopygateway_sbe_v5_36.end_client.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Firm Id Publication: unsigned_char
  index, firm_id_publication = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id_publication.dissect(buffer, index, packet, parent)

  -- Oe Session I D uint 64t: uint64_t
  index, oe_session_i_d_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t: uint64_t
  index, oegin_from_member_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegout Time To M E uint 64t: uint64_t
  index, oegout_time_to_m_e_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.dissect(buffer, index, packet, parent)

  -- Order Id: uint64_t
  index, order_id = euronext_optiq_dropcopygateway_sbe_v5_36.order_id.dissect(buffer, index, packet, parent)

  -- Order Qty: uint64_t
  index, order_qty = euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.dissect(buffer, index, packet, parent)

  -- Order Side Order Sideenum optional: OrderSide_enum
  index, order_side_order_sideenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.dissect(buffer, index, packet, parent)

  -- Rfq Status: RFQStatus_enum
  index, rfq_status = euronext_optiq_dropcopygateway_sbe_v5_36.rfq_status.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Min Order Qty: uint64_t
  index, min_order_qty = euronext_optiq_dropcopygateway_sbe_v5_36.min_order_qty.dissect(buffer, index, packet, parent)

  -- Sequence Time: uint64_t
  index, sequence_time = euronext_optiq_dropcopygateway_sbe_v5_36.sequence_time.dissect(buffer, index, packet, parent)

  -- D C Quote Request Message Non Modifiable Short Codes Groups: Struct of 2 fields
  index, d_c_quote_request_message_non_modifiable_short_codes_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_non_modifiable_short_codes_groups.dissect(buffer, index, packet, parent)

  -- D C Quote Request Message Short Codes Details Non Modifiable Groups: Struct of 2 fields
  index, d_c_quote_request_message_short_codes_details_non_modifiable_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_request_message_short_codes_details_non_modifiable_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Quote Request Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_quote_request_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Short Declaration Fill Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message = {}

-- Size: Dc Short Declaration Fill Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.side.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.size

-- Display: Dc Short Declaration Fill Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Short Declaration Fill Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Message Sending Time: uint64_t
  index, message_sending_time = euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t: uint64_t
  index, oegin_from_member_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegout Time To M E uint 64t: uint64_t
  index, oegout_time_to_m_e_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.dissect(buffer, index, packet, parent)

  -- Declaration Event Type: DeclarationEventType_enum
  index, declaration_event_type = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.dissect(buffer, index, packet, parent)

  -- Declaration Status: DeclarationStatus_enum
  index, declaration_status = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.dissect(buffer, index, packet, parent)

  -- Price int 64t: int64_t
  index, price_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.dissect(buffer, index, packet, parent)

  -- Quantity uint 64t: uint64_t
  index, quantity_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.dissect(buffer, index, packet, parent)

  -- Side: Side_enum
  index, side = euronext_optiq_dropcopygateway_sbe_v5_36.side.dissect(buffer, index, packet, parent)

  -- Cross Order Indicator unsignedchar: unsigned_char
  index, cross_order_indicator_unsignedchar = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.dissect(buffer, index, packet, parent)

  -- Trade Time: uint64_t
  index, trade_time = euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.dissect(buffer, index, packet, parent)

  -- Entering Counterparty: char8
  index, entering_counterparty = euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.dissect(buffer, index, packet, parent)

  -- Session Sessionenum optional: Session_enum
  index, session_sessionenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.dissect(buffer, index, packet, parent)

  -- Trade Type: TradeType_enum
  index, trade_type = euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oe Partition I D uint 16t: uint16_t
  index, oe_partition_i_d_uint_16t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.dissect(buffer, index, packet, parent)

  -- Logical Access I D uint 32t: uint32_t
  index, logical_access_i_d_uint_32t = euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.dissect(buffer, index, packet, parent)

  -- Trader Id: char16
  index, trader_id = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.dissect(buffer, index, packet, parent)

  -- Investor Id: char16
  index, investor_id = euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.dissect(buffer, index, packet, parent)

  -- Principal Code: char8
  index, principal_code = euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.dissect(buffer, index, packet, parent)

  -- Clearing Firm I D char 8 optional: char8
  index, clearing_firm_i_d_char_8_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect(buffer, index, packet, parent)

  -- Clearing Account: char16
  index, clearing_account = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect(buffer, index, packet, parent)

  -- Account Type Account Typeenum: AccountType_enum
  index, account_type_account_typeenum = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  -- Settlement Period unsignedchar optional: unsigned_char
  index, settlement_period_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Settlement Flag unsignedchar optional: unsigned_char
  index, settlement_flag_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Guarantee Flag Guarantee Flagenum optional: GuaranteeFlag_enum
  index, guarantee_flag_guarantee_flagenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Short Declaration Fill Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_declaration_fill_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message.fields(buffer, offset, packet, parent)
  end
end

-- D C Trade Message Matched Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group = {}

-- Size: D C Trade Message Matched Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.side.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.size

-- Display: D C Trade Message Matched Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Trade Message Matched Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group.fields = function(buffer, offset, packet, parent, d_c_trade_message_matched_declarations_group_index)
  local index = offset

  -- Implicit D C Trade Message Matched Declarations Group Index
  if d_c_trade_message_matched_declarations_group_index ~= nil and show.d_c_trade_message_matched_declarations_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_declarations_group_index, d_c_trade_message_matched_declarations_group_index)
    iteration:set_generated()
  end

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.dissect(buffer, index, packet, parent)

  -- Side: Side_enum
  index, side = euronext_optiq_dropcopygateway_sbe_v5_36.side.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oe Partition I D uint 16t optional: uint16_t
  index, oe_partition_i_d_uint_16t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.dissect(buffer, index, packet, parent)

  -- Logical Access I D uint 32t optional: uint32_t
  index, logical_access_i_d_uint_32t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.dissect(buffer, index, packet, parent)

  -- Book In uint 64t optional: uint64_t
  index, book_in_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Account Type Account Typeenum optional: AccountType_enum
  index, account_type_account_typeenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum_optional.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  -- Clearing Firm I D char 8 optional: char8
  index, clearing_firm_i_d_char_8_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect(buffer, index, packet, parent)

  -- Clearing Account: char16
  index, clearing_account = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect(buffer, index, packet, parent)

  -- Principal Code: char8
  index, principal_code = euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.dissect(buffer, index, packet, parent)

  -- Cross Order Indicator unsignedchar optional: unsigned_char
  index, cross_order_indicator_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Trader Id: char16
  index, trader_id = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.dissect(buffer, index, packet, parent)

  -- Investor Id: char16
  index, investor_id = euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Trade Message Matched Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group.dissect = function(buffer, offset, packet, parent, d_c_trade_message_matched_declarations_group_index)
  if show.d_c_trade_message_matched_declarations_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_declarations_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group.fields(buffer, offset, packet, parent, d_c_trade_message_matched_declarations_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group.fields(buffer, offset, packet, parent, d_c_trade_message_matched_declarations_group_index)
  end
end

-- D C Trade Message Matched Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups = {}

-- Calculate size of: D C Trade Message Matched Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_trade_message_matched_declarations_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_trade_message_matched_declarations_group_count * 124

  return index
end

-- Display: D C Trade Message Matched Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Trade Message Matched Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Trade Message Matched Declarations Group
  for d_c_trade_message_matched_declarations_group_index = 1, num_in_group do
    index, d_c_trade_message_matched_declarations_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_group.dissect(buffer, index, packet, parent, d_c_trade_message_matched_declarations_group_index)
  end

  return index
end

-- Dissect: D C Trade Message Matched Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_trade_message_matched_declarations_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_declarations_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.fields(buffer, offset, packet, parent)
  end
end

-- Trade Qualifier Trade Qualifierset optional
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional = {}

-- Size: Trade Qualifier Trade Qualifierset optional
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.size = 1

-- Display: Trade Qualifier Trade Qualifierset optional
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.display = function(range, value, packet, parent)
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
  -- Is Deferred Publication flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Deferred Publication"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Qualifier Trade Qualifierset optional
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.bits = function(range, value, packet, parent)

  -- Uncrossing Trade: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.uncrossing_trade, range, value)

  -- First Trade Price: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.first_trade_price, range, value)

  -- Passive Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.passive_order, range, value)

  -- Aggressive Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.aggressive_order, range, value)

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_creation_by_market_operations, range, value)

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.nav_trade_expressed_in_bps, range, value)

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.nav_trade_expressed_in_price_currency, range, value)

  -- Deferred Publication: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.deferred_publication, range, value)
end

-- Dissect: Trade Qualifier Trade Qualifierset optional
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_qualifier_trade_qualifierset_optional, range, display)

  if show.trade_qualifier_trade_qualifierset_optional then
    euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Open Close
euronext_optiq_dropcopygateway_sbe_v5_36.open_close = {}

-- Size: Open Close
euronext_optiq_dropcopygateway_sbe_v5_36.open_close.size = 2

-- Display: Open Close
euronext_optiq_dropcopygateway_sbe_v5_36.open_close.display = function(range, value, packet, parent)
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
euronext_optiq_dropcopygateway_sbe_v5_36.open_close.bits = function(range, value, packet, parent)

  -- Field Actively Used: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.field_actively_used, range, value)

  -- Leg 1: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_1, range, value)

  -- Leg 2: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_2, range, value)

  -- Leg 3: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_3, range, value)

  -- Leg 4: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_4, range, value)

  -- Leg 5: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_5, range, value)

  -- Leg 6: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_6, range, value)

  -- Leg 7: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_7, range, value)

  -- Leg 8: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_8, range, value)

  -- Leg 9: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.leg_9, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_6, range, value)
end

-- Dissect: Open Close
euronext_optiq_dropcopygateway_sbe_v5_36.open_close.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.open_close.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.open_close.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.open_close, range, display)

  if show.open_close then
    euronext_optiq_dropcopygateway_sbe_v5_36.open_close.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- D C Trade Message Matched Orders Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group = {}

-- Size: D C Trade Message Matched Orders Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.order_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.order_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.order_px.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.open_close.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum.size

-- Display: D C Trade Message Matched Orders Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Trade Message Matched Orders Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group.fields = function(buffer, offset, packet, parent, d_c_trade_message_matched_orders_group_index)
  local index = offset

  -- Implicit D C Trade Message Matched Orders Group Index
  if d_c_trade_message_matched_orders_group_index ~= nil and show.d_c_trade_message_matched_orders_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_orders_group_index, d_c_trade_message_matched_orders_group_index)
    iteration:set_generated()
  end

  -- Order Id: uint64_t
  index, order_id = euronext_optiq_dropcopygateway_sbe_v5_36.order_id.dissect(buffer, index, packet, parent)

  -- Order Side Order Sideenum: OrderSide_enum
  index, order_side_order_sideenum = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.dissect(buffer, index, packet, parent)

  -- Order Type: OrderType_enum
  index, order_type = euronext_optiq_dropcopygateway_sbe_v5_36.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Forceenum: TimeInForce_enum
  index, time_in_force_time_in_forceenum = euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.dissect(buffer, index, packet, parent)

  -- Order Px: int64_t
  index, order_px = euronext_optiq_dropcopygateway_sbe_v5_36.order_px.dissect(buffer, index, packet, parent)

  -- Client Id: char8
  index, client_id = euronext_optiq_dropcopygateway_sbe_v5_36.client_id.dissect(buffer, index, packet, parent)

  -- Technical Origin: TechnicalOrigin_enum
  index, technical_origin = euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_dropcopygateway_sbe_v5_36.open_close.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oe Partition I D uint 16t optional: uint16_t
  index, oe_partition_i_d_uint_16t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t_optional.dissect(buffer, index, packet, parent)

  -- Logical Access I D uint 32t optional: uint32_t
  index, logical_access_i_d_uint_32t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t_optional.dissect(buffer, index, packet, parent)

  -- Book In uint 64t optional: uint64_t
  index, book_in_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Trade Qualifier Trade Qualifierset optional: Struct of 8 fields
  index, trade_qualifier_trade_qualifierset_optional = euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.dissect(buffer, index, packet, parent)

  -- Account Type Internal Account Type Internalenum optional: AccountTypeInternal_enum
  index, account_type_internal_account_type_internalenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum_optional.dissect(buffer, index, packet, parent)

  -- Lp Role Lp Roleenum optional: LPRole_enum
  index, lp_role_lp_roleenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.dissect(buffer, index, packet, parent)

  -- Clearing Account: char16
  index, clearing_account = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  -- Clearing Firm I D char 8 optional: char8
  index, clearing_firm_i_d_char_8_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect(buffer, index, packet, parent)

  -- Trader Id: char16
  index, trader_id = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.dissect(buffer, index, packet, parent)

  -- Original Investor Id: char16
  index, original_investor_id = euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.dissect(buffer, index, packet, parent)

  -- Cross Order Indicator unsignedchar optional: unsigned_char
  index, cross_order_indicator_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Clearing Instruction Clearing Instructionenum: ClearingInstruction_enum
  index, clearing_instruction_clearing_instructionenum = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Trade Message Matched Orders Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group.dissect = function(buffer, offset, packet, parent, d_c_trade_message_matched_orders_group_index)
  if show.d_c_trade_message_matched_orders_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_orders_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group.fields(buffer, offset, packet, parent, d_c_trade_message_matched_orders_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group.fields(buffer, offset, packet, parent, d_c_trade_message_matched_orders_group_index)
  end
end

-- D C Trade Message Matched Orders Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups = {}

-- Calculate size of: D C Trade Message Matched Orders Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_trade_message_matched_orders_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_trade_message_matched_orders_group_count * 140

  return index
end

-- Display: D C Trade Message Matched Orders Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Trade Message Matched Orders Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Trade Message Matched Orders Group
  for d_c_trade_message_matched_orders_group_index = 1, num_in_group do
    index, d_c_trade_message_matched_orders_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_group.dissect(buffer, index, packet, parent, d_c_trade_message_matched_orders_group_index)
  end

  return index
end

-- Dissect: D C Trade Message Matched Orders Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_trade_message_matched_orders_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_message_matched_orders_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.fields(buffer, offset, packet, parent)
  end
end

-- Trade Qualifier Trade Qualifierset
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset = {}

-- Size: Trade Qualifier Trade Qualifierset
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.size = 1

-- Display: Trade Qualifier Trade Qualifierset
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.display = function(range, value, packet, parent)
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
  -- Is Deferred Publication flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Deferred Publication"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Qualifier Trade Qualifierset
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.bits = function(range, value, packet, parent)

  -- Uncrossing Trade: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.uncrossing_trade, range, value)

  -- First Trade Price: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.first_trade_price, range, value)

  -- Passive Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.passive_order, range, value)

  -- Aggressive Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.aggressive_order, range, value)

  -- Trade Creation By Market Operations: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_creation_by_market_operations, range, value)

  -- Nav Trade Expressed In Bps: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.nav_trade_expressed_in_bps, range, value)

  -- Nav Trade Expressed In Price Currency: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.nav_trade_expressed_in_price_currency, range, value)

  -- Deferred Publication: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.deferred_publication, range, value)
end

-- Dissect: Trade Qualifier Trade Qualifierset
euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trade_qualifier_trade_qualifierset, range, display)

  if show.trade_qualifier_trade_qualifierset then
    euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Dc Trade Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message = {}

-- Calculate size of: Dc Trade Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.exec_phase.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.transparency_indicator.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.size(buffer, offset + index)

  return index
end

-- Display: Dc Trade Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Trade Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Execution I D uint 32t: uint32_t
  index, execution_i_d_uint_32t = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.dissect(buffer, index, packet, parent)

  -- Quantity uint 64t: uint64_t
  index, quantity_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.dissect(buffer, index, packet, parent)

  -- Price int 64t optional: int64_t
  index, price_int_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.dissect(buffer, index, packet, parent)

  -- Trade Time: uint64_t
  index, trade_time = euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.dissect(buffer, index, packet, parent)

  -- Publication Time: uint64_t
  index, publication_time = euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.dissect(buffer, index, packet, parent)

  -- Session Sessionenum optional: Session_enum
  index, session_sessionenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.dissect(buffer, index, packet, parent)

  -- Exec Phase: ExecutionPhase_enum
  index, exec_phase = euronext_optiq_dropcopygateway_sbe_v5_36.exec_phase.dissect(buffer, index, packet, parent)

  -- Transparency Indicator: TransparencyIndicator_enum
  index, transparency_indicator = euronext_optiq_dropcopygateway_sbe_v5_36.transparency_indicator.dissect(buffer, index, packet, parent)

  -- Trade Qualifier Trade Qualifierset: Struct of 8 fields
  index, trade_qualifier_trade_qualifierset = euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.dissect(buffer, index, packet, parent)

  -- Settlement Period unsignedchar optional: unsigned_char
  index, settlement_period_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Settlement Flag unsignedchar optional: unsigned_char
  index, settlement_flag_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Guarantee Flag Guarantee Flagenum optional: GuaranteeFlag_enum
  index, guarantee_flag_guarantee_flagenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.dissect(buffer, index, packet, parent)

  -- Counterparty Reason Type: CounterpartyReasonType_enum
  index, counterparty_reason_type = euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Trade Type: TradeType_enum
  index, trade_type = euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.dissect(buffer, index, packet, parent)

  -- D C Trade Message Matched Orders Groups: Struct of 2 fields
  index, d_c_trade_message_matched_orders_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_orders_groups.dissect(buffer, index, packet, parent)

  -- D C Trade Message Matched Declarations Groups: Struct of 2 fields
  index, d_c_trade_message_matched_declarations_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_message_matched_declarations_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Trade Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_trade_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Trade Bust Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message = {}

-- Size: Dc Trade Bust Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.side.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size

-- Display: Dc Trade Bust Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Trade Bust Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Message Sending Time: uint64_t
  index, message_sending_time = euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t: uint64_t
  index, oegin_from_member_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegout Time To M E uint 64t: uint64_t
  index, oegout_time_to_m_e_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Declaration Event Type: DeclarationEventType_enum
  index, declaration_event_type = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oe Session I D uint 64t: uint64_t
  index, oe_session_i_d_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.dissect(buffer, index, packet, parent)

  -- Account Type Account Typeenum: AccountType_enum
  index, account_type_account_typeenum = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.dissect(buffer, index, packet, parent)

  -- Declaration Status: DeclarationStatus_enum
  index, declaration_status = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.dissect(buffer, index, packet, parent)

  -- Price int 64t optional: int64_t
  index, price_int_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.dissect(buffer, index, packet, parent)

  -- Quantity uint 64t optional: uint64_t
  index, quantity_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Side: Side_enum
  index, side = euronext_optiq_dropcopygateway_sbe_v5_36.side.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.dissect(buffer, index, packet, parent)

  -- Entering Counterparty: char8
  index, entering_counterparty = euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.dissect(buffer, index, packet, parent)

  -- Trader Id: char16
  index, trader_id = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.dissect(buffer, index, packet, parent)

  -- Investor Id: char16
  index, investor_id = euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  -- Clearing Firm I D char 8 optional: char8
  index, clearing_firm_i_d_char_8_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect(buffer, index, packet, parent)

  -- Clearing Account: char16
  index, clearing_account = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Trade Bust Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_trade_bust_declaration_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Short Trade Declaration Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message = {}

-- Size: Dc Short Trade Declaration Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.size

-- Display: Dc Short Trade Declaration Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Short Trade Declaration Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Execution I D uint 32t: uint32_t
  index, execution_i_d_uint_32t = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Price int 64t: int64_t
  index, price_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.dissect(buffer, index, packet, parent)

  -- Quantity uint 64t: uint64_t
  index, quantity_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Short Trade Declaration Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_trade_declaration_cancellation_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- D C Short Trade Declaration Message Short Trade Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group = {}

-- Size: D C Short Trade Declaration Message Short Trade Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.side.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size

-- Display: D C Short Trade Declaration Message Short Trade Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Short Trade Declaration Message Short Trade Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group.fields = function(buffer, offset, packet, parent, d_c_short_trade_declaration_message_short_trade_declarations_group_index)
  local index = offset

  -- Implicit D C Short Trade Declaration Message Short Trade Declarations Group Index
  if d_c_short_trade_declaration_message_short_trade_declarations_group_index ~= nil and show.d_c_short_trade_declaration_message_short_trade_declarations_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_trade_declaration_message_short_trade_declarations_group_index, d_c_short_trade_declaration_message_short_trade_declarations_group_index)
    iteration:set_generated()
  end

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.dissect(buffer, index, packet, parent)

  -- Price int 64t optional: int64_t
  index, price_int_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.dissect(buffer, index, packet, parent)

  -- Quantity uint 64t optional: uint64_t
  index, quantity_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.dissect(buffer, index, packet, parent)

  -- Side: Side_enum
  index, side = euronext_optiq_dropcopygateway_sbe_v5_36.side.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oe Partition I D uint 16t: uint16_t
  index, oe_partition_i_d_uint_16t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_partition_i_d_uint_16t.dissect(buffer, index, packet, parent)

  -- Logical Access I D uint 32t: uint32_t
  index, logical_access_i_d_uint_32t = euronext_optiq_dropcopygateway_sbe_v5_36.logical_access_i_d_uint_32t.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Trader Id: char16
  index, trader_id = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.dissect(buffer, index, packet, parent)

  -- Investor Id: char16
  index, investor_id = euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.dissect(buffer, index, packet, parent)

  -- Principal Code: char8
  index, principal_code = euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.dissect(buffer, index, packet, parent)

  -- Clearing Firm I D char 8 optional: char8
  index, clearing_firm_i_d_char_8_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect(buffer, index, packet, parent)

  -- Clearing Account: char16
  index, clearing_account = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect(buffer, index, packet, parent)

  -- Account Type Account Typeenum: AccountType_enum
  index, account_type_account_typeenum = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Short Trade Declaration Message Short Trade Declarations Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group.dissect = function(buffer, offset, packet, parent, d_c_short_trade_declaration_message_short_trade_declarations_group_index)
  if show.d_c_short_trade_declaration_message_short_trade_declarations_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_trade_declaration_message_short_trade_declarations_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group.fields(buffer, offset, packet, parent, d_c_short_trade_declaration_message_short_trade_declarations_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group.fields(buffer, offset, packet, parent, d_c_short_trade_declaration_message_short_trade_declarations_group_index)
  end
end

-- D C Short Trade Declaration Message Short Trade Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups = {}

-- Calculate size of: D C Short Trade Declaration Message Short Trade Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_short_trade_declaration_message_short_trade_declarations_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_short_trade_declaration_message_short_trade_declarations_group_count * 139

  return index
end

-- Display: D C Short Trade Declaration Message Short Trade Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Short Trade Declaration Message Short Trade Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Short Trade Declaration Message Short Trade Declarations Group
  for d_c_short_trade_declaration_message_short_trade_declarations_group_index = 1, num_in_group do
    index, d_c_short_trade_declaration_message_short_trade_declarations_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_group.dissect(buffer, index, packet, parent, d_c_short_trade_declaration_message_short_trade_declarations_group_index)
  end

  return index
end

-- Dissect: D C Short Trade Declaration Message Short Trade Declarations Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_short_trade_declaration_message_short_trade_declarations_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_trade_declaration_message_short_trade_declarations_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.fields(buffer, offset, packet, parent)
  end
end

-- Dc Short Trade Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message = {}

-- Calculate size of: Dc Short Trade Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.size(buffer, offset + index)

  return index
end

-- Display: Dc Short Trade Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Short Trade Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Execution I D uint 32t: uint32_t
  index, execution_i_d_uint_32t = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.dissect(buffer, index, packet, parent)

  -- Cross Order Indicator unsignedchar: unsigned_char
  index, cross_order_indicator_unsignedchar = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.dissect(buffer, index, packet, parent)

  -- Trade Time: uint64_t
  index, trade_time = euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.dissect(buffer, index, packet, parent)

  -- Publication Time: uint64_t
  index, publication_time = euronext_optiq_dropcopygateway_sbe_v5_36.publication_time.dissect(buffer, index, packet, parent)

  -- Session Sessionenum optional: Session_enum
  index, session_sessionenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum_optional.dissect(buffer, index, packet, parent)

  -- Trade Type: TradeType_enum
  index, trade_type = euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.dissect(buffer, index, packet, parent)

  -- Settlement Period unsignedchar optional: unsigned_char
  index, settlement_period_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Settlement Flag unsignedchar optional: unsigned_char
  index, settlement_flag_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Guarantee Flag Guarantee Flagenum optional: GuaranteeFlag_enum
  index, guarantee_flag_guarantee_flagenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum_optional.dissect(buffer, index, packet, parent)

  -- D C Short Trade Declaration Message Short Trade Declarations Groups: Struct of 2 fields
  index, d_c_short_trade_declaration_message_short_trade_declarations_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_trade_declaration_message_short_trade_declarations_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Short Trade Declaration Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_trade_declaration_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Short Declaration Cancel Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message = {}

-- Size: Dc Short Declaration Cancel Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_kill_reason.size

-- Display: Dc Short Declaration Cancel Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Short Declaration Cancel Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Message Sending Time: uint64_t
  index, message_sending_time = euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t: uint64_t
  index, oegin_from_member_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegout Time To M E uint 64t: uint64_t
  index, oegout_time_to_m_e_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Declaration Event Type: DeclarationEventType_enum
  index, declaration_event_type = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oe Session I D uint 64t: uint64_t
  index, oe_session_i_d_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Declaration Kill Reason: DeclarationKillReason_enum
  index, declaration_kill_reason = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_kill_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Short Declaration Cancel Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_declaration_cancel_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Short Declaration Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message = {}

-- Size: Dc Short Declaration Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message_id.size

-- Display: Dc Short Declaration Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Short Declaration Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Message Sending Time: uint64_t
  index, message_sending_time = euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t: uint64_t
  index, oegin_from_member_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegout Time To M E uint 64t: uint64_t
  index, oegout_time_to_m_e_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Declaration Event Type: DeclarationEventType_enum
  index, declaration_event_type = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Error Code uint 16t: uint16_t
  index, error_code_uint_16t = euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.dissect(buffer, index, packet, parent)

  -- Rejected Message Id: uint16_t
  index, rejected_message_id = euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Short Declaration Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_declaration_reject_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Declaration New Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message = {}

-- Size: Dc Declaration New Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.side.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.transaction_price_type.size

-- Display: Dc Declaration New Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Declaration New Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Message Sending Time: uint64_t
  index, message_sending_time = euronext_optiq_dropcopygateway_sbe_v5_36.message_sending_time.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t: uint64_t
  index, oegin_from_member_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.dissect(buffer, index, packet, parent)

  -- Oegout Time To M E uint 64t: uint64_t
  index, oegout_time_to_m_e_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Declaration Event Type: DeclarationEventType_enum
  index, declaration_event_type = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_event_type.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oe Session I D uint 64t: uint64_t
  index, oe_session_i_d_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.dissect(buffer, index, packet, parent)

  -- Account Type Account Typeenum: AccountType_enum
  index, account_type_account_typeenum = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Declaration Id: uint64_t
  index, declaration_id = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_id.dissect(buffer, index, packet, parent)

  -- Declaration Status: DeclarationStatus_enum
  index, declaration_status = euronext_optiq_dropcopygateway_sbe_v5_36.declaration_status.dissect(buffer, index, packet, parent)

  -- Price int 64t optional: int64_t
  index, price_int_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.dissect(buffer, index, packet, parent)

  -- Quantity uint 64t optional: uint64_t
  index, quantity_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Side: Side_enum
  index, side = euronext_optiq_dropcopygateway_sbe_v5_36.side.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Operation Type: OperationType_enum
  index, operation_type = euronext_optiq_dropcopygateway_sbe_v5_36.operation_type.dissect(buffer, index, packet, parent)

  -- Cross Order Indicator unsignedchar: unsigned_char
  index, cross_order_indicator_unsignedchar = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.dissect(buffer, index, packet, parent)

  -- Entering Counterparty: char8
  index, entering_counterparty = euronext_optiq_dropcopygateway_sbe_v5_36.entering_counterparty.dissect(buffer, index, packet, parent)

  -- Trader Id: char16
  index, trader_id = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.dissect(buffer, index, packet, parent)

  -- Investor Id: char16
  index, investor_id = euronext_optiq_dropcopygateway_sbe_v5_36.investor_id.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  -- Principal Code: char8
  index, principal_code = euronext_optiq_dropcopygateway_sbe_v5_36.principal_code.dissect(buffer, index, packet, parent)

  -- Clearing Firm I D char 8 optional: char8
  index, clearing_firm_i_d_char_8_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect(buffer, index, packet, parent)

  -- Clearing Account: char16
  index, clearing_account = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect(buffer, index, packet, parent)

  -- Settlement Period unsignedchar: unsigned_char
  index, settlement_period_unsignedchar = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_period_unsignedchar.dissect(buffer, index, packet, parent)

  -- Settlement Flag unsignedchar: unsigned_char
  index, settlement_flag_unsignedchar = euronext_optiq_dropcopygateway_sbe_v5_36.settlement_flag_unsignedchar.dissect(buffer, index, packet, parent)

  -- Guarantee Flag Guarantee Flagenum: GuaranteeFlag_enum
  index, guarantee_flag_guarantee_flagenum = euronext_optiq_dropcopygateway_sbe_v5_36.guarantee_flag_guarantee_flagenum.dissect(buffer, index, packet, parent)

  -- Transaction Price Type: TransactionPriceType_enum
  index, transaction_price_type = euronext_optiq_dropcopygateway_sbe_v5_36.transaction_price_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Declaration New Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_declaration_new_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message.fields(buffer, offset, packet, parent)
  end
end

-- Dcafqrfe Message
euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message = {}

-- Size: Dcafqrfe Message
euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.afq_reason.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.afq_indicator.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size

-- Display: Dcafqrfe Message
euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dcafqrfe Message
euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Afq Reason: AFQReason_enum
  index, afq_reason = euronext_optiq_dropcopygateway_sbe_v5_36.afq_reason.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Afq Indicator: unsigned_char
  index, afq_indicator = euronext_optiq_dropcopygateway_sbe_v5_36.afq_indicator.dissect(buffer, index, packet, parent)

  -- Oe Session I D uint 64t: uint64_t
  index, oe_session_i_d_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dcafqrfe Message
euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dcafqrfe_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message.fields(buffer, offset, packet, parent)
  end
end

-- D C Quote Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group = {}

-- Size: D C Quote Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.size

-- Display: D C Quote Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group.fields = function(buffer, offset, packet, parent, d_c_quote_message_modifiable_short_codes_group_index)
  local index = offset

  -- Implicit D C Quote Message Modifiable Short Codes Group Index
  if d_c_quote_message_modifiable_short_codes_group_index ~= nil and show.d_c_quote_message_modifiable_short_codes_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_modifiable_short_codes_group_index, d_c_quote_message_modifiable_short_codes_group_index)
    iteration:set_generated()
  end

  -- Event Client Id Short Code: int32_t
  index, event_client_id_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.dissect(buffer, index, packet, parent)

  -- Event Exec W Firm Short Code: int32_t
  index, event_exec_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Quote Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group.dissect = function(buffer, offset, packet, parent, d_c_quote_message_modifiable_short_codes_group_index)
  if show.d_c_quote_message_modifiable_short_codes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_modifiable_short_codes_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_quote_message_modifiable_short_codes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_quote_message_modifiable_short_codes_group_index)
  end
end

-- D C Quote Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups = {}

-- Calculate size of: D C Quote Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_quote_message_modifiable_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_quote_message_modifiable_short_codes_group_count * 8

  return index
end

-- Display: D C Quote Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Quote Message Modifiable Short Codes Group
  for d_c_quote_message_modifiable_short_codes_group_index = 1, num_in_group do
    index, d_c_quote_message_modifiable_short_codes_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_group.dissect(buffer, index, packet, parent, d_c_quote_message_modifiable_short_codes_group_index)
  end

  return index
end

-- Dissect: D C Quote Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_quote_message_modifiable_short_codes_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_modifiable_short_codes_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Quote Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group = {}

-- Size: D C Quote Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.size

-- Display: D C Quote Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group.fields = function(buffer, offset, packet, parent, d_c_quote_message_non_modifiable_short_codes_group_index)
  local index = offset

  -- Implicit D C Quote Message Non Modifiable Short Codes Group Index
  if d_c_quote_message_non_modifiable_short_codes_group_index ~= nil and show.d_c_quote_message_non_modifiable_short_codes_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_non_modifiable_short_codes_group_index, d_c_quote_message_non_modifiable_short_codes_group_index)
    iteration:set_generated()
  end

  -- Original Client Id Short Code: int32_t
  index, original_client_id_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.dissect(buffer, index, packet, parent)

  -- Original Exec W Firm Short Code: int32_t
  index, original_exec_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Original Invest Decis W Firm Short Code: int32_t
  index, original_invest_decis_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Original Non Exec Broker Short Code: int32_t
  index, original_non_exec_broker_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Quote Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group.dissect = function(buffer, offset, packet, parent, d_c_quote_message_non_modifiable_short_codes_group_index)
  if show.d_c_quote_message_non_modifiable_short_codes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_non_modifiable_short_codes_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_quote_message_non_modifiable_short_codes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_quote_message_non_modifiable_short_codes_group_index)
  end
end

-- D C Quote Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups = {}

-- Calculate size of: D C Quote Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_quote_message_non_modifiable_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_quote_message_non_modifiable_short_codes_group_count * 16

  return index
end

-- Display: D C Quote Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Quote Message Non Modifiable Short Codes Group
  for d_c_quote_message_non_modifiable_short_codes_group_index = 1, num_in_group do
    index, d_c_quote_message_non_modifiable_short_codes_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_group.dissect(buffer, index, packet, parent, d_c_quote_message_non_modifiable_short_codes_group_index)
  end

  return index
end

-- Dissect: D C Quote Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_quote_message_non_modifiable_short_codes_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_non_modifiable_short_codes_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Quote Message Clearing Dataset Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group = {}

-- Size: D C Quote Message Clearing Dataset Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_number.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.open_close.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size

-- Display: D C Quote Message Clearing Dataset Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Clearing Dataset Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group.fields = function(buffer, offset, packet, parent, d_c_quote_message_clearing_dataset_group_index)
  local index = offset

  -- Implicit D C Quote Message Clearing Dataset Group Index
  if d_c_quote_message_clearing_dataset_group_index ~= nil and show.d_c_quote_message_clearing_dataset_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_clearing_dataset_group_index, d_c_quote_message_clearing_dataset_group_index)
    iteration:set_generated()
  end

  -- Clearing Firm I D char 8 optional: char8
  index, clearing_firm_i_d_char_8_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect(buffer, index, packet, parent)

  -- Client Id: char8
  index, client_id = euronext_optiq_dropcopygateway_sbe_v5_36.client_id.dissect(buffer, index, packet, parent)

  -- Account Number: char12
  index, account_number = euronext_optiq_dropcopygateway_sbe_v5_36.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: TechnicalOrigin_enum
  index, technical_origin = euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_dropcopygateway_sbe_v5_36.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction Clearing Instructionenum optional: ClearingInstruction_enum
  index, clearing_instruction_clearing_instructionenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Quote Message Clearing Dataset Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group.dissect = function(buffer, offset, packet, parent, d_c_quote_message_clearing_dataset_group_index)
  if show.d_c_quote_message_clearing_dataset_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_clearing_dataset_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group.fields(buffer, offset, packet, parent, d_c_quote_message_clearing_dataset_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group.fields(buffer, offset, packet, parent, d_c_quote_message_clearing_dataset_group_index)
  end
end

-- D C Quote Message Clearing Dataset Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups = {}

-- Calculate size of: D C Quote Message Clearing Dataset Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_quote_message_clearing_dataset_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_quote_message_clearing_dataset_group_count * 51

  return index
end

-- Display: D C Quote Message Clearing Dataset Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Clearing Dataset Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Quote Message Clearing Dataset Group
  for d_c_quote_message_clearing_dataset_group_index = 1, num_in_group do
    index, d_c_quote_message_clearing_dataset_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_group.dissect(buffer, index, packet, parent, d_c_quote_message_clearing_dataset_group_index)
  end

  return index
end

-- Dissect: D C Quote Message Clearing Dataset Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_quote_message_clearing_dataset_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_clearing_dataset_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Quote Message Offer Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group = {}

-- Size: D C Quote Message Offer Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_size.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_px.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_quote_priority.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_order_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.sell_revision_flag.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_error_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_oe_session_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_leaves_quantity.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_size.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_px.size

-- Display: D C Quote Message Offer Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Offer Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group.fields = function(buffer, offset, packet, parent, d_c_quote_message_offer_quoterep_group_index)
  local index = offset

  -- Implicit D C Quote Message Offer Quoterep Group Index
  if d_c_quote_message_offer_quoterep_group_index ~= nil and show.d_c_quote_message_offer_quoterep_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_offer_quoterep_group_index, d_c_quote_message_offer_quoterep_group_index)
    iteration:set_generated()
  end

  -- Offer Size: uint64_t
  index, offer_size = euronext_optiq_dropcopygateway_sbe_v5_36.offer_size.dissect(buffer, index, packet, parent)

  -- Offer Px: int64_t
  index, offer_px = euronext_optiq_dropcopygateway_sbe_v5_36.offer_px.dissect(buffer, index, packet, parent)

  -- Offer Quote Priority: uint64_t
  index, offer_quote_priority = euronext_optiq_dropcopygateway_sbe_v5_36.offer_quote_priority.dissect(buffer, index, packet, parent)

  -- Offer Order Id: uint64_t
  index, offer_order_id = euronext_optiq_dropcopygateway_sbe_v5_36.offer_order_id.dissect(buffer, index, packet, parent)

  -- Sell Revision Flag: SellRevisionIndicator_enum
  index, sell_revision_flag = euronext_optiq_dropcopygateway_sbe_v5_36.sell_revision_flag.dissect(buffer, index, packet, parent)

  -- Offer Error Code: uint16_t
  index, offer_error_code = euronext_optiq_dropcopygateway_sbe_v5_36.offer_error_code.dissect(buffer, index, packet, parent)

  -- Offer Oe Session Id: uint64_t
  index, offer_oe_session_id = euronext_optiq_dropcopygateway_sbe_v5_36.offer_oe_session_id.dissect(buffer, index, packet, parent)

  -- Rfe Answer unsignedchar optional: unsigned_char
  index, rfe_answer_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Offer Leaves Quantity: uint64_t
  index, offer_leaves_quantity = euronext_optiq_dropcopygateway_sbe_v5_36.offer_leaves_quantity.dissect(buffer, index, packet, parent)

  -- Offer Previous Size: uint64_t
  index, offer_previous_size = euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_size.dissect(buffer, index, packet, parent)

  -- Offer Previous Px: int64_t
  index, offer_previous_px = euronext_optiq_dropcopygateway_sbe_v5_36.offer_previous_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Quote Message Offer Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group.dissect = function(buffer, offset, packet, parent, d_c_quote_message_offer_quoterep_group_index)
  if show.d_c_quote_message_offer_quoterep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_offer_quoterep_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group.fields(buffer, offset, packet, parent, d_c_quote_message_offer_quoterep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group.fields(buffer, offset, packet, parent, d_c_quote_message_offer_quoterep_group_index)
  end
end

-- D C Quote Message Offer Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups = {}

-- Calculate size of: D C Quote Message Offer Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_quote_message_offer_quoterep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_quote_message_offer_quoterep_group_count * 68

  return index
end

-- Display: D C Quote Message Offer Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Offer Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Quote Message Offer Quoterep Group
  for d_c_quote_message_offer_quoterep_group_index = 1, num_in_group do
    index, d_c_quote_message_offer_quoterep_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_group.dissect(buffer, index, packet, parent, d_c_quote_message_offer_quoterep_group_index)
  end

  return index
end

-- Dissect: D C Quote Message Offer Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_quote_message_offer_quoterep_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_offer_quoterep_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Quote Message Bid Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group = {}

-- Size: D C Quote Message Bid Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_size.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_px.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_quote_priority.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_order_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.buy_revision_flag.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_error_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_oe_session_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_leaves_quantity.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_size.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_px.size

-- Display: D C Quote Message Bid Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Bid Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group.fields = function(buffer, offset, packet, parent, d_c_quote_message_bid_quoterep_group_index)
  local index = offset

  -- Implicit D C Quote Message Bid Quoterep Group Index
  if d_c_quote_message_bid_quoterep_group_index ~= nil and show.d_c_quote_message_bid_quoterep_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_bid_quoterep_group_index, d_c_quote_message_bid_quoterep_group_index)
    iteration:set_generated()
  end

  -- Bid Size: uint64_t
  index, bid_size = euronext_optiq_dropcopygateway_sbe_v5_36.bid_size.dissect(buffer, index, packet, parent)

  -- Bid Px: int64_t
  index, bid_px = euronext_optiq_dropcopygateway_sbe_v5_36.bid_px.dissect(buffer, index, packet, parent)

  -- Bid Quote Priority: uint64_t
  index, bid_quote_priority = euronext_optiq_dropcopygateway_sbe_v5_36.bid_quote_priority.dissect(buffer, index, packet, parent)

  -- Bid Order Id: uint64_t
  index, bid_order_id = euronext_optiq_dropcopygateway_sbe_v5_36.bid_order_id.dissect(buffer, index, packet, parent)

  -- Buy Revision Flag: BuyRevisionIndicator_enum
  index, buy_revision_flag = euronext_optiq_dropcopygateway_sbe_v5_36.buy_revision_flag.dissect(buffer, index, packet, parent)

  -- Bid Error Code: uint16_t
  index, bid_error_code = euronext_optiq_dropcopygateway_sbe_v5_36.bid_error_code.dissect(buffer, index, packet, parent)

  -- Bid Oe Session Id: uint64_t
  index, bid_oe_session_id = euronext_optiq_dropcopygateway_sbe_v5_36.bid_oe_session_id.dissect(buffer, index, packet, parent)

  -- Rfe Answer unsignedchar optional: unsigned_char
  index, rfe_answer_unsignedchar_optional = euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar_optional.dissect(buffer, index, packet, parent)

  -- Bid Leaves Quantity: uint64_t
  index, bid_leaves_quantity = euronext_optiq_dropcopygateway_sbe_v5_36.bid_leaves_quantity.dissect(buffer, index, packet, parent)

  -- Bid Previous Size: uint64_t
  index, bid_previous_size = euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_size.dissect(buffer, index, packet, parent)

  -- Bid Previous Px: int64_t
  index, bid_previous_px = euronext_optiq_dropcopygateway_sbe_v5_36.bid_previous_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Quote Message Bid Quoterep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group.dissect = function(buffer, offset, packet, parent, d_c_quote_message_bid_quoterep_group_index)
  if show.d_c_quote_message_bid_quoterep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_bid_quoterep_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group.fields(buffer, offset, packet, parent, d_c_quote_message_bid_quoterep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group.fields(buffer, offset, packet, parent, d_c_quote_message_bid_quoterep_group_index)
  end
end

-- D C Quote Message Bid Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups = {}

-- Calculate size of: D C Quote Message Bid Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_quote_message_bid_quoterep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_quote_message_bid_quoterep_group_count * 68

  return index
end

-- Display: D C Quote Message Bid Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Quote Message Bid Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Quote Message Bid Quoterep Group
  for d_c_quote_message_bid_quoterep_group_index = 1, num_in_group do
    index, d_c_quote_message_bid_quoterep_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_group.dissect(buffer, index, packet, parent, d_c_quote_message_bid_quoterep_group_index)
  end

  return index
end

-- Dissect: D C Quote Message Bid Quoterep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_quote_message_bid_quoterep_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_quote_message_bid_quoterep_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.fields(buffer, offset, packet, parent)
  end
end

-- Execution Instruction Execution Instructionset optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional = {}

-- Size: Execution Instruction Execution Instructionset optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.size = 1

-- Display: Execution Instruction Execution Instructionset optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.display = function(range, value, packet, parent)
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
  -- Is Conditional Order flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Conditional Order"
  end
  -- Is Stp Both Orders flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Stp Both Orders"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Execution Instruction Execution Instructionset optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.bits = function(range, value, packet, parent)

  -- Stp Resting Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_resting_order, range, value)

  -- Stp Incoming Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_incoming_order, range, value)

  -- Disclosed Quantity Randomization: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.disclosed_quantity_randomization, range, value)

  -- Disabled Cancel On Disconnect Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.disabled_cancel_on_disconnect_indicator, range, value)

  -- Rfq Answer: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfq_answer, range, value)

  -- Rfq Confirmation: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfq_confirmation, range, value)

  -- Conditional Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.conditional_order, range, value)

  -- Stp Both Orders: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_both_orders, range, value)
end

-- Dissect: Execution Instruction Execution Instructionset optional
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_instruction_execution_instructionset_optional, range, display)

  if show.execution_instruction_execution_instructionset_optional then
    euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mi Fid Indicators Mi Fid Indicatorsset
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset = {}

-- Size: Mi Fid Indicators Mi Fid Indicatorsset
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.size = 1

-- Display: Mi Fid Indicators Mi Fid Indicatorsset
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.display = function(range, value, packet, parent)
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
  -- Is Frmaramplp flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Frmaramplp"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mi Fid Indicators Mi Fid Indicatorsset
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.bits = function(range, value, packet, parent)

  -- Dea Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dea_indicator, range, value)

  -- Investment Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.investment_algo_indicator, range, value)

  -- Execution Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_algo_indicator, range, value)

  -- Commodity Derivative Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.commodity_derivative_indicator, range, value)

  -- Deferral Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.deferral_indicator, range, value)

  -- Frmaramplp: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.frmaramplp, range, value)

  -- Reserved 2: 2 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_2, range, value)
end

-- Dissect: Mi Fid Indicators Mi Fid Indicatorsset
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.mi_fid_indicators_mi_fid_indicatorsset, range, display)

  if show.mi_fid_indicators_mi_fid_indicatorsset then
    euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Dc Quote Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message = {}

-- Calculate size of: Dc Quote Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.stpid.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.size(buffer, offset + index)

  return index
end

-- Display: Dc Quote Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Quote Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Trading Capacity Trading Capacityenum: TradingCapacity_enum
  index, trading_capacity_trading_capacityenum = euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.dissect(buffer, index, packet, parent)

  -- Account Type Account Typeenum: AccountType_enum
  index, account_type_account_typeenum = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.dissect(buffer, index, packet, parent)

  -- Lp Role Lp Roleenum: LPRole_enum
  index, lp_role_lp_roleenum = euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum.dissect(buffer, index, packet, parent)

  -- Mi Fid Indicators Mi Fid Indicatorsset: Struct of 7 fields
  index, mi_fid_indicators_mi_fid_indicatorsset = euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.dissect(buffer, index, packet, parent)

  -- Rfe Answer unsignedchar: unsigned_char
  index, rfe_answer_unsignedchar = euronext_optiq_dropcopygateway_sbe_v5_36.rfe_answer_unsignedchar.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Execution Instruction Execution Instructionset optional: Struct of 8 fields
  index, execution_instruction_execution_instructionset_optional = euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset_optional.dissect(buffer, index, packet, parent)

  -- Stpid: uint16_t
  index, stpid = euronext_optiq_dropcopygateway_sbe_v5_36.stpid.dissect(buffer, index, packet, parent)

  -- D C Quote Message Bid Quoterep Groups: Struct of 2 fields
  index, d_c_quote_message_bid_quoterep_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_bid_quoterep_groups.dissect(buffer, index, packet, parent)

  -- D C Quote Message Offer Quoterep Groups: Struct of 2 fields
  index, d_c_quote_message_offer_quoterep_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_offer_quoterep_groups.dissect(buffer, index, packet, parent)

  -- D C Quote Message Clearing Dataset Groups: Struct of 2 fields
  index, d_c_quote_message_clearing_dataset_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_clearing_dataset_groups.dissect(buffer, index, packet, parent)

  -- D C Quote Message Non Modifiable Short Codes Groups: Struct of 2 fields
  index, d_c_quote_message_non_modifiable_short_codes_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_non_modifiable_short_codes_groups.dissect(buffer, index, packet, parent)

  -- D C Quote Message Modifiable Short Codes Groups: Struct of 2 fields
  index, d_c_quote_message_modifiable_short_codes_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_quote_message_modifiable_short_codes_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Quote Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_quote_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- D C Trade Bust Notification Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group = {}

-- Size: D C Trade Bust Notification Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.size

-- Display: D C Trade Bust Notification Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Trade Bust Notification Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group.fields = function(buffer, offset, packet, parent, d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index)
  local index = offset

  -- Implicit D C Trade Bust Notification Message Short Codes Details Modifiable Group Index
  if d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index ~= nil and show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index, d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index)
    iteration:set_generated()
  end

  -- Event Short Code Type: EventShortCodeType_enum
  index, event_short_code_type = euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.dissect(buffer, index, packet, parent)

  -- Short Code Role: ShortCodeRole_enum
  index, short_code_role = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.dissect(buffer, index, packet, parent)

  -- Short Code Role Qualifier: ShortCodeRoleQualifier_enum
  index, short_code_role_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Trade Bust Notification Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group.dissect = function(buffer, offset, packet, parent, d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index)
  if show.d_c_trade_bust_notification_message_short_codes_details_modifiable_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_modifiable_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group.fields(buffer, offset, packet, parent, d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group.fields(buffer, offset, packet, parent, d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index)
  end
end

-- D C Trade Bust Notification Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups = {}

-- Calculate size of: D C Trade Bust Notification Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_trade_bust_notification_message_short_codes_details_modifiable_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_trade_bust_notification_message_short_codes_details_modifiable_group_count * 3

  return index
end

-- Display: D C Trade Bust Notification Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Trade Bust Notification Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Trade Bust Notification Message Short Codes Details Modifiable Group
  for d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index = 1, num_in_group do
    index, d_c_trade_bust_notification_message_short_codes_details_modifiable_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_group.dissect(buffer, index, packet, parent, d_c_trade_bust_notification_message_short_codes_details_modifiable_group_index)
  end

  return index
end

-- Dissect: D C Trade Bust Notification Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Trade Bust Notification Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group = {}

-- Size: D C Trade Bust Notification Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.size

-- Display: D C Trade Bust Notification Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Trade Bust Notification Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group.fields = function(buffer, offset, packet, parent, d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index)
  local index = offset

  -- Implicit D C Trade Bust Notification Message Short Codes Details Non Modifiable Group Index
  if d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index ~= nil and show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index, d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index)
    iteration:set_generated()
  end

  -- Original Short Code Type: OriginalShortCodeType_enum
  index, original_short_code_type = euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.dissect(buffer, index, packet, parent)

  -- Short Code Role: ShortCodeRole_enum
  index, short_code_role = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.dissect(buffer, index, packet, parent)

  -- Short Code Role Qualifier: ShortCodeRoleQualifier_enum
  index, short_code_role_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Trade Bust Notification Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group.dissect = function(buffer, offset, packet, parent, d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index)
  if show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group.fields(buffer, offset, packet, parent, d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group.fields(buffer, offset, packet, parent, d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index)
  end
end

-- D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups = {}

-- Calculate size of: D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_count * 3

  return index
end

-- Display: D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Trade Bust Notification Message Short Codes Details Non Modifiable Group
  for d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index = 1, num_in_group do
    index, d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group.dissect(buffer, index, packet, parent, d_c_trade_bust_notification_message_short_codes_details_non_modifiable_group_index)
  end

  return index
end

-- Dissect: D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.fields(buffer, offset, packet, parent)
  end
end

-- Dc Trade Bust Notification Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message = {}

-- Calculate size of: Dc Trade Bust Notification Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.account_number.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.open_close.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.parent_exec_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.parent_symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.parent_trade_unique_identifier.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.size(buffer, offset + index)

  return index
end

-- Display: Dc Trade Bust Notification Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Trade Bust Notification Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oe Session I D uint 64t: uint64_t
  index, oe_session_i_d_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.dissect(buffer, index, packet, parent)

  -- Order Side Order Sideenum: OrderSide_enum
  index, order_side_order_sideenum = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Book In Time: uint64_t
  index, book_in_time = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_time.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Execution I D uint 32t: uint32_t
  index, execution_i_d_uint_32t = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.dissect(buffer, index, packet, parent)

  -- Last Shares uint 64t: uint64_t
  index, last_shares_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.dissect(buffer, index, packet, parent)

  -- Last Traded Px int 64t: int64_t
  index, last_traded_px_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.dissect(buffer, index, packet, parent)

  -- Order Id: uint64_t
  index, order_id = euronext_optiq_dropcopygateway_sbe_v5_36.order_id.dissect(buffer, index, packet, parent)

  -- Mi Fid Indicators Mi Fid Indicatorsset: Struct of 7 fields
  index, mi_fid_indicators_mi_fid_indicatorsset = euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.dissect(buffer, index, packet, parent)

  -- Clearing Firm I D char 8: char8
  index, clearing_firm_i_d_char_8 = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8.dissect(buffer, index, packet, parent)

  -- Trading Capacity Trading Capacityenum: TradingCapacity_enum
  index, trading_capacity_trading_capacityenum = euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t: uint64_t
  index, oegin_from_member_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t.dissect(buffer, index, packet, parent)

  -- Execution Phase Execution Phaseenum: ExecutionPhase_enum
  index, execution_phase_execution_phaseenum = euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum.dissect(buffer, index, packet, parent)

  -- Trade Qualifier Trade Qualifierset: Struct of 8 fields
  index, trade_qualifier_trade_qualifierset = euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset.dissect(buffer, index, packet, parent)

  -- Counterpart Firm Id: char8
  index, counterpart_firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.dissect(buffer, index, packet, parent)

  -- Order Type: OrderType_enum
  index, order_type = euronext_optiq_dropcopygateway_sbe_v5_36.order_type.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Forceenum optional: TimeInForce_enum
  index, time_in_force_time_in_forceenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.dissect(buffer, index, packet, parent)

  -- Clearing Instruction Clearing Instructionenum optional: ClearingInstruction_enum
  index, clearing_instruction_clearing_instructionenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.dissect(buffer, index, packet, parent)

  -- Technical Origin: TechnicalOrigin_enum
  index, technical_origin = euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.dissect(buffer, index, packet, parent)

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  -- Account Number: char12
  index, account_number = euronext_optiq_dropcopygateway_sbe_v5_36.account_number.dissect(buffer, index, packet, parent)

  -- Account Type Account Typeenum: AccountType_enum
  index, account_type_account_typeenum = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_account_typeenum.dissect(buffer, index, packet, parent)

  -- Lp Role Lp Roleenum optional: LPRole_enum
  index, lp_role_lp_roleenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_dropcopygateway_sbe_v5_36.open_close.dissect(buffer, index, packet, parent)

  -- Original Invest Decis W Firm Short Code: int32_t
  index, original_invest_decis_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Original Non Exec Broker Short Code: int32_t
  index, original_non_exec_broker_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.dissect(buffer, index, packet, parent)

  -- Event Client Id Short Code: int32_t
  index, event_client_id_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.dissect(buffer, index, packet, parent)

  -- Event Exec W Firm Short Code: int32_t
  index, event_exec_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Original Client Id Short Code: int32_t
  index, original_client_id_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.dissect(buffer, index, packet, parent)

  -- Original Exec W Firm Short Code: int32_t
  index, original_exec_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Clearing Account: char16
  index, clearing_account = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect(buffer, index, packet, parent)

  -- Lis Transaction Id: uint32_t
  index, lis_transaction_id = euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.dissect(buffer, index, packet, parent)

  -- Parent Exec Id: uint32_t
  index, parent_exec_id = euronext_optiq_dropcopygateway_sbe_v5_36.parent_exec_id.dissect(buffer, index, packet, parent)

  -- Parent Symbol Index: uint32_t
  index, parent_symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.parent_symbol_index.dissect(buffer, index, packet, parent)

  -- Trade Unique Identifier: char16
  index, trade_unique_identifier = euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.dissect(buffer, index, packet, parent)

  -- Parent Trade Unique Identifier: char16
  index, parent_trade_unique_identifier = euronext_optiq_dropcopygateway_sbe_v5_36.parent_trade_unique_identifier.dissect(buffer, index, packet, parent)

  -- D C Trade Bust Notification Message Short Codes Details Non Modifiable Groups: Struct of 2 fields
  index, d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_non_modifiable_groups.dissect(buffer, index, packet, parent)

  -- D C Trade Bust Notification Message Short Codes Details Modifiable Groups: Struct of 2 fields
  index, d_c_trade_bust_notification_message_short_codes_details_modifiable_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_trade_bust_notification_message_short_codes_details_modifiable_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Trade Bust Notification Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_trade_bust_notification_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- D C Static Collars Message Static Collarsrep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group = {}

-- Size: D C Static Collars Message Static Collarsrep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.update_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.size

-- Display: D C Static Collars Message Static Collarsrep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Static Collars Message Static Collarsrep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group.fields = function(buffer, offset, packet, parent, d_c_static_collars_message_static_collarsrep_group_index)
  local index = offset

  -- Implicit D C Static Collars Message Static Collarsrep Group Index
  if d_c_static_collars_message_static_collarsrep_group_index ~= nil and show.d_c_static_collars_message_static_collarsrep_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_static_collars_message_static_collarsrep_group_index, d_c_static_collars_message_static_collarsrep_group_index)
    iteration:set_generated()
  end

  -- Update Type: MarketDataUpdateType_enum
  index, update_type = euronext_optiq_dropcopygateway_sbe_v5_36.update_type.dissect(buffer, index, packet, parent)

  -- Price int 64t: int64_t
  index, price_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Static Collars Message Static Collarsrep Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group.dissect = function(buffer, offset, packet, parent, d_c_static_collars_message_static_collarsrep_group_index)
  if show.d_c_static_collars_message_static_collarsrep_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_static_collars_message_static_collarsrep_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group.fields(buffer, offset, packet, parent, d_c_static_collars_message_static_collarsrep_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group.fields(buffer, offset, packet, parent, d_c_static_collars_message_static_collarsrep_group_index)
  end
end

-- D C Static Collars Message Static Collarsrep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups = {}

-- Calculate size of: D C Static Collars Message Static Collarsrep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_static_collars_message_static_collarsrep_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_static_collars_message_static_collarsrep_group_count * 9

  return index
end

-- Display: D C Static Collars Message Static Collarsrep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Static Collars Message Static Collarsrep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Static Collars Message Static Collarsrep Group
  for d_c_static_collars_message_static_collarsrep_group_index = 1, num_in_group do
    index, d_c_static_collars_message_static_collarsrep_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_group.dissect(buffer, index, packet, parent, d_c_static_collars_message_static_collarsrep_group_index)
  end

  return index
end

-- Dissect: D C Static Collars Message Static Collarsrep Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_static_collars_message_static_collarsrep_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_static_collars_message_static_collarsrep_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.fields(buffer, offset, packet, parent)
  end
end

-- Dc Static Collars Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message = {}

-- Calculate size of: Dc Static Collars Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.size(buffer, offset + index)

  return index
end

-- Display: Dc Static Collars Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Static Collars Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- D C Static Collars Message Static Collarsrep Groups: Struct of 2 fields
  index, d_c_static_collars_message_static_collarsrep_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_static_collars_message_static_collarsrep_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Static Collars Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_static_collars_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Short Trade Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message = {}

-- Size: Dc Short Trade Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.size

-- Display: Dc Short Trade Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Short Trade Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Execution I D uint 32t: uint32_t
  index, execution_i_d_uint_32t = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Last Traded Px int 64t: int64_t
  index, last_traded_px_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t.dissect(buffer, index, packet, parent)

  -- Last Shares uint 64t: uint64_t
  index, last_shares_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t.dissect(buffer, index, packet, parent)

  -- Trade Unique Identifier: char16
  index, trade_unique_identifier = euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Short Trade Cancellation Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_trade_cancellation_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- D C Short Order Reject Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group = {}

-- Size: D C Short Order Reject Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.size

-- Display: D C Short Order Reject Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Short Order Reject Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group.fields = function(buffer, offset, packet, parent, d_c_short_order_reject_message_short_codes_details_modifiable_group_index)
  local index = offset

  -- Implicit D C Short Order Reject Message Short Codes Details Modifiable Group Index
  if d_c_short_order_reject_message_short_codes_details_modifiable_group_index ~= nil and show.d_c_short_order_reject_message_short_codes_details_modifiable_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_short_codes_details_modifiable_group_index, d_c_short_order_reject_message_short_codes_details_modifiable_group_index)
    iteration:set_generated()
  end

  -- Event Short Code Type: EventShortCodeType_enum
  index, event_short_code_type = euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.dissect(buffer, index, packet, parent)

  -- Short Code Role: ShortCodeRole_enum
  index, short_code_role = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.dissect(buffer, index, packet, parent)

  -- Short Code Role Qualifier: ShortCodeRoleQualifier_enum
  index, short_code_role_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Short Order Reject Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group.dissect = function(buffer, offset, packet, parent, d_c_short_order_reject_message_short_codes_details_modifiable_group_index)
  if show.d_c_short_order_reject_message_short_codes_details_modifiable_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_short_codes_details_modifiable_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group.fields(buffer, offset, packet, parent, d_c_short_order_reject_message_short_codes_details_modifiable_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group.fields(buffer, offset, packet, parent, d_c_short_order_reject_message_short_codes_details_modifiable_group_index)
  end
end

-- D C Short Order Reject Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups = {}

-- Calculate size of: D C Short Order Reject Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_short_order_reject_message_short_codes_details_modifiable_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_short_order_reject_message_short_codes_details_modifiable_group_count * 3

  return index
end

-- Display: D C Short Order Reject Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Short Order Reject Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Short Order Reject Message Short Codes Details Modifiable Group
  for d_c_short_order_reject_message_short_codes_details_modifiable_group_index = 1, num_in_group do
    index, d_c_short_order_reject_message_short_codes_details_modifiable_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_group.dissect(buffer, index, packet, parent, d_c_short_order_reject_message_short_codes_details_modifiable_group_index)
  end

  return index
end

-- Dissect: D C Short Order Reject Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_short_order_reject_message_short_codes_details_modifiable_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_short_codes_details_modifiable_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Short Order Reject Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group = {}

-- Size: D C Short Order Reject Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.size

-- Display: D C Short Order Reject Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Short Order Reject Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group.fields = function(buffer, offset, packet, parent, d_c_short_order_reject_message_modifiable_short_codes_group_index)
  local index = offset

  -- Implicit D C Short Order Reject Message Modifiable Short Codes Group Index
  if d_c_short_order_reject_message_modifiable_short_codes_group_index ~= nil and show.d_c_short_order_reject_message_modifiable_short_codes_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_modifiable_short_codes_group_index, d_c_short_order_reject_message_modifiable_short_codes_group_index)
    iteration:set_generated()
  end

  -- Event Client Id Short Code: int32_t
  index, event_client_id_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.dissect(buffer, index, packet, parent)

  -- Event Exec W Firm Short Code: int32_t
  index, event_exec_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Short Order Reject Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group.dissect = function(buffer, offset, packet, parent, d_c_short_order_reject_message_modifiable_short_codes_group_index)
  if show.d_c_short_order_reject_message_modifiable_short_codes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_modifiable_short_codes_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_short_order_reject_message_modifiable_short_codes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_short_order_reject_message_modifiable_short_codes_group_index)
  end
end

-- D C Short Order Reject Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups = {}

-- Calculate size of: D C Short Order Reject Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_short_order_reject_message_modifiable_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_short_order_reject_message_modifiable_short_codes_group_count * 8

  return index
end

-- Display: D C Short Order Reject Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Short Order Reject Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Short Order Reject Message Modifiable Short Codes Group
  for d_c_short_order_reject_message_modifiable_short_codes_group_index = 1, num_in_group do
    index, d_c_short_order_reject_message_modifiable_short_codes_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_group.dissect(buffer, index, packet, parent, d_c_short_order_reject_message_modifiable_short_codes_group_index)
  end

  return index
end

-- Dissect: D C Short Order Reject Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_short_order_reject_message_modifiable_short_codes_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_short_order_reject_message_modifiable_short_codes_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
  end
end

-- Mi Fid Indicators Mi Fid Indicatorsset optional
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional = {}

-- Size: Mi Fid Indicators Mi Fid Indicatorsset optional
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.size = 1

-- Display: Mi Fid Indicators Mi Fid Indicatorsset optional
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.display = function(range, value, packet, parent)
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
  -- Is Frmaramplp flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Frmaramplp"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mi Fid Indicators Mi Fid Indicatorsset optional
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.bits = function(range, value, packet, parent)

  -- Dea Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dea_indicator, range, value)

  -- Investment Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.investment_algo_indicator, range, value)

  -- Execution Algo Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_algo_indicator, range, value)

  -- Commodity Derivative Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.commodity_derivative_indicator, range, value)

  -- Deferral Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.deferral_indicator, range, value)

  -- Frmaramplp: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.frmaramplp, range, value)

  -- Reserved 2: 2 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_2, range, value)
end

-- Dissect: Mi Fid Indicators Mi Fid Indicatorsset optional
euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.mi_fid_indicators_mi_fid_indicatorsset_optional, range, display)

  if show.mi_fid_indicators_mi_fid_indicatorsset_optional then
    euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Dc Short Order Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message = {}

-- Calculate size of: Dc Short Order Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.size(buffer, offset + index)

  return index
end

-- Display: Dc Short Order Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Short Order Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Order Event Type: OrderEventType_enum
  index, order_event_type = euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.dissect(buffer, index, packet, parent)

  -- Book In uint 64t: uint64_t
  index, book_in_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t: uint64_t
  index, book_out_time_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t: int64_t
  index, client_order_i_d_int_64t = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t optional: uint64_t
  index, oegin_from_member_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Oegout Time To M E uint 64t: uint64_t
  index, oegout_time_to_m_e_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t.dissect(buffer, index, packet, parent)

  -- Order Id: uint64_t
  index, order_id = euronext_optiq_dropcopygateway_sbe_v5_36.order_id.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Breached Collar Price: int64_t
  index, breached_collar_price = euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.dissect(buffer, index, packet, parent)

  -- Collar Rej Type: CollarRejectionType_enum
  index, collar_rej_type = euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.dissect(buffer, index, packet, parent)

  -- Rejected Message: unsigned_char
  index, rejected_message = euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.dissect(buffer, index, packet, parent)

  -- Error Code uint 16t: uint16_t
  index, error_code_uint_16t = euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t.dissect(buffer, index, packet, parent)

  -- Mi Fid Indicators Mi Fid Indicatorsset optional: Struct of 7 fields
  index, mi_fid_indicators_mi_fid_indicatorsset_optional = euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset_optional.dissect(buffer, index, packet, parent)

  -- Oe Session I D uint 64t optional: uint64_t
  index, oe_session_i_d_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Order Side Order Sideenum optional: OrderSide_enum
  index, order_side_order_sideenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum_optional.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Forceenum optional: TimeInForce_enum
  index, time_in_force_time_in_forceenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum_optional.dissect(buffer, index, packet, parent)

  -- D C Short Order Reject Message Modifiable Short Codes Groups: Struct of 2 fields
  index, d_c_short_order_reject_message_modifiable_short_codes_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_modifiable_short_codes_groups.dissect(buffer, index, packet, parent)

  -- D C Short Order Reject Message Short Codes Details Modifiable Groups: Struct of 2 fields
  index, d_c_short_order_reject_message_short_codes_details_modifiable_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_short_order_reject_message_short_codes_details_modifiable_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Short Order Reject Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_short_order_reject_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group = {}

-- Size: D C Long Order Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.size

-- Display: D C Long Order Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_short_codes_details_modifiable_group_index)
  local index = offset

  -- Implicit D C Long Order Message Short Codes Details Modifiable Group Index
  if d_c_long_order_message_short_codes_details_modifiable_group_index ~= nil and show.d_c_long_order_message_short_codes_details_modifiable_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_modifiable_group_index, d_c_long_order_message_short_codes_details_modifiable_group_index)
    iteration:set_generated()
  end

  -- Event Short Code Type: EventShortCodeType_enum
  index, event_short_code_type = euronext_optiq_dropcopygateway_sbe_v5_36.event_short_code_type.dissect(buffer, index, packet, parent)

  -- Short Code Role: ShortCodeRole_enum
  index, short_code_role = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.dissect(buffer, index, packet, parent)

  -- Short Code Role Qualifier: ShortCodeRoleQualifier_enum
  index, short_code_role_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Short Codes Details Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_short_codes_details_modifiable_group_index)
  if show.d_c_long_order_message_short_codes_details_modifiable_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_modifiable_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group.fields(buffer, offset, packet, parent, d_c_long_order_message_short_codes_details_modifiable_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group.fields(buffer, offset, packet, parent, d_c_long_order_message_short_codes_details_modifiable_group_index)
  end
end

-- D C Long Order Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups = {}

-- Calculate size of: D C Long Order Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_short_codes_details_modifiable_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_short_codes_details_modifiable_group_count * 3

  return index
end

-- Display: D C Long Order Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Short Codes Details Modifiable Group
  for d_c_long_order_message_short_codes_details_modifiable_group_index = 1, num_in_group do
    index, d_c_long_order_message_short_codes_details_modifiable_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_group.dissect(buffer, index, packet, parent, d_c_long_order_message_short_codes_details_modifiable_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Short Codes Details Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_short_codes_details_modifiable_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_modifiable_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group = {}

-- Size: D C Long Order Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.size

-- Display: D C Long Order Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_short_codes_details_non_modifiable_group_index)
  local index = offset

  -- Implicit D C Long Order Message Short Codes Details Non Modifiable Group Index
  if d_c_long_order_message_short_codes_details_non_modifiable_group_index ~= nil and show.d_c_long_order_message_short_codes_details_non_modifiable_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_non_modifiable_group_index, d_c_long_order_message_short_codes_details_non_modifiable_group_index)
    iteration:set_generated()
  end

  -- Original Short Code Type: OriginalShortCodeType_enum
  index, original_short_code_type = euronext_optiq_dropcopygateway_sbe_v5_36.original_short_code_type.dissect(buffer, index, packet, parent)

  -- Short Code Role: ShortCodeRole_enum
  index, short_code_role = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role.dissect(buffer, index, packet, parent)

  -- Short Code Role Qualifier: ShortCodeRoleQualifier_enum
  index, short_code_role_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.short_code_role_qualifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Short Codes Details Non Modifiable Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_short_codes_details_non_modifiable_group_index)
  if show.d_c_long_order_message_short_codes_details_non_modifiable_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_non_modifiable_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group.fields(buffer, offset, packet, parent, d_c_long_order_message_short_codes_details_non_modifiable_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group.fields(buffer, offset, packet, parent, d_c_long_order_message_short_codes_details_non_modifiable_group_index)
  end
end

-- D C Long Order Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups = {}

-- Calculate size of: D C Long Order Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_short_codes_details_non_modifiable_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_short_codes_details_non_modifiable_group_count * 3

  return index
end

-- Display: D C Long Order Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Short Codes Details Non Modifiable Group
  for d_c_long_order_message_short_codes_details_non_modifiable_group_index = 1, num_in_group do
    index, d_c_long_order_message_short_codes_details_non_modifiable_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_group.dissect(buffer, index, packet, parent, d_c_long_order_message_short_codes_details_non_modifiable_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Short Codes Details Non Modifiable Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_short_codes_details_non_modifiable_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_short_codes_details_non_modifiable_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Additional Infos Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group = {}

-- Size: D C Long Order Message Additional Infos Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.long_client_id.size

-- Display: D C Long Order Message Additional Infos Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Additional Infos Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_additional_infos_group_index)
  local index = offset

  -- Implicit D C Long Order Message Additional Infos Group Index
  if d_c_long_order_message_additional_infos_group_index ~= nil and show.d_c_long_order_message_additional_infos_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_additional_infos_group_index, d_c_long_order_message_additional_infos_group_index)
    iteration:set_generated()
  end

  -- Long Client Id: char16
  index, long_client_id = euronext_optiq_dropcopygateway_sbe_v5_36.long_client_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Additional Infos Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_additional_infos_group_index)
  if show.d_c_long_order_message_additional_infos_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_additional_infos_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group.fields(buffer, offset, packet, parent, d_c_long_order_message_additional_infos_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group.fields(buffer, offset, packet, parent, d_c_long_order_message_additional_infos_group_index)
  end
end

-- D C Long Order Message Additional Infos Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups = {}

-- Calculate size of: D C Long Order Message Additional Infos Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_additional_infos_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_additional_infos_group_count * 16

  return index
end

-- Display: D C Long Order Message Additional Infos Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Additional Infos Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Additional Infos Group
  for d_c_long_order_message_additional_infos_group_index = 1, num_in_group do
    index, d_c_long_order_message_additional_infos_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_group.dissect(buffer, index, packet, parent, d_c_long_order_message_additional_infos_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Additional Infos Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_additional_infos_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_additional_infos_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Optional Fields Derivatives Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group = {}

-- Size: D C Long Order Message Optional Fields Derivatives Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.evaluated_price.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.message_price_notation.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.final_symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.final_execution_id.size

-- Display: D C Long Order Message Optional Fields Derivatives Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Optional Fields Derivatives Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_optional_fields_derivatives_group_index)
  local index = offset

  -- Implicit D C Long Order Message Optional Fields Derivatives Group Index
  if d_c_long_order_message_optional_fields_derivatives_group_index ~= nil and show.d_c_long_order_message_optional_fields_derivatives_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_derivatives_group_index, d_c_long_order_message_optional_fields_derivatives_group_index)
    iteration:set_generated()
  end

  -- Evaluated Price: int64_t
  index, evaluated_price = euronext_optiq_dropcopygateway_sbe_v5_36.evaluated_price.dissect(buffer, index, packet, parent)

  -- Message Price Notation: MessagePriceNotation_enum
  index, message_price_notation = euronext_optiq_dropcopygateway_sbe_v5_36.message_price_notation.dissect(buffer, index, packet, parent)

  -- Final Symbol Index: uint32_t
  index, final_symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.final_symbol_index.dissect(buffer, index, packet, parent)

  -- Final Execution Id: uint32_t
  index, final_execution_id = euronext_optiq_dropcopygateway_sbe_v5_36.final_execution_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Optional Fields Derivatives Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_optional_fields_derivatives_group_index)
  if show.d_c_long_order_message_optional_fields_derivatives_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_derivatives_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group.fields(buffer, offset, packet, parent, d_c_long_order_message_optional_fields_derivatives_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group.fields(buffer, offset, packet, parent, d_c_long_order_message_optional_fields_derivatives_group_index)
  end
end

-- D C Long Order Message Optional Fields Derivatives Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups = {}

-- Calculate size of: D C Long Order Message Optional Fields Derivatives Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_optional_fields_derivatives_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_optional_fields_derivatives_group_count * 17

  return index
end

-- Display: D C Long Order Message Optional Fields Derivatives Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Optional Fields Derivatives Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Optional Fields Derivatives Group
  for d_c_long_order_message_optional_fields_derivatives_group_index = 1, num_in_group do
    index, d_c_long_order_message_optional_fields_derivatives_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_group.dissect(buffer, index, packet, parent, d_c_long_order_message_optional_fields_derivatives_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Optional Fields Derivatives Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_optional_fields_derivatives_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_derivatives_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Strategy Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group = {}

-- Size: D C Long Order Message Strategy Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_px.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_qty.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.leg_instrument_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.leg_side.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.size

-- Display: D C Long Order Message Strategy Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Strategy Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_strategy_fields_group_index)
  local index = offset

  -- Implicit D C Long Order Message Strategy Fields Group Index
  if d_c_long_order_message_strategy_fields_group_index ~= nil and show.d_c_long_order_message_strategy_fields_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_strategy_fields_group_index, d_c_long_order_message_strategy_fields_group_index)
    iteration:set_generated()
  end

  -- Leg Last Px: int64_t
  index, leg_last_px = euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_px.dissect(buffer, index, packet, parent)

  -- Leg Last Qty: uint64_t
  index, leg_last_qty = euronext_optiq_dropcopygateway_sbe_v5_36.leg_last_qty.dissect(buffer, index, packet, parent)

  -- Leg Instrument Id: uint32_t
  index, leg_instrument_id = euronext_optiq_dropcopygateway_sbe_v5_36.leg_instrument_id.dissect(buffer, index, packet, parent)

  -- Leg Side: LegSide_enum
  index, leg_side = euronext_optiq_dropcopygateway_sbe_v5_36.leg_side.dissect(buffer, index, packet, parent)

  -- Execution I D uint 32t optional: uint32_t
  index, execution_i_d_uint_32t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.dissect(buffer, index, packet, parent)

  -- Trade Unique Identifier: char16
  index, trade_unique_identifier = euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Strategy Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_strategy_fields_group_index)
  if show.d_c_long_order_message_strategy_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_strategy_fields_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_strategy_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_strategy_fields_group_index)
  end
end

-- D C Long Order Message Strategy Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups = {}

-- Calculate size of: D C Long Order Message Strategy Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_strategy_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_strategy_fields_group_count * 41

  return index
end

-- Display: D C Long Order Message Strategy Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Strategy Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Strategy Fields Group
  for d_c_long_order_message_strategy_fields_group_index = 1, num_in_group do
    index, d_c_long_order_message_strategy_fields_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_group.dissect(buffer, index, packet, parent, d_c_long_order_message_strategy_fields_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Strategy Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_strategy_fields_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_strategy_fields_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Extended Clearing Account Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group = {}

-- Size: D C Long Order Message Extended Clearing Account Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.size

-- Display: D C Long Order Message Extended Clearing Account Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Extended Clearing Account Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_extended_clearing_account_group_index)
  local index = offset

  -- Implicit D C Long Order Message Extended Clearing Account Group Index
  if d_c_long_order_message_extended_clearing_account_group_index ~= nil and show.d_c_long_order_message_extended_clearing_account_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_extended_clearing_account_group_index, d_c_long_order_message_extended_clearing_account_group_index)
    iteration:set_generated()
  end

  -- Clearing Account: char16
  index, clearing_account = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Extended Clearing Account Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_extended_clearing_account_group_index)
  if show.d_c_long_order_message_extended_clearing_account_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_extended_clearing_account_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group.fields(buffer, offset, packet, parent, d_c_long_order_message_extended_clearing_account_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group.fields(buffer, offset, packet, parent, d_c_long_order_message_extended_clearing_account_group_index)
  end
end

-- D C Long Order Message Extended Clearing Account Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups = {}

-- Calculate size of: D C Long Order Message Extended Clearing Account Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_extended_clearing_account_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_extended_clearing_account_group_count * 16

  return index
end

-- Display: D C Long Order Message Extended Clearing Account Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Extended Clearing Account Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Extended Clearing Account Group
  for d_c_long_order_message_extended_clearing_account_group_index = 1, num_in_group do
    index, d_c_long_order_message_extended_clearing_account_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_group.dissect(buffer, index, packet, parent, d_c_long_order_message_extended_clearing_account_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Extended Clearing Account Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_extended_clearing_account_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_extended_clearing_account_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Non Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group = {}

-- Size: D C Long Order Message Non Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.size

-- Display: D C Long Order Message Non Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Non Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_commercial_investor_field_group_index)
  local index = offset

  -- Implicit D C Long Order Message Non Modifiable Commercial Investor Field Group Index
  if d_c_long_order_message_non_modifiable_commercial_investor_field_group_index ~= nil and show.d_c_long_order_message_non_modifiable_commercial_investor_field_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_commercial_investor_field_group_index, d_c_long_order_message_non_modifiable_commercial_investor_field_group_index)
    iteration:set_generated()
  end

  -- Original Investor Id: char16
  index, original_investor_id = euronext_optiq_dropcopygateway_sbe_v5_36.original_investor_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Non Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_commercial_investor_field_group_index)
  if show.d_c_long_order_message_non_modifiable_commercial_investor_field_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_commercial_investor_field_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group.fields(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_commercial_investor_field_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group.fields(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_commercial_investor_field_group_index)
  end
end

-- D C Long Order Message Non Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups = {}

-- Calculate size of: D C Long Order Message Non Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_non_modifiable_commercial_investor_field_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_non_modifiable_commercial_investor_field_group_count * 16

  return index
end

-- Display: D C Long Order Message Non Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Non Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Non Modifiable Commercial Investor Field Group
  for d_c_long_order_message_non_modifiable_commercial_investor_field_group_index = 1, num_in_group do
    index, d_c_long_order_message_non_modifiable_commercial_investor_field_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_group.dissect(buffer, index, packet, parent, d_c_long_order_message_non_modifiable_commercial_investor_field_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Non Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_non_modifiable_commercial_investor_field_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_commercial_investor_field_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group = {}

-- Size: D C Long Order Message Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.event_investor_id.size

-- Display: D C Long Order Message Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_modifiable_commercial_investor_field_group_index)
  local index = offset

  -- Implicit D C Long Order Message Modifiable Commercial Investor Field Group Index
  if d_c_long_order_message_modifiable_commercial_investor_field_group_index ~= nil and show.d_c_long_order_message_modifiable_commercial_investor_field_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_commercial_investor_field_group_index, d_c_long_order_message_modifiable_commercial_investor_field_group_index)
    iteration:set_generated()
  end

  -- Event Investor Id: char16
  index, event_investor_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_investor_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Modifiable Commercial Investor Field Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_modifiable_commercial_investor_field_group_index)
  if show.d_c_long_order_message_modifiable_commercial_investor_field_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_commercial_investor_field_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group.fields(buffer, offset, packet, parent, d_c_long_order_message_modifiable_commercial_investor_field_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group.fields(buffer, offset, packet, parent, d_c_long_order_message_modifiable_commercial_investor_field_group_index)
  end
end

-- D C Long Order Message Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups = {}

-- Calculate size of: D C Long Order Message Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_modifiable_commercial_investor_field_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_modifiable_commercial_investor_field_group_count * 16

  return index
end

-- Display: D C Long Order Message Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Modifiable Commercial Investor Field Group
  for d_c_long_order_message_modifiable_commercial_investor_field_group_index = 1, num_in_group do
    index, d_c_long_order_message_modifiable_commercial_investor_field_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_group.dissect(buffer, index, packet, parent, d_c_long_order_message_modifiable_commercial_investor_field_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Modifiable Commercial Investor Field Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_modifiable_commercial_investor_field_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_commercial_investor_field_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Commercial Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group = {}

-- Size: D C Long Order Message Commercial Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.market_phase_flag.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.margin_trading_flag.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.access_flag.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.sender_location_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.desk_id.size

-- Display: D C Long Order Message Commercial Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Commercial Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_commercial_fields_group_index)
  local index = offset

  -- Implicit D C Long Order Message Commercial Fields Group Index
  if d_c_long_order_message_commercial_fields_group_index ~= nil and show.d_c_long_order_message_commercial_fields_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_commercial_fields_group_index, d_c_long_order_message_commercial_fields_group_index)
    iteration:set_generated()
  end

  -- Market Phase Flag: MarketPhaseFlag_enum
  index, market_phase_flag = euronext_optiq_dropcopygateway_sbe_v5_36.market_phase_flag.dissect(buffer, index, packet, parent)

  -- Margin Trading Flag: MarginTradingFlag_enum
  index, margin_trading_flag = euronext_optiq_dropcopygateway_sbe_v5_36.margin_trading_flag.dissect(buffer, index, packet, parent)

  -- Access Flag: unsigned_char
  index, access_flag = euronext_optiq_dropcopygateway_sbe_v5_36.access_flag.dissect(buffer, index, packet, parent)

  -- Trader Id: char16
  index, trader_id = euronext_optiq_dropcopygateway_sbe_v5_36.trader_id.dissect(buffer, index, packet, parent)

  -- Sender Location Id: char11
  index, sender_location_id = euronext_optiq_dropcopygateway_sbe_v5_36.sender_location_id.dissect(buffer, index, packet, parent)

  -- Desk Id: char11
  index, desk_id = euronext_optiq_dropcopygateway_sbe_v5_36.desk_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Commercial Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_commercial_fields_group_index)
  if show.d_c_long_order_message_commercial_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_commercial_fields_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_commercial_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_commercial_fields_group_index)
  end
end

-- D C Long Order Message Commercial Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups = {}

-- Calculate size of: D C Long Order Message Commercial Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_commercial_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_commercial_fields_group_count * 41

  return index
end

-- Display: D C Long Order Message Commercial Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Commercial Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Commercial Fields Group
  for d_c_long_order_message_commercial_fields_group_index = 1, num_in_group do
    index, d_c_long_order_message_commercial_fields_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_group.dissect(buffer, index, packet, parent, d_c_long_order_message_commercial_fields_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Commercial Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_commercial_fields_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_commercial_fields_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group = {}

-- Size: D C Long Order Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.size

-- Display: D C Long Order Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_modifiable_short_codes_group_index)
  local index = offset

  -- Implicit D C Long Order Message Modifiable Short Codes Group Index
  if d_c_long_order_message_modifiable_short_codes_group_index ~= nil and show.d_c_long_order_message_modifiable_short_codes_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_short_codes_group_index, d_c_long_order_message_modifiable_short_codes_group_index)
    iteration:set_generated()
  end

  -- Event Client Id Short Code: int32_t
  index, event_client_id_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.event_client_id_short_code.dissect(buffer, index, packet, parent)

  -- Event Exec W Firm Short Code: int32_t
  index, event_exec_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.event_exec_w_firm_short_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_modifiable_short_codes_group_index)
  if show.d_c_long_order_message_modifiable_short_codes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_short_codes_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_long_order_message_modifiable_short_codes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_long_order_message_modifiable_short_codes_group_index)
  end
end

-- D C Long Order Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups = {}

-- Calculate size of: D C Long Order Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_modifiable_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_modifiable_short_codes_group_count * 8

  return index
end

-- Display: D C Long Order Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Modifiable Short Codes Group
  for d_c_long_order_message_modifiable_short_codes_group_index = 1, num_in_group do
    index, d_c_long_order_message_modifiable_short_codes_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_group.dissect(buffer, index, packet, parent, d_c_long_order_message_modifiable_short_codes_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_modifiable_short_codes_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_modifiable_short_codes_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group = {}

-- Size: D C Long Order Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.size

-- Display: D C Long Order Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_short_codes_group_index)
  local index = offset

  -- Implicit D C Long Order Message Non Modifiable Short Codes Group Index
  if d_c_long_order_message_non_modifiable_short_codes_group_index ~= nil and show.d_c_long_order_message_non_modifiable_short_codes_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_short_codes_group_index, d_c_long_order_message_non_modifiable_short_codes_group_index)
    iteration:set_generated()
  end

  -- Original Client Id Short Code: int32_t
  index, original_client_id_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_client_id_short_code.dissect(buffer, index, packet, parent)

  -- Original Exec W Firm Short Code: int32_t
  index, original_exec_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_exec_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Original Invest Decis W Firm Short Code: int32_t
  index, original_invest_decis_w_firm_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_invest_decis_w_firm_short_code.dissect(buffer, index, packet, parent)

  -- Original Non Exec Broker Short Code: int32_t
  index, original_non_exec_broker_short_code = euronext_optiq_dropcopygateway_sbe_v5_36.original_non_exec_broker_short_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Non Modifiable Short Codes Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_short_codes_group_index)
  if show.d_c_long_order_message_non_modifiable_short_codes_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_short_codes_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_short_codes_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group.fields(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_short_codes_group_index)
  end
end

-- D C Long Order Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups = {}

-- Calculate size of: D C Long Order Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_non_modifiable_short_codes_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_non_modifiable_short_codes_group_count * 16

  return index
end

-- Display: D C Long Order Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Non Modifiable Short Codes Group
  for d_c_long_order_message_non_modifiable_short_codes_group_index = 1, num_in_group do
    index, d_c_long_order_message_non_modifiable_short_codes_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_group.dissect(buffer, index, packet, parent, d_c_long_order_message_non_modifiable_short_codes_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Non Modifiable Short Codes Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_non_modifiable_short_codes_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_short_codes_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Non Modifiable Opt Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group = {}

-- Size: D C Long Order Message Non Modifiable Opt Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.minimum_order_quantity.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_type_cross.size

-- Display: D C Long Order Message Non Modifiable Opt Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Non Modifiable Opt Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_opt_fields_group_index)
  local index = offset

  -- Implicit D C Long Order Message Non Modifiable Opt Fields Group Index
  if d_c_long_order_message_non_modifiable_opt_fields_group_index ~= nil and show.d_c_long_order_message_non_modifiable_opt_fields_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_opt_fields_group_index, d_c_long_order_message_non_modifiable_opt_fields_group_index)
    iteration:set_generated()
  end

  -- Trading Capacity Trading Capacityenum optional: TradingCapacity_enum
  index, trading_capacity_trading_capacityenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.trading_capacity_trading_capacityenum_optional.dissect(buffer, index, packet, parent)

  -- Minimum Order Quantity: uint64_t
  index, minimum_order_quantity = euronext_optiq_dropcopygateway_sbe_v5_36.minimum_order_quantity.dissect(buffer, index, packet, parent)

  -- Account Type Cross: AccountTypeCross_enum
  index, account_type_cross = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Non Modifiable Opt Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_opt_fields_group_index)
  if show.d_c_long_order_message_non_modifiable_opt_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_opt_fields_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_opt_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_non_modifiable_opt_fields_group_index)
  end
end

-- D C Long Order Message Non Modifiable Opt Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups = {}

-- Calculate size of: D C Long Order Message Non Modifiable Opt Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_non_modifiable_opt_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_non_modifiable_opt_fields_group_count * 10

  return index
end

-- Display: D C Long Order Message Non Modifiable Opt Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Non Modifiable Opt Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Non Modifiable Opt Fields Group
  for d_c_long_order_message_non_modifiable_opt_fields_group_index = 1, num_in_group do
    index, d_c_long_order_message_non_modifiable_opt_fields_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_group.dissect(buffer, index, packet, parent, d_c_long_order_message_non_modifiable_opt_fields_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Non Modifiable Opt Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_non_modifiable_opt_fields_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_non_modifiable_opt_fields_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Clearing Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group = {}

-- Size: D C Long Order Message Clearing Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.client_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.account_number.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.open_close.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.size

-- Display: D C Long Order Message Clearing Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Clearing Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_clearing_fields_group_index)
  local index = offset

  -- Implicit D C Long Order Message Clearing Fields Group Index
  if d_c_long_order_message_clearing_fields_group_index ~= nil and show.d_c_long_order_message_clearing_fields_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_clearing_fields_group_index, d_c_long_order_message_clearing_fields_group_index)
    iteration:set_generated()
  end

  -- Clearing Firm I D char 8 optional: char8
  index, clearing_firm_i_d_char_8_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_firm_i_d_char_8_optional.dissect(buffer, index, packet, parent)

  -- Client Id: char8
  index, client_id = euronext_optiq_dropcopygateway_sbe_v5_36.client_id.dissect(buffer, index, packet, parent)

  -- Account Number: char12
  index, account_number = euronext_optiq_dropcopygateway_sbe_v5_36.account_number.dissect(buffer, index, packet, parent)

  -- Technical Origin: TechnicalOrigin_enum
  index, technical_origin = euronext_optiq_dropcopygateway_sbe_v5_36.technical_origin.dissect(buffer, index, packet, parent)

  -- Open Close: Struct of 11 fields
  index, open_close = euronext_optiq_dropcopygateway_sbe_v5_36.open_close.dissect(buffer, index, packet, parent)

  -- Clearing Instruction Clearing Instructionenum optional: ClearingInstruction_enum
  index, clearing_instruction_clearing_instructionenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.clearing_instruction_clearing_instructionenum_optional.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Clearing Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_clearing_fields_group_index)
  if show.d_c_long_order_message_clearing_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_clearing_fields_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_clearing_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_clearing_fields_group_index)
  end
end

-- D C Long Order Message Clearing Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups = {}

-- Calculate size of: D C Long Order Message Clearing Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_clearing_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_clearing_fields_group_count * 33

  return index
end

-- Display: D C Long Order Message Clearing Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Clearing Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Clearing Fields Group
  for d_c_long_order_message_clearing_fields_group_index = 1, num_in_group do
    index, d_c_long_order_message_clearing_fields_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_group.dissect(buffer, index, packet, parent, d_c_long_order_message_clearing_fields_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Clearing Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_clearing_fields_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_clearing_fields_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
euronext_optiq_dropcopygateway_sbe_v5_36.trading_session = {}

-- Size: Trading Session
euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.size = 1

-- Display: Trading Session
euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.display = function(range, value, packet, parent)
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
  -- Is Session 4 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Session 4"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trading Session
euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.bits = function(range, value, packet, parent)

  -- Unused Trading Session Validityset 0: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.unused_trading_session_validityset_0, range, value)

  -- Session 1: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_1, range, value)

  -- Session 2: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_2, range, value)

  -- Session 3: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_3, range, value)

  -- Session 4: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.session_4, range, value)

  -- Reserved 3: 3 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_3, range, value)
end

-- Dissect: Trading Session
euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_session, range, display)

  if show.trading_session then
    euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- D C Long Order Message Optional Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group = {}

-- Size: D C Long Order Message Optional Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.stop_px.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.peg_offset.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_price.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.disclosed_qty.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_date.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.stop_triggered_time_in_force.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_iceberg_type.size

-- Display: D C Long Order Message Optional Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Optional Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_optional_fields_group_index)
  local index = offset

  -- Implicit D C Long Order Message Optional Fields Group Index
  if d_c_long_order_message_optional_fields_group_index ~= nil and show.d_c_long_order_message_optional_fields_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_group_index, d_c_long_order_message_optional_fields_group_index)
    iteration:set_generated()
  end

  -- Stop Px: int64_t
  index, stop_px = euronext_optiq_dropcopygateway_sbe_v5_36.stop_px.dissect(buffer, index, packet, parent)

  -- Peg Offset: int8_t
  index, peg_offset = euronext_optiq_dropcopygateway_sbe_v5_36.peg_offset.dissect(buffer, index, packet, parent)

  -- Undisclosed Price: int64_t
  index, undisclosed_price = euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_price.dissect(buffer, index, packet, parent)

  -- Disclosed Qty: uint64_t
  index, disclosed_qty = euronext_optiq_dropcopygateway_sbe_v5_36.disclosed_qty.dissect(buffer, index, packet, parent)

  -- Order Expiration Time: uint32_t
  index, order_expiration_time = euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_time.dissect(buffer, index, packet, parent)

  -- Order Expiration Date: uint16_t
  index, order_expiration_date = euronext_optiq_dropcopygateway_sbe_v5_36.order_expiration_date.dissect(buffer, index, packet, parent)

  -- Trading Session: Struct of 6 fields
  index, trading_session = euronext_optiq_dropcopygateway_sbe_v5_36.trading_session.dissect(buffer, index, packet, parent)

  -- Stop Triggered Time In Force: TriggeredStopTimeInForce_enum
  index, stop_triggered_time_in_force = euronext_optiq_dropcopygateway_sbe_v5_36.stop_triggered_time_in_force.dissect(buffer, index, packet, parent)

  -- Undisclosed Iceberg Type: UndisclosedIcebergType_enum
  index, undisclosed_iceberg_type = euronext_optiq_dropcopygateway_sbe_v5_36.undisclosed_iceberg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Optional Fields Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_optional_fields_group_index)
  if show.d_c_long_order_message_optional_fields_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_optional_fields_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group.fields(buffer, offset, packet, parent, d_c_long_order_message_optional_fields_group_index)
  end
end

-- D C Long Order Message Optional Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups = {}

-- Calculate size of: D C Long Order Message Optional Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_optional_fields_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_optional_fields_group_count * 34

  return index
end

-- Display: D C Long Order Message Optional Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Optional Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Optional Fields Group
  for d_c_long_order_message_optional_fields_group_index = 1, num_in_group do
    index, d_c_long_order_message_optional_fields_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_group.dissect(buffer, index, packet, parent, d_c_long_order_message_optional_fields_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Optional Fields Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_optional_fields_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_optional_fields_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.fields(buffer, offset, packet, parent)
  end
end

-- D C Long Order Message Free Text Section Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group = {}

-- Size: D C Long Order Message Free Text Section Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.free_text.size

-- Display: D C Long Order Message Free Text Section Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Free Text Section Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group.fields = function(buffer, offset, packet, parent, d_c_long_order_message_free_text_section_group_index)
  local index = offset

  -- Implicit D C Long Order Message Free Text Section Group Index
  if d_c_long_order_message_free_text_section_group_index ~= nil and show.d_c_long_order_message_free_text_section_group_index then
    local iteration = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_free_text_section_group_index, d_c_long_order_message_free_text_section_group_index)
    iteration:set_generated()
  end

  -- Free Text: char18
  index, free_text = euronext_optiq_dropcopygateway_sbe_v5_36.free_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: D C Long Order Message Free Text Section Group
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group.dissect = function(buffer, offset, packet, parent, d_c_long_order_message_free_text_section_group_index)
  if show.d_c_long_order_message_free_text_section_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_free_text_section_group, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group.fields(buffer, offset, packet, parent, d_c_long_order_message_free_text_section_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group.fields(buffer, offset, packet, parent, d_c_long_order_message_free_text_section_group_index)
  end
end

-- D C Long Order Message Free Text Section Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups = {}

-- Calculate size of: D C Long Order Message Free Text Section Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.size

  -- Calculate field size from count
  local d_c_long_order_message_free_text_section_group_count = buffer(offset + index - 1, 1):le_uint()
  index = index + d_c_long_order_message_free_text_section_group_count * 18

  return index
end

-- Display: D C Long Order Message Free Text Section Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: D C Long Order Message Free Text Section Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Group Size Encoding: Struct of 2 fields
  index, group_size_encoding = euronext_optiq_dropcopygateway_sbe_v5_36.group_size_encoding.dissect(buffer, index, packet, parent)

  -- Dependency element: Num In Group
  local num_in_group = buffer(index - 1, 1):le_uint()

  -- Repeating: D C Long Order Message Free Text Section Group
  for d_c_long_order_message_free_text_section_group_index = 1, num_in_group do
    index, d_c_long_order_message_free_text_section_group = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_group.dissect(buffer, index, packet, parent, d_c_long_order_message_free_text_section_group_index)
  end

  return index
end

-- Dissect: D C Long Order Message Free Text Section Groups
euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.dissect = function(buffer, offset, packet, parent)
  if show.d_c_long_order_message_free_text_section_groups then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.d_c_long_order_message_free_text_section_groups, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.fields(buffer, offset, packet, parent)
  end
end

-- Execution Instruction Execution Instructionset
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset = {}

-- Size: Execution Instruction Execution Instructionset
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.size = 1

-- Display: Execution Instruction Execution Instructionset
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.display = function(range, value, packet, parent)
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
  -- Is Conditional Order flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Conditional Order"
  end
  -- Is Stp Both Orders flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Stp Both Orders"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Execution Instruction Execution Instructionset
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.bits = function(range, value, packet, parent)

  -- Stp Resting Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_resting_order, range, value)

  -- Stp Incoming Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_incoming_order, range, value)

  -- Disclosed Quantity Randomization: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.disclosed_quantity_randomization, range, value)

  -- Disabled Cancel On Disconnect Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.disabled_cancel_on_disconnect_indicator, range, value)

  -- Rfq Answer: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfq_answer, range, value)

  -- Rfq Confirmation: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.rfq_confirmation, range, value)

  -- Conditional Order: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.conditional_order, range, value)

  -- Stp Both Orders: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stp_both_orders, range, value)
end

-- Dissect: Execution Instruction Execution Instructionset
euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_instruction_execution_instructionset, range, display)

  if show.execution_instruction_execution_instructionset then
    euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Ack Qualifiers
euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers = {}

-- Size: Ack Qualifiers
euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.size = 1

-- Display: Ack Qualifiers
euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Dark Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Dark Indicator"
  end
  -- Is Queue Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Queue Indicator"
  end
  -- Is Request With Client Order Id flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Request With Client Order Id"
  end
  -- Is Use Of Cross Partition flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Use Of Cross Partition"
  end
  -- Is Internal 1 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Internal 1"
  end
  -- Is Internal 2 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Internal 2"
  end
  -- Is Execution Upon Entry Flag Enabled flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Execution Upon Entry Flag Enabled"
  end
  -- Is Executed Upon Entry Flag flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Executed Upon Entry Flag"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Ack Qualifiers
euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.bits = function(range, value, packet, parent)

  -- Dark Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dark_indicator, range, value)

  -- Queue Indicator: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.queue_indicator, range, value)

  -- Request With Client Order Id: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.request_with_client_order_id, range, value)

  -- Use Of Cross Partition: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.use_of_cross_partition, range, value)

  -- Internal 1: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.internal_1, range, value)

  -- Internal 2: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.internal_2, range, value)

  -- Execution Upon Entry Flag Enabled: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_upon_entry_flag_enabled, range, value)

  -- Executed Upon Entry Flag: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.executed_upon_entry_flag, range, value)
end

-- Dissect: Ack Qualifiers
euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.ack_qualifiers, range, display)

  if show.ack_qualifiers then
    euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Dc Long Order Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message = {}

-- Calculate size of: Dc Long Order Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.ack_phase.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.ack_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.emm.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_price.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_volume.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_priority.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_px.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.orig_client_order_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.stpid.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.displayed_qty.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.leaves_qty.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.kill_reason.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t_optional.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.stop_queue_priority.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.quote_indicator.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.wholesale_trade_type.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.escb_membership.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_tolerable_price.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.order_sweep_reason.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.size(buffer, offset + index)

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.size(buffer, offset + index)

  return index
end

-- Display: Dc Long Order Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Long Order Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Order Event Type: OrderEventType_enum
  index, order_event_type = euronext_optiq_dropcopygateway_sbe_v5_36.order_event_type.dissect(buffer, index, packet, parent)

  -- Account Type Internal Account Type Internalenum: AccountTypeInternal_enum
  index, account_type_internal_account_type_internalenum = euronext_optiq_dropcopygateway_sbe_v5_36.account_type_internal_account_type_internalenum.dissect(buffer, index, packet, parent)

  -- Ack Phase: AckPhase_enum
  index, ack_phase = euronext_optiq_dropcopygateway_sbe_v5_36.ack_phase.dissect(buffer, index, packet, parent)

  -- Ack Qualifiers: Struct of 8 fields
  index, ack_qualifiers = euronext_optiq_dropcopygateway_sbe_v5_36.ack_qualifiers.dissect(buffer, index, packet, parent)

  -- Ack Type: AckType_enum
  index, ack_type = euronext_optiq_dropcopygateway_sbe_v5_36.ack_type.dissect(buffer, index, packet, parent)

  -- Book In uint 64t optional: uint64_t
  index, book_in_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.book_in_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Book Out Time uint 64t optional: uint64_t
  index, book_out_time_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.book_out_time_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Client Order I D int 64t optional: int64_t
  index, client_order_i_d_int_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.client_order_i_d_int_64t_optional.dissect(buffer, index, packet, parent)

  -- Dark Execution Instruction: Struct of 6 fields
  index, dark_execution_instruction = euronext_optiq_dropcopygateway_sbe_v5_36.dark_execution_instruction.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Execution Instruction Execution Instructionset: Struct of 8 fields
  index, execution_instruction_execution_instructionset = euronext_optiq_dropcopygateway_sbe_v5_36.execution_instruction_execution_instructionset.dissect(buffer, index, packet, parent)

  -- Firm Id: char8
  index, firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.firm_id.dissect(buffer, index, packet, parent)

  -- Indicative Auction Price: int64_t
  index, indicative_auction_price = euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_price.dissect(buffer, index, packet, parent)

  -- Indicative Auction Volume: uint64_t
  index, indicative_auction_volume = euronext_optiq_dropcopygateway_sbe_v5_36.indicative_auction_volume.dissect(buffer, index, packet, parent)

  -- Oe Session I D uint 64t: uint64_t
  index, oe_session_i_d_uint_64t = euronext_optiq_dropcopygateway_sbe_v5_36.oe_session_i_d_uint_64t.dissect(buffer, index, packet, parent)

  -- Lp Role Lp Roleenum optional: LPRole_enum
  index, lp_role_lp_roleenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.lp_role_lp_roleenum_optional.dissect(buffer, index, packet, parent)

  -- Mi Fid Indicators Mi Fid Indicatorsset: Struct of 7 fields
  index, mi_fid_indicators_mi_fid_indicatorsset = euronext_optiq_dropcopygateway_sbe_v5_36.mi_fid_indicators_mi_fid_indicatorsset.dissect(buffer, index, packet, parent)

  -- Oegin From Member uint 64t optional: uint64_t
  index, oegin_from_member_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.oegin_from_member_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Oegout Time To M E uint 64t optional: uint64_t
  index, oegout_time_to_m_e_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.oegout_time_to_m_e_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Order Id: uint64_t
  index, order_id = euronext_optiq_dropcopygateway_sbe_v5_36.order_id.dissect(buffer, index, packet, parent)

  -- Order Priority: uint64_t
  index, order_priority = euronext_optiq_dropcopygateway_sbe_v5_36.order_priority.dissect(buffer, index, packet, parent)

  -- Order Px: int64_t
  index, order_px = euronext_optiq_dropcopygateway_sbe_v5_36.order_px.dissect(buffer, index, packet, parent)

  -- Order Qty: uint64_t
  index, order_qty = euronext_optiq_dropcopygateway_sbe_v5_36.order_qty.dissect(buffer, index, packet, parent)

  -- Order Side Order Sideenum: OrderSide_enum
  index, order_side_order_sideenum = euronext_optiq_dropcopygateway_sbe_v5_36.order_side_order_sideenum.dissect(buffer, index, packet, parent)

  -- Order Type: OrderType_enum
  index, order_type = euronext_optiq_dropcopygateway_sbe_v5_36.order_type.dissect(buffer, index, packet, parent)

  -- Orig Client Order Id: int64_t
  index, orig_client_order_id = euronext_optiq_dropcopygateway_sbe_v5_36.orig_client_order_id.dissect(buffer, index, packet, parent)

  -- Stpid: uint16_t
  index, stpid = euronext_optiq_dropcopygateway_sbe_v5_36.stpid.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Time In Force Time In Forceenum: TimeInForce_enum
  index, time_in_force_time_in_forceenum = euronext_optiq_dropcopygateway_sbe_v5_36.time_in_force_time_in_forceenum.dissect(buffer, index, packet, parent)

  -- Displayed Qty: uint64_t
  index, displayed_qty = euronext_optiq_dropcopygateway_sbe_v5_36.displayed_qty.dissect(buffer, index, packet, parent)

  -- Cross Order Indicator unsignedchar: unsigned_char
  index, cross_order_indicator_unsignedchar = euronext_optiq_dropcopygateway_sbe_v5_36.cross_order_indicator_unsignedchar.dissect(buffer, index, packet, parent)

  -- Counterpart Firm Id: char8
  index, counterpart_firm_id = euronext_optiq_dropcopygateway_sbe_v5_36.counterpart_firm_id.dissect(buffer, index, packet, parent)

  -- Execution I D uint 32t optional: uint32_t
  index, execution_i_d_uint_32t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.execution_i_d_uint_32t_optional.dissect(buffer, index, packet, parent)

  -- Execution Phase Execution Phaseenum optional: ExecutionPhase_enum
  index, execution_phase_execution_phaseenum_optional = euronext_optiq_dropcopygateway_sbe_v5_36.execution_phase_execution_phaseenum_optional.dissect(buffer, index, packet, parent)

  -- Last Shares uint 64t optional: uint64_t
  index, last_shares_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.last_shares_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Last Traded Px int 64t optional: int64_t
  index, last_traded_px_int_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.last_traded_px_int_64t_optional.dissect(buffer, index, packet, parent)

  -- Leaves Qty: uint64_t
  index, leaves_qty = euronext_optiq_dropcopygateway_sbe_v5_36.leaves_qty.dissect(buffer, index, packet, parent)

  -- Trade Qualifier Trade Qualifierset optional: Struct of 8 fields
  index, trade_qualifier_trade_qualifierset_optional = euronext_optiq_dropcopygateway_sbe_v5_36.trade_qualifier_trade_qualifierset_optional.dissect(buffer, index, packet, parent)

  -- Trade Time: uint64_t
  index, trade_time = euronext_optiq_dropcopygateway_sbe_v5_36.trade_time.dissect(buffer, index, packet, parent)

  -- Trade Type: TradeType_enum
  index, trade_type = euronext_optiq_dropcopygateway_sbe_v5_36.trade_type.dissect(buffer, index, packet, parent)

  -- Kill Reason: KillReason_enum
  index, kill_reason = euronext_optiq_dropcopygateway_sbe_v5_36.kill_reason.dissect(buffer, index, packet, parent)

  -- Breached Collar Price: int64_t
  index, breached_collar_price = euronext_optiq_dropcopygateway_sbe_v5_36.breached_collar_price.dissect(buffer, index, packet, parent)

  -- Collar Rej Type: CollarRejectionType_enum
  index, collar_rej_type = euronext_optiq_dropcopygateway_sbe_v5_36.collar_rej_type.dissect(buffer, index, packet, parent)

  -- Rejected Message: unsigned_char
  index, rejected_message = euronext_optiq_dropcopygateway_sbe_v5_36.rejected_message.dissect(buffer, index, packet, parent)

  -- Error Code uint 16t optional: uint16_t
  index, error_code_uint_16t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.error_code_uint_16t_optional.dissect(buffer, index, packet, parent)

  -- Stop Queue Priority: uint64_t
  index, stop_queue_priority = euronext_optiq_dropcopygateway_sbe_v5_36.stop_queue_priority.dissect(buffer, index, packet, parent)

  -- Counterparty Reason Type: CounterpartyReasonType_enum
  index, counterparty_reason_type = euronext_optiq_dropcopygateway_sbe_v5_36.counterparty_reason_type.dissect(buffer, index, packet, parent)

  -- Quote Indicator: unsigned_char
  index, quote_indicator = euronext_optiq_dropcopygateway_sbe_v5_36.quote_indicator.dissect(buffer, index, packet, parent)

  -- Lis Transaction Id: uint32_t
  index, lis_transaction_id = euronext_optiq_dropcopygateway_sbe_v5_36.lis_transaction_id.dissect(buffer, index, packet, parent)

  -- Wholesale Trade Type: WholesaleTradeType_enum
  index, wholesale_trade_type = euronext_optiq_dropcopygateway_sbe_v5_36.wholesale_trade_type.dissect(buffer, index, packet, parent)

  -- Escb Membership: unsigned_char
  index, escb_membership = euronext_optiq_dropcopygateway_sbe_v5_36.escb_membership.dissect(buffer, index, packet, parent)

  -- Trade Unique Identifier: char16
  index, trade_unique_identifier = euronext_optiq_dropcopygateway_sbe_v5_36.trade_unique_identifier.dissect(buffer, index, packet, parent)

  -- Order Tolerable Price: int64_t
  index, order_tolerable_price = euronext_optiq_dropcopygateway_sbe_v5_36.order_tolerable_price.dissect(buffer, index, packet, parent)

  -- Order Sweep Reason: OrderSweepReason_enum
  index, order_sweep_reason = euronext_optiq_dropcopygateway_sbe_v5_36.order_sweep_reason.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Free Text Section Groups: Struct of 2 fields
  index, d_c_long_order_message_free_text_section_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_free_text_section_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Optional Fields Groups: Struct of 2 fields
  index, d_c_long_order_message_optional_fields_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Clearing Fields Groups: Struct of 2 fields
  index, d_c_long_order_message_clearing_fields_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_clearing_fields_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Non Modifiable Opt Fields Groups: Struct of 2 fields
  index, d_c_long_order_message_non_modifiable_opt_fields_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_opt_fields_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Non Modifiable Short Codes Groups: Struct of 2 fields
  index, d_c_long_order_message_non_modifiable_short_codes_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_short_codes_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Modifiable Short Codes Groups: Struct of 2 fields
  index, d_c_long_order_message_modifiable_short_codes_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_short_codes_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Commercial Fields Groups: Struct of 2 fields
  index, d_c_long_order_message_commercial_fields_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_commercial_fields_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Modifiable Commercial Investor Field Groups: Struct of 2 fields
  index, d_c_long_order_message_modifiable_commercial_investor_field_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_modifiable_commercial_investor_field_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Non Modifiable Commercial Investor Field Groups: Struct of 2 fields
  index, d_c_long_order_message_non_modifiable_commercial_investor_field_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_non_modifiable_commercial_investor_field_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Extended Clearing Account Groups: Struct of 2 fields
  index, d_c_long_order_message_extended_clearing_account_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_extended_clearing_account_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Strategy Fields Groups: Struct of 2 fields
  index, d_c_long_order_message_strategy_fields_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_strategy_fields_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Optional Fields Derivatives Groups: Struct of 2 fields
  index, d_c_long_order_message_optional_fields_derivatives_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_optional_fields_derivatives_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Additional Infos Groups: Struct of 2 fields
  index, d_c_long_order_message_additional_infos_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_additional_infos_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Short Codes Details Non Modifiable Groups: Struct of 2 fields
  index, d_c_long_order_message_short_codes_details_non_modifiable_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_non_modifiable_groups.dissect(buffer, index, packet, parent)

  -- D C Long Order Message Short Codes Details Modifiable Groups: Struct of 2 fields
  index, d_c_long_order_message_short_codes_details_modifiable_groups = euronext_optiq_dropcopygateway_sbe_v5_36.d_c_long_order_message_short_codes_details_modifiable_groups.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Long Order Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_long_order_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Dc Price Update Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message = {}

-- Size: Dc Price Update Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty_side.size

-- Display: Dc Price Update Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Price Update Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Event Time: uint64_t
  index, event_time = euronext_optiq_dropcopygateway_sbe_v5_36.event_time.dissect(buffer, index, packet, parent)

  -- Price Type: MarketDataPriceType_enum
  index, price_type = euronext_optiq_dropcopygateway_sbe_v5_36.price_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Price int 64t optional: int64_t
  index, price_int_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.price_int_64t_optional.dissect(buffer, index, packet, parent)

  -- Quantity uint 64t optional: uint64_t
  index, quantity_uint_64t_optional = euronext_optiq_dropcopygateway_sbe_v5_36.quantity_uint_64t_optional.dissect(buffer, index, packet, parent)

  -- Imbalance Qty: uint64_t
  index, imbalance_qty = euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty.dissect(buffer, index, packet, parent)

  -- Imbalance Qty Side: ImbalanceQuantitySide_enum
  index, imbalance_qty_side = euronext_optiq_dropcopygateway_sbe_v5_36.imbalance_qty_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Price Update Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_price_update_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Phase Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier = {}

-- Size: Phase Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.size = 2

-- Display: Phase Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.display = function(range, value, packet, parent)
  local flags = {}

  -- Is No Qualifier flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "No Qualifier"
  end
  -- Is Call Bbo Only flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Call Bbo Only"
  end
  -- Is Trading At Last flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Trading At Last"
  end
  -- Is Random Uncrossing flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Random Uncrossing"
  end
  -- Is Suspended flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Suspended"
  end
  -- Is Wholesale Allowed flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Wholesale Allowed"
  end
  -- Is Stressed Market Conditions flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Stressed Market Conditions"
  end
  -- Is Exceptional Market Conditions flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Exceptional Market Conditions"
  end
  -- Is Price Improvement Only flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Price Improvement Only"
  end
  -- Is Quoting Period flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Quoting Period"
  end
  -- Is Execution Prevention Across All Firms flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Execution Prevention Across All Firms"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Phase Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.bits = function(range, value, packet, parent)

  -- No Qualifier: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.no_qualifier, range, value)

  -- Call Bbo Only: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.call_bbo_only, range, value)

  -- Trading At Last: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.trading_at_last, range, value)

  -- Random Uncrossing: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.random_uncrossing, range, value)

  -- Suspended: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.suspended, range, value)

  -- Wholesale Allowed: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.wholesale_allowed, range, value)

  -- Stressed Market Conditions: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.stressed_market_conditions, range, value)

  -- Exceptional Market Conditions: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.exceptional_market_conditions, range, value)

  -- Price Improvement Only: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.price_improvement_only, range, value)

  -- Quoting Period: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.quoting_period, range, value)

  -- Execution Prevention Across All Firms: 1 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.execution_prevention_across_all_firms, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.reserved_5, range, value)
end

-- Dissect: Phase Qualifier
euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.dissect = function(buffer, offset, packet, parent)
  local size = euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.display(range, value, packet, parent)
  local element = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.phase_qualifier, range, display)

  if show.phase_qualifier then
    euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Dc Market Status Change Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message = {}

-- Size: Dc Market Status Change Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.emm.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.phase_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_state.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.instrument_state.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.change_type.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.event_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.book_state.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.status_reason.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trading_period.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trading_side.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_limits.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.quote_spread_multiplier.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.order_entry_qualifier.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_order_entry_qualifier.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.instrument_order_entry_qualifier.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.phase_time.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.contract_symbol_index.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.price_limit_style.size

-- Display: Dc Market Status Change Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dc Market Status Change Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Seq Num: uint32_t
  index, msg_seq_num = euronext_optiq_dropcopygateway_sbe_v5_36.msg_seq_num.dissect(buffer, index, packet, parent)

  -- Produce Time: uint64_t
  index, produce_time = euronext_optiq_dropcopygateway_sbe_v5_36.produce_time.dissect(buffer, index, packet, parent)

  -- Consume Time: uint64_t
  index, consume_time = euronext_optiq_dropcopygateway_sbe_v5_36.consume_time.dissect(buffer, index, packet, parent)

  -- Emm: EMM_enum
  index, emm = euronext_optiq_dropcopygateway_sbe_v5_36.emm.dissect(buffer, index, packet, parent)

  -- Event Id: uint64_t
  index, event_id = euronext_optiq_dropcopygateway_sbe_v5_36.event_id.dissect(buffer, index, packet, parent)

  -- Phase Id: PhaseId_enum
  index, phase_id = euronext_optiq_dropcopygateway_sbe_v5_36.phase_id.dissect(buffer, index, packet, parent)

  -- Trading Group State: TradingGroupState_enum
  index, trading_group_state = euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_state.dissect(buffer, index, packet, parent)

  -- Instrument State: InstrumentState_enum
  index, instrument_state = euronext_optiq_dropcopygateway_sbe_v5_36.instrument_state.dissect(buffer, index, packet, parent)

  -- Change Type: MarketDataChangeType_enum
  index, change_type = euronext_optiq_dropcopygateway_sbe_v5_36.change_type.dissect(buffer, index, packet, parent)

  -- Symbol Index: uint32_t
  index, symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.symbol_index.dissect(buffer, index, packet, parent)

  -- Event Time: uint64_t
  index, event_time = euronext_optiq_dropcopygateway_sbe_v5_36.event_time.dissect(buffer, index, packet, parent)

  -- Book State: BookState_enum
  index, book_state = euronext_optiq_dropcopygateway_sbe_v5_36.book_state.dissect(buffer, index, packet, parent)

  -- Status Reason: StatusReason_enum
  index, status_reason = euronext_optiq_dropcopygateway_sbe_v5_36.status_reason.dissect(buffer, index, packet, parent)

  -- Phase Qualifier: Struct of 12 fields
  index, phase_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.phase_qualifier.dissect(buffer, index, packet, parent)

  -- Trading Period: TradingPeriod_enum
  index, trading_period = euronext_optiq_dropcopygateway_sbe_v5_36.trading_period.dissect(buffer, index, packet, parent)

  -- Trading Side: TradingSide_enum
  index, trading_side = euronext_optiq_dropcopygateway_sbe_v5_36.trading_side.dissect(buffer, index, packet, parent)

  -- Price Limits: PriceLimits_enum
  index, price_limits = euronext_optiq_dropcopygateway_sbe_v5_36.price_limits.dissect(buffer, index, packet, parent)

  -- Quote Spread Multiplier: QuoteSpreadMultiplier_enum
  index, quote_spread_multiplier = euronext_optiq_dropcopygateway_sbe_v5_36.quote_spread_multiplier.dissect(buffer, index, packet, parent)

  -- Order Entry Qualifier: OrderEntryQualifier_enum
  index, order_entry_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.order_entry_qualifier.dissect(buffer, index, packet, parent)

  -- Session Sessionenum: Session_enum
  index, session_sessionenum = euronext_optiq_dropcopygateway_sbe_v5_36.session_sessionenum.dissect(buffer, index, packet, parent)

  -- Scheduled Event: ScheduledEvent_enum
  index, scheduled_event = euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event.dissect(buffer, index, packet, parent)

  -- Scheduled Event Time: uint64_t
  index, scheduled_event_time = euronext_optiq_dropcopygateway_sbe_v5_36.scheduled_event_time.dissect(buffer, index, packet, parent)

  -- Trading Group Order Entry Qualifier: OrderEntryQualifier_enum
  index, trading_group_order_entry_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.trading_group_order_entry_qualifier.dissect(buffer, index, packet, parent)

  -- Instrument Order Entry Qualifier: OrderEntryQualifier_enum
  index, instrument_order_entry_qualifier = euronext_optiq_dropcopygateway_sbe_v5_36.instrument_order_entry_qualifier.dissect(buffer, index, packet, parent)

  -- Phase Time: uint64_t
  index, phase_time = euronext_optiq_dropcopygateway_sbe_v5_36.phase_time.dissect(buffer, index, packet, parent)

  -- Contract Symbol Index: uint32_t
  index, contract_symbol_index = euronext_optiq_dropcopygateway_sbe_v5_36.contract_symbol_index.dissect(buffer, index, packet, parent)

  -- Price Limit Style: PriceLimitStyle_enum
  index, price_limit_style = euronext_optiq_dropcopygateway_sbe_v5_36.price_limit_style.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dc Market Status Change Message
euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.dc_market_status_change_message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
euronext_optiq_dropcopygateway_sbe_v5_36.payload = {}

-- Dissect: Payload
euronext_optiq_dropcopygateway_sbe_v5_36.payload.dissect = function(buffer, offset, packet, parent, template_id)
  -- Dissect Dc Market Status Change Message
  if template_id == 16001 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_market_status_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Price Update Message
  if template_id == 16003 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_price_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Long Order Message
  if template_id == 16006 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_long_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Short Order Reject Message
  if template_id == 16010 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_order_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Short Trade Cancellation Message
  if template_id == 16016 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Static Collars Message
  if template_id == 16018 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_static_collars_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Trade Bust Notification Message
  if template_id == 16021 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Quote Message
  if template_id == 16050 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dcafqrfe Message
  if template_id == 16051 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dcafqrfe_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Declaration New Message
  if template_id == 16052 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_declaration_new_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Short Declaration Reject Message
  if template_id == 16053 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_reject_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Short Declaration Cancel Message
  if template_id == 16054 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Short Trade Declaration Message
  if template_id == 16055 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Short Trade Declaration Cancellation Message
  if template_id == 16056 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_trade_declaration_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Trade Bust Declaration Message
  if template_id == 16057 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_bust_declaration_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Trade Message
  if template_id == 16058 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Short Declaration Fill Message
  if template_id == 16059 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_short_declaration_fill_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Quote Request Message
  if template_id == 16060 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_quote_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dc Clear Book Message
  if template_id == 16061 then
    return euronext_optiq_dropcopygateway_sbe_v5_36.dc_clear_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
euronext_optiq_dropcopygateway_sbe_v5_36.message_header = {}

-- Size: Message Header
euronext_optiq_dropcopygateway_sbe_v5_36.message_header.size =
  euronext_optiq_dropcopygateway_sbe_v5_36.block_length.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.template_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.size + 
  euronext_optiq_dropcopygateway_sbe_v5_36.version.size

-- Display: Message Header
euronext_optiq_dropcopygateway_sbe_v5_36.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
euronext_optiq_dropcopygateway_sbe_v5_36.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = euronext_optiq_dropcopygateway_sbe_v5_36.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint16
  index, template_id = euronext_optiq_dropcopygateway_sbe_v5_36.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint16
  index, schema_id = euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = euronext_optiq_dropcopygateway_sbe_v5_36.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
euronext_optiq_dropcopygateway_sbe_v5_36.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.message_header, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
euronext_optiq_dropcopygateway_sbe_v5_36.message = {}

-- Calculate size of: Message
euronext_optiq_dropcopygateway_sbe_v5_36.message.size = function(buffer, offset)
  local index = 0

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.frame.size

  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 6, 2):le_uint()
  index = index + euronext_optiq_dropcopygateway_sbe_v5_36.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
euronext_optiq_dropcopygateway_sbe_v5_36.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
euronext_optiq_dropcopygateway_sbe_v5_36.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Frame: 2 Byte Unsigned Fixed Width Integer
  index, frame = euronext_optiq_dropcopygateway_sbe_v5_36.frame.dissect(buffer, index, packet, parent)

  -- Message Header: Struct of 4 fields
  index, message_header = euronext_optiq_dropcopygateway_sbe_v5_36.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 19 branches
  index = euronext_optiq_dropcopygateway_sbe_v5_36.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
euronext_optiq_dropcopygateway_sbe_v5_36.message.dissect = function(buffer, offset, packet, parent)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36.fields.message, buffer(offset, 0))
    local index = euronext_optiq_dropcopygateway_sbe_v5_36.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = euronext_optiq_dropcopygateway_sbe_v5_36.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return euronext_optiq_dropcopygateway_sbe_v5_36.message.fields(buffer, offset, packet, parent)
  end
end

-- Packet
euronext_optiq_dropcopygateway_sbe_v5_36.packet = {}

-- Verify required size of Tcp packet
euronext_optiq_dropcopygateway_sbe_v5_36.packet.requiredsize = function(buffer)
  return buffer:len() >= euronext_optiq_dropcopygateway_sbe_v5_36.frame.size + euronext_optiq_dropcopygateway_sbe_v5_36.message_header.size
end

-- Dissect Packet
euronext_optiq_dropcopygateway_sbe_v5_36.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 3 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = euronext_optiq_dropcopygateway_sbe_v5_36.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_euronext_optiq_dropcopygateway_sbe_v5_36.init()
end

-- Dissector for Euronext Optiq DropCopyGateway Sbe 5.36
function omi_euronext_optiq_dropcopygateway_sbe_v5_36.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_euronext_optiq_dropcopygateway_sbe_v5_36.name

  -- Dissect protocol
  local protocol = parent:add(omi_euronext_optiq_dropcopygateway_sbe_v5_36, buffer(), omi_euronext_optiq_dropcopygateway_sbe_v5_36.description, "("..buffer:len().." Bytes)")
  return euronext_optiq_dropcopygateway_sbe_v5_36.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Schema Id Field
euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(6, 2):le_uint()

  if value == 0 then
    return true
  end

  return false
end

-- Verify Version Field
euronext_optiq_dropcopygateway_sbe_v5_36.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(8, 2):le_uint()

  if value == 336 then
    return true
  end

  return false
end

-- Dissector Heuristic for Euronext Optiq DropCopyGateway Sbe 5.36 (Tcp)
local function omi_euronext_optiq_dropcopygateway_sbe_v5_36_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not euronext_optiq_dropcopygateway_sbe_v5_36.packet.requiredsize(buffer) then return false end

  -- Verify Schema Id
  if not euronext_optiq_dropcopygateway_sbe_v5_36.schema_id.verify(buffer) then return false end

  -- Verify Version
  if not euronext_optiq_dropcopygateway_sbe_v5_36.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_euronext_optiq_dropcopygateway_sbe_v5_36
  omi_euronext_optiq_dropcopygateway_sbe_v5_36.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Euronext Optiq DropCopyGateway Sbe 5.36
omi_euronext_optiq_dropcopygateway_sbe_v5_36:register_heuristic("tcp", omi_euronext_optiq_dropcopygateway_sbe_v5_36_tcp_heuristic)

-- Register Euronext Optiq DropCopyGateway Sbe 5.36 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_euronext_optiq_dropcopygateway_sbe_v5_36)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Euronext
--   Version: 5.36
--   Date: Monday, January 1, 2024
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
