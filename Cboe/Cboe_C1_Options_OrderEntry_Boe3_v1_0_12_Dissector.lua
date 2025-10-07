-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe C1 Options OrderEntry Boe3 1.0.12 Protocol
local omi_cboe_c1_options_orderentry_boe3_v1_0_12 = Proto("Cboe.C1.Options.OrderEntry.Boe3.v1.0.12.Lua", "Cboe C1 Options OrderEntry Boe3 1.0.12")

-- Protocol table
local cboe_c1_options_orderentry_boe3_v1_0_12 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe C1 Options OrderEntry Boe3 1.0.12 Fields
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.account = ProtoField.new("Account", "cboe.c1.options.orderentry.boe3.v1.0.12.account", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.acknowledgement_allocation = ProtoField.new("Acknowledgement Allocation", "cboe.c1.options.orderentry.boe3.v1.0.12.acknowledgementallocation", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.acknowledgement_style = ProtoField.new("Acknowledgement Style", "cboe.c1.options.orderentry.boe3.v1.0.12.acknowledgementstyle", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.alloc_cnt = ProtoField.new("Alloc Cnt", "cboe.c1.options.orderentry.boe3.v1.0.12.alloccnt", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.alloc_leg_cnt = ProtoField.new("Alloc Leg Cnt", "cboe.c1.options.orderentry.boe3.v1.0.12.alloclegcnt", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.alloc_qty = ProtoField.new("Alloc Qty", "cboe.c1.options.orderentry.boe3.v1.0.12.allocqty", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.allocation = ProtoField.new("Allocation", "cboe.c1.options.orderentry.boe3.v1.0.12.allocation", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.allocation_cancelled = ProtoField.new("Allocation Cancelled", "cboe.c1.options.orderentry.boe3.v1.0.12.allocationcancelled", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.attributed_quote = ProtoField.new("Attributed Quote", "cboe.c1.options.orderentry.boe3.v1.0.12.attributedquote", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.auction_id = ProtoField.new("Auction Id", "cboe.c1.options.orderentry.boe3.v1.0.12.auctionid", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.auto_match = ProtoField.new("Auto Match", "cboe.c1.options.orderentry.boe3.v1.0.12.automatch", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.auto_match_price = ProtoField.new("Auto Match Price", "cboe.c1.options.orderentry.boe3.v1.0.12.automatchprice", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.c1.options.orderentry.boe3.v1.0.12.baseliquidityindicator", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.c1.options.orderentry.boe3.v1.0.12.cancelorigonreject", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.cancelreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.cancelrejectreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_sub_reason = ProtoField.new("Cancel Sub Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.cancelsubreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.c1.options.orderentry.boe3.v1.0.12.cancelledordercount", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.capacity = ProtoField.new("Capacity", "cboe.c1.options.orderentry.boe3.v1.0.12.capacity", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cfi_code = ProtoField.new("Cfi Code", "cboe.c1.options.orderentry.boe3.v1.0.12.cficode", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.c1.options.orderentry.boe3.v1.0.12.clordid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.c1.options.orderentry.boe3.v1.0.12.clearingaccount", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.c1.options.orderentry.boe3.v1.0.12.clearingfirm", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.clearing_firm_filter = ProtoField.new("Clearing Firm Filter", "cboe.c1.options.orderentry.boe3.v1.0.12.clearingfirmfilter", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.clearing_optional_data = ProtoField.new("Clearing Optional Data", "cboe.c1.options.orderentry.boe3.v1.0.12.clearingoptionaldata", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.client_id_attr = ProtoField.new("Client Id Attr", "cboe.c1.options.orderentry.boe3.v1.0.12.clientidattr", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.client_sequence = ProtoField.new("Client Sequence", "cboe.c1.options.orderentry.boe3.v1.0.12.clientsequence", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cmta_number = ProtoField.new("Cmta Number", "cboe.c1.options.orderentry.boe3.v1.0.12.cmtanumber", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.combo_order = ProtoField.new("Combo Order", "cboe.c1.options.orderentry.boe3.v1.0.12.comboorder", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.complex_leg = ProtoField.new("Complex Leg", "cboe.c1.options.orderentry.boe3.v1.0.12.complexleg", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.compression = ProtoField.new("Compression", "cboe.c1.options.orderentry.boe3.v1.0.12.compression", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.c1.options.orderentry.boe3.v1.0.12.contrabroker", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.contra_capacity = ProtoField.new("Contra Capacity", "cboe.c1.options.orderentry.boe3.v1.0.12.contracapacity", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.contra_trader = ProtoField.new("Contra Trader", "cboe.c1.options.orderentry.boe3.v1.0.12.contratrader", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.c1.options.orderentry.boe3.v1.0.12.correctedprice", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.corrected_size = ProtoField.new("Corrected Size", "cboe.c1.options.orderentry.boe3.v1.0.12.correctedsize", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_exclusion_indicator = ProtoField.new("Cross Exclusion Indicator", "cboe.c1.options.orderentry.boe3.v1.0.12.crossexclusionindicator", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_id = ProtoField.new("Cross Id", "cboe.c1.options.orderentry.boe3.v1.0.12.crossid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_initiator = ProtoField.new("Cross Initiator", "cboe.c1.options.orderentry.boe3.v1.0.12.crossinitiator", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_prioritization = ProtoField.new("Cross Prioritization", "cboe.c1.options.orderentry.boe3.v1.0.12.crossprioritization", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_type = ProtoField.new("Cross Type", "cboe.c1.options.orderentry.boe3.v1.0.12.crosstype", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cum_qty = ProtoField.new("Cum Qty", "cboe.c1.options.orderentry.boe3.v1.0.12.cumqty", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.custom_group_id = ProtoField.new("Custom Group Id", "cboe.c1.options.orderentry.boe3.v1.0.12.customgroupid", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.custom_group_id_cnt = ProtoField.new("Custom Group Id Cnt", "cboe.c1.options.orderentry.boe3.v1.0.12.customgroupidcnt", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.c1.options.orderentry.boe3.v1.0.12.displayindicator", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.display_price = ProtoField.new("Display Price", "cboe.c1.options.orderentry.boe3.v1.0.12.displayprice", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.display_range = ProtoField.new("Display Range", "cboe.c1.options.orderentry.boe3.v1.0.12.displayrange", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.drill_thru_protection = ProtoField.new("Drill Thru Protection", "cboe.c1.options.orderentry.boe3.v1.0.12.drillthruprotection", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_buy_clearing_firm = ProtoField.new("Equity Buy Clearing Firm", "cboe.c1.options.orderentry.boe3.v1.0.12.equitybuyclearingfirm", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_ex_destination = ProtoField.new("Equity Ex Destination", "cboe.c1.options.orderentry.boe3.v1.0.12.equityexdestination", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_leg_short_sell = ProtoField.new("Equity Leg Short Sell", "cboe.c1.options.orderentry.boe3.v1.0.12.equitylegshortsell", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_party_id = ProtoField.new("Equity Party Id", "cboe.c1.options.orderentry.boe3.v1.0.12.equitypartyid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_sell_clearing_firm = ProtoField.new("Equity Sell Clearing Firm", "cboe.c1.options.orderentry.boe3.v1.0.12.equitysellclearingfirm", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_trade_price = ProtoField.new("Equity Trade Price", "cboe.c1.options.orderentry.boe3.v1.0.12.equitytradeprice", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_trade_size = ProtoField.new("Equity Trade Size", "cboe.c1.options.orderentry.boe3.v1.0.12.equitytradesize", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_trade_venue = ProtoField.new("Equity Trade Venue", "cboe.c1.options.orderentry.boe3.v1.0.12.equitytradevenue", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_transact_time = ProtoField.new("Equity Transact Time", "cboe.c1.options.orderentry.boe3.v1.0.12.equitytransacttime", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.ex_destination = ProtoField.new("Ex Destination", "cboe.c1.options.orderentry.boe3.v1.0.12.exdestination", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.exec_id = ProtoField.new("Exec Id", "cboe.c1.options.orderentry.boe3.v1.0.12.execid", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.c1.options.orderentry.boe3.v1.0.12.execinst", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.c1.options.orderentry.boe3.v1.0.12.execrefid", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.expire_time = ProtoField.new("Expire Time", "cboe.c1.options.orderentry.boe3.v1.0.12.expiretime", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.fee_code = ProtoField.new("Fee Code", "cboe.c1.options.orderentry.boe3.v1.0.12.feecode", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.floor_destination = ProtoField.new("Floor Destination", "cboe.c1.options.orderentry.boe3.v1.0.12.floordestination", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.floor_routing_inst = ProtoField.new("Floor Routing Inst", "cboe.c1.options.orderentry.boe3.v1.0.12.floorroutinginst", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.floor_trade_time = ProtoField.new("Floor Trade Time", "cboe.c1.options.orderentry.boe3.v1.0.12.floortradetime", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.floor_trader_acronym = ProtoField.new("Floor Trader Acronym", "cboe.c1.options.orderentry.boe3.v1.0.12.floortraderacronym", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.frequent_trader_id = ProtoField.new("Frequent Trader Id", "cboe.c1.options.orderentry.boe3.v1.0.12.frequenttraderid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.give_up_firm_id = ProtoField.new("Give Up Firm Id", "cboe.c1.options.orderentry.boe3.v1.0.12.giveupfirmid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.gtc_order_filter = ProtoField.new("Gtc Order Filter", "cboe.c1.options.orderentry.boe3.v1.0.12.gtcorderfilter", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.held = ProtoField.new("Held", "cboe.c1.options.orderentry.boe3.v1.0.12.held", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.in_flight = ProtoField.new("In Flight", "cboe.c1.options.orderentry.boe3.v1.0.12.inflight", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.instruction_details = ProtoField.new("Instruction Details", "cboe.c1.options.orderentry.boe3.v1.0.12.instructiondetails", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.instrument_type_filter = ProtoField.new("Instrument Type Filter", "cboe.c1.options.orderentry.boe3.v1.0.12.instrumenttypefilter", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.last_priority = ProtoField.new("Last Priority", "cboe.c1.options.orderentry.boe3.v1.0.12.lastpriority", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.last_px = ProtoField.new("Last Px", "cboe.c1.options.orderentry.boe3.v1.0.12.lastpx", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.last_shares = ProtoField.new("Last Shares", "cboe.c1.options.orderentry.boe3.v1.0.12.lastshares", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.c1.options.orderentry.boe3.v1.0.12.leavesqty", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.leg_cnt = ProtoField.new("Leg Cnt", "cboe.c1.options.orderentry.boe3.v1.0.12.legcnt", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.leg_position_effect = ProtoField.new("Leg Position Effect", "cboe.c1.options.orderentry.boe3.v1.0.12.legpositioneffect", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.lockout_instruction = ProtoField.new("Lockout Instruction", "cboe.c1.options.orderentry.boe3.v1.0.12.lockoutinstruction", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.c1.options.orderentry.boe3.v1.0.12.loginrequestmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.c1.options.orderentry.boe3.v1.0.12.loginresponsemessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.c1.options.orderentry.boe3.v1.0.12.loginresponsestatus", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.c1.options.orderentry.boe3.v1.0.12.loginresponsetext", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.logoutreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.c1.options.orderentry.boe3.v1.0.12.logoutreasontext", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.logout_response_message = ProtoField.new("Logout Response Message", "cboe.c1.options.orderentry.boe3.v1.0.12.logoutresponsemessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.marketing_fee_code = ProtoField.new("Marketing Fee Code", "cboe.c1.options.orderentry.boe3.v1.0.12.marketingfeecode", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.c1.options.orderentry.boe3.v1.0.12.masscancelid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.c1.options.orderentry.boe3.v1.0.12.masscancelinst", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_lockout = ProtoField.new("Mass Cancel Lockout", "cboe.c1.options.orderentry.boe3.v1.0.12.masscancellockout", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_reject_reason = ProtoField.new("Mass Cancel Reject Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.masscancelrejectreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.c1.options.orderentry.boe3.v1.0.12.matchingunit", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.maturity_date = ProtoField.new("Maturity Date", "cboe.c1.options.orderentry.boe3.v1.0.12.maturitydate", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.max_floor = ProtoField.new("Max Floor", "cboe.c1.options.orderentry.boe3.v1.0.12.maxfloor", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.message = ProtoField.new("Message", "cboe.c1.options.orderentry.boe3.v1.0.12.message", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.message_header = ProtoField.new("Message Header", "cboe.c1.options.orderentry.boe3.v1.0.12.messageheader", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.message_length = ProtoField.new("Message Length", "cboe.c1.options.orderentry.boe3.v1.0.12.messagelength", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.message_type = ProtoField.new("Message Type", "cboe.c1.options.orderentry.boe3.v1.0.12.messagetype", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.min_qty = ProtoField.new("Min Qty", "cboe.c1.options.orderentry.boe3.v1.0.12.minqty", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.modifyrejectreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mtp_modifier = ProtoField.new("Mtp Modifier", "cboe.c1.options.orderentry.boe3.v1.0.12.mtpmodifier", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.multileg_reporting_type = ProtoField.new("Multileg Reporting Type", "cboe.c1.options.orderentry.boe3.v1.0.12.multilegreportingtype", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.no_of_securities = ProtoField.new("No Of Securities", "cboe.c1.options.orderentry.boe3.v1.0.12.noofsecurities", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.c1.options.orderentry.boe3.v1.0.12.numberofunits", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.open_close = ProtoField.new("Open Close", "cboe.c1.options.orderentry.boe3.v1.0.12.openclose", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.ord_type = ProtoField.new("Ord Type", "cboe.c1.options.orderentry.boe3.v1.0.12.ordtype", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_id = ProtoField.new("Order Id", "cboe.c1.options.orderentry.boe3.v1.0.12.orderid", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_origin = ProtoField.new("Order Origin", "cboe.c1.options.orderentry.boe3.v1.0.12.orderorigin", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_qty = ProtoField.new("Order Qty", "cboe.c1.options.orderentry.boe3.v1.0.12.orderqty", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_qty_short = ProtoField.new("Order Qty Short", "cboe.c1.options.orderentry.boe3.v1.0.12.orderqtyshort", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.orderrejectreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_restatement_reason = ProtoField.new("Order Restatement Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.orderrestatementreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_router_subsidy = ProtoField.new("Order Router Subsidy", "cboe.c1.options.orderentry.boe3.v1.0.12.orderroutersubsidy", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.c1.options.orderentry.boe3.v1.0.12.origclordid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.orig_time = ProtoField.new("Orig Time", "cboe.c1.options.orderentry.boe3.v1.0.12.origtime", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.packet = ProtoField.new("Packet", "cboe.c1.options.orderentry.boe3.v1.0.12.packet", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.password = ProtoField.new("Password", "cboe.c1.options.orderentry.boe3.v1.0.12.password", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.posting_instruction = ProtoField.new("Posting Instruction", "cboe.c1.options.orderentry.boe3.v1.0.12.postinginstruction", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.c1.options.orderentry.boe3.v1.0.12.preventmatch", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.price = ProtoField.new("Price", "cboe.c1.options.orderentry.boe3.v1.0.12.price", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.price_short = ProtoField.new("Price Short", "cboe.c1.options.orderentry.boe3.v1.0.12.priceshort", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.price_type = ProtoField.new("Price Type", "cboe.c1.options.orderentry.boe3.v1.0.12.pricetype", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.purgerejectreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.put_or_call = ProtoField.new("Put Or Call", "cboe.c1.options.orderentry.boe3.v1.0.12.putorcall", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote = ProtoField.new("Quote", "cboe.c1.options.orderentry.boe3.v1.0.12.quote", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_acknowledgement = ProtoField.new("Quote Acknowledgement", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteacknowledgement", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_cnt = ProtoField.new("Quote Cnt", "cboe.c1.options.orderentry.boe3.v1.0.12.quotecnt", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_reject_reason = ProtoField.new("Quote Reject Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.quoterejectreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_reject_sub_reason = ProtoField.new("Quote Reject Sub Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.quoterejectsubreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_result = ProtoField.new("Quote Result", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteresult", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_short = ProtoField.new("Quote Short", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteshort", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_symbol = ProtoField.new("Quote Symbol", "cboe.c1.options.orderentry.boe3.v1.0.12.quotesymbol", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_id = ProtoField.new("Quote Update Id", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteupdateid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.ratio_qty = ProtoField.new("Ratio Qty", "cboe.c1.options.orderentry.boe3.v1.0.12.ratioqty", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.replay_unspecified_unit = ProtoField.new("Replay Unspecified Unit", "cboe.c1.options.orderentry.boe3.v1.0.12.replayunspecifiedunit", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.request_received_time = ProtoField.new("Request Received Time", "cboe.c1.options.orderentry.boe3.v1.0.12.requestreceivedtime", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.reserved = ProtoField.new("Reserved", "cboe.c1.options.orderentry.boe3.v1.0.12.reserved", ftypes.BYTES)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.reserved_field = ProtoField.new("Reserved Field", "cboe.c1.options.orderentry.boe3.v1.0.12.reservedfield", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.c1.options.orderentry.boe3.v1.0.12.restatementreason", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.c1.options.orderentry.boe3.v1.0.12.riskreset", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.risk_reset_result = ProtoField.new("Risk Reset Result", "cboe.c1.options.orderentry.boe3.v1.0.12.riskresetresult", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.risk_root = ProtoField.new("Risk Root", "cboe.c1.options.orderentry.boe3.v1.0.12.riskroot", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.risk_status_id = ProtoField.new("Risk Status Id", "cboe.c1.options.orderentry.boe3.v1.0.12.riskstatusid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.rout_strategy = ProtoField.new("Rout Strategy", "cboe.c1.options.orderentry.boe3.v1.0.12.routstrategy", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.route_delivery_method = ProtoField.new("Route Delivery Method", "cboe.c1.options.orderentry.boe3.v1.0.12.routedeliverymethod", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.routing_firm_id = ProtoField.new("Routing Firm Id", "cboe.c1.options.orderentry.boe3.v1.0.12.routingfirmid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.c1.options.orderentry.boe3.v1.0.12.routinginst", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.scratch_pad = ProtoField.new("Scratch Pad", "cboe.c1.options.orderentry.boe3.v1.0.12.scratchpad", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.secondary_exec_id = ProtoField.new("Secondary Exec Id", "cboe.c1.options.orderentry.boe3.v1.0.12.secondaryexecid", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.c1.options.orderentry.boe3.v1.0.12.secondaryorderid", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.send_time = ProtoField.new("Send Time", "cboe.c1.options.orderentry.boe3.v1.0.12.sendtime", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.sender_location_id = ProtoField.new("Sender Location Id", "cboe.c1.options.orderentry.boe3.v1.0.12.senderlocationid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.c1.options.orderentry.boe3.v1.0.12.sequencenumber", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.session_eligibility = ProtoField.new("Session Eligibility", "cboe.c1.options.orderentry.boe3.v1.0.12.sessioneligibility", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.session_id = ProtoField.new("Session Id", "cboe.c1.options.orderentry.boe3.v1.0.12.sessionid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.c1.options.orderentry.boe3.v1.0.12.sessionsubid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.side = ProtoField.new("Side", "cboe.c1.options.orderentry.boe3.v1.0.12.side", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.size_modifier = ProtoField.new("Size Modifier", "cboe.c1.options.orderentry.boe3.v1.0.12.sizemodifier", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.source_matching_unit = ProtoField.new("Source Matching Unit", "cboe.c1.options.orderentry.boe3.v1.0.12.sourcematchingunit", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.c1.options.orderentry.boe3.v1.0.12.startofmessage", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.stop_px = ProtoField.new("Stop Px", "cboe.c1.options.orderentry.boe3.v1.0.12.stoppx", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.strategy_id = ProtoField.new("Strategy Id", "cboe.c1.options.orderentry.boe3.v1.0.12.strategyid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.strike_price = ProtoField.new("Strike Price", "cboe.c1.options.orderentry.boe3.v1.0.12.strikeprice", ftypes.DOUBLE)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.c1.options.orderentry.boe3.v1.0.12.subliquidityindicator", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.symbol = ProtoField.new("Symbol", "cboe.c1.options.orderentry.boe3.v1.0.12.symbol", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.target_matching_unit = ProtoField.new("Target Matching Unit", "cboe.c1.options.orderentry.boe3.v1.0.12.targetmatchingunit", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.target_party_id = ProtoField.new("Target Party Id", "cboe.c1.options.orderentry.boe3.v1.0.12.targetpartyid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.text = ProtoField.new("Text", "cboe.c1.options.orderentry.boe3.v1.0.12.text", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.tied_hedge = ProtoField.new("Tied Hedge", "cboe.c1.options.orderentry.boe3.v1.0.12.tiedhedge", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.time_in_force = ProtoField.new("Time In Force", "cboe.c1.options.orderentry.boe3.v1.0.12.timeinforce", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.trade_date = ProtoField.new("Trade Date", "cboe.c1.options.orderentry.boe3.v1.0.12.tradedate", ftypes.UINT32)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.trade_through_alert_type = ProtoField.new("Trade Through Alert Type", "cboe.c1.options.orderentry.boe3.v1.0.12.tradethroughalerttype", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.trading_group_id = ProtoField.new("Trading Group Id", "cboe.c1.options.orderentry.boe3.v1.0.12.tradinggroupid", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.c1.options.orderentry.boe3.v1.0.12.transactiontime", ftypes.UINT64)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.unique_id_level = ProtoField.new("Unique Id Level", "cboe.c1.options.orderentry.boe3.v1.0.12.uniqueidlevel", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.unit_number = ProtoField.new("Unit Number", "cboe.c1.options.orderentry.boe3.v1.0.12.unitnumber", ftypes.UINT8)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.c1.options.orderentry.boe3.v1.0.12.unitsequence", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.working_price = ProtoField.new("Working Price", "cboe.c1.options.orderentry.boe3.v1.0.12.workingprice", ftypes.DOUBLE)

-- Cboe C1 Options OrderEntry Boe3 1.0.12 messages
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "cboe.c1.options.orderentry.boe3.v1.0.12.cancelordermessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "cboe.c1.options.orderentry.boe3.v1.0.12.cancelrejectedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.carried_restatement_message = ProtoField.new("Carried Restatement Message", "cboe.c1.options.orderentry.boe3.v1.0.12.carriedrestatementmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_order_acknowledgment_message = ProtoField.new("Cross Order Acknowledgment Message", "cboe.c1.options.orderentry.boe3.v1.0.12.crossorderacknowledgmentmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_order_cancelled_message = ProtoField.new("Cross Order Cancelled Message", "cboe.c1.options.orderentry.boe3.v1.0.12.crossordercancelledmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_order_rejected_message = ProtoField.new("Cross Order Rejected Message", "cboe.c1.options.orderentry.boe3.v1.0.12.crossorderrejectedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.done_for_day_message = ProtoField.new("Done For Day Message", "cboe.c1.options.orderentry.boe3.v1.0.12.donefordaymessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_acknowledgment_message = ProtoField.new("Mass Cancel Acknowledgment Message", "cboe.c1.options.orderentry.boe3.v1.0.12.masscancelacknowledgmentmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_order_message = ProtoField.new("Mass Cancel Order Message", "cboe.c1.options.orderentry.boe3.v1.0.12.masscancelordermessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_rejected_message = ProtoField.new("Mass Cancel Rejected Message", "cboe.c1.options.orderentry.boe3.v1.0.12.masscancelrejectedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.modify_order_message = ProtoField.new("Modify Order Message", "cboe.c1.options.orderentry.boe3.v1.0.12.modifyordermessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.modify_rejected_message = ProtoField.new("Modify Rejected Message", "cboe.c1.options.orderentry.boe3.v1.0.12.modifyrejectedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_accepted_message = ProtoField.new("New Complex Instrument Accepted Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newcomplexinstrumentacceptedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_message = ProtoField.new("New Complex Instrument Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newcomplexinstrumentmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_rejected_message = ProtoField.new("New Complex Instrument Rejected Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newcomplexinstrumentrejectedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_order_message = ProtoField.new("New Complex Order Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newcomplexordermessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_order_short_message = ProtoField.new("New Complex Order Short Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newcomplexordershortmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_order_cross_message = ProtoField.new("New Order Cross Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newordercrossmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_order_cross_multileg_message = ProtoField.new("New Order Cross Multileg Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newordercrossmultilegmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_order_message = ProtoField.new("New Order Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newordermessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_order_short_message = ProtoField.new("New Order Short Message", "cboe.c1.options.orderentry.boe3.v1.0.12.newordershortmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_acknowledgement_message = ProtoField.new("Order Acknowledgement Message", "cboe.c1.options.orderentry.boe3.v1.0.12.orderacknowledgementmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "cboe.c1.options.orderentry.boe3.v1.0.12.ordercancelledmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_execution_message = ProtoField.new("Order Execution Message", "cboe.c1.options.orderentry.boe3.v1.0.12.orderexecutionmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_modified_message = ProtoField.new("Order Modified Message", "cboe.c1.options.orderentry.boe3.v1.0.12.ordermodifiedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "cboe.c1.options.orderentry.boe3.v1.0.12.orderrejectedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_restated_message = ProtoField.new("Order Restated Message", "cboe.c1.options.orderentry.boe3.v1.0.12.orderrestatedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_acknowledgement_message = ProtoField.new("Purge Acknowledgement Message", "cboe.c1.options.orderentry.boe3.v1.0.12.purgeacknowledgementmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_notification_message = ProtoField.new("Purge Notification Message", "cboe.c1.options.orderentry.boe3.v1.0.12.purgenotificationmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_orders_message = ProtoField.new("Purge Orders Message", "cboe.c1.options.orderentry.boe3.v1.0.12.purgeordersmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_rejected_message = ProtoField.new("Purge Rejected Message", "cboe.c1.options.orderentry.boe3.v1.0.12.purgerejectedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_cancelled_message = ProtoField.new("Quote Cancelled Message", "cboe.c1.options.orderentry.boe3.v1.0.12.quotecancelledmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_execution_message = ProtoField.new("Quote Execution Message", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteexecutionmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_restated_message = ProtoField.new("Quote Restated Message", "cboe.c1.options.orderentry.boe3.v1.0.12.quoterestatedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_acknowledgement_message = ProtoField.new("Quote Update Acknowledgement Message", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteupdateacknowledgementmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_message = ProtoField.new("Quote Update Message", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteupdatemessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_rejected_message = ProtoField.new("Quote Update Rejected Message", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteupdaterejectedmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_short_message = ProtoField.new("Quote Update Short Message", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteupdateshortmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.reset_risk_acknowledgement_message = ProtoField.new("Reset Risk Acknowledgement Message", "cboe.c1.options.orderentry.boe3.v1.0.12.resetriskacknowledgementmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.reset_risk_message = ProtoField.new("Reset Risk Message", "cboe.c1.options.orderentry.boe3.v1.0.12.resetriskmessage", ftypes.STRING)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.trade_cancel_correct_message = ProtoField.new("Trade Cancel Correct Message", "cboe.c1.options.orderentry.boe3.v1.0.12.tradecancelcorrectmessage", ftypes.STRING)

-- Cboe C1 Options OrderEntry Boe3 1.0.12 generated fields
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.acknowledgement_allocation_index = ProtoField.new("Acknowledgement Allocation Index", "cboe.c1.options.orderentry.boe3.v1.0.12.acknowledgementallocationindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.allocation_index = ProtoField.new("Allocation Index", "cboe.c1.options.orderentry.boe3.v1.0.12.allocationindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.allocation_cancelled_index = ProtoField.new("Allocation Cancelled Index", "cboe.c1.options.orderentry.boe3.v1.0.12.allocationcancelledindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.complex_leg_index = ProtoField.new("Complex Leg Index", "cboe.c1.options.orderentry.boe3.v1.0.12.complexlegindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.custom_group_id_index = ProtoField.new("Custom Group Id Index", "cboe.c1.options.orderentry.boe3.v1.0.12.customgroupidindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.leg_position_effect_index = ProtoField.new("Leg Position Effect Index", "cboe.c1.options.orderentry.boe3.v1.0.12.legpositioneffectindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_index = ProtoField.new("Quote Index", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_acknowledgement_index = ProtoField.new("Quote Acknowledgement Index", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteacknowledgementindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_short_index = ProtoField.new("Quote Short Index", "cboe.c1.options.orderentry.boe3.v1.0.12.quoteshortindex", ftypes.UINT16)
omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.unit_sequence_index = ProtoField.new("Unit Sequence Index", "cboe.c1.options.orderentry.boe3.v1.0.12.unitsequenceindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe C1 Options OrderEntry Boe3 1.0.12 Element Dissection Options
show.acknowledgement_allocation = true
show.allocation = true
show.allocation_cancelled = true
show.cancel_order_message = true
show.cancel_rejected_message = true
show.carried_restatement_message = true
show.complex_leg = true
show.cross_order_acknowledgment_message = true
show.cross_order_cancelled_message = true
show.cross_order_rejected_message = true
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
show.new_order_cross_message = true
show.new_order_cross_multileg_message = true
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

-- Register Cboe C1 Options OrderEntry Boe3 1.0.12 Show Options
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_acknowledgement_allocation = Pref.bool("Show Acknowledgement Allocation", show.acknowledgement_allocation, "Parse and add Acknowledgement Allocation to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_allocation = Pref.bool("Show Allocation", show.allocation, "Parse and add Allocation to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_allocation_cancelled = Pref.bool("Show Allocation Cancelled", show.allocation_cancelled, "Parse and add Allocation Cancelled to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cancel_order_message = Pref.bool("Show Cancel Order Message", show.cancel_order_message, "Parse and add Cancel Order Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cancel_rejected_message = Pref.bool("Show Cancel Rejected Message", show.cancel_rejected_message, "Parse and add Cancel Rejected Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_carried_restatement_message = Pref.bool("Show Carried Restatement Message", show.carried_restatement_message, "Parse and add Carried Restatement Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_complex_leg = Pref.bool("Show Complex Leg", show.complex_leg, "Parse and add Complex Leg to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_acknowledgment_message = Pref.bool("Show Cross Order Acknowledgment Message", show.cross_order_acknowledgment_message, "Parse and add Cross Order Acknowledgment Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_cancelled_message = Pref.bool("Show Cross Order Cancelled Message", show.cross_order_cancelled_message, "Parse and add Cross Order Cancelled Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_rejected_message = Pref.bool("Show Cross Order Rejected Message", show.cross_order_rejected_message, "Parse and add Cross Order Rejected Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_done_for_day_message = Pref.bool("Show Done For Day Message", show.done_for_day_message, "Parse and add Done For Day Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_login_request_message = Pref.bool("Show Login Request Message", show.login_request_message, "Parse and add Login Request Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_login_response_message = Pref.bool("Show Login Response Message", show.login_response_message, "Parse and add Login Response Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_logout_response_message = Pref.bool("Show Logout Response Message", show.logout_response_message, "Parse and add Logout Response Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_acknowledgment_message = Pref.bool("Show Mass Cancel Acknowledgment Message", show.mass_cancel_acknowledgment_message, "Parse and add Mass Cancel Acknowledgment Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_inst = Pref.bool("Show Mass Cancel Inst", show.mass_cancel_inst, "Parse and add Mass Cancel Inst to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_order_message = Pref.bool("Show Mass Cancel Order Message", show.mass_cancel_order_message, "Parse and add Mass Cancel Order Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_rejected_message = Pref.bool("Show Mass Cancel Rejected Message", show.mass_cancel_rejected_message, "Parse and add Mass Cancel Rejected Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_modify_order_message = Pref.bool("Show Modify Order Message", show.modify_order_message, "Parse and add Modify Order Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_modify_rejected_message = Pref.bool("Show Modify Rejected Message", show.modify_rejected_message, "Parse and add Modify Rejected Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_accepted_message = Pref.bool("Show New Complex Instrument Accepted Message", show.new_complex_instrument_accepted_message, "Parse and add New Complex Instrument Accepted Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_message = Pref.bool("Show New Complex Instrument Message", show.new_complex_instrument_message, "Parse and add New Complex Instrument Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_rejected_message = Pref.bool("Show New Complex Instrument Rejected Message", show.new_complex_instrument_rejected_message, "Parse and add New Complex Instrument Rejected Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_message = Pref.bool("Show New Complex Order Message", show.new_complex_order_message, "Parse and add New Complex Order Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_short_message = Pref.bool("Show New Complex Order Short Message", show.new_complex_order_short_message, "Parse and add New Complex Order Short Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_cross_message = Pref.bool("Show New Order Cross Message", show.new_order_cross_message, "Parse and add New Order Cross Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_cross_multileg_message = Pref.bool("Show New Order Cross Multileg Message", show.new_order_cross_multileg_message, "Parse and add New Order Cross Multileg Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_message = Pref.bool("Show New Order Message", show.new_order_message, "Parse and add New Order Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_short_message = Pref.bool("Show New Order Short Message", show.new_order_short_message, "Parse and add New Order Short Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_acknowledgement_message = Pref.bool("Show Order Acknowledgement Message", show.order_acknowledgement_message, "Parse and add Order Acknowledgement Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_cancelled_message = Pref.bool("Show Order Cancelled Message", show.order_cancelled_message, "Parse and add Order Cancelled Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_execution_message = Pref.bool("Show Order Execution Message", show.order_execution_message, "Parse and add Order Execution Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_modified_message = Pref.bool("Show Order Modified Message", show.order_modified_message, "Parse and add Order Modified Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_rejected_message = Pref.bool("Show Order Rejected Message", show.order_rejected_message, "Parse and add Order Rejected Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_restated_message = Pref.bool("Show Order Restated Message", show.order_restated_message, "Parse and add Order Restated Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_prevent_match = Pref.bool("Show Prevent Match", show.prevent_match, "Parse and add Prevent Match to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_acknowledgement_message = Pref.bool("Show Purge Acknowledgement Message", show.purge_acknowledgement_message, "Parse and add Purge Acknowledgement Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_notification_message = Pref.bool("Show Purge Notification Message", show.purge_notification_message, "Parse and add Purge Notification Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_orders_message = Pref.bool("Show Purge Orders Message", show.purge_orders_message, "Parse and add Purge Orders Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_rejected_message = Pref.bool("Show Purge Rejected Message", show.purge_rejected_message, "Parse and add Purge Rejected Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote = Pref.bool("Show Quote", show.quote, "Parse and add Quote to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_acknowledgement = Pref.bool("Show Quote Acknowledgement", show.quote_acknowledgement, "Parse and add Quote Acknowledgement to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_cancelled_message = Pref.bool("Show Quote Cancelled Message", show.quote_cancelled_message, "Parse and add Quote Cancelled Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_execution_message = Pref.bool("Show Quote Execution Message", show.quote_execution_message, "Parse and add Quote Execution Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_restated_message = Pref.bool("Show Quote Restated Message", show.quote_restated_message, "Parse and add Quote Restated Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_short = Pref.bool("Show Quote Short", show.quote_short, "Parse and add Quote Short to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_acknowledgement_message = Pref.bool("Show Quote Update Acknowledgement Message", show.quote_update_acknowledgement_message, "Parse and add Quote Update Acknowledgement Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_message = Pref.bool("Show Quote Update Message", show.quote_update_message, "Parse and add Quote Update Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_rejected_message = Pref.bool("Show Quote Update Rejected Message", show.quote_update_rejected_message, "Parse and add Quote Update Rejected Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_short_message = Pref.bool("Show Quote Update Short Message", show.quote_update_short_message, "Parse and add Quote Update Short Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_acknowledgement_message = Pref.bool("Show Reset Risk Acknowledgement Message", show.reset_risk_acknowledgement_message, "Parse and add Reset Risk Acknowledgement Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_message = Pref.bool("Show Reset Risk Message", show.reset_risk_message, "Parse and add Reset Risk Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_trade_cancel_correct_message = Pref.bool("Show Trade Cancel Correct Message", show.trade_cancel_correct_message, "Parse and add Trade Cancel Correct Message to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_unit_sequence = Pref.bool("Show Unit Sequence", show.unit_sequence, "Parse and add Unit Sequence to protocol tree")
omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")

-- Handle changed preferences
function omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.acknowledgement_allocation ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_acknowledgement_allocation then
    show.acknowledgement_allocation = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_acknowledgement_allocation
    changed = true
  end
  if show.allocation ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_allocation then
    show.allocation = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_allocation
    changed = true
  end
  if show.allocation_cancelled ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_allocation_cancelled then
    show.allocation_cancelled = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_allocation_cancelled
    changed = true
  end
  if show.cancel_order_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cancel_order_message then
    show.cancel_order_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cancel_order_message
    changed = true
  end
  if show.cancel_rejected_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cancel_rejected_message then
    show.cancel_rejected_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cancel_rejected_message
    changed = true
  end
  if show.carried_restatement_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_carried_restatement_message then
    show.carried_restatement_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_carried_restatement_message
    changed = true
  end
  if show.complex_leg ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_complex_leg then
    show.complex_leg = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_complex_leg
    changed = true
  end
  if show.cross_order_acknowledgment_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_acknowledgment_message then
    show.cross_order_acknowledgment_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_acknowledgment_message
    changed = true
  end
  if show.cross_order_cancelled_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_cancelled_message then
    show.cross_order_cancelled_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_cancelled_message
    changed = true
  end
  if show.cross_order_rejected_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_rejected_message then
    show.cross_order_rejected_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_cross_order_rejected_message
    changed = true
  end
  if show.done_for_day_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_done_for_day_message then
    show.done_for_day_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_done_for_day_message
    changed = true
  end
  if show.login_request_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_login_request_message then
    show.login_request_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_login_request_message
    changed = true
  end
  if show.login_response_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_login_response_message then
    show.login_response_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_login_response_message
    changed = true
  end
  if show.logout_response_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_logout_response_message then
    show.logout_response_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_logout_response_message
    changed = true
  end
  if show.mass_cancel_acknowledgment_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_acknowledgment_message then
    show.mass_cancel_acknowledgment_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_acknowledgment_message
    changed = true
  end
  if show.mass_cancel_inst ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_inst then
    show.mass_cancel_inst = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_inst
    changed = true
  end
  if show.mass_cancel_order_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_order_message then
    show.mass_cancel_order_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_order_message
    changed = true
  end
  if show.mass_cancel_rejected_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_rejected_message then
    show.mass_cancel_rejected_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_mass_cancel_rejected_message
    changed = true
  end
  if show.message_header ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_message_header then
    show.message_header = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_message_header
    changed = true
  end
  if show.modify_order_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_modify_order_message then
    show.modify_order_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_modify_order_message
    changed = true
  end
  if show.modify_rejected_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_modify_rejected_message then
    show.modify_rejected_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_modify_rejected_message
    changed = true
  end
  if show.new_complex_instrument_accepted_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_accepted_message then
    show.new_complex_instrument_accepted_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_accepted_message
    changed = true
  end
  if show.new_complex_instrument_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_message then
    show.new_complex_instrument_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_message
    changed = true
  end
  if show.new_complex_instrument_rejected_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_rejected_message then
    show.new_complex_instrument_rejected_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_instrument_rejected_message
    changed = true
  end
  if show.new_complex_order_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_message then
    show.new_complex_order_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_message
    changed = true
  end
  if show.new_complex_order_short_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_short_message then
    show.new_complex_order_short_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_complex_order_short_message
    changed = true
  end
  if show.new_order_cross_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_cross_message then
    show.new_order_cross_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_cross_message
    changed = true
  end
  if show.new_order_cross_multileg_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_cross_multileg_message then
    show.new_order_cross_multileg_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_cross_multileg_message
    changed = true
  end
  if show.new_order_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_message then
    show.new_order_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_message
    changed = true
  end
  if show.new_order_short_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_short_message then
    show.new_order_short_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_new_order_short_message
    changed = true
  end
  if show.order_acknowledgement_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_acknowledgement_message then
    show.order_acknowledgement_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_acknowledgement_message
    changed = true
  end
  if show.order_cancelled_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_cancelled_message then
    show.order_cancelled_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_cancelled_message
    changed = true
  end
  if show.order_execution_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_execution_message then
    show.order_execution_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_execution_message
    changed = true
  end
  if show.order_modified_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_modified_message then
    show.order_modified_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_modified_message
    changed = true
  end
  if show.order_rejected_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_rejected_message then
    show.order_rejected_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_rejected_message
    changed = true
  end
  if show.order_restated_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_restated_message then
    show.order_restated_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_order_restated_message
    changed = true
  end
  if show.packet ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_packet then
    show.packet = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_packet
    changed = true
  end
  if show.prevent_match ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_prevent_match then
    show.prevent_match = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_prevent_match
    changed = true
  end
  if show.purge_acknowledgement_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_acknowledgement_message then
    show.purge_acknowledgement_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_acknowledgement_message
    changed = true
  end
  if show.purge_notification_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_notification_message then
    show.purge_notification_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_notification_message
    changed = true
  end
  if show.purge_orders_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_orders_message then
    show.purge_orders_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_orders_message
    changed = true
  end
  if show.purge_rejected_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_rejected_message then
    show.purge_rejected_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_purge_rejected_message
    changed = true
  end
  if show.quote ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote then
    show.quote = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote
    changed = true
  end
  if show.quote_acknowledgement ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_acknowledgement then
    show.quote_acknowledgement = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_acknowledgement
    changed = true
  end
  if show.quote_cancelled_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_cancelled_message then
    show.quote_cancelled_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_cancelled_message
    changed = true
  end
  if show.quote_execution_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_execution_message then
    show.quote_execution_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_execution_message
    changed = true
  end
  if show.quote_restated_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_restated_message then
    show.quote_restated_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_restated_message
    changed = true
  end
  if show.quote_short ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_short then
    show.quote_short = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_short
    changed = true
  end
  if show.quote_update_acknowledgement_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_acknowledgement_message then
    show.quote_update_acknowledgement_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_acknowledgement_message
    changed = true
  end
  if show.quote_update_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_message then
    show.quote_update_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_message
    changed = true
  end
  if show.quote_update_rejected_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_rejected_message then
    show.quote_update_rejected_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_rejected_message
    changed = true
  end
  if show.quote_update_short_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_short_message then
    show.quote_update_short_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_quote_update_short_message
    changed = true
  end
  if show.reset_risk_acknowledgement_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_acknowledgement_message then
    show.reset_risk_acknowledgement_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_acknowledgement_message
    changed = true
  end
  if show.reset_risk_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_message then
    show.reset_risk_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_reset_risk_message
    changed = true
  end
  if show.trade_cancel_correct_message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_trade_cancel_correct_message then
    show.trade_cancel_correct_message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_trade_cancel_correct_message
    changed = true
  end
  if show.unit_sequence ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_unit_sequence then
    show.unit_sequence = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_unit_sequence
    changed = true
  end
  if show.message ~= omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_message then
    show.message = omi_cboe_c1_options_orderentry_boe3_v1_0_12.prefs.show_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Cboe C1 Options OrderEntry Boe3 1.0.12
-----------------------------------------------------------------------

-- Symbol
cboe_c1_options_orderentry_boe3_v1_0_12.symbol = {}

-- Size: Symbol
cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size = 8

-- Display: Symbol
cboe_c1_options_orderentry_boe3_v1_0_12.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.symbol, range, value, display)

  return offset + length, value
end

-- Routing Firm Id
cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id = {}

-- Size: Routing Firm Id
cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size = 4

-- Display: Routing Firm Id
cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.display = function(value)
  return "Routing Firm Id: "..value
end

-- Dissect: Routing Firm Id
cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.routing_firm_id, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm = {}

-- Size: Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.display = function(value)
  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time = {}

-- Size: Transaction Time
cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size = 8

-- Display: Transaction Time
cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.display = function(value)
  return "Transaction Time: "..value
end

-- Dissect: Transaction Time
cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- In Flight
cboe_c1_options_orderentry_boe3_v1_0_12.in_flight = {}

-- Size: In Flight
cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size = 2

-- Display: In Flight
cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.display = function(value)
  return "In Flight: "..value
end

-- Dissect: In Flight
cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.in_flight, range, value, display)

  return offset + length, value
end

-- Done For Day Message
cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message = {}

-- Size: Done For Day Message
cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size

-- Display: Done For Day Message
cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Done For Day Message
cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Done For Day Message
cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.dissect = function(buffer, offset, packet, parent)
  if show.done_for_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.done_for_day_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Held
cboe_c1_options_orderentry_boe3_v1_0_12.held = {}

-- Size: Held
cboe_c1_options_orderentry_boe3_v1_0_12.held.size = 1

-- Display: Held
cboe_c1_options_orderentry_boe3_v1_0_12.held.display = function(value)
  if value == "N" then
    return "Held: Mark Order As Not Held (N)"
  end
  if value == "Y" then
    return "Held: Mark Order As Held (Y)"
  end

  return "Held: Unknown("..value..")"
end

-- Dissect: Held
cboe_c1_options_orderentry_boe3_v1_0_12.held.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.held.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.held.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.held, range, value, display)

  return offset + length, value
end

-- Strategy Id
cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id = {}

-- Size: Strategy Id
cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.size = 1

-- Display: Strategy Id
cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.display = function(value)
  if value == "C" then
    return "Strategy Id: Conversion (C)"
  end
  if value == "R" then
    return "Strategy Id: Reversal (R)"
  end
  if value == "M" then
    return "Strategy Id: Merger (M)"
  end
  if value == "S" then
    return "Strategy Id: Short Stock Interest (S)"
  end
  if value == "J" then
    return "Strategy Id: Jelly Roll (J)"
  end

  return "Strategy Id: Unknown("..value..")"
end

-- Dissect: Strategy Id
cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Price Type
cboe_c1_options_orderentry_boe3_v1_0_12.price_type = {}

-- Size: Price Type
cboe_c1_options_orderentry_boe3_v1_0_12.price_type.size = 1

-- Display: Price Type
cboe_c1_options_orderentry_boe3_v1_0_12.price_type.display = function(value)
  if value == "0" then
    return "Price Type: Fixed Cabinet Trade Price (0)"
  end
  if value == "2" then
    return "Price Type: Price Per Unit (2)"
  end
  if value == "3" then
    return "Price Type: Fixed Amount (3)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
cboe_c1_options_orderentry_boe3_v1_0_12.price_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.price_type, range, value, display)

  return offset + length, value
end

-- Order Origin
cboe_c1_options_orderentry_boe3_v1_0_12.order_origin = {}

-- Size: Order Origin
cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.size = 3

-- Display: Order Origin
cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.display = function(value)
  return "Order Origin: "..value
end

-- Dissect: Order Origin
cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_origin, range, value, display)

  return offset + length, value
end

-- Floor Routing Inst
cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst = {}

-- Size: Floor Routing Inst
cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.size = 1

-- Display: Floor Routing Inst
cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.display = function(value)
  if value == "D" then
    return "Floor Routing Inst: Direct Do Not Attempt To Process Electronically (D)"
  end
  if value == "E" then
    return "Floor Routing Inst: Electronic Only (E)"
  end
  if value == "X" then
    return "Floor Routing Inst: Route To Floor If Unable To Process Electronically (X)"
  end
  if value == " " then
    return "Floor Routing Inst: Port Level Default (<whitespace>)"
  end

  return "Floor Routing Inst: Unknown("..value..")"
end

-- Dissect: Floor Routing Inst
cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.floor_routing_inst, range, value, display)

  return offset + length, value
end

-- Floor Destination
cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination = {}

-- Size: Floor Destination
cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.size = 4

-- Display: Floor Destination
cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.display = function(value)
  return "Floor Destination: "..value
end

-- Dissect: Floor Destination
cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.floor_destination, range, value, display)

  return offset + length, value
end

-- Compression
cboe_c1_options_orderentry_boe3_v1_0_12.compression = {}

-- Size: Compression
cboe_c1_options_orderentry_boe3_v1_0_12.compression.size = 1

-- Display: Compression
cboe_c1_options_orderentry_boe3_v1_0_12.compression.display = function(value)
  if value == "N" then
    return "Compression: No (N)"
  end
  if value == "Y" then
    return "Compression: Yes (Y)"
  end
  if value == "When CrossType (549)" then
    return "Compression: 4 This Field Should Not Be Specified (When CrossType (549))"
  end

  return "Compression: Unknown("..value..")"
end

-- Dissect: Compression
cboe_c1_options_orderentry_boe3_v1_0_12.compression.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.compression.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.compression.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.compression, range, value, display)

  return offset + length, value
end

-- Combo Order
cboe_c1_options_orderentry_boe3_v1_0_12.combo_order = {}

-- Size: Combo Order
cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.size = 1

-- Display: Combo Order
cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.display = function(value)
  if value == "N" then
    return "Combo Order: No (N)"
  end
  if value == "Y" then
    return "Combo Order: Yes (Y)"
  end

  return "Combo Order: Unknown("..value..")"
end

-- Dissect: Combo Order
cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.combo_order, range, value, display)

  return offset + length, value
end

-- Session Eligibility
cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility = {}

-- Size: Session Eligibility
cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size = 1

-- Display: Session Eligibility
cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.display = function(value)
  if value == "R" then
    return "Session Eligibility: Order Participates In Regular Trading Hours (R)"
  end
  if value == "A" then
    return "Session Eligibility: Order Participates In Both Global And Regular Trading Hours Also (A)"
  end
  if value == "B" then
    return "Session Eligibility: Order Participates In Both Rth And Curb Session (B)"
  end

  return "Session Eligibility: Unknown("..value..")"
end

-- Dissect: Session Eligibility
cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.session_eligibility, range, value, display)

  return offset + length, value
end

-- Frequent Trader Id
cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id = {}

-- Size: Frequent Trader Id
cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.size = 6

-- Display: Frequent Trader Id
cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.display = function(value)
  return "Frequent Trader Id: "..value
end

-- Dissect: Frequent Trader Id
cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.frequent_trader_id, range, value, display)

  return offset + length, value
end

-- Client Id Attr
cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr = {}

-- Size: Client Id Attr
cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.size = 4

-- Display: Client Id Attr
cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.display = function(value)
  return "Client Id Attr: "..value
end

-- Dissect: Client Id Attr
cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.client_id_attr, range, value, display)

  return offset + length, value
end

-- Equity Party Id
cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id = {}

-- Size: Equity Party Id
cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.size = 4

-- Display: Equity Party Id
cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.display = function(value)
  return "Equity Party Id: "..value
end

-- Dissect: Equity Party Id
cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_party_id, range, value, display)

  return offset + length, value
end

-- Drill Thru Protection
cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection = {}

-- Size: Drill Thru Protection
cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.size = 8

-- Display: Drill Thru Protection
cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.display = function(value)
  return "Drill Thru Protection: "..value
end

-- Translate: Drill Thru Protection
cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Drill Thru Protection
cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.drill_thru_protection, range, value, display)

  return offset + length, value
end

-- Cum Qty
cboe_c1_options_orderentry_boe3_v1_0_12.cum_qty = {}

-- Size: Cum Qty
cboe_c1_options_orderentry_boe3_v1_0_12.cum_qty.size = 4

-- Display: Cum Qty
cboe_c1_options_orderentry_boe3_v1_0_12.cum_qty.display = function(value)
  return "Cum Qty: "..value
end

-- Dissect: Cum Qty
cboe_c1_options_orderentry_boe3_v1_0_12.cum_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cum_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cum_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cum_qty, range, value, display)

  return offset + length, value
end

-- Clearing Optional Data
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data = {}

-- Size: Clearing Optional Data
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.size = 16

-- Display: Clearing Optional Data
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.display = function(value)
  return "Clearing Optional Data: "..value
end

-- Dissect: Clearing Optional Data
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.clearing_optional_data, range, value, display)

  return offset + length, value
end

-- Cmta Number
cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number = {}

-- Size: Cmta Number
cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size = 4

-- Display: Cmta Number
cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.display = function(value)
  return "Cmta Number: "..value
end

-- Dissect: Cmta Number
cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cmta_number, range, value, display)

  return offset + length, value
end

-- Auction Id
cboe_c1_options_orderentry_boe3_v1_0_12.auction_id = {}

-- Size: Auction Id
cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.size = 8

-- Display: Auction Id
cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Target Party Id
cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id = {}

-- Size: Target Party Id
cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size = 4

-- Display: Target Party Id
cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.display = function(value)
  return "Target Party Id: "..value
end

-- Dissect: Target Party Id
cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.target_party_id, range, value, display)

  return offset + length, value
end

-- Ex Destination
cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination = {}

-- Size: Ex Destination
cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.size = 1

-- Display: Ex Destination
cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.ex_destination, range, value, display)

  return offset + length, value
end

-- Route Delivery Method
cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method = {}

-- Size: Route Delivery Method
cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.size = 3

-- Display: Route Delivery Method
cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.display = function(value)
  if value == "RTI" then
    return "Route Delivery Method: Route To Improve (RTI)"
  end
  if value == "RTF" then
    return "Route Delivery Method: Route To Fill (RTF)"
  end

  return "Route Delivery Method: Unknown("..value..")"
end

-- Dissect: Route Delivery Method
cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.route_delivery_method, range, value, display)

  return offset + length, value
end

-- Rout Strategy
cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy = {}

-- Size: Rout Strategy
cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.size = 6

-- Display: Rout Strategy
cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.display = function(value)
  return "Rout Strategy: "..value
end

-- Dissect: Rout Strategy
cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.rout_strategy, range, value, display)

  return offset + length, value
end

-- Routing Inst
cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst = {}

-- Size: Routing Inst
cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.size = 4

-- Display: Routing Inst
cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.display = function(value)
  return "Routing Inst: "..value
end

-- Dissect: Routing Inst
cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Stop Px
cboe_c1_options_orderentry_boe3_v1_0_12.stop_px = {}

-- Size: Stop Px
cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.size = 8

-- Display: Stop Px
cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Stop Px
cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Attributed Quote
cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote = {}

-- Size: Attributed Quote
cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.size = 1

-- Display: Attributed Quote
cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.attributed_quote, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_c1_options_orderentry_boe3_v1_0_12.expire_time = {}

-- Size: Expire Time
cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.size = 8

-- Display: Expire Time
cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.display = function(value)
  return "Expire Time: "..value
end

-- Dissect: Expire Time
cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_c1_options_orderentry_boe3_v1_0_12.working_price = {}

-- Size: Working Price
cboe_c1_options_orderentry_boe3_v1_0_12.working_price.size = 8

-- Display: Working Price
cboe_c1_options_orderentry_boe3_v1_0_12.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_c1_options_orderentry_boe3_v1_0_12.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_c1_options_orderentry_boe3_v1_0_12.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.working_price.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.working_price, range, value, display)

  return offset + length, value
end

-- Display Price
cboe_c1_options_orderentry_boe3_v1_0_12.display_price = {}

-- Size: Display Price
cboe_c1_options_orderentry_boe3_v1_0_12.display_price.size = 8

-- Display: Display Price
cboe_c1_options_orderentry_boe3_v1_0_12.display_price.display = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
cboe_c1_options_orderentry_boe3_v1_0_12.display_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Display Price
cboe_c1_options_orderentry_boe3_v1_0_12.display_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.display_price.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.display_price, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty = {}

-- Size: Leaves Qty
cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Open Close
cboe_c1_options_orderentry_boe3_v1_0_12.open_close = {}

-- Size: Open Close
cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size = 1

-- Display: Open Close
cboe_c1_options_orderentry_boe3_v1_0_12.open_close.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.open_close.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.open_close, range, value, display)

  return offset + length, value
end

-- Put Or Call
cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call = {}

-- Size: Put Or Call
cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.size = 1

-- Display: Put Or Call
cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.display = function(value)
  if value == "0" then
    return "Put Or Call: Put (0)"
  end
  if value == "1" then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Strike Price
cboe_c1_options_orderentry_boe3_v1_0_12.strike_price = {}

-- Size: Strike Price
cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.size = 8

-- Display: Strike Price
cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Strike Price
cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Maturity Date
cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date = {}

-- Size: Maturity Date
cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.size = 4

-- Display: Maturity Date
cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Trading Group Id
cboe_c1_options_orderentry_boe3_v1_0_12.trading_group_id = {}

-- Size: Trading Group Id
cboe_c1_options_orderentry_boe3_v1_0_12.trading_group_id.size = 1

-- Display: Trading Group Id
cboe_c1_options_orderentry_boe3_v1_0_12.trading_group_id.display = function(value)
  return "Trading Group Id: "..value
end

-- Dissect: Trading Group Id
cboe_c1_options_orderentry_boe3_v1_0_12.trading_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.trading_group_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.trading_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.trading_group_id, range, value, display)

  return offset + length, value
end

-- Unique Id Level
cboe_c1_options_orderentry_boe3_v1_0_12.unique_id_level = {}

-- Size: Unique Id Level
cboe_c1_options_orderentry_boe3_v1_0_12.unique_id_level.size = 1

-- Display: Unique Id Level
cboe_c1_options_orderentry_boe3_v1_0_12.unique_id_level.display = function(value)
  return "Unique Id Level: "..value
end

-- Dissect: Unique Id Level
cboe_c1_options_orderentry_boe3_v1_0_12.unique_id_level.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.unique_id_level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.unique_id_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.unique_id_level, range, value, display)

  return offset + length, value
end

-- Mtp Modifier
cboe_c1_options_orderentry_boe3_v1_0_12.mtp_modifier = {}

-- Size: Mtp Modifier
cboe_c1_options_orderentry_boe3_v1_0_12.mtp_modifier.size = 1

-- Display: Mtp Modifier
cboe_c1_options_orderentry_boe3_v1_0_12.mtp_modifier.display = function(value)
  return "Mtp Modifier: "..value
end

-- Dissect: Mtp Modifier
cboe_c1_options_orderentry_boe3_v1_0_12.mtp_modifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.mtp_modifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.mtp_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mtp_modifier, range, value, display)

  return offset + length, value
end

-- Prevent Match
cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match = {}

-- Size: Prevent Match
cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.mtp_modifier.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.unique_id_level.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.trading_group_id.size

-- Display: Prevent Match
cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prevent Match
cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mtp Modifier: Text
  index, mtp_modifier = cboe_c1_options_orderentry_boe3_v1_0_12.mtp_modifier.dissect(buffer, index, packet, parent)

  -- Unique Id Level: Text
  index, unique_id_level = cboe_c1_options_orderentry_boe3_v1_0_12.unique_id_level.dissect(buffer, index, packet, parent)

  -- Trading Group Id: Alphanumeric
  index, trading_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.trading_group_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prevent Match
cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.dissect = function(buffer, offset, packet, parent)
  if show.prevent_match then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.prevent_match, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.fields(buffer, offset, packet, parent)
  end
end

-- Order Qty
cboe_c1_options_orderentry_boe3_v1_0_12.order_qty = {}

-- Size: Order Qty
cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size = 4

-- Display: Order Qty
cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Max Floor
cboe_c1_options_orderentry_boe3_v1_0_12.max_floor = {}

-- Size: Max Floor
cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size = 4

-- Display: Max Floor
cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Display Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator = {}

-- Size: Display Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.size = 1

-- Display: Display Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.display = function(value)
  if value == "V" then
    return "Display Indicator: Default (V)"
  end
  if value == "S" then
    return "Display Indicator: Display Price Sliding (S)"
  end
  if value == "L" then
    return "Display Indicator: Display Price Sliding But Reject If Order Crosses Nbbo On Entry (L)"
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
cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account = {}

-- Size: Clearing Account
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size = 4

-- Display: Clearing Account
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.display = function(value)
  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Account
cboe_c1_options_orderentry_boe3_v1_0_12.account = {}

-- Size: Account
cboe_c1_options_orderentry_boe3_v1_0_12.account.size = 16

-- Display: Account
cboe_c1_options_orderentry_boe3_v1_0_12.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
cboe_c1_options_orderentry_boe3_v1_0_12.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.account, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_c1_options_orderentry_boe3_v1_0_12.capacity = {}

-- Size: Capacity
cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size = 1

-- Display: Capacity
cboe_c1_options_orderentry_boe3_v1_0_12.capacity.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.capacity, range, value, display)

  return offset + length, value
end

-- Min Qty
cboe_c1_options_orderentry_boe3_v1_0_12.min_qty = {}

-- Size: Min Qty
cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.size = 4

-- Display: Min Qty
cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force = {}

-- Size: Time In Force
cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.size = 1

-- Display: Time In Force
cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_c1_options_orderentry_boe3_v1_0_12.ord_type = {}

-- Size: Ord Type
cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size = 1

-- Display: Ord Type
cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Exec Inst
cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst = {}

-- Size: Exec Inst
cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size = 1

-- Display: Exec Inst
cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.display = function(value)
  if value == "1" then
    return "Exec Inst: Not Held (1)"
  end
  if value == "f" then
    return "Exec Inst: Intermarket Sweep (f)"
  end
  if value == "r" then
    return "Exec Inst: Settlement Liquidity (r)"
  end
  if value == "G" then
    return "Exec Inst: All Or None (G)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Price
cboe_c1_options_orderentry_boe3_v1_0_12.price = {}

-- Size: Price
cboe_c1_options_orderentry_boe3_v1_0_12.price.size = 8

-- Display: Price
cboe_c1_options_orderentry_boe3_v1_0_12.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_c1_options_orderentry_boe3_v1_0_12.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.price.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.price, range, value, display)

  return offset + length, value
end

-- Side
cboe_c1_options_orderentry_boe3_v1_0_12.side = {}

-- Size: Side
cboe_c1_options_orderentry_boe3_v1_0_12.side.size = 1

-- Display: Side
cboe_c1_options_orderentry_boe3_v1_0_12.side.display = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end
  if value == "5" then
    return "Side: Sell Short (5)"
  end
  if value == "6" then
    return "Side: Sell Short Exempt Stock Leg Only C 1 And Edgx Only (6)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.side, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_c1_options_orderentry_boe3_v1_0_12.order_id = {}

-- Size: Order Id
cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size = 8

-- Display: Order Id
cboe_c1_options_orderentry_boe3_v1_0_12.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_id, range, value, display)

  return offset + length, value
end

-- Carried Restatement Message
cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message = {}

-- Size: Carried Restatement Message
cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.display_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.working_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cum_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.compression.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.held.size

-- Display: Carried Restatement Message
cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Carried Restatement Message
cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_c1_options_orderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Display Indicator: Alphanumeric
  index, display_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Alphanumeric
  index, put_or_call = cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_c1_options_orderentry_boe3_v1_0_12.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_c1_options_orderentry_boe3_v1_0_12.working_price.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.dissect(buffer, index, packet, parent)

  -- Rout Strategy: Text
  index, rout_strategy = cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.dissect(buffer, index, packet, parent)

  -- Route Delivery Method: Text
  index, route_delivery_method = cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Clearing Optional Data: Text
  index, clearing_optional_data = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.dissect(buffer, index, packet, parent)

  -- Cum Qty: Binary
  index, cum_qty = cboe_c1_options_orderentry_boe3_v1_0_12.cum_qty.dissect(buffer, index, packet, parent)

  -- Drill Thru Protection: BinaryPrice
  index, drill_thru_protection = cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.dissect(buffer, index, packet, parent)

  -- Equity Party Id: Alpha
  index, equity_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.dissect(buffer, index, packet, parent)

  -- Combo Order: Alpha
  index, combo_order = cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_c1_options_orderentry_boe3_v1_0_12.compression.dissect(buffer, index, packet, parent)

  -- Floor Destination: Text
  index, floor_destination = cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.dissect(buffer, index, packet, parent)

  -- Floor Routing Inst: Alphanumeric
  index, floor_routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.dissect(buffer, index, packet, parent)

  -- Order Origin: Alphanumeric
  index, order_origin = cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.dissect(buffer, index, packet, parent)

  -- Price Type: Alphanumeric
  index, price_type = cboe_c1_options_orderentry_boe3_v1_0_12.price_type.dissect(buffer, index, packet, parent)

  -- Strategy Id: Alphanumeric
  index, strategy_id = cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.dissect(buffer, index, packet, parent)

  -- Held: Alpha
  index, held = cboe_c1_options_orderentry_boe3_v1_0_12.held.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Carried Restatement Message
cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.dissect = function(buffer, offset, packet, parent)
  if show.carried_restatement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.carried_restatement_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.fields(buffer, offset, packet, parent)
  end
end

-- Text
cboe_c1_options_orderentry_boe3_v1_0_12.text = {}

-- Size: Text
cboe_c1_options_orderentry_boe3_v1_0_12.text.size = 60

-- Display: Text
cboe_c1_options_orderentry_boe3_v1_0_12.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_c1_options_orderentry_boe3_v1_0_12.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.text, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.display = function(value)
  return "Order Reject Reason: "..value
end

-- Dissect: Order Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- No Of Securities
cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities = {}

-- Size: No Of Securities
cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.size = 4

-- Display: No Of Securities
cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.display = function(value)
  return "No Of Securities: "..value
end

-- Dissect: No Of Securities
cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.no_of_securities, range, value, display)

  return offset + length, value
end

-- New Complex Instrument Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message = {}

-- Size: New Complex Instrument Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.text.size

-- Display: New Complex Instrument Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- No Of Securities: Binary
  index, no_of_securities = cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_c1_options_orderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Complex Instrument Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.new_complex_instrument_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_rejected_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Ratio Qty
cboe_c1_options_orderentry_boe3_v1_0_12.ratio_qty = {}

-- Size: Ratio Qty
cboe_c1_options_orderentry_boe3_v1_0_12.ratio_qty.size = 4

-- Display: Ratio Qty
cboe_c1_options_orderentry_boe3_v1_0_12.ratio_qty.display = function(value)
  return "Ratio Qty: "..value
end

-- Dissect: Ratio Qty
cboe_c1_options_orderentry_boe3_v1_0_12.ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.ratio_qty, range, value, display)

  return offset + length, value
end

-- Cfi Code
cboe_c1_options_orderentry_boe3_v1_0_12.cfi_code = {}

-- Size: Cfi Code
cboe_c1_options_orderentry_boe3_v1_0_12.cfi_code.size = 2

-- Display: Cfi Code
cboe_c1_options_orderentry_boe3_v1_0_12.cfi_code.display = function(value)
  if value == "O" then
    return "Cfi Code: Options (O)"
  end
  if value == "E" then
    return "Cfi Code: Equity C 1 And Edgx Only (E)"
  end

  return "Cfi Code: Unknown("..value..")"
end

-- Dissect: Cfi Code
cboe_c1_options_orderentry_boe3_v1_0_12.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cfi_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Complex Leg
cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg = {}

-- Size: Complex Leg
cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cfi_code.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ratio_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size

-- Display: Complex Leg
cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Leg
cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.fields = function(buffer, offset, packet, parent, complex_leg_index)
  local index = offset

  -- Implicit Complex Leg Index
  if complex_leg_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.complex_leg_index, complex_leg_index)
    iteration:set_generated()
  end

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.dissect(buffer, index, packet, parent)

  -- Cfi Code: Alphanumeric
  index, cfi_code = cboe_c1_options_orderentry_boe3_v1_0_12.cfi_code.dissect(buffer, index, packet, parent)

  -- Ratio Qty: Binary
  index, ratio_qty = cboe_c1_options_orderentry_boe3_v1_0_12.ratio_qty.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Leg
cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.dissect = function(buffer, offset, packet, parent, complex_leg_index)
  if show.complex_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.complex_leg, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.fields(buffer, offset, packet, parent, complex_leg_index)
  end
end

-- Leg Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt = {}

-- Size: Leg Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.size = 1

-- Display: Leg Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.display = function(value)
  return "Leg Cnt: "..value
end

-- Dissect: Leg Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.leg_cnt, range, value, display)

  return offset + length, value
end

-- New Complex Instrument Accepted Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message = {}

-- Calculate size of: New Complex Instrument Accepted Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 27

  return index
end

-- Display: New Complex Instrument Accepted Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Accepted Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- No Of Securities: Binary
  index, no_of_securities = cboe_c1_options_orderentry_boe3_v1_0_12.no_of_securities.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_cnt do
    index, complex_leg = cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: New Complex Instrument Accepted Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_instrument_accepted_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_accepted_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.fields(buffer, offset, packet, parent)
end

-- Mass Cancel Lockout
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_lockout = {}

-- Size: Mass Cancel Lockout
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_lockout.size = 1

-- Display: Mass Cancel Lockout
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_lockout.display = function(value)
  if value == "Y" then
    return "Mass Cancel Lockout: Lockout (Y)"
  end
  if value == "N" then
    return "Mass Cancel Lockout: No Lockout (N)"
  end

  return "Mass Cancel Lockout: Unknown("..value..")"
end

-- Dissect: Mass Cancel Lockout
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_lockout.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_lockout.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_lockout.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_lockout, range, value, display)

  return offset + length, value
end

-- Risk Root
cboe_c1_options_orderentry_boe3_v1_0_12.risk_root = {}

-- Size: Risk Root
cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.size = 6

-- Display: Risk Root
cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.display = function(value)
  return "Risk Root: "..value
end

-- Dissect: Risk Root
cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.risk_root, range, value, display)

  return offset + length, value
end

-- Source Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit = {}

-- Size: Source Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.size = 1

-- Display: Source Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.display = function(value)
  return "Source Matching Unit: "..value
end

-- Dissect: Source Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.source_matching_unit, range, value, display)

  return offset + length, value
end

-- Cancelled Order Count
cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.display = function(value)
  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Purge Notification Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message = {}

-- Size: Purge Notification Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_lockout.size

-- Display: Purge Notification Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Notification Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Source Matching Unit: Binary
  index, source_matching_unit = cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Risk Root: Text
  index, risk_root = cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.dissect(buffer, index, packet, parent)

  -- Mass Cancel Lockout: Text
  index, mass_cancel_lockout = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_lockout.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Notification Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.purge_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_notification_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Received Time
cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time = {}

-- Size: Request Received Time
cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size = 8

-- Display: Request Received Time
cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.display = function(value)
  return "Request Received Time: "..value
end

-- Dissect: Request Received Time
cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.request_received_time, range, value, display)

  return offset + length, value
end

-- Purge Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message = {}

-- Size: Purge Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size

-- Display: Purge Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Source Matching Unit: Binary
  index, source_matching_unit = cboe_c1_options_orderentry_boe3_v1_0_12.source_matching_unit.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.purge_acknowledgement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_acknowledgement_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_reject_reason = {}

-- Size: Mass Cancel Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_reject_reason.size = 1

-- Display: Mass Cancel Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_reject_reason.display = function(value)
  return "Mass Cancel Reject Reason: "..value
end

-- Dissect: Mass Cancel Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message = {}

-- Size: Mass Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_reject_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.text.size

-- Display: Mass Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Reject Reason: Text
  index, mass_cancel_reject_reason = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_c1_options_orderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_rejected_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message = {}

-- Size: Mass Cancel Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size

-- Display: Mass Cancel Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_c1_options_orderentry_boe3_v1_0_12.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_acknowledgment_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_acknowledgment_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent)
  end
end

-- Risk Reset Result
cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset_result = {}

-- Size: Risk Reset Result
cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset_result.size = 1

-- Display: Risk Reset Result
cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset_result.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset_result.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.risk_reset_result, range, value, display)

  return offset + length, value
end

-- Risk Status Id
cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id = {}

-- Size: Risk Status Id
cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.size = 16

-- Display: Risk Status Id
cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.display = function(value)
  return "Risk Status Id: "..value
end

-- Dissect: Risk Status Id
cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.risk_status_id, range, value, display)

  return offset + length, value
end

-- Reset Risk Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message = {}

-- Size: Reset Risk Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset_result.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size

-- Display: Reset Risk Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Risk Status Id: Text
  index, risk_status_id = cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset Result: Text
  index, risk_reset_result = cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset_result.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.reset_risk_acknowledgement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.reset_risk_acknowledgement_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Purge Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.purge_reject_reason.display = function(value)
  return "Purge Reject Reason: "..value
end

-- Dissect: Purge Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.purge_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Purge Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message = {}

-- Size: Purge Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.purge_reject_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.text.size

-- Display: Purge Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_c1_options_orderentry_boe3_v1_0_12.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_c1_options_orderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Purge Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.purge_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_rejected_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Marketing Fee Code
cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code = {}

-- Size: Marketing Fee Code
cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.size = 2

-- Display: Marketing Fee Code
cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.display = function(value)
  if value == "P" then
    return "Marketing Fee Code: Penny Pilot (P)"
  end
  if value == "N" then
    return "Marketing Fee Code: Non Penny Pilot (N)"
  end
  if value == "X" then
    return "Marketing Fee Code: Not Eligible For Marketing Fees (X)"
  end

  return "Marketing Fee Code: Unknown("..value..")"
end

-- Dissect: Marketing Fee Code
cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.marketing_fee_code, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_c1_options_orderentry_boe3_v1_0_12.orig_time = {}

-- Size: Orig Time
cboe_c1_options_orderentry_boe3_v1_0_12.orig_time.size = 8

-- Display: Orig Time
cboe_c1_options_orderentry_boe3_v1_0_12.orig_time.display = function(value)
  return "Orig Time: "..value
end

-- Dissect: Orig Time
cboe_c1_options_orderentry_boe3_v1_0_12.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Corrected Size
cboe_c1_options_orderentry_boe3_v1_0_12.corrected_size = {}

-- Size: Corrected Size
cboe_c1_options_orderentry_boe3_v1_0_12.corrected_size.size = 4

-- Display: Corrected Size
cboe_c1_options_orderentry_boe3_v1_0_12.corrected_size.display = function(value)
  return "Corrected Size: "..value
end

-- Dissect: Corrected Size
cboe_c1_options_orderentry_boe3_v1_0_12.corrected_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.corrected_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.corrected_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.corrected_size, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_c1_options_orderentry_boe3_v1_0_12.corrected_price = {}

-- Size: Corrected Price
cboe_c1_options_orderentry_boe3_v1_0_12.corrected_price.size = 8

-- Display: Corrected Price
cboe_c1_options_orderentry_boe3_v1_0_12.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Dissect: Corrected Price
cboe_c1_options_orderentry_boe3_v1_0_12.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.corrected_price.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_c1_options_orderentry_boe3_v1_0_12.last_px = {}

-- Size: Last Px
cboe_c1_options_orderentry_boe3_v1_0_12.last_px.size = 8

-- Display: Last Px
cboe_c1_options_orderentry_boe3_v1_0_12.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_c1_options_orderentry_boe3_v1_0_12.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_c1_options_orderentry_boe3_v1_0_12.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.last_px.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_c1_options_orderentry_boe3_v1_0_12.last_shares = {}

-- Size: Last Shares
cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.size = 4

-- Display: Last Shares
cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.display = function(value)
  if value == "0x00" then
    return "Sub Liquidity Indicator: No Additional Information (0x00)"
  end
  if value == "S" then
    return "Sub Liquidity Indicator: Execution From Order That Set The Nbbo (S)"
  end
  if value == "B" then
    return "Sub Liquidity Indicator: Step Up Mechanism (B)"
  end
  if value == "U" then
    return "Sub Liquidity Indicator: Market Turner (U)"
  end
  if value == "b" then
    return "Sub Liquidity Indicator: Aim (b)"
  end
  if value == "C" then
    return "Sub Liquidity Indicator: Carried (C)"
  end
  if value == "D" then
    return "Sub Liquidity Indicator: Done For Day (D)"
  end
  if value == "Q" then
    return "Sub Liquidity Indicator: Qcc (Q)"
  end
  if value == "s" then
    return "Sub Liquidity Indicator: Sam (s)"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_c1_options_orderentry_boe3_v1_0_12.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_c1_options_orderentry_boe3_v1_0_12.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_c1_options_orderentry_boe3_v1_0_12.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_c1_options_orderentry_boe3_v1_0_12.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Trade Cancel Correct Message
cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message = {}

-- Size: Trade Cancel Correct Message
cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.exec_ref_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.last_px.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.corrected_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.corrected_size.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.orig_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size

-- Display: Trade Cancel Correct Message
cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Correct Message
cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_c1_options_orderentry_boe3_v1_0_12.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_c1_options_orderentry_boe3_v1_0_12.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: Binary
  index, corrected_price = cboe_c1_options_orderentry_boe3_v1_0_12.corrected_price.dissect(buffer, index, packet, parent)

  -- Corrected Size: Binary
  index, corrected_size = cboe_c1_options_orderentry_boe3_v1_0_12.corrected_size.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_c1_options_orderentry_boe3_v1_0_12.orig_time.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Alphanumeric
  index, put_or_call = cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.dissect(buffer, index, packet, parent)

  -- Marketing Fee Code: Alphanumeric
  index, marketing_fee_code = cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Correct Message
cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancel_correct_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.trade_cancel_correct_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Date
cboe_c1_options_orderentry_boe3_v1_0_12.trade_date = {}

-- Size: Trade Date
cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.size = 4

-- Display: Trade Date
cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Fee Code
cboe_c1_options_orderentry_boe3_v1_0_12.fee_code = {}

-- Size: Fee Code
cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.size = 2

-- Display: Fee Code
cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.display = function(value)
  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Contra Capacity
cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity = {}

-- Size: Contra Capacity
cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.size = 1

-- Display: Contra Capacity
cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.display = function(value)
  return "Contra Capacity: "..value
end

-- Dissect: Contra Capacity
cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.contra_capacity, range, value, display)

  return offset + length, value
end

-- Contra Trader
cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader = {}

-- Size: Contra Trader
cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.size = 4

-- Display: Contra Trader
cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.display = function(value)
  return "Contra Trader: "..value
end

-- Dissect: Contra Trader
cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.contra_trader, range, value, display)

  return offset + length, value
end

-- Quote Symbol
cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol = {}

-- Size: Quote Symbol
cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.size = 1

-- Display: Quote Symbol
cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.display = function(value)
  return "Quote Symbol: "..value
end

-- Dissect: Quote Symbol
cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_symbol, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_c1_options_orderentry_boe3_v1_0_12.exec_id = {}

-- Size: Exec Id
cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.size = 8

-- Display: Exec Id
cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Quote Update Id
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id = {}

-- Size: Quote Update Id
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size = 16

-- Display: Quote Update Id
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.display = function(value)
  return "Quote Update Id: "..value
end

-- Dissect: Quote Update Id
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_id, range, value, display)

  return offset + length, value
end

-- Quote Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message = {}

-- Size: Quote Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.last_px.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.size

-- Display: Quote Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_c1_options_orderentry_boe3_v1_0_12.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Contra Trader: Alphanumeric
  index, contra_trader = cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.dissect(buffer, index, packet, parent)

  -- Contra Capacity: Alphanumeric
  index, contra_capacity = cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.dissect(buffer, index, packet, parent)

  -- Marketing Fee Code: Alphanumeric
  index, marketing_fee_code = cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_execution_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity Ex Destination
cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination = {}

-- Size: Equity Ex Destination
cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.size = 1

-- Display: Equity Ex Destination
cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.display = function(value)
  if value == "C" then
    return "Equity Ex Destination: Cowen Default (C)"
  end
  if value == "P" then
    return "Equity Ex Destination: Penserra Via Nyse Chicago (P)"
  end
  if value == "F" then
    return "Equity Ex Destination: Fog Equities Via Nyse Chicago (F)"
  end
  if value == "L" then
    return "Equity Ex Destination: Libucki Via Nyse Chicago (L)"
  end
  if value == "S" then
    return "Equity Ex Destination: Srt Securities Via Nyse Chicago (S)"
  end

  return "Equity Ex Destination: Unknown("..value..")"
end

-- Dissect: Equity Ex Destination
cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_ex_destination, range, value, display)

  return offset + length, value
end

-- Floor Trade Time
cboe_c1_options_orderentry_boe3_v1_0_12.floor_trade_time = {}

-- Size: Floor Trade Time
cboe_c1_options_orderentry_boe3_v1_0_12.floor_trade_time.size = 8

-- Display: Floor Trade Time
cboe_c1_options_orderentry_boe3_v1_0_12.floor_trade_time.display = function(value)
  return "Floor Trade Time: "..value
end

-- Dissect: Floor Trade Time
cboe_c1_options_orderentry_boe3_v1_0_12.floor_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.floor_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.floor_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.floor_trade_time, range, value, display)

  return offset + length, value
end

-- Floor Trader Acronym
cboe_c1_options_orderentry_boe3_v1_0_12.floor_trader_acronym = {}

-- Size: Floor Trader Acronym
cboe_c1_options_orderentry_boe3_v1_0_12.floor_trader_acronym.size = 3

-- Display: Floor Trader Acronym
cboe_c1_options_orderentry_boe3_v1_0_12.floor_trader_acronym.display = function(value)
  return "Floor Trader Acronym: "..value
end

-- Dissect: Floor Trader Acronym
cboe_c1_options_orderentry_boe3_v1_0_12.floor_trader_acronym.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.floor_trader_acronym.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.floor_trader_acronym.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.floor_trader_acronym, range, value, display)

  return offset + length, value
end

-- Sender Location Id
cboe_c1_options_orderentry_boe3_v1_0_12.sender_location_id = {}

-- Size: Sender Location Id
cboe_c1_options_orderentry_boe3_v1_0_12.sender_location_id.size = 1

-- Display: Sender Location Id
cboe_c1_options_orderentry_boe3_v1_0_12.sender_location_id.display = function(value)
  if value == "F" then
    return "Sender Location Id: Floor (F)"
  end
  if value == " " then
    return "Sender Location Id: Electronic Execution (<whitespace>)"
  end

  return "Sender Location Id: Unknown("..value..")"
end

-- Dissect: Sender Location Id
cboe_c1_options_orderentry_boe3_v1_0_12.sender_location_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.sender_location_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.sender_location_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.sender_location_id, range, value, display)

  return offset + length, value
end

-- Trade Through Alert Type
cboe_c1_options_orderentry_boe3_v1_0_12.trade_through_alert_type = {}

-- Size: Trade Through Alert Type
cboe_c1_options_orderentry_boe3_v1_0_12.trade_through_alert_type.size = 1

-- Display: Trade Through Alert Type
cboe_c1_options_orderentry_boe3_v1_0_12.trade_through_alert_type.display = function(value)
  if value == "0" then
    return "Trade Through Alert Type: No Trade Through (0)"
  end
  if value == "1" then
    return "Trade Through Alert Type: Nbbo (1)"
  end
  if value == "2" then
    return "Trade Through Alert Type: Bbo (2)"
  end
  if value == "3" then
    return "Trade Through Alert Type: Sbbo (3)"
  end
  if value == "4" then
    return "Trade Through Alert Type: Book Trade Through (4)"
  end
  if value == "5" then
    return "Trade Through Alert Type: Due Dilligence Trade Through (5)"
  end

  return "Trade Through Alert Type: Unknown("..value..")"
end

-- Dissect: Trade Through Alert Type
cboe_c1_options_orderentry_boe3_v1_0_12.trade_through_alert_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.trade_through_alert_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.trade_through_alert_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.trade_through_alert_type, range, value, display)

  return offset + length, value
end

-- Secondary Exec Id
cboe_c1_options_orderentry_boe3_v1_0_12.secondary_exec_id = {}

-- Size: Secondary Exec Id
cboe_c1_options_orderentry_boe3_v1_0_12.secondary_exec_id.size = 8

-- Display: Secondary Exec Id
cboe_c1_options_orderentry_boe3_v1_0_12.secondary_exec_id.display = function(value)
  return "Secondary Exec Id: "..value
end

-- Dissect: Secondary Exec Id
cboe_c1_options_orderentry_boe3_v1_0_12.secondary_exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.secondary_exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.secondary_exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.secondary_exec_id, range, value, display)

  return offset + length, value
end

-- Multileg Reporting Type
cboe_c1_options_orderentry_boe3_v1_0_12.multileg_reporting_type = {}

-- Size: Multileg Reporting Type
cboe_c1_options_orderentry_boe3_v1_0_12.multileg_reporting_type.size = 1

-- Display: Multileg Reporting Type
cboe_c1_options_orderentry_boe3_v1_0_12.multileg_reporting_type.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.multileg_reporting_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.multileg_reporting_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.multileg_reporting_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.multileg_reporting_type, range, value, display)

  return offset + length, value
end

-- Cross Exclusion Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.cross_exclusion_indicator = {}

-- Size: Cross Exclusion Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.cross_exclusion_indicator.size = 1

-- Display: Cross Exclusion Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.cross_exclusion_indicator.display = function(value)
  if value == "N" then
    return "Cross Exclusion Indicator: Contracts Were Executed In Auction Against Contra Party (N)"
  end
  if value == "Y" then
    return "Cross Exclusion Indicator: Contracts Were Executed In Auction Against Another Party (Y)"
  end

  return "Cross Exclusion Indicator: Unknown("..value..")"
end

-- Dissect: Cross Exclusion Indicator
cboe_c1_options_orderentry_boe3_v1_0_12.cross_exclusion_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cross_exclusion_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cross_exclusion_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_exclusion_indicator, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_c1_options_orderentry_boe3_v1_0_12.contra_broker = {}

-- Size: Contra Broker
cboe_c1_options_orderentry_boe3_v1_0_12.contra_broker.size = 4

-- Display: Contra Broker
cboe_c1_options_orderentry_boe3_v1_0_12.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cboe_c1_options_orderentry_boe3_v1_0_12.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.contra_broker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Order Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message = {}

-- Size: Order Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.last_px.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.contra_broker.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cross_exclusion_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.multileg_reporting_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.secondary_exec_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.trade_through_alert_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.sender_location_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.floor_trader_acronym.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.floor_trade_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.size

-- Display: Order Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_c1_options_orderentry_boe3_v1_0_12.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_c1_options_orderentry_boe3_v1_0_12.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_c1_options_orderentry_boe3_v1_0_12.contra_broker.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Contra Trader: Alphanumeric
  index, contra_trader = cboe_c1_options_orderentry_boe3_v1_0_12.contra_trader.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Contra Capacity: Alphanumeric
  index, contra_capacity = cboe_c1_options_orderentry_boe3_v1_0_12.contra_capacity.dissect(buffer, index, packet, parent)

  -- Fee Code: Alphanumeric
  index, fee_code = cboe_c1_options_orderentry_boe3_v1_0_12.fee_code.dissect(buffer, index, packet, parent)

  -- Marketing Fee Code: Alphanumeric
  index, marketing_fee_code = cboe_c1_options_orderentry_boe3_v1_0_12.marketing_fee_code.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Cross Exclusion Indicator: Alpha
  index, cross_exclusion_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.cross_exclusion_indicator.dissect(buffer, index, packet, parent)

  -- Trade Date: Date
  index, trade_date = cboe_c1_options_orderentry_boe3_v1_0_12.trade_date.dissect(buffer, index, packet, parent)

  -- Multileg Reporting Type: Alphanumeric
  index, multileg_reporting_type = cboe_c1_options_orderentry_boe3_v1_0_12.multileg_reporting_type.dissect(buffer, index, packet, parent)

  -- Secondary Exec Id: Binary
  index, secondary_exec_id = cboe_c1_options_orderentry_boe3_v1_0_12.secondary_exec_id.dissect(buffer, index, packet, parent)

  -- Price Type: Alphanumeric
  index, price_type = cboe_c1_options_orderentry_boe3_v1_0_12.price_type.dissect(buffer, index, packet, parent)

  -- Trade Through Alert Type: Alphanumeric
  index, trade_through_alert_type = cboe_c1_options_orderentry_boe3_v1_0_12.trade_through_alert_type.dissect(buffer, index, packet, parent)

  -- Sender Location Id: Alphanumeric
  index, sender_location_id = cboe_c1_options_orderentry_boe3_v1_0_12.sender_location_id.dissect(buffer, index, packet, parent)

  -- Floor Trader Acronym: Alpha
  index, floor_trader_acronym = cboe_c1_options_orderentry_boe3_v1_0_12.floor_trader_acronym.dissect(buffer, index, packet, parent)

  -- Floor Trade Time: DateTime
  index, floor_trade_time = cboe_c1_options_orderentry_boe3_v1_0_12.floor_trade_time.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.dissect(buffer, index, packet, parent)

  -- Equity Ex Destination: Alphanumeric
  index, equity_ex_destination = cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.dissect = function(buffer, offset, packet, parent)
  if show.order_execution_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_execution_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reject_reason.display = function(value)
  return "Cancel Reject Reason: "..value
end

-- Dissect: Cancel Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message = {}

-- Size: Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reject_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.text.size

-- Display: Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_c1_options_orderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_rejected_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Give Up Firm Id
cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id = {}

-- Size: Give Up Firm Id
cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.size = 4

-- Display: Give Up Firm Id
cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.display = function(value)
  return "Give Up Firm Id: "..value
end

-- Dissect: Give Up Firm Id
cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.give_up_firm_id, range, value, display)

  return offset + length, value
end

-- Allocation Cancelled
cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled = {}

-- Size: Allocation Cancelled
cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.size

-- Display: Allocation Cancelled
cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation Cancelled
cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled.fields = function(buffer, offset, packet, parent, allocation_cancelled_index)
  local index = offset

  -- Implicit Allocation Cancelled Index
  if allocation_cancelled_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.allocation_cancelled_index, allocation_cancelled_index)
    iteration:set_generated()
  end

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Give Up Firm Id: Alpha
  index, give_up_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation Cancelled
cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled.dissect = function(buffer, offset, packet, parent, allocation_cancelled_index)
  if show.allocation_cancelled then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.allocation_cancelled, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled.fields(buffer, offset, packet, parent, allocation_cancelled_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled.fields(buffer, offset, packet, parent, allocation_cancelled_index)
  end
end

-- Alloc Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt = {}

-- Size: Alloc Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.size = 1

-- Display: Alloc Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.display = function(value)
  return "Alloc Cnt: "..value
end

-- Dissect: Alloc Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.alloc_cnt, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason = {}

-- Size: Cancel Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.display = function(value)
  return "Cancel Reason: "..value
end

-- Dissect: Cancel Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cross Id
cboe_c1_options_orderentry_boe3_v1_0_12.cross_id = {}

-- Size: Cross Id
cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.size = 20

-- Display: Cross Id
cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.display = function(value)
  return "Cross Id: "..value
end

-- Dissect: Cross Id
cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_id, range, value, display)

  return offset + length, value
end

-- Cross Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message = {}

-- Calculate size of: Cross Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.size

  -- Calculate field size from count
  local allocation_cancelled_count = buffer(offset + index - 1, 1):le_uint()
  index = index + allocation_cancelled_count * 24

  return index
end

-- Display: Cross Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cross Id: Text
  index, cross_id = cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.dissect(buffer, index, packet, parent)

  -- Alloc Cnt: Binary
  index, alloc_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Allocation Cancelled
  for allocation_cancelled_index = 1, alloc_cnt do
    index, allocation_cancelled = cboe_c1_options_orderentry_boe3_v1_0_12.allocation_cancelled.dissect(buffer, index, packet, parent, allocation_cancelled_index)
  end

  return index
end

-- Dissect: Cross Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cross_order_cancelled_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_order_cancelled_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.fields(buffer, offset, packet, parent)
end

-- Cancel Sub Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason = {}

-- Size: Cancel Sub Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.size = 1

-- Display: Cancel Sub Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.display = function(value)
  return "Cancel Sub Reason: "..value
end

-- Dissect: Cancel Sub Reason
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_sub_reason, range, value, display)

  return offset + length, value
end

-- Quote Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message = {}

-- Size: Quote Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.size

-- Display: Quote Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.dissect(buffer, index, packet, parent)

  -- Cancel Sub Reason: Text
  index, cancel_sub_reason = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_cancelled_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message = {}

-- Size: Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size

-- Display: Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_reason.dissect(buffer, index, packet, parent)

  -- Cancel Sub Reason: Text
  index, cancel_sub_reason = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_sub_reason.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancelled Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_cancelled_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.modify_reject_reason.display = function(value)
  return "Modify Reject Reason: "..value
end

-- Dissect: Modify Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.modify_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Modify Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message = {}

-- Size: Modify Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.modify_reject_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.text.size

-- Display: Modify Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_c1_options_orderentry_boe3_v1_0_12.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_c1_options_orderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.modify_rejected_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Restatement Reason
cboe_c1_options_orderentry_boe3_v1_0_12.restatement_reason = {}

-- Size: Restatement Reason
cboe_c1_options_orderentry_boe3_v1_0_12.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_c1_options_orderentry_boe3_v1_0_12.restatement_reason.display = function(value)
  if value == "Q" then
    return "Restatement Reason: Liquidity (Q)"
  end
  if value == "W" then
    return "Restatement Reason: Wash (W)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_c1_options_orderentry_boe3_v1_0_12.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Quote Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message = {}

-- Size: Quote Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.working_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.restatement_reason.size

-- Display: Quote Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_c1_options_orderentry_boe3_v1_0_12.working_price.dissect(buffer, index, packet, parent)

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Text
  index, restatement_reason = cboe_c1_options_orderentry_boe3_v1_0_12.restatement_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_restated_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_restated_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Secondary Order Id
cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Order Restatement Reason
cboe_c1_options_orderentry_boe3_v1_0_12.order_restatement_reason = {}

-- Size: Order Restatement Reason
cboe_c1_options_orderentry_boe3_v1_0_12.order_restatement_reason.size = 1

-- Display: Order Restatement Reason
cboe_c1_options_orderentry_boe3_v1_0_12.order_restatement_reason.display = function(value)
  if value == "E" then
    return "Order Restatement Reason: Reduction Of Ord Qty Due To Equity Leg Reject (E)"
  end
  if value == "F" then
    return "Order Restatement Reason: Represented On Floor (F)"
  end
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
  if value == "f" then
    return "Order Restatement Reason: Unsolicited Floor Action (f)"
  end

  return "Order Restatement Reason: Unknown("..value..")"
end

-- Dissect: Order Restatement Reason
cboe_c1_options_orderentry_boe3_v1_0_12.order_restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.order_restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_restatement_reason, range, value, display)

  return offset + length, value
end

-- Order Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message = {}

-- Size: Order Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_restatement_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.display_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.working_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.last_px.size

-- Display: Order Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Order Restatement Reason: Text
  index, order_restatement_reason = cboe_c1_options_orderentry_boe3_v1_0_12.order_restatement_reason.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_c1_options_orderentry_boe3_v1_0_12.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_c1_options_orderentry_boe3_v1_0_12.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_c1_options_orderentry_boe3_v1_0_12.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_c1_options_orderentry_boe3_v1_0_12.last_px.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Restated Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.order_restated_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_restated_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message = {}

-- Size: Order Modified Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.display_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.working_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size

-- Display: Order Modified Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_c1_options_orderentry_boe3_v1_0_12.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_c1_options_orderentry_boe3_v1_0_12.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Secondary Order Id: Binary
  index, secondary_order_id = cboe_c1_options_orderentry_boe3_v1_0_12.secondary_order_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.order_modified_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_modified_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_reason = {}

-- Size: Quote Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_reason.size = 1

-- Display: Quote Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_reason.display = function(value)
  return "Quote Reject Reason: "..value
end

-- Dissect: Quote Reject Reason
cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_reject_reason, range, value, display)

  return offset + length, value
end

-- Quote Update Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message = {}

-- Size: Quote Update Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_reason.size

-- Display: Quote Update Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.dissect(buffer, index, packet, parent)

  -- Quote Reject Reason: Text
  index, quote_reject_reason = cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Update Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_update_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_rejected_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Cross Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message = {}

-- Size: Cross Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.text.size

-- Display: Cross Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cross Id: Text
  index, cross_id = cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_c1_options_orderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.cross_order_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_order_rejected_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message = {}

-- Size: Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.text.size

-- Display: Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_c1_options_orderentry_boe3_v1_0_12.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_c1_options_orderentry_boe3_v1_0_12.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Rejected Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.order_rejected_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_rejected_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Reject Sub Reason
cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_sub_reason = {}

-- Size: Quote Reject Sub Reason
cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_sub_reason.size = 1

-- Display: Quote Reject Sub Reason
cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_sub_reason.display = function(value)
  return "Quote Reject Sub Reason: "..value
end

-- Dissect: Quote Reject Sub Reason
cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_sub_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_sub_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_sub_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_reject_sub_reason, range, value, display)

  return offset + length, value
end

-- Quote Result
cboe_c1_options_orderentry_boe3_v1_0_12.quote_result = {}

-- Size: Quote Result
cboe_c1_options_orderentry_boe3_v1_0_12.quote_result.size = 1

-- Display: Quote Result
cboe_c1_options_orderentry_boe3_v1_0_12.quote_result.display = function(value)
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
  if value == "V" then
    return "Quote Result: No Change Existing Constituent Series Quote Modify Attempt After (V)"
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
  if value == "v" then
    return "Quote Result: Rejected Attempt To Add Constituent Series Quote After Cutoff (v)"
  end

  return "Quote Result: Unknown("..value..")"
end

-- Dissect: Quote Result
cboe_c1_options_orderentry_boe3_v1_0_12.quote_result.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_result.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_result.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_result, range, value, display)

  return offset + length, value
end

-- Quote Acknowledgement
cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement = {}

-- Size: Quote Acknowledgement
cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_result.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_sub_reason.size

-- Display: Quote Acknowledgement
cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Acknowledgement
cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement.fields = function(buffer, offset, packet, parent, quote_acknowledgement_index)
  local index = offset

  -- Implicit Quote Acknowledgement Index
  if quote_acknowledgement_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_acknowledgement_index, quote_acknowledgement_index)
    iteration:set_generated()
  end

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Quote Result: Text
  index, quote_result = cboe_c1_options_orderentry_boe3_v1_0_12.quote_result.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Quote Reject Sub Reason: Text
  index, quote_reject_sub_reason = cboe_c1_options_orderentry_boe3_v1_0_12.quote_reject_sub_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Acknowledgement
cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement.dissect = function(buffer, offset, packet, parent, quote_acknowledgement_index)
  if show.quote_acknowledgement then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_acknowledgement, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement.fields(buffer, offset, packet, parent, quote_acknowledgement_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement.fields(buffer, offset, packet, parent, quote_acknowledgement_index)
  end
end

-- Quote Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt = {}

-- Size: Quote Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.size = 1

-- Display: Quote Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.display = function(value)
  return "Quote Cnt: "..value
end

-- Dissect: Quote Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_cnt, range, value, display)

  return offset + length, value
end

-- Quote Update Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message = {}

-- Calculate size of: Quote Update Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.size

  -- Calculate field size from count
  local quote_acknowledgement_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_acknowledgement_count * 11

  return index
end

-- Display: Quote Update Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Quote Update Id: Text
  index, quote_update_id = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Acknowledgement
  for quote_acknowledgement_index = 1, quote_cnt do
    index, quote_acknowledgement = cboe_c1_options_orderentry_boe3_v1_0_12.quote_acknowledgement.dissect(buffer, index, packet, parent, quote_acknowledgement_index)
  end

  return index
end

-- Dissect: Quote Update Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_acknowledgement_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_acknowledgement_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.fields(buffer, offset, packet, parent)
end

-- Alloc Qty
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty = {}

-- Size: Alloc Qty
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.size = 4

-- Display: Alloc Qty
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.display = function(value)
  return "Alloc Qty: "..value
end

-- Dissect: Alloc Qty
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.alloc_qty, range, value, display)

  return offset + length, value
end

-- Acknowledgement Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation = {}

-- Size: Acknowledgement Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.size

-- Display: Acknowledgement Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Acknowledgement Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation.fields = function(buffer, offset, packet, parent, acknowledgement_allocation_index)
  local index = offset

  -- Implicit Acknowledgement Allocation Index
  if acknowledgement_allocation_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.acknowledgement_allocation_index, acknowledgement_allocation_index)
    iteration:set_generated()
  end

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Alloc Qty: Binary
  index, alloc_qty = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.dissect(buffer, index, packet, parent)

  -- Give Up Firm Id: Alpha
  index, give_up_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Acknowledgement Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation.dissect = function(buffer, offset, packet, parent, acknowledgement_allocation_index)
  if show.acknowledgement_allocation then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.acknowledgement_allocation, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation.fields(buffer, offset, packet, parent, acknowledgement_allocation_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation.fields(buffer, offset, packet, parent, acknowledgement_allocation_index)
  end
end

-- Cross Order Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message = {}

-- Calculate size of: Cross Order Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.size

  -- Calculate field size from count
  local acknowledgement_allocation_count = buffer(offset + index - 1, 1):le_uint()
  index = index + acknowledgement_allocation_count * 9

  return index
end

-- Display: Cross Order Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cross Order Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cross Id: Text
  index, cross_id = cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect(buffer, index, packet, parent)

  -- Alloc Cnt: Binary
  index, alloc_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Acknowledgement Allocation
  for acknowledgement_allocation_index = 1, alloc_cnt do
    index, acknowledgement_allocation = cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_allocation.dissect(buffer, index, packet, parent, acknowledgement_allocation_index)
  end

  return index
end

-- Dissect: Cross Order Acknowledgment Message
cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.cross_order_acknowledgment_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_order_acknowledgment_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.fields(buffer, offset, packet, parent)
end

-- Message Type
cboe_c1_options_orderentry_boe3_v1_0_12.message_type = {}

-- Size: Message Type
cboe_c1_options_orderentry_boe3_v1_0_12.message_type.size = 2

-- Display: Message Type
cboe_c1_options_orderentry_boe3_v1_0_12.message_type.display = function(value)
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
  if value == 0x07D3 then
    return "Message Type: New Order Cross Message (0x07D3)"
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
  if value == 0x07D8 then
    return "Message Type: New Order Cross Multileg Message (0x07D8)"
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
  if value == 0x09C6 then
    return "Message Type: Cross Order Acknowledgment Message (0x09C6)"
  end
  if value == 0x09D5 then
    return "Message Type: Quote Update Acknowledgement Message (0x09D5)"
  end
  if value == 0x09C7 then
    return "Message Type: Order Rejected Message (0x09C7)"
  end
  if value == 0x09C8 then
    return "Message Type: Cross Order Rejected Message (0x09C8)"
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
  if value == 0x09D1 then
    return "Message Type: Cross Order Cancelled Message (0x09D1)"
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
cboe_c1_options_orderentry_boe3_v1_0_12.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.message_type, range, value, display)

  return offset + length, value
end

-- Order Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message = {}

-- Size: Order Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.display_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.working_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.message_type.size

-- Display: Order Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- In Flight: Binary
  index, in_flight = cboe_c1_options_orderentry_boe3_v1_0_12.in_flight.dissect(buffer, index, packet, parent)

  -- Transaction Time: DateTime
  index, transaction_time = cboe_c1_options_orderentry_boe3_v1_0_12.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_c1_options_orderentry_boe3_v1_0_12.order_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_c1_options_orderentry_boe3_v1_0_12.leaves_qty.dissect(buffer, index, packet, parent)

  -- Display Price: BinaryPrice
  index, display_price = cboe_c1_options_orderentry_boe3_v1_0_12.display_price.dissect(buffer, index, packet, parent)

  -- Working Price: BinaryPrice
  index, working_price = cboe_c1_options_orderentry_boe3_v1_0_12.working_price.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Request Received Time: DateTime
  index, request_received_time = cboe_c1_options_orderentry_boe3_v1_0_12.request_received_time.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 48 values
  index, message_type = cboe_c1_options_orderentry_boe3_v1_0_12.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Acknowledgement Message
cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.order_acknowledgement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_acknowledgement_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Scratch Pad
cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad = {}

-- Size: Scratch Pad
cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size = 2

-- Display: Scratch Pad
cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.display = function(value)
  return "Scratch Pad: "..value
end

-- Dissect: Scratch Pad
cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.scratch_pad, range, value, display)

  return offset + length, value
end

-- Custom Group Id
cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id = {}

-- Size: Custom Group Id
cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size = 2

-- Display: Custom Group Id
cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.display = function(value)
  return "Custom Group Id: "..value
end

-- Dissect: Custom Group Id
cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.custom_group_id, range, value, display)

  return offset + length, value
end

-- Target Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.target_matching_unit = {}

-- Size: Target Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.target_matching_unit.size = 1

-- Display: Target Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.target_matching_unit.display = function(value)
  return "Target Matching Unit: "..value
end

-- Dissect: Target Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.target_matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.target_matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.target_matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.target_matching_unit, range, value, display)

  return offset + length, value
end

-- Risk Reset
cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset = {}

-- Size: Risk Reset
cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset.size = 8

-- Display: Risk Reset
cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset.display = function(value)
  return "Risk Reset: "..value
end

-- Dissect: Risk Reset
cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Reset Risk Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message = {}

-- Size: Reset Risk Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.target_matching_unit.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

-- Display: Reset Risk Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Risk Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Risk Status Id: Text
  index, risk_status_id = cboe_c1_options_orderentry_boe3_v1_0_12.risk_status_id.dissect(buffer, index, packet, parent)

  -- Risk Reset: Text
  index, risk_reset = cboe_c1_options_orderentry_boe3_v1_0_12.risk_reset.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Risk Root: Text
  index, risk_root = cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.dissect(buffer, index, packet, parent)

  -- Target Matching Unit: Binary
  index, target_matching_unit = cboe_c1_options_orderentry_boe3_v1_0_12.target_matching_unit.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Risk Message
cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.dissect = function(buffer, offset, packet, parent)
  if show.reset_risk_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.reset_risk_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.fields(buffer, offset, packet, parent)
  end
end

-- Custom Group Id Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id_cnt = {}

-- Size: Custom Group Id Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id_cnt.size = 1

-- Display: Custom Group Id Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id_cnt.display = function(value)
  return "Custom Group Id Cnt: "..value
end

-- Dissect: Custom Group Id Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.custom_group_id_cnt, range, value, display)

  return offset + length, value
end

-- Send Time
cboe_c1_options_orderentry_boe3_v1_0_12.send_time = {}

-- Size: Send Time
cboe_c1_options_orderentry_boe3_v1_0_12.send_time.size = 8

-- Display: Send Time
cboe_c1_options_orderentry_boe3_v1_0_12.send_time.display = function(value)
  return "Send Time: "..value
end

-- Dissect: Send Time
cboe_c1_options_orderentry_boe3_v1_0_12.send_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.send_time, range, value, display)

  return offset + length, value
end

-- Instruction Details
cboe_c1_options_orderentry_boe3_v1_0_12.instruction_details = {}

-- Size: Instruction Details
cboe_c1_options_orderentry_boe3_v1_0_12.instruction_details.size = 3

-- Display: Instruction Details
cboe_c1_options_orderentry_boe3_v1_0_12.instruction_details.display = function(value)
  return "Instruction Details: "..value
end

-- Dissect: Instruction Details
cboe_c1_options_orderentry_boe3_v1_0_12.instruction_details.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.instruction_details.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.instruction_details.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.instruction_details, range, value, display)

  return offset + length, value
end

-- Gtc Order Filter
cboe_c1_options_orderentry_boe3_v1_0_12.gtc_order_filter = {}

-- Size: Gtc Order Filter
cboe_c1_options_orderentry_boe3_v1_0_12.gtc_order_filter.size = 1

-- Display: Gtc Order Filter
cboe_c1_options_orderentry_boe3_v1_0_12.gtc_order_filter.display = function(value)
  return "Gtc Order Filter: "..value
end

-- Dissect: Gtc Order Filter
cboe_c1_options_orderentry_boe3_v1_0_12.gtc_order_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.gtc_order_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.gtc_order_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.gtc_order_filter, range, value, display)

  return offset + length, value
end

-- Instrument Type Filter
cboe_c1_options_orderentry_boe3_v1_0_12.instrument_type_filter = {}

-- Size: Instrument Type Filter
cboe_c1_options_orderentry_boe3_v1_0_12.instrument_type_filter.size = 1

-- Display: Instrument Type Filter
cboe_c1_options_orderentry_boe3_v1_0_12.instrument_type_filter.display = function(value)
  return "Instrument Type Filter: "..value
end

-- Dissect: Instrument Type Filter
cboe_c1_options_orderentry_boe3_v1_0_12.instrument_type_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.instrument_type_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.instrument_type_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.instrument_type_filter, range, value, display)

  return offset + length, value
end

-- Lockout Instruction
cboe_c1_options_orderentry_boe3_v1_0_12.lockout_instruction = {}

-- Size: Lockout Instruction
cboe_c1_options_orderentry_boe3_v1_0_12.lockout_instruction.size = 1

-- Display: Lockout Instruction
cboe_c1_options_orderentry_boe3_v1_0_12.lockout_instruction.display = function(value)
  return "Lockout Instruction: "..value
end

-- Dissect: Lockout Instruction
cboe_c1_options_orderentry_boe3_v1_0_12.lockout_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.lockout_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.lockout_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.lockout_instruction, range, value, display)

  return offset + length, value
end

-- Acknowledgement Style
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_style = {}

-- Size: Acknowledgement Style
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_style.size = 1

-- Display: Acknowledgement Style
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_style.display = function(value)
  return "Acknowledgement Style: "..value
end

-- Dissect: Acknowledgement Style
cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_style.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_style.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.acknowledgement_style, range, value, display)

  return offset + length, value
end

-- Clearing Firm Filter
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm_filter = {}

-- Size: Clearing Firm Filter
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm_filter.size = 1

-- Display: Clearing Firm Filter
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm_filter.display = function(value)
  return "Clearing Firm Filter: "..value
end

-- Dissect: Clearing Firm Filter
cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm_filter.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm_filter.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm_filter.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.clearing_firm_filter, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm_filter.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_style.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.lockout_instruction.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.instrument_type_filter.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.gtc_order_filter.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.instruction_details.size

-- Display: Mass Cancel Inst
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Inst
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Clearing Firm Filter: Alphanumeric
  index, clearing_firm_filter = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm_filter.dissect(buffer, index, packet, parent)

  -- Acknowledgement Style: Alphanumeric
  index, acknowledgement_style = cboe_c1_options_orderentry_boe3_v1_0_12.acknowledgement_style.dissect(buffer, index, packet, parent)

  -- Lockout Instruction: Alphanumeric
  index, lockout_instruction = cboe_c1_options_orderentry_boe3_v1_0_12.lockout_instruction.dissect(buffer, index, packet, parent)

  -- Instrument Type Filter: Alphanumeric
  index, instrument_type_filter = cboe_c1_options_orderentry_boe3_v1_0_12.instrument_type_filter.dissect(buffer, index, packet, parent)

  -- Gtc Order Filter: Alphanumeric
  index, gtc_order_filter = cboe_c1_options_orderentry_boe3_v1_0_12.gtc_order_filter.dissect(buffer, index, packet, parent)

  -- Instruction Details: Alphanumeric
  index, instruction_details = cboe_c1_options_orderentry_boe3_v1_0_12.instruction_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Inst
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_inst then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_inst, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.fields(buffer, offset, packet, parent)
  end
end

-- Purge Orders Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message = {}

-- Calculate size of: Purge Orders Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.send_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id_cnt.size

  -- Calculate field size from count
  local custom_group_id_count = buffer(offset + index - 1, 1):le_uint()
  index = index + custom_group_id_count * 2

  return index
end

-- Display: Purge Orders Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Orders Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Risk Root: Text
  index, risk_root = cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Send Time: DateTime
  index, send_time = cboe_c1_options_orderentry_boe3_v1_0_12.send_time.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  -- Custom Group Id Cnt: Binary
  index, custom_group_id_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Custom Group Id
  for custom_group_id_index = 1, custom_group_id_cnt do
    index, custom_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect(buffer, index, packet, parent, custom_group_id_index)
  end

  return index
end

-- Dissect: Purge Orders Message
cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.purge_orders_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.purge_orders_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.fields(buffer, offset, packet, parent)
end

-- Order Qty Short
cboe_c1_options_orderentry_boe3_v1_0_12.order_qty_short = {}

-- Size: Order Qty Short
cboe_c1_options_orderentry_boe3_v1_0_12.order_qty_short.size = 2

-- Display: Order Qty Short
cboe_c1_options_orderentry_boe3_v1_0_12.order_qty_short.display = function(value)
  return "Order Qty Short: "..value
end

-- Dissect: Order Qty Short
cboe_c1_options_orderentry_boe3_v1_0_12.order_qty_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty_short.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_qty_short, range, value, display)

  return offset + length, value
end

-- Price Short
cboe_c1_options_orderentry_boe3_v1_0_12.price_short = {}

-- Size: Price Short
cboe_c1_options_orderentry_boe3_v1_0_12.price_short.size = 4

-- Display: Price Short
cboe_c1_options_orderentry_boe3_v1_0_12.price_short.display = function(value)
  return "Price Short: "..value
end

-- Translate: Price Short
cboe_c1_options_orderentry_boe3_v1_0_12.price_short.translate = function(raw)
  return raw/10000
end

-- Dissect: Price Short
cboe_c1_options_orderentry_boe3_v1_0_12.price_short.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.price_short.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.price_short.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.price_short, range, value, display)

  return offset + length, value
end

-- Quote Short
cboe_c1_options_orderentry_boe3_v1_0_12.quote_short = {}

-- Size: Quote Short
cboe_c1_options_orderentry_boe3_v1_0_12.quote_short.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price_short.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_qty_short.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

-- Display: Quote Short
cboe_c1_options_orderentry_boe3_v1_0_12.quote_short.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Short
cboe_c1_options_orderentry_boe3_v1_0_12.quote_short.fields = function(buffer, offset, packet, parent, quote_short_index)
  local index = offset

  -- Implicit Quote Short Index
  if quote_short_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_short_index, quote_short_index)
    iteration:set_generated()
  end

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.dissect(buffer, index, packet, parent)

  -- Price Short: ShortBinaryPrice
  index, price_short = cboe_c1_options_orderentry_boe3_v1_0_12.price_short.dissect(buffer, index, packet, parent)

  -- Order Qty Short: Binary
  index, order_qty_short = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty_short.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Short
cboe_c1_options_orderentry_boe3_v1_0_12.quote_short.dissect = function(buffer, offset, packet, parent, quote_short_index)
  if show.quote_short then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_short, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.quote_short.fields(buffer, offset, packet, parent, quote_short_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_short.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_short.fields(buffer, offset, packet, parent, quote_short_index)
  end
end

-- Size Modifier
cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier = {}

-- Size: Size Modifier
cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.size = 1

-- Display: Size Modifier
cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.display = function(value)
  if value == "0x00" then
    return "Size Modifier: New Quote Size Will Be Set To Value Of Order Qty (0x00)"
  end
  if value == "R" then
    return "Size Modifier: Reduce Outstanding Size Of Quote By The Order Qty Provided (R)"
  end

  return "Size Modifier: Unknown("..value..")"
end

-- Dissect: Size Modifier
cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.size_modifier, range, value, display)

  return offset + length, value
end

-- Posting Instruction
cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction = {}

-- Size: Posting Instruction
cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.size = 1

-- Display: Posting Instruction
cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.posting_instruction, range, value, display)

  return offset + length, value
end

-- Quote Update Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message = {}

-- Calculate size of: Quote Update Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.send_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.size

  -- Calculate field size from count
  local quote_short_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_short_count * 11

  return index
end

-- Display: Quote Update Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect(buffer, index, packet, parent)

  -- Send Time: DateTime
  index, send_time = cboe_c1_options_orderentry_boe3_v1_0_12.send_time.dissect(buffer, index, packet, parent)

  -- Posting Instruction: Alpha
  index, posting_instruction = cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.dissect(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote Short
  for quote_short_index = 1, quote_cnt do
    index, quote_short = cboe_c1_options_orderentry_boe3_v1_0_12.quote_short.dissect(buffer, index, packet, parent, quote_short_index)
  end

  return index
end

-- Dissect: Quote Update Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_short_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_short_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.fields(buffer, offset, packet, parent)
end

-- Quote
cboe_c1_options_orderentry_boe3_v1_0_12.quote = {}

-- Size: Quote
cboe_c1_options_orderentry_boe3_v1_0_12.quote.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

-- Display: Quote
cboe_c1_options_orderentry_boe3_v1_0_12.quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote
cboe_c1_options_orderentry_boe3_v1_0_12.quote.fields = function(buffer, offset, packet, parent, quote_index)
  local index = offset

  -- Implicit Quote Index
  if quote_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_index, quote_index)
    iteration:set_generated()
  end

  -- Quote Symbol: Alphanumeric
  index, quote_symbol = cboe_c1_options_orderentry_boe3_v1_0_12.quote_symbol.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote
cboe_c1_options_orderentry_boe3_v1_0_12.quote.dissect = function(buffer, offset, packet, parent, quote_index)
  if show.quote then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.quote.fields(buffer, offset, packet, parent, quote_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote.fields(buffer, offset, packet, parent, quote_index)
  end
end

-- Quote Update Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message = {}

-- Calculate size of: Quote Update Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.account.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.send_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.size

  -- Calculate field size from count
  local quote_count = buffer(offset + index - 1, 1):le_uint()
  index = index + quote_count * 17

  return index
end

-- Display: Quote Update Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Update Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Update Id: Text
  index, quote_update_id = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_c1_options_orderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect(buffer, index, packet, parent)

  -- Send Time: DateTime
  index, send_time = cboe_c1_options_orderentry_boe3_v1_0_12.send_time.dissect(buffer, index, packet, parent)

  -- Posting Instruction: Alpha
  index, posting_instruction = cboe_c1_options_orderentry_boe3_v1_0_12.posting_instruction.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.dissect(buffer, index, packet, parent)

  -- Size Modifier: Text
  index, size_modifier = cboe_c1_options_orderentry_boe3_v1_0_12.size_modifier.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  -- Quote Cnt: Binary
  index, quote_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.quote_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Quote
  for quote_index = 1, quote_cnt do
    index, quote = cboe_c1_options_orderentry_boe3_v1_0_12.quote.dissect(buffer, index, packet, parent, quote_index)
  end

  return index
end

-- Dissect: Quote Update Message
cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.quote_update_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.quote_update_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.fields(buffer, offset, packet, parent)
end

-- Reserved
cboe_c1_options_orderentry_boe3_v1_0_12.reserved = {}

-- Size: Reserved
cboe_c1_options_orderentry_boe3_v1_0_12.reserved.size = 41

-- Display: Reserved
cboe_c1_options_orderentry_boe3_v1_0_12.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
cboe_c1_options_orderentry_boe3_v1_0_12.reserved.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.reserved.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.reserved, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_orig_on_reject.display = function(value)
  if value == "N" then
    return "Cancel Orig On Reject: Leave Original Order Alone (N)"
  end
  if value == "Y" then
    return "Cancel Orig On Reject: Cancel Original Order If Modification Fails (Y)"
  end

  return "Cancel Orig On Reject: Unknown("..value..")"
end

-- Dissect: Cancel Orig On Reject
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_orig_on_reject.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Modify Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message = {}

-- Size: Modify Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cancel_orig_on_reject.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.reserved.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

-- Display: Modify Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.dissect(buffer, index, packet, parent)

  -- Cancel Orig On Reject: Alpha
  index, cancel_orig_on_reject = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_orig_on_reject.dissect(buffer, index, packet, parent)

  -- Reserved: Binary
  index, reserved = cboe_c1_options_orderentry_boe3_v1_0_12.reserved.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.modify_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.modify_order_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message = {}

-- Size: Mass Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.send_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

-- Display: Mass Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Risk Root: Text
  index, risk_root = cboe_c1_options_orderentry_boe3_v1_0_12.risk_root.dissect(buffer, index, packet, parent)

  -- Mass Cancel Inst: Struct of 6 fields
  index, mass_cancel_inst = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_inst.dissect(buffer, index, packet, parent)

  -- Send Time: DateTime
  index, send_time = cboe_c1_options_orderentry_boe3_v1_0_12.send_time.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.mass_cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.mass_cancel_order_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message = {}

-- Size: Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

-- Display: Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.cancel_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cancel_order_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Position Effect
cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect = {}

-- Size: Leg Position Effect
cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect.size = 1

-- Display: Leg Position Effect
cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.leg_position_effect, range, value, display)

  return offset + length, value
end

-- Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.allocation = {}

-- Size: Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.allocation.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.size

-- Display: Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.allocation.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.allocation.fields = function(buffer, offset, packet, parent, allocation_index)
  local index = offset

  -- Implicit Allocation Index
  if allocation_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.allocation_index, allocation_index)
    iteration:set_generated()
  end

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Alloc Qty: Binary
  index, alloc_qty = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_qty.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.dissect(buffer, index, packet, parent)

  -- Give Up Firm Id: Alpha
  index, give_up_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.give_up_firm_id.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_c1_options_orderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Clearing Optional Data: Text
  index, clearing_optional_data = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Allocation
cboe_c1_options_orderentry_boe3_v1_0_12.allocation.dissect = function(buffer, offset, packet, parent, allocation_index)
  if show.allocation then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.allocation, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.allocation.fields(buffer, offset, packet, parent, allocation_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.allocation.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.allocation.fields(buffer, offset, packet, parent, allocation_index)
  end
end

-- Alloc Leg Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_leg_cnt = {}

-- Size: Alloc Leg Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_leg_cnt.size = 1

-- Display: Alloc Leg Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_leg_cnt.display = function(value)
  return "Alloc Leg Cnt: "..value
end

-- Dissect: Alloc Leg Cnt
cboe_c1_options_orderentry_boe3_v1_0_12.alloc_leg_cnt.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_leg_cnt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_leg_cnt.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.alloc_leg_cnt, range, value, display)

  return offset + length, value
end

-- Cross Initiator
cboe_c1_options_orderentry_boe3_v1_0_12.cross_initiator = {}

-- Size: Cross Initiator
cboe_c1_options_orderentry_boe3_v1_0_12.cross_initiator.size = 4

-- Display: Cross Initiator
cboe_c1_options_orderentry_boe3_v1_0_12.cross_initiator.display = function(value)
  return "Cross Initiator: "..value
end

-- Dissect: Cross Initiator
cboe_c1_options_orderentry_boe3_v1_0_12.cross_initiator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cross_initiator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cross_initiator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_initiator, range, value, display)

  return offset + length, value
end

-- Order Router Subsidy
cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy = {}

-- Size: Order Router Subsidy
cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.size = 1

-- Display: Order Router Subsidy
cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.display = function(value)
  if value == "N" then
    return "Order Router Subsidy: No (N)"
  end
  if value == "Y" then
    return "Order Router Subsidy: Yes (Y)"
  end

  return "Order Router Subsidy: Unknown("..value..")"
end

-- Dissect: Order Router Subsidy
cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.order_router_subsidy, range, value, display)

  return offset + length, value
end

-- Equity Sell Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm = {}

-- Size: Equity Sell Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.size = 4

-- Display: Equity Sell Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.display = function(value)
  return "Equity Sell Clearing Firm: "..value
end

-- Dissect: Equity Sell Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_sell_clearing_firm, range, value, display)

  return offset + length, value
end

-- Equity Buy Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm = {}

-- Size: Equity Buy Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.size = 4

-- Display: Equity Buy Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.display = function(value)
  return "Equity Buy Clearing Firm: "..value
end

-- Dissect: Equity Buy Clearing Firm
cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_buy_clearing_firm, range, value, display)

  return offset + length, value
end

-- Equity Transact Time
cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time = {}

-- Size: Equity Transact Time
cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.size = 8

-- Display: Equity Transact Time
cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.display = function(value)
  return "Equity Transact Time: "..value
end

-- Dissect: Equity Transact Time
cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_transact_time, range, value, display)

  return offset + length, value
end

-- Equity Trade Venue
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue = {}

-- Size: Equity Trade Venue
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.size = 1

-- Display: Equity Trade Venue
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.display = function(value)
  if value == "A" then
    return "Equity Trade Venue: Nyse American (A)"
  end
  if value == "B" then
    return "Equity Trade Venue: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Equity Trade Venue: Nyse National (C)"
  end
  if value == "I" then
    return "Equity Trade Venue: Investors Exchange (I)"
  end
  if value == "J" then
    return "Equity Trade Venue: Cboe Edga Exchange (J)"
  end
  if value == "K" then
    return "Equity Trade Venue: Cboe Edgx Exchange (K)"
  end
  if value == "M" then
    return "Equity Trade Venue: Chx (M)"
  end
  if value == "N" then
    return "Equity Trade Venue: Nyse (N)"
  end
  if value == "P" then
    return "Equity Trade Venue: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Equity Trade Venue: Nasdaq (Q)"
  end
  if value == "X" then
    return "Equity Trade Venue: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Equity Trade Venue: Cboe Byx Exchange (Y)"
  end
  if value == "Z" then
    return "Equity Trade Venue: Cboe Bzx Exchange (Z)"
  end

  return "Equity Trade Venue: Unknown("..value..")"
end

-- Dissect: Equity Trade Venue
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_trade_venue, range, value, display)

  return offset + length, value
end

-- Equity Trade Size
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size = {}

-- Size: Equity Trade Size
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.size = 4

-- Display: Equity Trade Size
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.display = function(value)
  return "Equity Trade Size: "..value
end

-- Dissect: Equity Trade Size
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_trade_size, range, value, display)

  return offset + length, value
end

-- Equity Trade Price
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price = {}

-- Size: Equity Trade Price
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.size = 8

-- Display: Equity Trade Price
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.display = function(value)
  return "Equity Trade Price: "..value
end

-- Translate: Equity Trade Price
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Equity Trade Price
cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_trade_price, range, value, display)

  return offset + length, value
end

-- Last Priority
cboe_c1_options_orderentry_boe3_v1_0_12.last_priority = {}

-- Size: Last Priority
cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.size = 1

-- Display: Last Priority
cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.display = function(value)
  if value == "0" then
    return "Last Priority: Disabled (0)"
  end
  if value == "1" then
    return "Last Priority: Enabled (1)"
  end

  return "Last Priority: Unknown("..value..")"
end

-- Dissect: Last Priority
cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.last_priority, range, value, display)

  return offset + length, value
end

-- Auto Match Price
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price = {}

-- Size: Auto Match Price
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.size = 8

-- Display: Auto Match Price
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.display = function(value)
  return "Auto Match Price: "..value
end

-- Translate: Auto Match Price
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auto Match Price
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.translate(raw)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.auto_match_price, range, value, display)

  return offset + length, value
end

-- Auto Match
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match = {}

-- Size: Auto Match
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.size = 1

-- Display: Auto Match
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.display = function(value)
  if value == "0" then
    return "Auto Match: Disabled Default (0)"
  end
  if value == "1" then
    return "Auto Match: Market (1)"
  end
  if value == "2" then
    return "Auto Match: Limit (2)"
  end

  return "Auto Match: Unknown("..value..")"
end

-- Dissect: Auto Match
cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.auto_match, range, value, display)

  return offset + length, value
end

-- Cross Prioritization
cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization = {}

-- Size: Cross Prioritization
cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.size = 1

-- Display: Cross Prioritization
cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.display = function(value)
  if value == "1" then
    return "Cross Prioritization: Buy (1)"
  end
  if value == "2" then
    return "Cross Prioritization: Sell (2)"
  end

  return "Cross Prioritization: Unknown("..value..")"
end

-- Dissect: Cross Prioritization
cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_prioritization, range, value, display)

  return offset + length, value
end

-- Cross Type
cboe_c1_options_orderentry_boe3_v1_0_12.cross_type = {}

-- Size: Cross Type
cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.size = 1

-- Display: Cross Type
cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.display = function(value)
  if value == "1" then
    return "Cross Type: Aim (1)"
  end
  if value == "2" then
    return "Cross Type: Qcc (2)"
  end
  if value == "3" then
    return "Cross Type: Sam (3)"
  end
  if value == "4" then
    return "Cross Type: Pcc (4)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.cross_type, range, value, display)

  return offset + length, value
end

-- New Order Cross Multileg Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message = {}

-- Calculate size of: New Order Cross Multileg Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.compression.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_initiator.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.alloc_leg_cnt.size

  -- Calculate field size from count
  local allocation_count = buffer(offset + index - 2, 1):le_uint()
  index = index + allocation_count * 77

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 78, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Order Cross Multileg Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Multileg Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: Text
  index, cross_id = cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: Alphanumeric
  index, cross_prioritization = cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.dissect(buffer, index, packet, parent)

  -- Auto Match: Alphanumeric
  index, auto_match = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.dissect(buffer, index, packet, parent)

  -- Auto Match Price: BinaryPrice
  index, auto_match_price = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.dissect(buffer, index, packet, parent)

  -- Last Priority: Alphanumeric
  index, last_priority = cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.dissect(buffer, index, packet, parent)

  -- Equity Trade Price: BinaryPrice
  index, equity_trade_price = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.dissect(buffer, index, packet, parent)

  -- Equity Trade Size: Binary
  index, equity_trade_size = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.dissect(buffer, index, packet, parent)

  -- Equity Trade Venue: Text
  index, equity_trade_venue = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.dissect(buffer, index, packet, parent)

  -- Equity Transact Time: DateTime
  index, equity_transact_time = cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.dissect(buffer, index, packet, parent)

  -- Equity Buy Clearing Firm: Text
  index, equity_buy_clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.dissect(buffer, index, packet, parent)

  -- Equity Sell Clearing Firm: Text
  index, equity_sell_clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.dissect(buffer, index, packet, parent)

  -- Drill Thru Protection: BinaryPrice
  index, drill_thru_protection = cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.dissect(buffer, index, packet, parent)

  -- Equity Ex Destination: Alphanumeric
  index, equity_ex_destination = cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_c1_options_orderentry_boe3_v1_0_12.compression.dissect(buffer, index, packet, parent)

  -- Order Router Subsidy: Alpha
  index, order_router_subsidy = cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.dissect(buffer, index, packet, parent)

  -- Cross Initiator: Alpha
  index, cross_initiator = cboe_c1_options_orderentry_boe3_v1_0_12.cross_initiator.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  -- Alloc Cnt: Binary
  index, alloc_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.dissect(buffer, index, packet, parent)

  -- Alloc Leg Cnt: Binary
  index, alloc_leg_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Allocation
  for allocation_index = 1, alloc_cnt do
    index, allocation = cboe_c1_options_orderentry_boe3_v1_0_12.allocation.dissect(buffer, index, packet, parent, allocation_index)
  end

  -- Repeating: Leg Position Effect
  for leg_position_effect_index = 1, alloc_leg_cnt do
    index, leg_position_effect = cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect.dissect(buffer, index, packet, parent, leg_position_effect_index)
  end

  return index
end

-- Dissect: New Order Cross Multileg Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_cross_multileg_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_order_cross_multileg_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.fields(buffer, offset, packet, parent)
end

-- New Complex Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message = {}

-- Calculate size of: New Complex Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.side.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.account.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.size

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Complex Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_c1_options_orderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect(buffer, index, packet, parent)

  -- Equity Party Id: Alpha
  index, equity_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.dissect(buffer, index, packet, parent)

  -- Floor Destination: Text
  index, floor_destination = cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.dissect(buffer, index, packet, parent)

  -- Floor Routing Inst: Alphanumeric
  index, floor_routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Position Effect
  for leg_position_effect_index = 1, leg_cnt do
    index, leg_position_effect = cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect.dissect(buffer, index, packet, parent, leg_position_effect_index)
  end

  return index
end

-- Dissect: New Complex Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_order_short_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_order_short_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.fields(buffer, offset, packet, parent)
end

-- Tied Hedge
cboe_c1_options_orderentry_boe3_v1_0_12.tied_hedge = {}

-- Size: Tied Hedge
cboe_c1_options_orderentry_boe3_v1_0_12.tied_hedge.size = 1

-- Display: Tied Hedge
cboe_c1_options_orderentry_boe3_v1_0_12.tied_hedge.display = function(value)
  if value == "N" then
    return "Tied Hedge: No (N)"
  end
  if value == "Y" then
    return "Tied Hedge: Yes (Y)"
  end

  return "Tied Hedge: Unknown("..value..")"
end

-- Dissect: Tied Hedge
cboe_c1_options_orderentry_boe3_v1_0_12.tied_hedge.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.tied_hedge.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.tied_hedge.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.tied_hedge, range, value, display)

  return offset + length, value
end

-- Equity Leg Short Sell
cboe_c1_options_orderentry_boe3_v1_0_12.equity_leg_short_sell = {}

-- Size: Equity Leg Short Sell
cboe_c1_options_orderentry_boe3_v1_0_12.equity_leg_short_sell.size = 1

-- Display: Equity Leg Short Sell
cboe_c1_options_orderentry_boe3_v1_0_12.equity_leg_short_sell.display = function(value)
  if value == "5" then
    return "Equity Leg Short Sell: Sell Short (5)"
  end
  if value == "6" then
    return "Equity Leg Short Sell: Sell Short Exempt (6)"
  end

  return "Equity Leg Short Sell: Unknown("..value..")"
end

-- Dissect: Equity Leg Short Sell
cboe_c1_options_orderentry_boe3_v1_0_12.equity_leg_short_sell.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.equity_leg_short_sell.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.equity_leg_short_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.equity_leg_short_sell, range, value, display)

  return offset + length, value
end

-- Display Range
cboe_c1_options_orderentry_boe3_v1_0_12.display_range = {}

-- Size: Display Range
cboe_c1_options_orderentry_boe3_v1_0_12.display_range.size = 4

-- Display: Display Range
cboe_c1_options_orderentry_boe3_v1_0_12.display_range.display = function(value)
  return "Display Range: "..value
end

-- Dissect: Display Range
cboe_c1_options_orderentry_boe3_v1_0_12.display_range.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.display_range.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.display_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.display_range, range, value, display)

  return offset + length, value
end

-- New Complex Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message = {}

-- Calculate size of: New Complex Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.side.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.account.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.display_range.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.compression.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_leg_short_sell.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.price_type.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.tied_hedge.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.held.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.size

  -- Calculate field size from count
  local leg_position_effect_count = buffer(offset + index - 1, 1):le_uint()
  index = index + leg_position_effect_count * 1

  return index
end

-- Display: New Complex Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_c1_options_orderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Drill Thru Protection: BinaryPrice
  index, drill_thru_protection = cboe_c1_options_orderentry_boe3_v1_0_12.drill_thru_protection.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect(buffer, index, packet, parent)

  -- Equity Party Id: Alpha
  index, equity_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.equity_party_id.dissect(buffer, index, packet, parent)

  -- Clearing Optional Data: Text
  index, clearing_optional_data = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.dissect(buffer, index, packet, parent)

  -- Display Range: Binary
  index, display_range = cboe_c1_options_orderentry_boe3_v1_0_12.display_range.dissect(buffer, index, packet, parent)

  -- Combo Order: Alpha
  index, combo_order = cboe_c1_options_orderentry_boe3_v1_0_12.combo_order.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_c1_options_orderentry_boe3_v1_0_12.compression.dissect(buffer, index, packet, parent)

  -- Equity Ex Destination: Alphanumeric
  index, equity_ex_destination = cboe_c1_options_orderentry_boe3_v1_0_12.equity_ex_destination.dissect(buffer, index, packet, parent)

  -- Equity Leg Short Sell: Alphanumeric
  index, equity_leg_short_sell = cboe_c1_options_orderentry_boe3_v1_0_12.equity_leg_short_sell.dissect(buffer, index, packet, parent)

  -- Floor Destination: Text
  index, floor_destination = cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.dissect(buffer, index, packet, parent)

  -- Floor Routing Inst: Alphanumeric
  index, floor_routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.dissect(buffer, index, packet, parent)

  -- Order Origin: Alphanumeric
  index, order_origin = cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.dissect(buffer, index, packet, parent)

  -- Order Router Subsidy: Alpha
  index, order_router_subsidy = cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.dissect(buffer, index, packet, parent)

  -- Price Type: Alphanumeric
  index, price_type = cboe_c1_options_orderentry_boe3_v1_0_12.price_type.dissect(buffer, index, packet, parent)

  -- Strategy Id: Alphanumeric
  index, strategy_id = cboe_c1_options_orderentry_boe3_v1_0_12.strategy_id.dissect(buffer, index, packet, parent)

  -- Tied Hedge: Alpha
  index, tied_hedge = cboe_c1_options_orderentry_boe3_v1_0_12.tied_hedge.dissect(buffer, index, packet, parent)

  -- Held: Alpha
  index, held = cboe_c1_options_orderentry_boe3_v1_0_12.held.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Position Effect
  for leg_position_effect_index = 1, leg_cnt do
    index, leg_position_effect = cboe_c1_options_orderentry_boe3_v1_0_12.leg_position_effect.dissect(buffer, index, packet, parent, leg_position_effect_index)
  end

  return index
end

-- Dissect: New Complex Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_order_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_order_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.fields(buffer, offset, packet, parent)
end

-- New Complex Instrument Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message = {}

-- Calculate size of: New Complex Instrument Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.size

  -- Calculate field size from count
  local complex_leg_count = buffer(offset + index - 1, 1):le_uint()
  index = index + complex_leg_count * 27

  return index
end

-- Display: New Complex Instrument Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Complex Instrument Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  -- Leg Cnt: Binary
  index, leg_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.leg_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Leg
  for complex_leg_index = 1, leg_cnt do
    index, complex_leg = cboe_c1_options_orderentry_boe3_v1_0_12.complex_leg.dissect(buffer, index, packet, parent, complex_leg_index)
  end

  return index
end

-- Dissect: New Complex Instrument Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_complex_instrument_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_complex_instrument_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.fields(buffer, offset, packet, parent)
end

-- New Order Cross Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message = {}

-- Calculate size of: New Order Cross Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.compression.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.size

  -- Calculate field size from count
  local allocation_count = buffer(offset + index - 1, 1):le_uint()
  index = index + allocation_count * 77

  return index
end

-- Display: New Order Cross Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Cross Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cross Id: Text
  index, cross_id = cboe_c1_options_orderentry_boe3_v1_0_12.cross_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alphanumeric
  index, cross_type = cboe_c1_options_orderentry_boe3_v1_0_12.cross_type.dissect(buffer, index, packet, parent)

  -- Cross Prioritization: Alphanumeric
  index, cross_prioritization = cboe_c1_options_orderentry_boe3_v1_0_12.cross_prioritization.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Alphanumeric
  index, put_or_call = cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.dissect(buffer, index, packet, parent)

  -- Auto Match: Alphanumeric
  index, auto_match = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match.dissect(buffer, index, packet, parent)

  -- Auto Match Price: BinaryPrice
  index, auto_match_price = cboe_c1_options_orderentry_boe3_v1_0_12.auto_match_price.dissect(buffer, index, packet, parent)

  -- Last Priority: Alphanumeric
  index, last_priority = cboe_c1_options_orderentry_boe3_v1_0_12.last_priority.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.dissect(buffer, index, packet, parent)

  -- Equity Trade Price: BinaryPrice
  index, equity_trade_price = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_price.dissect(buffer, index, packet, parent)

  -- Equity Trade Size: Binary
  index, equity_trade_size = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_size.dissect(buffer, index, packet, parent)

  -- Equity Trade Venue: Text
  index, equity_trade_venue = cboe_c1_options_orderentry_boe3_v1_0_12.equity_trade_venue.dissect(buffer, index, packet, parent)

  -- Equity Transact Time: DateTime
  index, equity_transact_time = cboe_c1_options_orderentry_boe3_v1_0_12.equity_transact_time.dissect(buffer, index, packet, parent)

  -- Equity Buy Clearing Firm: Text
  index, equity_buy_clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.equity_buy_clearing_firm.dissect(buffer, index, packet, parent)

  -- Equity Sell Clearing Firm: Text
  index, equity_sell_clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.equity_sell_clearing_firm.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_c1_options_orderentry_boe3_v1_0_12.compression.dissect(buffer, index, packet, parent)

  -- Order Router Subsidy: Alpha
  index, order_router_subsidy = cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  -- Alloc Cnt: Binary
  index, alloc_cnt = cboe_c1_options_orderentry_boe3_v1_0_12.alloc_cnt.dissect(buffer, index, packet, parent)

  -- Repeating: Allocation
  for allocation_index = 1, alloc_cnt do
    index, allocation = cboe_c1_options_orderentry_boe3_v1_0_12.allocation.dissect(buffer, index, packet, parent, allocation_index)
  end

  return index
end

-- Dissect: New Order Cross Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_order_cross_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_order_cross_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.fields(buffer, offset, packet, parent)
end

-- New Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message = {}

-- Size: New Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

-- Display: New Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_c1_options_orderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Display Indicator: Alphanumeric
  index, display_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.dissect(buffer, index, packet, parent)

  -- Rout Strategy: Text
  index, rout_strategy = cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Short Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_order_short_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.fields(buffer, offset, packet, parent)
  end
end

-- New Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message = {}

-- Size: New Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.side.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.symbol.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.capacity.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.account.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.open_close.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.display_range.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.compression.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.price_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.held.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.size

-- Display: New Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_c1_options_orderentry_boe3_v1_0_12.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_c1_options_orderentry_boe3_v1_0_12.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_c1_options_orderentry_boe3_v1_0_12.order_qty.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_account.dissect(buffer, index, packet, parent)

  -- Price: BinaryPrice
  index, price = cboe_c1_options_orderentry_boe3_v1_0_12.price.dissect(buffer, index, packet, parent)

  -- Exec Inst: Text
  index, exec_inst = cboe_c1_options_orderentry_boe3_v1_0_12.exec_inst.dissect(buffer, index, packet, parent)

  -- Ord Type: Alphanumeric
  index, ord_type = cboe_c1_options_orderentry_boe3_v1_0_12.ord_type.dissect(buffer, index, packet, parent)

  -- Time In Force: Alphanumeric
  index, time_in_force = cboe_c1_options_orderentry_boe3_v1_0_12.time_in_force.dissect(buffer, index, packet, parent)

  -- Min Qty: Binary
  index, min_qty = cboe_c1_options_orderentry_boe3_v1_0_12.min_qty.dissect(buffer, index, packet, parent)

  -- Max Floor: Binary
  index, max_floor = cboe_c1_options_orderentry_boe3_v1_0_12.max_floor.dissect(buffer, index, packet, parent)

  -- Symbol: Alphanumeric
  index, symbol = cboe_c1_options_orderentry_boe3_v1_0_12.symbol.dissect(buffer, index, packet, parent)

  -- Capacity: Alpha
  index, capacity = cboe_c1_options_orderentry_boe3_v1_0_12.capacity.dissect(buffer, index, packet, parent)

  -- Routing Inst: Text
  index, routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.routing_inst.dissect(buffer, index, packet, parent)

  -- Account: Text
  index, account = cboe_c1_options_orderentry_boe3_v1_0_12.account.dissect(buffer, index, packet, parent)

  -- Display Indicator: Alphanumeric
  index, display_indicator = cboe_c1_options_orderentry_boe3_v1_0_12.display_indicator.dissect(buffer, index, packet, parent)

  -- Prevent Match: Struct of 3 fields
  index, prevent_match = cboe_c1_options_orderentry_boe3_v1_0_12.prevent_match.dissect(buffer, index, packet, parent)

  -- Expire Time: DateTime
  index, expire_time = cboe_c1_options_orderentry_boe3_v1_0_12.expire_time.dissect(buffer, index, packet, parent)

  -- Maturity Date: Date
  index, maturity_date = cboe_c1_options_orderentry_boe3_v1_0_12.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Price: BinaryPrice
  index, strike_price = cboe_c1_options_orderentry_boe3_v1_0_12.strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Alphanumeric
  index, put_or_call = cboe_c1_options_orderentry_boe3_v1_0_12.put_or_call.dissect(buffer, index, packet, parent)

  -- Open Close: Alphanumeric
  index, open_close = cboe_c1_options_orderentry_boe3_v1_0_12.open_close.dissect(buffer, index, packet, parent)

  -- Cmta Number: Binary
  index, cmta_number = cboe_c1_options_orderentry_boe3_v1_0_12.cmta_number.dissect(buffer, index, packet, parent)

  -- Target Party Id: Alpha
  index, target_party_id = cboe_c1_options_orderentry_boe3_v1_0_12.target_party_id.dissect(buffer, index, packet, parent)

  -- Session Eligibility: Alpha
  index, session_eligibility = cboe_c1_options_orderentry_boe3_v1_0_12.session_eligibility.dissect(buffer, index, packet, parent)

  -- Attributed Quote: Alphanumeric
  index, attributed_quote = cboe_c1_options_orderentry_boe3_v1_0_12.attributed_quote.dissect(buffer, index, packet, parent)

  -- Display Range: Binary
  index, display_range = cboe_c1_options_orderentry_boe3_v1_0_12.display_range.dissect(buffer, index, packet, parent)

  -- Stop Px: BinaryPrice
  index, stop_px = cboe_c1_options_orderentry_boe3_v1_0_12.stop_px.dissect(buffer, index, packet, parent)

  -- Rout Strategy: Text
  index, rout_strategy = cboe_c1_options_orderentry_boe3_v1_0_12.rout_strategy.dissect(buffer, index, packet, parent)

  -- Route Delivery Method: Text
  index, route_delivery_method = cboe_c1_options_orderentry_boe3_v1_0_12.route_delivery_method.dissect(buffer, index, packet, parent)

  -- Ex Destination: Text
  index, ex_destination = cboe_c1_options_orderentry_boe3_v1_0_12.ex_destination.dissect(buffer, index, packet, parent)

  -- Auction Id: Binary
  index, auction_id = cboe_c1_options_orderentry_boe3_v1_0_12.auction_id.dissect(buffer, index, packet, parent)

  -- Routing Firm Id: Alpha
  index, routing_firm_id = cboe_c1_options_orderentry_boe3_v1_0_12.routing_firm_id.dissect(buffer, index, packet, parent)

  -- Custom Group Id: Binary
  index, custom_group_id = cboe_c1_options_orderentry_boe3_v1_0_12.custom_group_id.dissect(buffer, index, packet, parent)

  -- Clearing Optional Data: Text
  index, clearing_optional_data = cboe_c1_options_orderentry_boe3_v1_0_12.clearing_optional_data.dissect(buffer, index, packet, parent)

  -- Client Id Attr: Text
  index, client_id_attr = cboe_c1_options_orderentry_boe3_v1_0_12.client_id_attr.dissect(buffer, index, packet, parent)

  -- Frequent Trader Id: Text
  index, frequent_trader_id = cboe_c1_options_orderentry_boe3_v1_0_12.frequent_trader_id.dissect(buffer, index, packet, parent)

  -- Compression: Alpha
  index, compression = cboe_c1_options_orderentry_boe3_v1_0_12.compression.dissect(buffer, index, packet, parent)

  -- Floor Destination: Text
  index, floor_destination = cboe_c1_options_orderentry_boe3_v1_0_12.floor_destination.dissect(buffer, index, packet, parent)

  -- Floor Routing Inst: Alphanumeric
  index, floor_routing_inst = cboe_c1_options_orderentry_boe3_v1_0_12.floor_routing_inst.dissect(buffer, index, packet, parent)

  -- Order Origin: Alphanumeric
  index, order_origin = cboe_c1_options_orderentry_boe3_v1_0_12.order_origin.dissect(buffer, index, packet, parent)

  -- Order Router Subsidy: Alpha
  index, order_router_subsidy = cboe_c1_options_orderentry_boe3_v1_0_12.order_router_subsidy.dissect(buffer, index, packet, parent)

  -- Price Type: Alphanumeric
  index, price_type = cboe_c1_options_orderentry_boe3_v1_0_12.price_type.dissect(buffer, index, packet, parent)

  -- Held: Alpha
  index, held = cboe_c1_options_orderentry_boe3_v1_0_12.held.dissect(buffer, index, packet, parent)

  -- Scratch Pad: Binary
  index, scratch_pad = cboe_c1_options_orderentry_boe3_v1_0_12.scratch_pad.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Order Message
cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.dissect = function(buffer, offset, packet, parent)
  if show.new_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.new_order_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Logout Reason Text
cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason_text.display = function(value)
  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason = {}

-- Size: Logout Reason
cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason.size = 1

-- Display: Logout Reason
cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message = {}

-- Size: Logout Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason_text.size

-- Display: Logout Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Logout Reason: 1 Byte Ascii String Enum with 3 values
  index, logout_reason = cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: 60 Byte Ascii String
  index, logout_reason_text = cboe_c1_options_orderentry_boe3_v1_0_12.logout_reason_text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.dissect = function(buffer, offset, packet, parent)
  if show.logout_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.logout_response_message, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number
cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number = {}

-- Size: Sequence Number
cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.size = 4

-- Display: Sequence Number
cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Unit Number
cboe_c1_options_orderentry_boe3_v1_0_12.unit_number = {}

-- Size: Unit Number
cboe_c1_options_orderentry_boe3_v1_0_12.unit_number.size = 1

-- Display: Unit Number
cboe_c1_options_orderentry_boe3_v1_0_12.unit_number.display = function(value)
  return "Unit Number: "..value
end

-- Dissect: Unit Number
cboe_c1_options_orderentry_boe3_v1_0_12.unit_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.unit_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.unit_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.unit_number, range, value, display)

  return offset + length, value
end

-- Unit Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence = {}

-- Size: Unit Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.unit_number.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.size

-- Display: Unit Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.fields = function(buffer, offset, packet, parent, unit_sequence_index)
  local index = offset

  -- Implicit Unit Sequence Index
  if unit_sequence_index ~= nil then
    local iteration = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.unit_sequence_index, unit_sequence_index)
    iteration:set_generated()
  end

  -- Unit Number: 1 Byte Unsigned Fixed Width Integer
  index, unit_number = cboe_c1_options_orderentry_boe3_v1_0_12.unit_number.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.dissect = function(buffer, offset, packet, parent, unit_sequence_index)
  if show.unit_sequence then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.unit_sequence, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.fields(buffer, offset, packet, parent, unit_sequence_index)
  end
end

-- Number Of Units
cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units = {}

-- Size: Number Of Units
cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.size = 1

-- Display: Number Of Units
cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Client Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.client_sequence = {}

-- Size: Client Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.client_sequence.size = 4

-- Display: Client Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.client_sequence.display = function(value)
  return "Client Sequence: "..value
end

-- Dissect: Client Sequence
cboe_c1_options_orderentry_boe3_v1_0_12.client_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.client_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.client_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.client_sequence, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_text = {}

-- Size: Login Response Text
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_text.size = 60

-- Display: Login Response Text
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_text.display = function(value)
  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.login_response_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_status = {}

-- Size: Login Response Status
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_status.size = 1

-- Display: Login Response Status
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_status.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message = {}

-- Calculate size of: Login Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.login_response_status.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.login_response_text.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.client_sequence.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Login Response Status: 1 Byte Ascii String Enum with 8 values
  index, login_response_status = cboe_c1_options_orderentry_boe3_v1_0_12.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: 60 Byte Ascii String
  index, login_response_text = cboe_c1_options_orderentry_boe3_v1_0_12.login_response_text.dissect(buffer, index, packet, parent)

  -- Client Sequence: 4 Byte Unsigned Fixed Width Integer
  index, client_sequence = cboe_c1_options_orderentry_boe3_v1_0_12.client_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_response_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.login_response_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.fields(buffer, offset, packet, parent)
end

-- Replay Unspecified Unit
cboe_c1_options_orderentry_boe3_v1_0_12.replay_unspecified_unit = {}

-- Size: Replay Unspecified Unit
cboe_c1_options_orderentry_boe3_v1_0_12.replay_unspecified_unit.size = 1

-- Display: Replay Unspecified Unit
cboe_c1_options_orderentry_boe3_v1_0_12.replay_unspecified_unit.display = function(value)
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
cboe_c1_options_orderentry_boe3_v1_0_12.replay_unspecified_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.replay_unspecified_unit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.replay_unspecified_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.replay_unspecified_unit, range, value, display)

  return offset + length, value
end

-- Password
cboe_c1_options_orderentry_boe3_v1_0_12.password = {}

-- Size: Password
cboe_c1_options_orderentry_boe3_v1_0_12.password.size = 10

-- Display: Password
cboe_c1_options_orderentry_boe3_v1_0_12.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_c1_options_orderentry_boe3_v1_0_12.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.password, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_c1_options_orderentry_boe3_v1_0_12.session_sub_id = {}

-- Size: Session Sub Id
cboe_c1_options_orderentry_boe3_v1_0_12.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_c1_options_orderentry_boe3_v1_0_12.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_c1_options_orderentry_boe3_v1_0_12.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.session_sub_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Session Id
cboe_c1_options_orderentry_boe3_v1_0_12.session_id = {}

-- Size: Session Id
cboe_c1_options_orderentry_boe3_v1_0_12.session_id.size = 4

-- Display: Session Id
cboe_c1_options_orderentry_boe3_v1_0_12.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
cboe_c1_options_orderentry_boe3_v1_0_12.session_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.session_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.session_id, range, value, display)

  return offset + length, value
end

-- Login Request Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message = {}

-- Calculate size of: Login Request Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.size = function(buffer, offset)
  local index = 0

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.session_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.session_sub_id.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.password.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.replay_unspecified_unit.size

  index = index + cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.size

  -- Calculate field size from count
  local unit_sequence_count = buffer(offset + index - 1, 1):le_uint()
  index = index + unit_sequence_count * 5

  return index
end

-- Display: Login Request Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Id: 4 Byte Ascii String
  index, session_id = cboe_c1_options_orderentry_boe3_v1_0_12.session_id.dissect(buffer, index, packet, parent)

  -- Session Sub Id: 4 Byte Ascii String
  index, session_sub_id = cboe_c1_options_orderentry_boe3_v1_0_12.session_sub_id.dissect(buffer, index, packet, parent)

  -- Password: 10 Byte Ascii String
  index, password = cboe_c1_options_orderentry_boe3_v1_0_12.password.dissect(buffer, index, packet, parent)

  -- Replay Unspecified Unit: 1 Byte Ascii String Enum with 3 values
  index, replay_unspecified_unit = cboe_c1_options_orderentry_boe3_v1_0_12.replay_unspecified_unit.dissect(buffer, index, packet, parent)

  -- Number Of Units: 1 Byte Unsigned Fixed Width Integer
  index, number_of_units = cboe_c1_options_orderentry_boe3_v1_0_12.number_of_units.dissect(buffer, index, packet, parent)

  -- Repeating: Unit Sequence
  for unit_sequence_index = 1, number_of_units do
    index, unit_sequence = cboe_c1_options_orderentry_boe3_v1_0_12.unit_sequence.dissect(buffer, index, packet, parent, unit_sequence_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.login_request_message then
    local length = cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.display(buffer, packet, parent)
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.login_request_message, range, display)
  end

  return cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.fields(buffer, offset, packet, parent)
end

-- Message
cboe_c1_options_orderentry_boe3_v1_0_12.message = {}

-- Calculate runtime size of: Message
cboe_c1_options_orderentry_boe3_v1_0_12.message.size = function(buffer, offset, message_type)
  -- Size of Login Request Message
  if message_type == 1 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.size(buffer, offset)
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
    return cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.size(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 502 then
    return 0
  end
  -- Size of Logout Response Message
  if message_type == 503 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.size(buffer, offset)
  end
  -- Size of Replay Complete Message
  if message_type == 504 then
    return 0
  end
  -- Size of New Order Message
  if message_type == 0x07D1 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.size(buffer, offset)
  end
  -- Size of New Order Short Message
  if message_type == 0x07D2 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.size(buffer, offset)
  end
  -- Size of New Order Cross Message
  if message_type == 0x07D3 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.size(buffer, offset)
  end
  -- Size of New Complex Instrument Message
  if message_type == 0x07D5 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.size(buffer, offset)
  end
  -- Size of New Complex Order Message
  if message_type == 0x07D6 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.size(buffer, offset)
  end
  -- Size of New Complex Order Short Message
  if message_type == 0x07D7 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.size(buffer, offset)
  end
  -- Size of New Order Cross Multileg Message
  if message_type == 0x07D8 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.size(buffer, offset)
  end
  -- Size of Cancel Order Message
  if message_type == 0x07DA then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Order Message
  if message_type == 0x07DF then
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.size(buffer, offset)
  end
  -- Size of Modify Order Message
  if message_type == 0x07DB then
    return cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.size(buffer, offset)
  end
  -- Size of Quote Update Message
  if message_type == 0x07DC then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.size(buffer, offset)
  end
  -- Size of Quote Update Short Message
  if message_type == 0x07DD then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.size(buffer, offset)
  end
  -- Size of Purge Orders Message
  if message_type == 0x07E0 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.size(buffer, offset)
  end
  -- Size of Reset Risk Message
  if message_type == 0x07DE then
    return cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.size(buffer, offset)
  end
  -- Size of Order Acknowledgement Message
  if message_type == 0x09C5 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Cross Order Acknowledgment Message
  if message_type == 0x09C6 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.size(buffer, offset)
  end
  -- Size of Quote Update Acknowledgement Message
  if message_type == 0x09D5 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Order Rejected Message
  if message_type == 0x09C7 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.size(buffer, offset)
  end
  -- Size of Cross Order Rejected Message
  if message_type == 0x09C8 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.size(buffer, offset)
  end
  -- Size of Quote Update Rejected Message
  if message_type == 0x09D6 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.size(buffer, offset)
  end
  -- Size of Order Modified Message
  if message_type == 0x09CB then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.size(buffer, offset)
  end
  -- Size of Order Restated Message
  if message_type == 0x09CD then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.size(buffer, offset)
  end
  -- Size of Quote Restated Message
  if message_type == 0x09D9 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.size(buffer, offset)
  end
  -- Size of Modify Rejected Message
  if message_type == 0x09CC then
    return cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.size(buffer, offset)
  end
  -- Size of Order Cancelled Message
  if message_type == 0x09D0 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.size(buffer, offset)
  end
  -- Size of Quote Cancelled Message
  if message_type == 0x09D7 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.size(buffer, offset)
  end
  -- Size of Cross Order Cancelled Message
  if message_type == 0x09D1 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.size(buffer, offset)
  end
  -- Size of Cancel Rejected Message
  if message_type == 0x09D2 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.size(buffer, offset)
  end
  -- Size of Order Execution Message
  if message_type == 0x09D3 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.size(buffer, offset)
  end
  -- Size of Quote Execution Message
  if message_type == 0x09D8 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.size(buffer, offset)
  end
  -- Size of Trade Cancel Correct Message
  if message_type == 0x09D4 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.size(buffer, offset)
  end
  -- Size of Purge Rejected Message
  if message_type == 0x09DE then
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.size(buffer, offset)
  end
  -- Size of Reset Risk Acknowledgement Message
  if message_type == 0x09DA then
    return cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Acknowledgment Message
  if message_type == 0x09DB then
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.size(buffer, offset)
  end
  -- Size of Mass Cancel Rejected Message
  if message_type == 0x09DC then
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.size(buffer, offset)
  end
  -- Size of Purge Acknowledgement Message
  if message_type == 0x09DD then
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.size(buffer, offset)
  end
  -- Size of Purge Notification Message
  if message_type == 0x09DF then
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.size(buffer, offset)
  end
  -- Size of New Complex Instrument Accepted Message
  if message_type == 0x09C9 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.size(buffer, offset)
  end
  -- Size of New Complex Instrument Rejected Message
  if message_type == 0x09CA then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.size(buffer, offset)
  end
  -- Size of Carried Restatement Message
  if message_type == 0x09CE then
    return cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.size(buffer, offset)
  end
  -- Size of Done For Day Message
  if message_type == 0x09CF then
    return cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.size(buffer, offset)
  end

  return 0
end

-- Display: Message
cboe_c1_options_orderentry_boe3_v1_0_12.message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message
cboe_c1_options_orderentry_boe3_v1_0_12.message.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 1 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 2 then
  end
  -- Dissect Client Heartbeat Message
  if message_type == 3 then
  end
  -- Dissect Login Response Message
  if message_type == 501 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 502 then
  end
  -- Dissect Logout Response Message
  if message_type == 503 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.logout_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replay Complete Message
  if message_type == 504 then
  end
  -- Dissect New Order Message
  if message_type == 0x07D1 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Short Message
  if message_type == 0x07D2 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Message
  if message_type == 0x07D3 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Message
  if message_type == 0x07D5 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Order Message
  if message_type == 0x07D6 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Order Short Message
  if message_type == 0x07D7 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_order_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Order Cross Multileg Message
  if message_type == 0x07D8 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_order_cross_multileg_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if message_type == 0x07DA then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Order Message
  if message_type == 0x07DF then
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 0x07DB then
    return cboe_c1_options_orderentry_boe3_v1_0_12.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Message
  if message_type == 0x07DC then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Short Message
  if message_type == 0x07DD then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Orders Message
  if message_type == 0x07E0 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_orders_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Message
  if message_type == 0x07DE then
    return cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgement Message
  if message_type == 0x09C5 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Acknowledgment Message
  if message_type == 0x09C6 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Acknowledgement Message
  if message_type == 0x09D5 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if message_type == 0x09C7 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Rejected Message
  if message_type == 0x09C8 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Update Rejected Message
  if message_type == 0x09D6 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_update_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x09CB then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if message_type == 0x09CD then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Restated Message
  if message_type == 0x09D9 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected Message
  if message_type == 0x09CC then
    return cboe_c1_options_orderentry_boe3_v1_0_12.modify_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if message_type == 0x09D0 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Cancelled Message
  if message_type == 0x09D7 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cross Order Cancelled Message
  if message_type == 0x09D1 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cross_order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if message_type == 0x09D2 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 0x09D3 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Execution Message
  if message_type == 0x09D8 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.quote_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Correct Message
  if message_type == 0x09D4 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.trade_cancel_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected Message
  if message_type == 0x09DE then
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Risk Acknowledgement Message
  if message_type == 0x09DA then
    return cboe_c1_options_orderentry_boe3_v1_0_12.reset_risk_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgment Message
  if message_type == 0x09DB then
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Rejected Message
  if message_type == 0x09DC then
    return cboe_c1_options_orderentry_boe3_v1_0_12.mass_cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Acknowledgement Message
  if message_type == 0x09DD then
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Notification Message
  if message_type == 0x09DF then
    return cboe_c1_options_orderentry_boe3_v1_0_12.purge_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Accepted Message
  if message_type == 0x09C9 then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Complex Instrument Rejected Message
  if message_type == 0x09CA then
    return cboe_c1_options_orderentry_boe3_v1_0_12.new_complex_instrument_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Carried Restatement Message
  if message_type == 0x09CE then
    return cboe_c1_options_orderentry_boe3_v1_0_12.carried_restatement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Done For Day Message
  if message_type == 0x09CF then
    return cboe_c1_options_orderentry_boe3_v1_0_12.done_for_day_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message
cboe_c1_options_orderentry_boe3_v1_0_12.message.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.message then
    return cboe_c1_options_orderentry_boe3_v1_0_12.message.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = cboe_c1_options_orderentry_boe3_v1_0_12.message.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.message.display(buffer, packet, parent)
  local element = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.message, range, display)

  return cboe_c1_options_orderentry_boe3_v1_0_12.message.branches(buffer, offset, packet, parent, message_type)
end

-- Reserved Field
cboe_c1_options_orderentry_boe3_v1_0_12.reserved_field = {}

-- Size: Reserved Field
cboe_c1_options_orderentry_boe3_v1_0_12.reserved_field.size = 1

-- Display: Reserved Field
cboe_c1_options_orderentry_boe3_v1_0_12.reserved_field.display = function(value)
  return "Reserved Field: "..value
end

-- Dissect: Reserved Field
cboe_c1_options_orderentry_boe3_v1_0_12.reserved_field.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.reserved_field.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.reserved_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.reserved_field, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.matching_unit = {}

-- Size: Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.matching_unit.size = 1

-- Display: Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_c1_options_orderentry_boe3_v1_0_12.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_c1_options_orderentry_boe3_v1_0_12.message_length = {}

-- Size: Message Length
cboe_c1_options_orderentry_boe3_v1_0_12.message_length.size = 2

-- Display: Message Length
cboe_c1_options_orderentry_boe3_v1_0_12.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_c1_options_orderentry_boe3_v1_0_12.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.message_length, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_c1_options_orderentry_boe3_v1_0_12.start_of_message = {}

-- Size: Start Of Message
cboe_c1_options_orderentry_boe3_v1_0_12.start_of_message.size = 2

-- Display: Start Of Message
cboe_c1_options_orderentry_boe3_v1_0_12.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_c1_options_orderentry_boe3_v1_0_12.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_c1_options_orderentry_boe3_v1_0_12.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_c1_options_orderentry_boe3_v1_0_12.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Message Header
cboe_c1_options_orderentry_boe3_v1_0_12.message_header = {}

-- Size: Message Header
cboe_c1_options_orderentry_boe3_v1_0_12.message_header.size =
  cboe_c1_options_orderentry_boe3_v1_0_12.start_of_message.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.message_length.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.message_type.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.matching_unit.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.reserved_field.size + 
  cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.size

-- Display: Message Header
cboe_c1_options_orderentry_boe3_v1_0_12.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_c1_options_orderentry_boe3_v1_0_12.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_c1_options_orderentry_boe3_v1_0_12.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_c1_options_orderentry_boe3_v1_0_12.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 48 values
  index, message_type = cboe_c1_options_orderentry_boe3_v1_0_12.message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_c1_options_orderentry_boe3_v1_0_12.matching_unit.dissect(buffer, index, packet, parent)

  -- Reserved Field: 1 Byte Unsigned Fixed Width Integer
  index, reserved_field = cboe_c1_options_orderentry_boe3_v1_0_12.reserved_field.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_c1_options_orderentry_boe3_v1_0_12.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_c1_options_orderentry_boe3_v1_0_12.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12.fields.message_header, buffer(offset, 0))
    local index = cboe_c1_options_orderentry_boe3_v1_0_12.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_c1_options_orderentry_boe3_v1_0_12.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_c1_options_orderentry_boe3_v1_0_12.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_c1_options_orderentry_boe3_v1_0_12.packet = {}

-- Dissect Packet
cboe_c1_options_orderentry_boe3_v1_0_12.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 6 fields
  index, message_header = cboe_c1_options_orderentry_boe3_v1_0_12.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 8, 2):le_uint()

  -- Message: Runtime Type with 48 branches
  index = cboe_c1_options_orderentry_boe3_v1_0_12.message.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_c1_options_orderentry_boe3_v1_0_12.init()
end

-- Dissector for Cboe C1 Options OrderEntry Boe3 1.0.12
function omi_cboe_c1_options_orderentry_boe3_v1_0_12.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_c1_options_orderentry_boe3_v1_0_12.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_c1_options_orderentry_boe3_v1_0_12, buffer(), omi_cboe_c1_options_orderentry_boe3_v1_0_12.description, "("..buffer:len().." Bytes)")
  return cboe_c1_options_orderentry_boe3_v1_0_12.packet.dissect(buffer, packet, protocol)
end

-- Register With Tcp Table
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add(65333, omi_cboe_c1_options_orderentry_boe3_v1_0_12)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
cboe_c1_options_orderentry_boe3_v1_0_12.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Cboe C1 Options OrderEntry Boe3 1.0.12
local function omi_cboe_c1_options_orderentry_boe3_v1_0_12_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_c1_options_orderentry_boe3_v1_0_12.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_c1_options_orderentry_boe3_v1_0_12
  omi_cboe_c1_options_orderentry_boe3_v1_0_12.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe C1 Options OrderEntry Boe3 1.0.12
omi_cboe_c1_options_orderentry_boe3_v1_0_12:register_heuristic("tcp", omi_cboe_c1_options_orderentry_boe3_v1_0_12_heuristic)

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
